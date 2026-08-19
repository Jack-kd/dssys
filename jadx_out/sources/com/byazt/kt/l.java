package com.byazt.kt;

import com.byazt.gy.s;

@com.byazt.kj.hp(hp = {0, 1, 747, 34})
/* loaded from: classes.dex */
public class l extends com.byazt.gy.j<com.byazt.np.l, com.byazt.kf.l> {

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.gj.l f22124l = new com.byazt.gj.l() { // from class: com.byazt.kt.l.1
        @Override // com.byazt.gj.l
        public void hp(com.byazt.kf.l lVar, s sVar) {
        }

        @Override // com.byazt.gj.l
        public void j(com.byazt.kf.l lVar, s sVar) {
            com.byazt.gy.jx jxVar;
            if (lVar == null || lVar.hp() == null || (jxVar = (com.byazt.gy.jx) l.this.hp.remove(lVar.hp())) == null) {
                return;
            }
            jxVar.l(l.this.f22124l);
        }

        @Override // com.byazt.gj.l
        public void jx(com.byazt.kf.l lVar, s sVar) {
        }

        @Override // com.byazt.gj.l
        public void l(com.byazt.kf.l lVar, s sVar) {
        }
    };

    public void hp(String str, com.byazt.np.l lVar, s sVar) {
        com.byazt.gy.jx<com.byazt.np.l, com.byazt.kf.l> jxVarHp = hp(str);
        if (jxVarHp instanceof com.byazt.ew.l) {
            ((com.byazt.ew.l) jxVarHp).hp(lVar, sVar);
        }
    }

    public void l(String str, String str2) {
        if (str == null) {
            return;
        }
        com.byazt.ew.l lVar = new com.byazt.ew.l(str, str2);
        lVar.hp(this.f22124l);
        hp(str, lVar);
    }

    public void hp(String str, com.byazt.np.l lVar) {
        hp(str, lVar, null);
    }
}
