package com.byazt.kt;

import com.byazt.gy.s;

@com.byazt.kj.hp(hp = {0, 1, 747, 28})
/* loaded from: classes.dex */
public class hp extends com.byazt.gy.j<com.byazt.np.hp, com.byazt.kf.hp> {

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.gj.hp f22121l = new com.byazt.gj.hp() { // from class: com.byazt.kt.hp.1
        @Override // com.byazt.gj.hp
        public void a(com.byazt.kf.hp hpVar, s sVar) {
        }

        @Override // com.byazt.gj.hp
        public void e(com.byazt.kf.hp hpVar, s sVar) {
            com.byazt.gy.jx jxVar;
            if (hpVar == null || hpVar.hp() == null || (jxVar = (com.byazt.gy.jx) hp.this.hp.remove(hpVar.hp())) == null) {
                return;
            }
            jxVar.l(hp.this.f22121l);
        }

        @Override // com.byazt.gj.hp
        public void eb(com.byazt.kf.hp hpVar, s sVar) {
        }

        @Override // com.byazt.gj.hp
        public void hp(com.byazt.kf.hp hpVar, s sVar) {
        }

        @Override // com.byazt.gj.hp
        public void j(com.byazt.kf.hp hpVar, s sVar) {
        }

        @Override // com.byazt.gj.hp
        public void jx(com.byazt.kf.hp hpVar, s sVar) {
        }

        @Override // com.byazt.gj.hp
        public void l(com.byazt.kf.hp hpVar, s sVar) {
        }

        @Override // com.byazt.gj.hp
        public void q(com.byazt.kf.hp hpVar, s sVar) {
        }

        @Override // com.byazt.gj.hp
        public void s(com.byazt.kf.hp hpVar, s sVar) {
        }

        @Override // com.byazt.gj.hp
        public void w(com.byazt.kf.hp hpVar, s sVar) {
        }
    };

    public void hp(String str, com.byazt.np.hp hpVar, s sVar) {
        com.byazt.gy.jx<com.byazt.np.hp, com.byazt.kf.hp> jxVarHp = hp(str);
        if (jxVarHp instanceof com.byazt.ew.hp) {
            ((com.byazt.ew.hp) jxVarHp).hp(hpVar, sVar);
        }
    }

    public void l(String str, String str2) {
        if (str == null) {
            return;
        }
        com.byazt.ew.hp hpVar = new com.byazt.ew.hp(str, str2);
        hpVar.hp(this.f22121l);
        hp(str, hpVar);
    }

    public void hp(String str, com.byazt.np.hp hpVar) {
        hp(str, hpVar, null);
    }
}
