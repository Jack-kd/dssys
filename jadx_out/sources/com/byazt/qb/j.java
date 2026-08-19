package com.byazt.qb;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.eo.a;
import com.byazt.eo.w;
import com.byazt.fjm.RecyclerView;
import com.byazt.jdb.eb;
import com.byazt.jz.vv;
import com.byazt.ql.vv;
import com.byazt.xci.mp;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 159, 38})
/* loaded from: classes3.dex */
public class j extends com.byazt.dy.hp {

    /* renamed from: b, reason: collision with root package name */
    public boolean f24549b;
    public int cx;
    public List<com.byazt.eo.jx> ns;

    public j(Context context, ViewGroup viewGroup, eb ebVar, mp mpVar, String str, int i2) {
        super(context, viewGroup, ebVar, mpVar, str, i2);
    }

    @Override // com.byazt.qk.gu
    public void a() {
    }

    @Override // com.byazt.qk.gu
    public void e() {
    }

    @Override // com.byazt.qk.gu
    public void eb() {
    }

    @Override // com.byazt.dy.hp
    public List<com.byazt.eo.jx> gu() throws JSONException {
        this.ns = new ArrayList();
        JSONObject jSONObjectIj = this.f19367w.ij();
        this.ns.add(0, new com.byazt.eo.jx(jSONObjectIj, -1221270899));
        this.ns.add(new com.byazt.eo.jx(jSONObjectIj, -2134548432));
        return this.ns;
    }

    @Override // com.byazt.qk.gu
    public long hp() {
        return 0L;
    }

    @Override // com.byazt.qk.gu
    public void j() {
    }

    @Override // com.byazt.qk.gu
    public int jx() {
        return 0;
    }

    @Override // com.byazt.qk.gu
    public int l() {
        return 0;
    }

    @Override // com.byazt.qk.gu
    public void q() {
    }

    @Override // com.byazt.qk.gu
    public void s() {
    }

    @Override // com.byazt.qk.gu
    public void setPauseFromExpressView(boolean z2) {
    }

    @Override // com.byazt.qk.gu
    public void w() {
    }

    public void a(int i2) {
        this.cx = i2;
        if (i2 < 0) {
            return;
        }
        final String str = String.format("浏览%d秒可领金币", Integer.valueOf(i2));
        if (this.eb instanceof a) {
            vv.a().post(new Runnable() { // from class: com.byazt.qb.j.1
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.eb != null) {
                        try {
                            RecyclerView recyclerView = (RecyclerView) ((a) j.this.eb).hp();
                            if (recyclerView.getScrollState() != 0 || recyclerView.k()) {
                                return;
                            }
                            ((a) j.this.eb).hp(0, "header");
                        } catch (Exception unused) {
                        }
                    }
                }
            });
            ((a) this.eb).hp(new w.j() { // from class: com.byazt.qb.j.2
                @Override // com.byazt.eo.w.j
                public void hp(RecyclerView.cx cxVar, int i3) {
                    com.byazt.xs.jx jxVarJ = ((w.C0219w) cxVar).d().j("count_down");
                    if (jxVarJ instanceof com.byazt.nf.l) {
                        ((com.byazt.nf.l) jxVarJ).jl(str);
                    }
                }
            });
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(float f2) {
    }

    @Override // com.byazt.qk.gu
    public void j(int i2) {
    }

    @Override // com.byazt.qk.gu
    public void jx(int i2) {
    }

    @Override // com.byazt.qk.gu
    public void l(int i2) {
    }

    @Override // com.byazt.qk.gu
    public void w(int i2) {
    }

    @Override // com.byazt.qk.gu
    public void hp(float f2, float f3, float f4, float f5, int i2) {
    }

    @Override // com.byazt.dy.j
    public void j(com.byazt.xs.jx<View> jxVar) {
        hp(jxVar);
    }

    @Override // com.byazt.dy.j
    public void w(com.byazt.xs.jx<View> jxVar) {
        if (jxVar == null) {
            return;
        }
        if (this.cx <= 0 && !this.f24549b && TextUtils.equals(jxVar.nu(), "header")) {
            a(0);
            this.f24549b = true;
        }
        JSONObject jSONObjectE = jxVar.e();
        if (jSONObjectE == null) {
            return;
        }
        vv.l lVarJ = jxVar.j("video_".concat(String.valueOf(jSONObjectE.optInt("image_mode"))));
        if (lVarJ instanceof com.byazt.vp.l) {
            com.byazt.vp.l lVar = (com.byazt.vp.l) lVarJ;
            lVar.hp(this.zy);
            lVar.su();
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(int i2) {
    }

    @Override // com.byazt.dy.jx
    public void jx(com.byazt.xs.jx jxVar) throws JSONException {
        mp mpVarHp;
        if (jxVar == null || (mpVarHp = com.byazt.jz.hp.hp(jxVar.e())) == null) {
            return;
        }
        hp(mpVarHp, jxVar);
    }

    @Override // com.byazt.qk.gu
    public void hp(int i2, String str) {
    }

    @Override // com.byazt.dy.j
    public void hp(RecyclerView recyclerView, int i2) {
    }

    @Override // com.byazt.dy.j
    public void a(com.byazt.xs.jx<View> jxVar) {
        JSONObject jSONObjectE;
        if (jxVar == null || (jSONObjectE = jxVar.e()) == null) {
            return;
        }
        vv.l lVarJ = jxVar.j("video_".concat(String.valueOf(jSONObjectE.optInt("image_mode"))));
        if (lVarJ instanceof com.byazt.vp.l) {
            ((com.byazt.vp.l) lVarJ).an();
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(mp mpVar) {
    }

    @Override // com.byazt.qk.gu
    public void hp(boolean z2) {
    }

    @Override // com.byazt.dy.j
    public void hp(int i2, int i3) {
        if (i3 > 0) {
            this.f19357e.set(1);
        }
    }

    @Override // com.byazt.dy.j
    public void hp(com.byazt.xs.jx jxVar, int i2, View view, com.byazt.eo.jx jxVar2) throws JSONException {
        if (jxVar2 == null || jxVar2.hp() == null) {
            return;
        }
        int iHashCode = jxVar2.hp().hashCode();
        if (this.gu.get(Integer.valueOf(iHashCode)) != null && this.gu.containsKey(Integer.valueOf(iHashCode)) && this.gu.get(Integer.valueOf(iHashCode)).booleanValue()) {
            return;
        }
        hp(jxVar2.hp());
        this.gu.put(Integer.valueOf(iHashCode), Boolean.TRUE);
    }
}
