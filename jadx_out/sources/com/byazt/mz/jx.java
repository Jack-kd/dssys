package com.byazt.mz;

import com.byazt.ju.k;
import com.byazt.toc.q;
import com.byazt.zg.jl;
import com.byazt.zg.v;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 663, 30})
/* loaded from: classes3.dex */
public class jx implements k {
    public com.byazt.rt.jx hp;
    public q jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.iqm.l f23340l;

    public jx(q qVar, com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar) {
        this.hp = jxVar;
        this.f23340l = lVar;
        this.jx = qVar;
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l a() {
        com.byazt.rt.jx jxVar = this.hp;
        return (jxVar == null || !jxVar.isHasShowCallback() || v.hp()) ? new com.byazt.ju.w() : new com.byazt.ju.a(jl.hp(this.f23340l, this.hp, true));
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

    @Override // com.byazt.eb.jx
    public boolean hp() throws JSONException {
        if (this.f23340l == null || this.hp == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.hp);
        com.byazt.lsx.a.hp(arrayList, (List<com.byazt.rt.jx>) null, (List<com.byazt.rt.jx>) null, this.f23340l, 0);
        return this.hp.isReady(this.f23340l.sz());
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l j() {
        com.byazt.iqm.l lVar;
        return (this.hp == null || (lVar = this.f23340l) == null) ? new com.byazt.ju.w() : (lVar.vq() || com.byazt.di.l.l().lv()) ? new com.byazt.ju.a(jl.hp(this.f23340l, this.hp, false)) : new com.byazt.ju.w();
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.l> jx() {
        List<com.byazt.dq.jx> listGu;
        ArrayList arrayList = new ArrayList();
        q qVar = this.jx;
        if (qVar != null && (listGu = qVar.gu()) != null) {
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
        q qVar = this.jx;
        if (qVar != null && (listE = qVar.e()) != null) {
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
        q qVar = this.jx;
        if (qVar != null && (listJl = qVar.jl()) != null) {
            for (com.byazt.dq.jx jxVar : listJl) {
                if (jxVar != null) {
                    arrayList.add(new com.byazt.ju.a(jxVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.ju.k
    public void hp(boolean z2) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.setUseCustomVideo(z2);
        }
    }

    @Override // com.byazt.ju.k
    public void hp(final com.byazt.ju.v vVar) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.setGmShakeViewListener(new com.byazt.voc.w() { // from class: com.byazt.mz.jx.1
                @Override // com.byazt.voc.w
                public void hp() {
                    com.byazt.ju.v vVar2 = vVar;
                    if (vVar2 != null) {
                        vVar2.hp();
                    }
                }
            });
        }
    }
}
