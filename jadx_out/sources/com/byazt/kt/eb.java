package com.byazt.kt;

import com.byazt.kf.s;

@com.byazt.kj.hp(hp = {0, 1, 747, 94})
/* loaded from: classes.dex */
public class eb extends com.byazt.gy.j<com.byazt.np.eb, s> {

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.gj.eb f22120l = new com.byazt.gj.eb() { // from class: com.byazt.kt.eb.1
        @Override // com.byazt.gj.eb
        public void a(s sVar, com.byazt.gy.s sVar2) {
        }

        @Override // com.byazt.gj.eb
        public void eb(s sVar, com.byazt.gy.s sVar2) {
        }

        @Override // com.byazt.gj.eb
        public void hp(s sVar, com.byazt.gy.s sVar2) {
        }

        @Override // com.byazt.gj.eb
        public void j(s sVar, com.byazt.gy.s sVar2) {
        }

        @Override // com.byazt.gj.eb
        public void jx(s sVar, com.byazt.gy.s sVar2) {
        }

        @Override // com.byazt.gj.eb
        public void l(s sVar, com.byazt.gy.s sVar2) {
        }

        @Override // com.byazt.gj.eb
        public void s(s sVar, com.byazt.gy.s sVar2) {
            com.byazt.gy.jx jxVar;
            if (sVar == null || sVar.hp() == null || (jxVar = (com.byazt.gy.jx) eb.this.hp.remove(sVar.hp())) == null) {
                return;
            }
            jxVar.l(eb.this.f22120l);
        }

        @Override // com.byazt.gj.eb
        public void w(s sVar, com.byazt.gy.s sVar2) {
        }
    };

    public void hp(String str, com.byazt.np.eb ebVar, com.byazt.gy.s sVar) {
        com.byazt.gy.jx<com.byazt.np.eb, s> jxVarHp = hp(str);
        if (jxVarHp instanceof com.byazt.ew.eb) {
            ((com.byazt.ew.eb) jxVarHp).hp(ebVar, sVar);
        }
    }

    public void l(String str, String str2) {
        if (str == null) {
            return;
        }
        com.byazt.ew.eb ebVar = new com.byazt.ew.eb(str, str2);
        ebVar.hp(this.f22120l);
        hp(str, ebVar);
    }

    public void hp(String str, com.byazt.np.eb ebVar) {
        hp(str, ebVar, null);
    }
}
