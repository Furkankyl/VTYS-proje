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
public class Stok {
    Urun urun;
    int miktar;

    public Urun getUrun() {
        return urun;
    }

    public void setUrun(Urun urun) {
        this.urun = urun;
    }

    public int getMiktar() {
        return miktar;
    }

    public void setMiktar(int miktar) {
        this.miktar = miktar;
    }

    @Override
    public String toString() {
        return "Stok{" + "urun=" + urun + ", miktar=" + miktar + '}';
    }


    
}
