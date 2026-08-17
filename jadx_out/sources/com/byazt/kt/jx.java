package com.byazt.kt;

import com.byazt.gy.s;

@com.byazt.kj.hp(hp = {0, 1, 747, 30})
/* loaded from: classes.dex */
public class jx extends com.byazt.gy.j<com.byazt.np.jx, com.byazt.kf.jx> {

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.gj.jx f22123l = new com.byazt.gj.jx() { // from class: com.byazt.kt.jx.1
        @Override // com.byazt.gj.jx
        public void a(com.byazt.kf.jx jxVar, s sVar) {
        }

        @Override // com.byazt.gj.jx
        public void eb(com.byazt.kf.jx jxVar, s sVar) {
            com.byazt.gy.jx jxVar2;
            if (jxVar == null || jxVar.hp() == null || (jxVar2 = (com.byazt.gy.jx) jx.this.hp.remove(jxVar.hp())) == null) {
                return;
            }
            jxVar2.l(jx.this.f22123l);
        }

        @Override // com.byazt.gj.jx
        public void hp(com.byazt.kf.jx jxVar, s sVar) {
        }

        @Override // com.byazt.gj.jx
        public void j(com.byazt.kf.jx jxVar, s sVar) {
        }

        @Override // com.byazt.gj.jx
        public void jx(com.byazt.kf.jx jxVar, s sVar) {
        }

        @Override // com.byazt.gj.jx
        public void l(com.byazt.kf.jx jxVar, s sVar) {
        }

        @Override // com.byazt.gj.jx
        public void w(com.byazt.kf.jx jxVar, s sVar) {
        }
    };

    public void hp(String str, com.byazt.np.jx jxVar, s sVar) {
        com.byazt.gy.jx<com.byazt.np.jx, com.byazt.kf.jx> jxVarHp = hp(str);
        if (jxVarHp instanceof com.byazt.ew.jx) {
            ((com.byazt.ew.jx) jxVarHp).hp(jxVar, sVar);
        }
    }

    public void l(String str, String str2) {
        if (str == null) {
            return;
        }
        com.byazt.ew.jx jxVar = new com.byazt.ew.jx(str, str2);
        jxVar.hp(this.f22123l);
        hp(str, jxVar);
    }

    public void hp(String str, com.byazt.np.jx jxVar) {
        hp(str, jxVar, null);
    }
}
