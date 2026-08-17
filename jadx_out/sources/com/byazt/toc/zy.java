package com.byazt.toc;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.byazt.bki.u;
import com.byazt.zg.xs;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 225, 302})
/* loaded from: classes3.dex */
public class zy extends l implements com.byazt.sdu.w {
    public com.byazt.htw.j ec;
    public boolean hp;

    /* renamed from: l, reason: collision with root package name */
    public boolean f25964l;
    public boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public View f25965u;
    public com.byazt.htw.l vv;
    public com.byazt.htw.jx xs;

    public zy(Context context) {
        super(context);
        this.hp = false;
        this.f25964l = false;
        this.sz = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(ViewGroup viewGroup) throws JSONException, NumberFormatException {
        boolean z2;
        List<com.byazt.gp.eb> listHp;
        com.byazt.rt.jx jxVar;
        com.byazt.lsx.a.hp(this.f25948a);
        List<com.byazt.tgw.e> listL = null;
        if (this.jl) {
            com.byazt.lsx.a.hp((List<com.byazt.rt.jx>) null, this.f25948a, 0);
            jx(new com.byazt.dq.hp(40052, com.byazt.dq.hp.hp(40052)));
            return;
        }
        int iL = l.l(this.f25956w);
        if (iL != 0) {
            com.byazt.lsx.a.hp((List<com.byazt.rt.jx>) null, this.f25948a, iL);
            jx(new com.byazt.dq.hp(iL, com.byazt.dq.hp.hp(iL)));
            return;
        }
        List<com.byazt.rt.jx> listHp2 = this.jx.hp(true);
        this.jx.hp(listHp2);
        if (viewGroup == null) {
            com.byazt.lsx.a.hp(listHp2, this.f25948a, 0);
            jx(new com.byazt.dq.hp(40052, com.byazt.dq.hp.hp(40052)));
            return;
        }
        try {
            listL = l();
        } catch (Throwable unused) {
        }
        if (listL == null || listL.size() <= 0) {
            z2 = false;
        } else {
            HashMap<String, com.byazt.rt.jx> mapL = l(listHp2);
            for (com.byazt.tgw.e eVar : listL) {
                if (eVar != null) {
                    String strVv = eVar.vv();
                    com.byazt.rt.jx jxVar2 = mapL.get(strVv);
                    if (jxVar2 != null && jxVar2.isReady(this.f25956w) && !jxVar2.isHasShown()) {
                        hp(jxVar2, viewGroup);
                    } else if (eVar.sz() && com.byazt.xob.hp.hp().j(this.f25956w, strVv, vv()) && com.byazt.xob.hp.hp().hp(strVv, this.f25948a, false) == 3 && (listHp = com.byazt.xob.hp.hp().hp(strVv, this.f25948a, vv())) != null && listHp.size() > 0 && (jxVar = listHp.get(0).hp) != null && jxVar.isReady(this.f25956w) && !jxVar.isHasShown()) {
                        com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25956w, "show") + "adSlotId：" + jxVar.getAdNetworkSlotId() + "，广告类型：" + com.byazt.rt.hp.hp(jxVar.getAdNetworkPlatformId()) + ",isReady()：" + jxVar.isReady(this.f25956w));
                        l(jxVar);
                        hp(jxVar, viewGroup);
                    }
                    z2 = true;
                    break;
                }
            }
            z2 = false;
        }
        boolean z3 = z2;
        if (!z2 && listHp2 != null && listHp2.size() > 0) {
            Iterator<com.byazt.rt.jx> it = listHp2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                com.byazt.rt.jx next = it.next();
                if (next != null && next.isReady(this.f25956w) && !next.isHasShown()) {
                    hp(next, viewGroup);
                    z3 = true;
                    break;
                }
            }
        }
        if (!z3) {
            com.byazt.lsx.a.hp(listHp2, this.f25948a, 0);
            jx(new com.byazt.dq.hp(40052, com.byazt.dq.hp.hp(40052)));
            return;
        }
        this.jl = true;
        if (this.f25950j != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f25950j);
            com.byazt.ano.hp hpVarHp = com.byazt.ano.hp.hp();
            com.byazt.iqm.l lVar = this.f25948a;
            hpVarHp.hp(lVar, com.byazt.ano.hp.hp(lVar, arrayList, listHp2));
            hp(arrayList);
        }
        com.byazt.lsx.a.hp(this.f25950j, this.f25948a, false, 0);
    }

    public View a() {
        return null;
    }

    public void b() {
        this.f25964l = true;
    }

    public void cx() {
        if (this.f25950j.canAdReuse() && com.byazt.xob.hp.hp().j(this.f25956w, this.f25950j.getAdNetworkSlotId(), vv())) {
            com.byazt.xob.hp.hp().hp(this.f25950j.getAdNetworkSlotId(), this.f25948a, this.jx.dy(), true, this.jx.lv(), this.jx.xh(), this.f25954s.get());
        }
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void eb() {
        com.byazt.htw.jx jxVar = this.xs;
        if (jxVar != null) {
            jxVar.hp();
        }
    }

    @Override // com.byazt.toc.l
    public com.byazt.dq.jx f_() {
        if (this.sz) {
            return super.f_();
        }
        return null;
    }

    @Override // com.byazt.sdu.w
    public Activity getActivity() {
        com.byazt.htw.j jVar = this.ec;
        if (jVar != null) {
            return jVar.getActivity();
        }
        return null;
    }

    @Override // com.byazt.htw.l
    public void j() {
        String strL;
        long jCurrentTimeMillis;
        com.byazt.htw.l lVar = this.vv;
        if (lVar != null) {
            lVar.j();
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f25950j)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        String str = strL;
        long j2 = jCurrentTimeMillis;
        com.byazt.xoi.hp.w(this.f25948a.sz());
        com.byazt.rt.jx jxVar = this.f25950j;
        com.byazt.lsx.a.hp(jxVar, this.f25948a, 0, str, j2, jxVar.isClickListenRepeatOnce());
    }

    @Override // com.byazt.toc.l
    public void jx() throws NumberFormatException {
        if (this.f25950j == null) {
            com.byazt.xob.hp hpVarHp = com.byazt.xob.hp.hp();
            List<com.byazt.rt.jx> listHp = this.jx.hp(false);
            String str = this.f25956w;
            com.byazt.iqm.l lVar = this.f25948a;
            hpVarHp.hp(listHp, str, lVar, lVar.w(), this.f25950j);
        }
        super.jx();
    }

    @Override // com.byazt.sdu.w
    public void k_() {
        com.byazt.htw.j jVar = this.ec;
        if (jVar != null) {
            jVar.l();
        }
    }

    @Override // com.byazt.sdu.w
    public void l_() {
        com.byazt.htw.j jVar = this.ec;
        if (jVar != null) {
            jVar.jx();
        }
    }

    public boolean n() {
        List<com.byazt.tgw.e> listL;
        try {
            listL = l();
        } catch (Throwable unused) {
            listL = null;
        }
        return com.byazt.zg.jl.hp(this.jx.gu(), this.jx.k(), this.jx.jl(), this.f25948a, this.jl, this.f25956w, this.f25948a.w(), listL);
    }

    public View ns() throws JSONException, NumberFormatException {
        SoftReference<Context> softReference = this.f25954s;
        Context context = softReference != null ? softReference.get() : null;
        if (this.f25965u == null && context != null) {
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            l(frameLayout);
            this.f25965u = frameLayout;
            hp(this.f25950j);
        }
        return this.f25965u;
    }

    @Override // com.byazt.htw.l
    public void w() {
        String strL;
        long jCurrentTimeMillis;
        this.sz = true;
        com.byazt.htw.l lVar = this.vv;
        if (lVar != null) {
            lVar.w();
        }
        com.byazt.lyn.zy.hp().eb(this.f25956w);
        if (this.f25950j != null) {
            com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25956w, "show_listen") + "adSlotId：" + this.f25950j.getAdNetworkSlotId() + "，广告类型：" + com.byazt.rt.hp.hp(this.f25950j.getAdNetworkPlatformId()));
            com.byazt.lyn.gu.hp().l(this.f25956w, this.f25950j.getAdNetworkSlotId());
        }
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            com.byazt.wgi.jx.hp(jxVar.getAdnName(), this.f25956w, this.f25950j.getAdNetworkSlotId());
        }
        cx();
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f25950j)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 0, strL, jCurrentTimeMillis, false, sz());
        com.byazt.xoi.hp.eb(this.f25948a.sz());
        com.byazt.xoi.hp.jx(this.f25948a.sz());
        com.byazt.ney.j.hp(1, this.f25948a.sz(), this.f25950j.getAdType(), this.f25950j.getCpm());
        com.byazt.qca.jx.hp(this.f25956w, this.f25950j);
    }

    public void hp(com.byazt.iqm.l lVar, com.byazt.bki.gu guVar, com.byazt.htw.jx jxVar) {
        hp(lVar);
        this.jx.hp(guVar);
        this.xs = jxVar;
        this.f25953q = this;
        this.jx.dy().put("ad_load_timeout", Integer.valueOf(lVar.u()));
        if (com.byazt.di.l.l().xh()) {
            com.byazt.bki.e.hp(new u() { // from class: com.byazt.toc.zy.1
                @Override // com.byazt.bki.u
                public void hp() {
                    zy.this.q();
                }
            });
        } else {
            q();
        }
    }

    private void jx(final com.byazt.dq.hp hpVar) {
        com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.toc.zy.3
            @Override // java.lang.Runnable
            public void run() {
                if (zy.this.vv != null) {
                    zy.this.vv.hp(hpVar);
                }
            }
        });
    }

    public void hp(com.byazt.htw.l lVar) {
        this.vv = lVar;
    }

    public void hp(com.byazt.htw.j jVar) {
        this.ec = jVar;
    }

    public void hp(final ViewGroup viewGroup) {
        final String[] strArr = new String[1];
        final boolean zKg = com.byazt.di.l.l().kg();
        if (zKg) {
            strArr[0] = xs.hp();
        }
        com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.toc.zy.2
            @Override // java.lang.Runnable
            public void run() throws JSONException, NumberFormatException {
                zy.this.l(viewGroup);
                if (zKg) {
                    zy zyVar = zy.this;
                    com.byazt.lsx.a.hp(zyVar.f25950j, zyVar.f25948a, strArr[0], 2);
                }
            }
        });
    }

    private void hp(com.byazt.rt.jx jxVar, ViewGroup viewGroup) {
        this.f25950j = jxVar;
        if (this.f25964l) {
            jxVar.hideSkipButton();
        }
        com.byazt.voc.l lVar = this.zy;
        if (lVar != null) {
            this.f25950j.setTTAdAppDownloadListener(lVar);
        }
        com.byazt.gu.l lVar2 = this.f25951k;
        if (lVar2 != null) {
            this.f25950j.setAdInteractionListener(lVar2);
        }
        this.jx.j(this.f25950j);
        this.f25950j.setHasShown(true);
        this.f25950j.setTTAdatperCallback(this.f25953q);
        if (this.f25950j.canAdReuse() && com.byazt.xob.hp.hp().j(this.f25956w, this.f25950j.getAdNetworkSlotId(), vv())) {
            com.byazt.rt.jx jxVar2 = this.f25950j;
            com.byazt.mey.a.hp(jxVar2, this.f25956w, jxVar2.getAdNetworkSlotId());
        }
        com.byazt.xob.hp.hp().hp(this.jx.hp(false), this.f25956w, this.f25948a, vv(), this.f25950j);
        com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25956w, "show") + "展示的广告类型：" + com.byazt.rt.hp.hp(this.f25950j.getAdNetworkPlatformId()) + ",slotId：" + this.f25950j.getAdNetworkSlotId() + ",slotType:" + this.f25950j.getAdNetworkSlotType());
        com.byazt.lyn.zy zyVarHp = com.byazt.lyn.zy.hp();
        StringBuilder sb = new StringBuilder();
        sb.append(this.f25956w);
        zyVarHp.l(sb.toString());
        com.byazt.lyn.jl.hp().l(this.f25956w, this.f25950j.getAdNetworkSlotId());
        this.f25950j.showSplashAd(viewGroup);
    }

    @Override // com.byazt.sdu.w
    public void hp() {
        com.byazt.htw.j jVar = this.ec;
        if (jVar != null) {
            jVar.hp();
        }
    }

    @Override // com.byazt.htw.l
    public void hp(@NonNull com.byazt.dq.hp hpVar) {
        String strL;
        long jCurrentTimeMillis;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f25950j)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        com.byazt.lsx.a.hp(this.f25950j, this.f25948a, hpVar, 1, 0, strL, jCurrentTimeMillis);
        jx(hpVar);
    }

    @Override // com.byazt.htw.l
    public void hp(int i2) {
        com.byazt.htw.l lVar = this.vv;
        if (lVar != null) {
            lVar.hp(1);
        }
        com.byazt.iqm.l lVar2 = this.f25948a;
        if (lVar2 == null || !lVar2.vq()) {
            com.byazt.gp.j.hp().hp(this.f25954s.get(), this.f25956w, vv());
        }
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void l(@NonNull com.byazt.dq.hp hpVar) {
        com.byazt.htw.jx jxVar = this.xs;
        if (jxVar != null) {
            jxVar.hp(hpVar);
        }
    }

    @Override // com.byazt.htw.l
    public void l(int i2) {
        com.byazt.htw.l lVar = this.vv;
        if (lVar != null) {
            lVar.l(i2);
        }
        com.byazt.iqm.l lVar2 = this.f25948a;
        if (lVar2 == null || !lVar2.vq()) {
            com.byazt.gp.j.hp().hp(this.f25954s.get(), this.f25956w, vv());
        }
    }

    public void hp(ViewGroup viewGroup, Activity activity) {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            jxVar.showSplashCardView(viewGroup, activity);
        }
    }
}
