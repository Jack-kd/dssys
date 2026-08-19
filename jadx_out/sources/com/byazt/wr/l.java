package com.byazt.wr;

import com.byazt.ju.a;
import com.byazt.ju.k;
import com.byazt.ju.w;
import com.byazt.toc.eb;
import com.byazt.zg.jl;
import com.byazt.zg.v;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 722, 34})
/* loaded from: classes3.dex */
public class l implements k {
    public com.byazt.rt.jx hp;
    public eb jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.iqm.l f27112l;

    public l(eb ebVar, com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar) {
        this.hp = jxVar;
        this.f27112l = lVar;
        this.jx = ebVar;
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l a() {
        com.byazt.rt.jx jxVar = this.hp;
        return (jxVar == null || !jxVar.isHasShowCallback() || v.hp()) ? new w() : new a(jl.hp(this.f27112l, this.hp, true));
    }

    @Override // com.byazt.ju.k
    public void e() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.onPause();
        }
    }

    @Override // com.byazt.ju.k
    public boolean eb() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.hasDislike();
        }
        return false;
    }

    @Override // com.byazt.ju.k
    public void hp(com.byazt.ju.v vVar) {
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l j() {
        return (this.hp == null || !com.byazt.di.l.l().lv()) ? new w() : new a(jl.hp(this.f27112l, this.hp, false));
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.l> jx() {
        List<com.byazt.dq.jx> listGu;
        ArrayList arrayList = new ArrayList();
        eb ebVar = this.jx;
        if (ebVar != null && (listGu = ebVar.gu()) != null) {
            for (com.byazt.dq.jx jxVar : listGu) {
                if (jxVar != null) {
                    arrayList.add(new a(jxVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.j> l() {
        List<com.byazt.dq.l> listE;
        ArrayList arrayList = new ArrayList();
        eb ebVar = this.jx;
        if (ebVar != null && (listE = ebVar.e()) != null) {
            for (com.byazt.dq.l lVar : listE) {
                if (lVar != null) {
                    arrayList.add(new com.byazt.ju.hp(lVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.ju.k
    public void q() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.onResume();
        }
    }

    @Override // com.byazt.ju.k
    public boolean s() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.isExpressAd();
        }
        return false;
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.l> w() {
        List<com.byazt.dq.jx> listJl;
        ArrayList arrayList = new ArrayList();
        eb ebVar = this.jx;
        if (ebVar != null && (listJl = ebVar.jl()) != null) {
            for (com.byazt.dq.jx jxVar : listJl) {
                if (jxVar != null) {
                    arrayList.add(new a(jxVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.eb.jx
    public boolean hp() throws JSONException {
        if (this.hp == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.hp);
        com.byazt.lsx.a.hp(arrayList, (List<com.byazt.rt.jx>) null, (List<com.byazt.rt.jx>) null, this.f27112l, 0);
        com.byazt.iqm.l lVar = this.f27112l;
        if (lVar != null) {
            return this.hp.isReady(lVar.sz());
        }
        return false;
    }

    @Override // com.byazt.ju.k
    public void hp(boolean z2) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.setUseCustomVideo(z2);
        }
    }
}
