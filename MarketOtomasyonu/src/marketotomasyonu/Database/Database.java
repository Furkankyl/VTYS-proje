/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package marketotomasyonu.Database;



import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JTextField;
import marketotomasyonu.Modeller.*;
import oracle.jdbc.internal.OracleTypes;
/**
 *
 * @author Furkan
 */
public class Database {
    private static Connection connection;
    
    public static void connectDb(){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","furkan","furkan");
            Statement statement = connection.createStatement();
            System.out.println("Veri tabanına bağlanıldı!");
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
       
    }
    public static void disconnectDb(){
        try{
            
        connection.close();
            System.out.println("Veri tabanı bağlantısı kapatıldı!");
        }catch(SQLException e){
            System.out.println(e);
        }
    }
    public static String girisYap(String kullaniciAdi,String parola){
        connectDb();
        try{
        CallableStatement cs = connection.prepareCall("{call girisYap(?,?,?)}");

        cs.registerOutParameter(1, OracleTypes.CURSOR);
        cs.setString(2, kullaniciAdi);
        cs.setString(3, parola);
        cs.execute();
        ResultSet rs = ( ResultSet ) cs.getObject(1);
        rs.next();
        if(!rs.getString("giren").isEmpty()){

            System.out.println(rs.getString("giren"));
            String string = rs.getString("giren");
            disconnectDb();
            return string;
            
        }

        else{
            disconnectDb();
                        return "giriş başarısız!";
        }

        }catch(SQLException e){
            System.out.println(e);
            return "Veri tabanına Bağlanılamadı!";
        }
        
    }
    
    public static List<Personel> personelleriGetir(){
        connectDb();
        List<Personel> personelList = new ArrayList<>();
        try{
            CallableStatement cs = connection.prepareCall("{call personelleriGetir(?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            
            while(rs.next()){
                Personel personel = new Personel();
                personel.setNo(rs.getInt("NO"));
                personel.setIsim(rs.getString("ISIM"));
                personel.setSoyIsim(rs.getString("SOYISIM"));
                personel.setTcNo(rs.getString("TC_NO"));
                personel.setIseGirisTarihi(rs.getDate("ISE_GIRIS_TARIHI"));
                personel.setAdres(rs.getString("ADRES"));
                personel.setGorev(goreviGetir(rs.getInt("GOREV_NO")));
                personel.setMaas(rs.getInt("MAAS"));
                personel.setTelefonNo(rs.getString("TELEFON_NO"));
                personelList.add(personel);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        return personelList;
    }
    public static Personel personeliGetir(String tc_no){
        Personel personel = new Personel();
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call personelGetir(?,?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.setString(2,tc_no);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            rs.next();
            personel.setNo(rs.getInt("NO"));
                personel.setIsim(rs.getString("ISIM"));
                personel.setSoyIsim(rs.getString("SOYISIM"));
                personel.setTcNo(rs.getString("TC_NO"));
                personel.setIseGirisTarihi(rs.getDate("ISE_GIRIS_TARIHI"));
                personel.setAdres(rs.getString("ADRES"));
                personel.setGorev(goreviGetir(rs.getInt("GOREV_NO")));
                personel.setMaas(rs.getInt("MAAS"));
                personel.setTelefonNo(rs.getString("TELEFON_NO"));
        }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        return personel;
    }
    public static void personelEkle(Personel personel){
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call personelEkle(?,?,?,?,?,?,?,?,?)}");
            cs.setString(1, personel.getIsim());
            cs.setString(2, personel.getSoyIsim());
            cs.setString(3, personel.getTelefonNo());
            cs.setString(4, personel.getAdres());
            cs.setInt(5, personel.getGorev().getNo());
            cs.setInt(6, personel.getMaas());
            cs.setString(7, personel.getParola());
            cs.setString(8, personel.getKullaniciAdi());
            cs.setString(9, personel.getTcNo());
            cs.execute();
            disconnectDb();
        }
            catch(Exception e){
                System.out.println(e);
        }
    }
    public static void personeliGuncelle(Personel personel){
            connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call personelGuncelle(?,?,?,?,?,?)}");
            cs.setString(1, personel.getTcNo());
            cs.setString(2, personel.getTelefonNo());
            cs.setString(3, personel.getAdres());
            cs.setInt(5, personel.getGorev().getNo());
            cs.setInt(4, personel.getMaas());
            cs.setString(6, personel.getParola());
            
            cs.execute();
            disconnectDb();
        }
            catch(Exception e){
                System.out.println(e);
        }
    }
    public static void personelSil(Personel personel){
            connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call personelSil(?)}");
            cs.setString(1, personel.getTcNo());
            
            cs.execute();
            disconnectDb();
        }
            catch(Exception e){
                System.out.println(e);
        }
    }
    public static List<Gorev> gorevleriGetir(){
        List<Gorev> gorevList = new ArrayList<>();
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call gorevleriGetir(?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            while(rs.next()){
                Gorev gorev = new Gorev();
                gorev.setNo(rs.getInt("NO"));
                gorev.setIsim(rs.getString("ISIM"));
                gorevList.add(gorev);
            }
           }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        
        return gorevList;
    }
    public static Gorev goreviGetir(int no){
        Gorev gorev = new Gorev();
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call gorevGetir(?,?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.setInt(2,no);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            rs.next();
                gorev.setNo(rs.getInt("NO"));
                gorev.setIsim(rs.getString("ISIM"));
        }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        return gorev;
    }
    public static void musteriEkle(Musteri musteri){
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call musteriEkle(?,?,?,?)}");
            cs.setString(1, musteri.getIsim());
            cs.setString(2, musteri.getSoyIsim());
            cs.setString(3, musteri.getTelefonNo());
            cs.setString(4,musteri.getAdres() );
            cs.execute();
            disconnectDb();
        }
            catch(Exception e){
                System.out.println(e);
        }
    }
    public static List<Musteri> musterileriGetir(){
        List<Musteri> musteriList = new ArrayList<>();
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call musterileriGetir(?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            while(rs.next()){
                Musteri musteri = new Musteri();
                musteri.setNo(rs.getInt("NO"));
                musteri.setIsim(rs.getString("ISIM"));
                musteri.setSoyIsim(rs.getString("SOYISIM"));
                musteri.setAdres(rs.getString("ADRES"));
                musteri.setTelefonNo(rs.getString("TELEFON_NO"));
                musteri.setToplamAlisverisMiktari(rs.getInt("TOPLAM_ALISVERIS_MIKTARI"));
                musteriList.add(musteri);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        return musteriList;
    }
   
    public static Musteri musteriGetir(String no){
        Musteri musteri = new Musteri();
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call musteriGetir(?,?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.setString(2, no);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            while(rs.next()){
                musteri.setNo(rs.getInt("NO"));
                musteri.setIsim(rs.getString("ISIM"));
                musteri.setSoyIsim(rs.getString("SOYISIM"));
                musteri.setAdres(rs.getString("ADRES"));
                musteri.setTelefonNo(rs.getString("TELEFON_NO"));
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        return musteri;
    }
                       
    public static void musteriSil(Musteri musteri){
                connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call musteriSil(?)}");
            cs.setString(1,musteri.getTelefonNo());
            cs.execute();
            disconnectDb();
        }
            catch(Exception e){
                System.out.println(e);
        }
    }
    public static void musteriGuncelle(Musteri musteri){
                 connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call musteriGuncelle(?,?,?)}");
            cs.setInt(1,musteri.getNo());
            System.out.println(""+musteri.getNo());
            cs.setString(2,musteri.getTelefonNo());
            System.out.println(""+musteri.getTelefonNo());
            cs.setString(3, musteri.getAdres());
            cs.execute();
            disconnectDb();
        }
            catch(Exception e){
                System.out.println(e);
        }
    }
    public static Satis satisiGetir(int no){
        Satis satis = new Satis();
        
        return satis;
    }
    public static List<Satis> satislariGetir(){
        List<Satis> satisList = new ArrayList<>();
        
        return satisList;
    }
    public static void satisEkle(Satis satis){
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call satisEkle(?,?,?)}");
            cs.setInt(1,satis.getMusteri().getNo());
            cs.setInt(2, satis.getPersonel().getNo());
            cs.setString(3, satis.getOdemeTuru());
            cs.execute();
            disconnectDb();
        }
            catch(Exception e){
                System.out.println(e);
        }
    }
    public static void fisEkle(Fis fis){
         connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call fisEkle(?)}");
            cs.setInt(1, fis.getUrun().getNo());
            cs.execute();
            disconnectDb();
        }
            catch(Exception e){
                System.out.println(e);
        }
        disconnectDb();
    }
    public static void urunEkle(Urun urun){
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call urunEkle(?,?,?,?,?,?)}");
            cs.setInt(1,urun.getNo());
            cs.setString(2, urun.getIsim());
            cs.setInt(3, urun.getGrup().getNo());
            cs.setInt(4,urun.getAlisFiyat());
            cs.setInt(5,urun.getSatisFiyat());
            cs.setInt(6, urun.getKdv());
            cs.execute();
            disconnectDb();
        }
            catch(Exception e){
                System.out.println(e);
        }
        disconnectDb();
    }
    public static Urun urunuGetir(int no){
        Urun urun = new Urun();
            connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call urunGetir(?,?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.setInt(2, no);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            rs.next();
                urun.setNo(rs.getInt("NO"));
                urun.setIsim(rs.getString("ISIM"));
                urun.setKdv(rs.getInt("KDV"));
                urun.setGrup(urunGrubuGetir(rs.getInt("GRUP_NO")));
                urun.setAlisFiyat(rs.getInt("ALIS_FIYAT"));
                urun.setSatisFiyat(rs.getInt("SATIS_FIYAT"));
            
        }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        
        return urun;
    }
    public static void urunGrupEkle(String grupIsmi){
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call urunGrupEkle(?)}");
            cs.setString(1, grupIsmi);
            cs.execute();
            disconnectDb();
        }
            catch(Exception e){
                System.out.println(e);
        }
    }
    public static UrunGrup urunGrubuGetir(int grupNo){
        UrunGrup urunGrup = new UrunGrup();
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call urunGruplariGetir(?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.setInt(2, grupNo);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            rs.next();
            urunGrup.setNo(rs.getInt("NO"));
            urunGrup.setIsim(rs.getString("ISIM"));
            
        }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        return urunGrup;
    }
    public static List<UrunGrup> urunGruplariGetir(){
        List<UrunGrup> urunGrupList = new ArrayList<>();
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call urunGruplariGetir(?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            while(rs.next()){
                UrunGrup urunGrup = new UrunGrup();
                urunGrup.setNo(rs.getInt("NO"));
                urunGrup.setIsim(rs.getString("ISIM"));
                urunGrupList.add(urunGrup);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        return urunGrupList;
    }
    public static List<Urun> urunleriGetir(){
        List<Urun> urunList = new ArrayList<>();
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call urunleriGetir(?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            while(rs.next()){
                Urun urun = new Urun();
                urun.setNo(rs.getInt("NO"));
                urun.setIsim(rs.getString("ISIM"));
                urun.setKdv(rs.getInt("KDV"));
                urun.setAlisFiyat(rs.getInt("ALIS_FIYAT"));
                urun.setSatisFiyat(rs.getInt("SATIS_FIYAT"));
                urunList.add(urun);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        
        return urunList;
    }
    public static Stok stokGetir(int urun_no){
        Stok stok = new Stok();
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call stokGetir(?,?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.setInt(2, urun_no);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            rs.next();
            stok.setUrun(urunuGetir(rs.getInt("URUN_NO")));
            stok.setMiktar(rs.getInt("URUN_MIKTAR"));
            
        }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        return stok;
    }
    public static List<Stok> stoklariGetir(){
        List<Stok> stokList = new ArrayList<>();
        connectDb();
        try{
            CallableStatement cs = connection.prepareCall("{call stoklariGetir(?)}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.execute();
            ResultSet rs = (ResultSet) cs.getObject(1);
            while(rs.next()){
                Stok stok = new Stok();
                stok.setUrun(urunuGetir(rs.getInt("URUN_NO")));
                stok.setMiktar(rs.getInt("URUN_MIKTAR"));
                stokList.add(stok);
            }
                
            
        }catch(SQLException e){
            System.out.println(e);
        }
        disconnectDb();
        return stokList;
    }
    //personelEkle
    //müşteri ekle
    //ürün iade
    //satışEkle
    //fiş Ara
    //
    //ürünEkle
    //s

}
