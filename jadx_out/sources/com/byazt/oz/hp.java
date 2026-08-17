package com.byazt.oz;

import com.byazt.dnb.s;
import com.byazt.ktf.jx;

@com.byazt.kj.hp(hp = {0, 1, 854, 28})
/* loaded from: classes3.dex */
public final class hp implements jx.hp {
    public final jx.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public l f24294l = new l();

    /* renamed from: com.byazt.oz.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0336hp {
        void hp(String str, String str2);
    }

    public hp(jx.hp hpVar) {
        this.hp = hpVar;
    }

    @Override // com.byazt.ktf.jx.hp
    public void j(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.hp.j(str, str2);
        } else {
            hp(str, str2, new InterfaceC0336hp() { // from class: com.byazt.oz.hp.4
                @Override // com.byazt.oz.hp.InterfaceC0336hp
                public void hp(String str3, String str4) {
                    hp.this.hp.j(str3, str4);
                }
            });
        }
    }

    @Override // com.byazt.ktf.jx.hp
    public void jx(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.hp.jx(str, str2);
        } else {
            hp(str, str2, new InterfaceC0336hp() { // from class: com.byazt.oz.hp.3
                @Override // com.byazt.oz.hp.InterfaceC0336hp
                public void hp(String str3, String str4) {
                    hp.this.hp.jx(str3, str4);
                }
            });
        }
    }

    @Override // com.byazt.ktf.jx.hp
    public void hp(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.hp.hp(str, str2);
        } else {
            hp(str, str2, new InterfaceC0336hp() { // from class: com.byazt.oz.hp.1
                @Override // com.byazt.oz.hp.InterfaceC0336hp
                public void hp(String str3, String str4) {
                    hp.this.hp.hp(str3, str4);
                }
            });
        }
    }

    @Override // com.byazt.ktf.jx.hp
    public void l(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.hp.l(str, str2);
        } else {
            hp(str, str2, new InterfaceC0336hp() { // from class: com.byazt.oz.hp.2
                @Override // com.byazt.oz.hp.InterfaceC0336hp
                public void hp(String str3, String str4) {
                    hp.this.hp.l(str3, str4);
                }
            });
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 854, 255})
    public class l {
        private l() {
        }

        public void hp(String str, String str2, InterfaceC0336hp interfaceC0336hp) {
            String hexString = Integer.toHexString(str2.hashCode());
            int i2 = 0;
            while (i2 < str2.length()) {
                int iMin = Math.min(i2 + 4096, str2.length());
                interfaceC0336hp.hp(hp(str, hexString, i2, iMin), str2.substring(i2, iMin));
                i2 = iMin;
            }
        }

        private String hp(String str, String str2, int i2, int i3) {
            return str + "_" + i2 + "_" + i3 + "_" + str2;
        }
    }

    @Override // com.byazt.ktf.jx.hp
    public void hp(String str, String str2, Throwable th) {
        this.hp.hp(str, str2, th);
    }

    @Override // com.byazt.ktf.jx.hp
    public void hp(String str, Throwable th) {
        this.hp.hp(str, th);
    }

    @Override // com.byazt.ktf.jx.hp
    public void hp() {
        this.hp.hp();
    }

    private void hp(final String str, final String str2, final InterfaceC0336hp interfaceC0336hp) {
        try {
            if (s.hp()) {
                s.l(new Runnable() { // from class: com.byazt.oz.hp.5
                    @Override // java.lang.Runnable
                    public void run() {
                        hp.this.f24294l.hp(str, str2, interfaceC0336hp);
                    }
                });
            } else {
                this.f24294l.hp(str, str2, interfaceC0336hp);
            }
        } catch (Throwable unused) {
        }
    }
}
