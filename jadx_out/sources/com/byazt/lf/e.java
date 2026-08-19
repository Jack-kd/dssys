package com.byazt.lf;

@com.byazt.kj.hp(hp = {0, 1, 736, 45})
/* loaded from: classes3.dex */
public class e implements com.byazt.lpy.l {
    public com.byazt.ap.jx hp;

    public e(com.byazt.ap.jx jxVar) {
        this.hp = jxVar;
    }

    @Override // com.byazt.lpy.l
    public void hp(String str) {
        com.byazt.ap.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.hp(str);
        }
    }

    @Override // com.byazt.lpy.l
    public void hp(String str, String str2) {
        com.byazt.ap.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.l(str, str2);
        }
    }

    @Override // com.byazt.lpy.l
    public com.byazt.lpy.w hp() {
        com.byazt.ap.jx jxVar = this.hp;
        if (jxVar == null) {
            return null;
        }
        return new gu(jxVar.hp());
    }
}
