/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package marketotomasyonu.Modeller;

import java.sql.Date;

/**
 *
 * @author Furkan
 */
public class Musteri {
    int no;
    String isim;
    String soyIsim;
    String telefonNo;
    String adres;
    Date kayitTarihi;
    int toplamAlisverisMiktari;

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getIsim() {
        return isim;
    }

    public void setIsim(String isim) {
        this.isim = isim;
    }

    public String getSoyIsim() {
        return soyIsim;
    }

    public void setSoyIsim(String soyIsim) {
        this.soyIsim = soyIsim;
    }


    public String getTelefonNo() {
        return telefonNo;
    }

    public void setTelefonNo(String telefonNo) {
        this.telefonNo = telefonNo;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }

    public Date getKayitTarihi() {
        return kayitTarihi;
    }

    public void setKayitTarihi(Date kayitTarihi) {
        this.kayitTarihi = kayitTarihi;
    }

    public int getToplamAlisverisMiktari() {
        return toplamAlisverisMiktari;
    }

    public void setToplamAlisverisMiktari(int toplamAlisverisMiktari) {
        this.toplamAlisverisMiktari = toplamAlisverisMiktari;
    }

    @Override
    public String toString() {
        return "Musteri{" + "no=" + no + ", isim=" + isim + ", soyIsim=" + soyIsim + ", telefonNo=" + telefonNo + ", adres=" + adres + ", kayitTarihi=" + kayitTarihi + ", toplamAlisverisMiktari=" + toplamAlisverisMiktari + '}';
    }
    
    
}
