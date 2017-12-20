/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package marketotomasyonu.Modeller;

/**
 *
 * @author Furkan
 */
public class Urun {
    int no;
    String isim;
    UrunGrup grup;
    int alisFiyat;
    int satisFiyat;
    int kdv;

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

    public UrunGrup getGrup() {
        return grup;
    }

    public void setGrup(UrunGrup grup) {
        this.grup = grup;
    }

    public int getAlisFiyat() {
        return alisFiyat;
    }

    public void setAlisFiyat(int alisFiyat) {
        this.alisFiyat = alisFiyat;
    }

    public int getSatisFiyat() {
        return satisFiyat;
    }

    public void setSatisFiyat(int satisFiyat) {
        this.satisFiyat = satisFiyat;
    }

    public int getKdv() {
        return kdv;
    }

    public void setKdv(int kdv) {
        this.kdv = kdv;
    }

    @Override
    public String toString() {
        return "Urun{" + "no=" + no + ", isim=" + isim + ", grup=" + grup + ", alisFiyat=" + alisFiyat + ", satisFiyat=" + satisFiyat + ", kdv=" + kdv + '}';
    }
    
}
