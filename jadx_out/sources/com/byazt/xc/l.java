package com.byazt.xc;

import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 592, 34})
/* loaded from: classes3.dex */
public class l implements com.byazt.fi.jx {
    public com.byazt.toc.s hp;

    public l(com.byazt.toc.s sVar) {
        this.hp = sVar;
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l a() {
        com.byazt.toc.s sVar = this.hp;
        return sVar != null ? new com.byazt.ju.a(sVar.f_()) : new com.byazt.ju.w();
    }

    @Override // com.byazt.fi.jx
    public void eb() {
        com.byazt.toc.s sVar = this.hp;
        if (sVar != null) {
            sVar.jx();
        }
    }

    @Override // com.byazt.eb.jx
    public boolean hp() {
        com.byazt.toc.s sVar = this.hp;
        if (sVar != null) {
            return sVar.d();
        }
        return false;
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l j() {
        com.byazt.toc.s sVar = this.hp;
        return sVar != null ? new com.byazt.ju.a(sVar.v()) : new com.byazt.ju.w();
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.l> jx() {
        List<com.byazt.dq.jx> listGu;
        ArrayList arrayList = new ArrayList();
        com.byazt.toc.s sVar = this.hp;
        if (sVar != null && (listGu = sVar.gu()) != null) {
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
        com.byazt.toc.s sVar = this.hp;
        if (sVar != null && (listE = sVar.e()) != null) {
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
        com.byazt.toc.s sVar = this.hp;
        if (sVar != null && (listJl = sVar.jl()) != null) {
            for (com.byazt.dq.jx jxVar : listJl) {
                if (jxVar != null) {
                    arrayList.add(new com.byazt.ju.a(jxVar));
                }
            }
        }
        return arrayList;
    }
}
