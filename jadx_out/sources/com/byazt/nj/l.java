package com.byazt.nj;

import com.byazt.eb.j;
import com.byazt.ju.a;
import com.byazt.ju.w;
import com.byazt.toc.zy;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 932, 34})
/* loaded from: classes3.dex */
public class l implements com.byazt.fi.jx {
    public zy hp;

    public l(zy zyVar) {
        this.hp = zyVar;
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l a() {
        zy zyVar = this.hp;
        return zyVar != null ? new a(zyVar.f_()) : new w();
    }

    @Override // com.byazt.fi.jx
    public void eb() throws NumberFormatException {
        zy zyVar = this.hp;
        if (zyVar != null) {
            zyVar.jx();
        }
    }

    @Override // com.byazt.eb.jx
    public boolean hp() {
        zy zyVar = this.hp;
        if (zyVar != null) {
            return zyVar.n();
        }
        return false;
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l j() {
        zy zyVar = this.hp;
        return zyVar != null ? new a(zyVar.v()) : new w();
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.l> jx() {
        List<com.byazt.dq.jx> listGu;
        ArrayList arrayList = new ArrayList();
        zy zyVar = this.hp;
        if (zyVar != null && (listGu = zyVar.gu()) != null) {
            for (com.byazt.dq.jx jxVar : listGu) {
                if (jxVar != null) {
                    arrayList.add(new a(jxVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.eb.jx
    public List<j> l() {
        List<com.byazt.dq.l> listE;
        ArrayList arrayList = new ArrayList();
        zy zyVar = this.hp;
        if (zyVar != null && (listE = zyVar.e()) != null) {
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
        zy zyVar = this.hp;
        if (zyVar != null && (listJl = zyVar.jl()) != null) {
            for (com.byazt.dq.jx jxVar : listJl) {
                if (jxVar != null) {
                    arrayList.add(new a(jxVar));
                }
            }
        }
        return arrayList;
    }
}
