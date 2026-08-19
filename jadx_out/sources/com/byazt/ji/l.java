package com.byazt.ji;

import com.byazt.eb.j;
import com.byazt.ju.a;
import com.byazt.ju.k;
import com.byazt.ju.v;
import com.byazt.ju.w;
import com.byazt.toc.gu;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 753, 34})
/* loaded from: classes.dex */
public class l implements k {
    public gu hp;

    public l(gu guVar) {
        this.hp = guVar;
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l a() {
        gu guVar = this.hp;
        return guVar != null ? new a(guVar.jl()) : new w();
    }

    @Override // com.byazt.ju.k
    public void e() {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.l();
        }
    }

    @Override // com.byazt.ju.k
    public boolean eb() {
        return false;
    }

    @Override // com.byazt.ju.k
    public void hp(v vVar) {
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l j() {
        gu guVar = this.hp;
        return guVar != null ? new a(guVar.e()) : new w();
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.l> jx() {
        List<com.byazt.dq.jx> listQ;
        ArrayList arrayList = new ArrayList();
        gu guVar = this.hp;
        if (guVar != null && (listQ = guVar.q()) != null) {
            for (com.byazt.dq.jx jxVar : listQ) {
                if (jxVar != null) {
                    arrayList.add(new a(jxVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.eb.jx
    public List<j> l() {
        List<com.byazt.dq.l> listS;
        ArrayList arrayList = new ArrayList();
        gu guVar = this.hp;
        if (guVar != null && (listS = guVar.s()) != null) {
            for (com.byazt.dq.l lVar : listS) {
                if (lVar != null) {
                    arrayList.add(new com.byazt.ju.hp(lVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.ju.k
    public void q() {
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp();
        }
    }

    @Override // com.byazt.ju.k
    public boolean s() {
        return false;
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.l> w() {
        List<com.byazt.dq.jx> listGu;
        ArrayList arrayList = new ArrayList();
        gu guVar = this.hp;
        if (guVar != null && (listGu = guVar.gu()) != null) {
            for (com.byazt.dq.jx jxVar : listGu) {
                if (jxVar != null) {
                    arrayList.add(new a(jxVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.ju.k
    public void hp(boolean z2) {
    }

    @Override // com.byazt.eb.jx
    public boolean hp() {
        gu guVar = this.hp;
        if (guVar != null) {
            return guVar.j();
        }
        return false;
    }
}
