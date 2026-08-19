package com.byazt.kt;

import com.byazt.gy.s;

@com.byazt.kj.hp(hp = {0, 1, 747, 54})
/* loaded from: classes.dex */
public class a extends com.byazt.gy.j<com.byazt.np.a, com.byazt.kf.a> {

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.gj.a f22119l = new com.byazt.gj.a() { // from class: com.byazt.kt.a.1
        @Override // com.byazt.gj.a
        public void hp(com.byazt.kf.a aVar, s sVar) {
        }

        @Override // com.byazt.gj.a
        public void j(com.byazt.kf.a aVar, s sVar) {
            com.byazt.gy.jx jxVar;
            if (aVar == null || aVar.hp() == null || (jxVar = (com.byazt.gy.jx) a.this.hp.remove(aVar.hp())) == null) {
                return;
            }
            jxVar.l(a.this.f22119l);
        }

        @Override // com.byazt.gj.a
        public void jx(com.byazt.kf.a aVar, s sVar) {
        }

        @Override // com.byazt.gj.a
        public void l(com.byazt.kf.a aVar, s sVar) {
        }
    };

    public void hp(String str, com.byazt.np.a aVar, s sVar) {
        com.byazt.gy.jx<com.byazt.np.a, com.byazt.kf.a> jxVarHp = hp(str);
        if (jxVarHp instanceof com.byazt.ew.a) {
            ((com.byazt.ew.a) jxVarHp).hp(aVar, sVar);
        }
    }

    public void l(String str, String str2) {
        if (str == null) {
            return;
        }
        com.byazt.ew.a aVar = new com.byazt.ew.a(str, str2);
        aVar.hp(this.f22119l);
        hp(str, aVar);
    }

    public void hp(String str, com.byazt.np.a aVar) {
        hp(str, aVar, null);
    }
}
