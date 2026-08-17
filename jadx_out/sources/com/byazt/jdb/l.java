package com.byazt.jdb;

@com.byazt.kj.hp(hp = {0, 1, 169, 34})
/* loaded from: classes.dex */
public class l implements com.byazt.sf.l {
    public static l hp;

    private l() {
    }

    @Override // com.byazt.sf.l
    public void hp(String str, String str2, String str3) {
    }

    @Override // com.byazt.sf.l
    public String l() {
        return "AdEventCollector";
    }

    public static synchronized l hp() {
        try {
            if (hp == null) {
                hp = new l();
            }
        } catch (Throwable th) {
            throw th;
        }
        return hp;
    }

    @Override // com.byazt.sf.l
    public String hp(String str, String str2) {
        return "";
    }
}
