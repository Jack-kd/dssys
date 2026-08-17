package com.byazt.kt;

import com.byazt.gy.s;

@com.byazt.kj.hp(hp = {0, 1, 747, 38})
/* loaded from: classes.dex */
public class j extends com.byazt.gy.j<com.byazt.np.j, com.byazt.kf.j> {

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.gj.j f22122l = new com.byazt.gj.j() { // from class: com.byazt.kt.j.1
        @Override // com.byazt.gj.j
        public void a(com.byazt.kf.j jVar, s sVar) {
        }

        @Override // com.byazt.gj.j
        public void e(com.byazt.kf.j jVar, s sVar) {
            com.byazt.gy.jx jxVar;
            if (jVar == null || jVar.hp() == null || (jxVar = (com.byazt.gy.jx) j.this.hp.remove(jVar.hp())) == null) {
                return;
            }
            jxVar.l(j.this.f22122l);
        }

        @Override // com.byazt.gj.j
        public void eb(com.byazt.kf.j jVar, s sVar) {
        }

        @Override // com.byazt.gj.j
        public void hp(com.byazt.kf.j jVar, s sVar) {
        }

        @Override // com.byazt.gj.j
        public void j(com.byazt.kf.j jVar, s sVar) {
        }

        @Override // com.byazt.gj.j
        public void jx(com.byazt.kf.j jVar, s sVar) {
        }

        @Override // com.byazt.gj.j
        public void l(com.byazt.kf.j jVar, s sVar) {
        }

        @Override // com.byazt.gj.j
        public void q(com.byazt.kf.j jVar, s sVar) {
        }

        @Override // com.byazt.gj.j
        public void s(com.byazt.kf.j jVar, s sVar) {
        }

        @Override // com.byazt.gj.j
        public void w(com.byazt.kf.j jVar, s sVar) {
        }
    };

    public void hp(String str, com.byazt.np.j jVar, s sVar) {
        com.byazt.gy.jx<com.byazt.np.j, com.byazt.kf.j> jxVarHp = hp(str);
        if (jxVarHp instanceof com.byazt.ew.j) {
            ((com.byazt.ew.j) jxVarHp).hp(jVar, sVar);
        }
    }

    public void l(String str, String str2) {
        if (str == null) {
            return;
        }
        com.byazt.ew.j jVar = new com.byazt.ew.j(str, str2);
        jVar.hp(this.f22122l);
        hp(str, jVar);
    }

    public void hp(String str, com.byazt.np.j jVar) {
        hp(str, jVar, null);
    }
}
