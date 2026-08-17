package com.byazt.xc;

import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 592, 54})
/* loaded from: classes3.dex */
public class a implements com.byazt.fi.jx {
    public com.byazt.toc.hp hp;

    public a(com.byazt.toc.hp hpVar) {
        this.hp = hpVar;
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l a() {
        com.byazt.toc.hp hpVar = this.hp;
        return hpVar != null ? new com.byazt.ju.a(hpVar.f_()) : new com.byazt.ju.w();
    }

    @Override // com.byazt.fi.jx
    public void eb() {
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.jx();
        }
    }

    @Override // com.byazt.eb.jx
    public boolean hp() {
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.d();
        }
        return false;
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l j() {
        com.byazt.toc.hp hpVar = this.hp;
        return hpVar != null ? new com.byazt.ju.a(hpVar.v()) : new com.byazt.ju.w();
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.l> jx() {
        List<com.byazt.dq.jx> listGu;
        ArrayList arrayList = new ArrayList();
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar != null && (listGu = hpVar.gu()) != null) {
            for (com.byazt.dq.jx jxVar : listGu) {
                if (jxVar != null) {
                    arrayList.add(new com.byazt.ju.a(jxVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.j> l() {
        List<com.byazt.dq.l> listE;
        ArrayList arrayList = new ArrayList();
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar != null && (listE = hpVar.e()) != null) {
            for (com.byazt.dq.l lVar : listE) {
                if (lVar != null) {
                    arrayList.add(new com.byazt.ju.hp(lVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.l> w() {
        List<com.byazt.dq.jx> listJl;
        ArrayList arrayList = new ArrayList();
        com.byazt.toc.hp hpVar = this.hp;
        if (hpVar != null && (listJl = hpVar.jl()) != null) {
            for (com.byazt.dq.jx jxVar : listJl) {
                if (jxVar != null) {
                    arrayList.add(new com.byazt.ju.a(jxVar));
                }
            }
        }
        return arrayList;
    }
}
