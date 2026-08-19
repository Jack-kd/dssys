package com.byazt.toc;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.zg.xs;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 225, 54})
/* loaded from: classes3.dex */
public class a extends l implements com.byazt.sdu.hp {
    public com.byazt.qre.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.qre.l f25901l;

    /* renamed from: u, reason: collision with root package name */
    public boolean f25902u;
    public com.byazt.qre.j xs;

    public a(Context context) {
        super(context);
        this.f25902u = false;
    }

    public void a() {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            jxVar.onResume();
        }
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void eb() {
        com.byazt.qre.l lVar = this.f25901l;
        if (lVar != null) {
            lVar.hp();
        }
    }

    @Override // com.byazt.toc.l
    public com.byazt.dq.jx f_() {
        if (this.f25902u) {
            return super.f_();
        }
        return null;
    }

    public boolean j() {
        List<com.byazt.tgw.e> listL;
        try {
            listL = l();
        } catch (Throwable unused) {
            listL = null;
        }
        return com.byazt.zg.jl.hp(this.jx.gu(), this.jx.k(), this.jx.jl(), this.f25948a, this.jl, this.f25956w, this.f25948a.w(), listL);
    }

    @Override // com.byazt.toc.l
    public void jx() throws NumberFormatException {
        if (!this.jl) {
            com.byazt.xob.hp hpVarHp = com.byazt.xob.hp.hp();
            List<com.byazt.rt.jx> listHp = this.jx.hp(false);
            String str = this.f25956w;
            com.byazt.iqm.l lVar = this.f25948a;
            hpVarHp.hp(listHp, str, lVar, lVar.w(), this.f25950j);
        }
        super.jx();
        this.hp = null;
        this.f25901l = null;
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void l(@NonNull com.byazt.dq.hp hpVar) {
        com.byazt.qre.l lVar = this.f25901l;
        if (lVar != null) {
            lVar.hp(hpVar);
        }
    }

    public void n() {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            jxVar.onPause();
        }
    }

    public com.byazt.qt.j ns() {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            return jxVar.getDislikeInfo();
        }
        return null;
    }

    public int w() {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            return jxVar.getImageMode();
        }
        return 0;
    }

    public void hp(com.byazt.iqm.l lVar, com.byazt.qre.l lVar2) {
        hp(lVar);
        this.f25953q = this;
        this.f25901l = lVar2;
        q();
    }

    @Override // com.byazt.qre.hp
    public void l(View view) {
        String strL;
        long jCurrentTimeMillis;
        this.f25902u = true;
        if (this.hp != null) {
            com.byazt.lyn.zy.hp().eb(this.f25956w);
            com.byazt.lyn.zy.hp().l(this.f25956w);
            this.hp.l(view);
        }
        if (this.f25950j != null) {
            com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25956w, "show_listen") + "adSlotId：" + this.f25950j.getAdNetworkSlotId() + "，广告类型：" + com.byazt.rt.hp.hp(this.f25950j.getAdNetworkPlatformId()));
            com.byazt.lyn.gu.hp().l(this.f25956w, this.f25950j.getAdNetworkSlotId());
            com.byazt.lyn.jl.hp().l(this.f25956w, this.f25950j.getAdNetworkSlotId());
        }
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            com.byazt.wgi.jx.hp(jxVar.getAdnName(), this.f25956w, this.f25950j.getAdNetworkSlotId());
        }
        hp(true);
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

    public void j(String str) {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            jxVar.uploadDislikeEvent(str);
        }
    }

    private void jx(final com.byazt.dq.hp hpVar) {
        com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.toc.a.2
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.hp != null) {
                    a.this.hp.hp(hpVar);
                }
            }
        });
    }

    public void hp(com.byazt.qre.j jVar) {
        this.xs = jVar;
    }

    private com.byazt.qre.jx jx(final com.byazt.rt.jx jxVar) {
        return new com.byazt.qre.jx() { // from class: com.byazt.toc.a.3
            @Override // com.byazt.qre.jx
            @Nullable
            public List<String> a() {
                return jxVar.getImages();
            }

            @Override // com.byazt.qre.jx
            public com.byazt.qjq.hp e() {
                if (!jxVar.hasAppInfo()) {
                    return null;
                }
                com.byazt.qjq.hp hpVar = new com.byazt.qjq.hp();
                hpVar.j(jxVar.getAppName());
                hpVar.w(jxVar.getAuthorName());
                hpVar.hp(jxVar.getPackageSizeBytes());
                hpVar.a(jxVar.getPermissionsUrl());
                hpVar.eb(jxVar.getPrivacyAgreement());
                hpVar.s(jxVar.getVersionName());
                hpVar.hp(jxVar.getPermissionsMap());
                hpVar.l(jxVar.getAppInfoExtra());
                hpVar.jx(jxVar.getFunctionDescUrl());
                hpVar.hp(jxVar.getRegUrl());
                hpVar.l(jxVar.getRegNumber());
                return hpVar;
            }

            @Override // com.byazt.qre.jx
            @Nullable
            public String eb() {
                return jxVar.getSource();
            }

            @Override // com.byazt.qre.jx
            public boolean gu() {
                return jxVar.hasDislike();
            }

            @Override // com.byazt.qre.jx
            @Nullable
            public String hp() {
                return jxVar.getAdTitle();
            }

            @Override // com.byazt.qre.jx
            @Nullable
            public String j() {
                return jxVar.getActionText();
            }

            @Override // com.byazt.qre.jx
            public com.byazt.qt.j jl() {
                com.byazt.rt.jx jxVar2 = jxVar;
                if (jxVar2 != null) {
                    return jxVar2.getDislikeInfo();
                }
                return null;
            }

            @Override // com.byazt.qre.jx
            @Nullable
            public String jx() {
                return jxVar.getImageUrl();
            }

            @Override // com.byazt.qre.jx
            @Nullable
            public String l() {
                return jxVar.getIconUrl();
            }

            @Override // com.byazt.qre.jx
            public int q() {
                return jxVar.getInteractionType();
            }

            @Override // com.byazt.qre.jx
            public int s() {
                return jxVar.getImageMode();
            }

            @Override // com.byazt.qre.jx
            public double w() {
                return jxVar.getStarRating();
            }

            @Override // com.byazt.qre.jx
            public void hp(@NonNull Activity activity, @NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable List<View> list3, com.byazt.qjq.e eVar) {
                jxVar.registerViewForInteraction(activity, viewGroup, list, list2, list3, eVar, null);
            }

            @Override // com.byazt.qre.jx
            public com.byazt.qt.eb l(Activity activity) {
                com.byazt.rt.jx jxVar2 = jxVar;
                if (jxVar2 != null) {
                    return jxVar2.getDislikeDialog(activity);
                }
                return null;
            }

            @Override // com.byazt.qre.jx
            @Nullable
            public com.byazt.bki.l hp(Activity activity) {
                return hp(activity, (Map<String, Object>) null);
            }

            @Override // com.byazt.qre.jx
            @Nullable
            public com.byazt.bki.l hp(Activity activity, Map<String, Object> map) {
                final com.byazt.qt.eb dislikeDialog = jxVar.getDislikeDialog(activity);
                return new com.byazt.bki.l() { // from class: com.byazt.toc.a.3.1
                    @Override // com.byazt.bki.l
                    public void hp() {
                        com.byazt.qt.eb ebVar = dislikeDialog;
                        if (ebVar != null) {
                            ebVar.showDislikeDialog();
                        }
                    }

                    @Override // com.byazt.bki.l
                    public void hp(final com.byazt.bki.eb ebVar) {
                        com.byazt.qt.eb ebVar2 = dislikeDialog;
                        if (ebVar2 != null) {
                            ebVar2.setDislikeInteractionCallback(new com.byazt.cg.hp(null) { // from class: com.byazt.toc.a.3.1.1
                                @Override // com.byazt.cg.hp
                                public void hp() {
                                    com.byazt.bki.eb ebVar3 = ebVar;
                                    if (ebVar3 != null) {
                                        ebVar3.l();
                                    }
                                }

                                @Override // com.byazt.cg.hp
                                public void l() {
                                    com.byazt.bki.eb ebVar3 = ebVar;
                                    if (ebVar3 != null) {
                                        ebVar3.hp();
                                    }
                                }

                                @Override // com.byazt.cg.hp
                                public void hp(int i2, String str, boolean z2) {
                                    com.byazt.bki.eb ebVar3 = ebVar;
                                    if (ebVar3 != null) {
                                        ebVar3.hp(i2, str);
                                    }
                                }
                            });
                        }
                    }
                };
            }

            @Override // com.byazt.qre.jx
            public com.byazt.qt.eb l(Dialog dialog, Integer[] numArr) {
                com.byazt.rt.jx jxVar2 = jxVar;
                if (jxVar2 != null) {
                    return jxVar2.getDislikeDialog(dialog, numArr);
                }
                return null;
            }

            @Override // com.byazt.qre.jx
            public void hp(Activity activity, com.byazt.cg.hp hpVar) {
                com.byazt.rt.jx jxVar2 = jxVar;
                if (jxVar2 != null) {
                    jxVar2.setDislikeCallback(activity, hpVar);
                }
            }

            @Override // com.byazt.qre.jx
            public void hp(Dialog dialog, Integer[] numArr) {
                com.byazt.rt.jx jxVar2 = jxVar;
                if (jxVar2 != null) {
                    jxVar2.setDislikeDialog(dialog, numArr);
                }
            }
        };
    }

    public void hp(com.byazt.qre.hp hpVar) {
        this.hp = hpVar;
    }

    private View hp(Context context, com.byazt.rt.jx jxVar) {
        this.f25950j = jxVar;
        this.jx.j(jxVar);
        this.f25950j.setHasShown(true);
        this.f25950j.setTTAdatperCallback(this.f25953q);
        if (this.f25950j.canAdReuse() && com.byazt.xob.hp.hp().j(this.f25956w, this.f25950j.getAdNetworkSlotId(), this.f25948a.w())) {
            com.byazt.rt.jx jxVar2 = this.f25950j;
            com.byazt.mey.a.hp(jxVar2, this.f25956w, jxVar2.getAdNetworkSlotId());
        }
        hp(false);
        com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25956w, "show") + "展示的广告类型：" + com.byazt.rt.hp.hp(this.f25950j.getAdNetworkPlatformId()) + ",slotId：" + this.f25950j.getAdNetworkSlotId() + ",slotType:" + this.f25950j.getAdNetworkSlotType());
        final View adView = this.f25950j.getAdView();
        if (!this.f25950j.isCustomAd() && this.f25950j.getSubAdType() == 4 && !this.f25950j.isExpressAd()) {
            com.byazt.qre.j jVar = this.xs;
            if (jVar == null) {
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- banner混出自渲染信息流，但未提供GMNativeToBannerListener，将无法展示该广告");
            } else {
                try {
                    adView = jVar.hp(jx(this.f25950j));
                    if (adView == null) {
                        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- banner混出自渲染信息流，getGMBannerViewFromNativeAd()返回null，将无法展示该广告");
                    }
                } catch (Throwable unused) {
                    com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- banner混出自渲染信息流，getGMBannerViewFromNativeAd()发生异常，将无法展示该广告，信息如下：");
                }
            }
        }
        if (this.f25950j.hasDislike() && context != null) {
            this.f25950j.setDislikeCallback((Activity) context, new com.byazt.cg.hp(null) { // from class: com.byazt.toc.a.1
                @Override // com.byazt.cg.hp
                public void hp(int i2, String str, boolean z2) {
                    View view = adView;
                    if (view != null) {
                        View view2 = (View) view.getParent();
                        if (view2 instanceof ViewGroup) {
                            ((ViewGroup) view2).removeViewInLayout(adView);
                        }
                    }
                }
            });
        }
        return adView;
    }

    public void l(com.byazt.gu.l lVar) {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            jxVar.setAdInteractionListener(lVar);
        }
    }

    public synchronized View hp(Context context) {
        List<com.byazt.tgw.e> listL;
        View viewHp;
        com.byazt.rt.jx next;
        com.byazt.rt.jx jxVar;
        com.byazt.lsx.a.hp(this.f25948a);
        if (this.jl) {
            com.byazt.lsx.a.hp((List<com.byazt.rt.jx>) null, this.f25948a, 0);
            jx(new com.byazt.dq.hp(40052, com.byazt.dq.hp.hp(40052)));
            return null;
        }
        int iL = l.l(this.f25956w);
        if (iL != 0) {
            com.byazt.lsx.a.hp((List<com.byazt.rt.jx>) null, this.f25948a, iL);
            jx(new com.byazt.dq.hp(iL, com.byazt.dq.hp.hp(iL)));
            return null;
        }
        List<com.byazt.rt.jx> listHp = this.jx.hp(true);
        this.jx.hp(listHp);
        try {
            listL = l();
        } catch (Throwable unused) {
            listL = null;
        }
        if (listL != null && listL.size() > 0) {
            HashMap<String, com.byazt.rt.jx> mapL = l(listHp);
            viewHp = null;
            for (com.byazt.tgw.e eVar : listL) {
                if (eVar != null) {
                    String strVv = eVar.vv();
                    com.byazt.rt.jx jxVar2 = mapL.get(strVv);
                    if (jxVar2 != null && jxVar2.isReady(this.f25956w) && !jxVar2.isHasShown() && (viewHp = hp(context, jxVar2)) != null) {
                        break;
                    }
                    if (eVar.sz() && com.byazt.xob.hp.hp().j(this.f25956w, strVv, this.f25948a.w()) && com.byazt.xob.hp.hp().hp(strVv, this.f25948a, false) == 3) {
                        com.byazt.xob.hp hpVarHp = com.byazt.xob.hp.hp();
                        com.byazt.iqm.l lVar = this.f25948a;
                        List<com.byazt.gp.eb> listHp2 = hpVarHp.hp(strVv, lVar, lVar.w());
                        if (listHp2 != null && listHp2.size() > 0 && (jxVar = listHp2.get(0).hp) != null && jxVar.isReady(this.f25956w) && !jxVar.isHasShown()) {
                            l(jxVar);
                            viewHp = hp(context, jxVar);
                            if (viewHp != null) {
                                break;
                            }
                        }
                    }
                }
            }
        } else {
            viewHp = null;
        }
        if (viewHp == null && listHp != null && listHp.size() > 0) {
            Iterator<com.byazt.rt.jx> it = listHp.iterator();
            while (it.hasNext() && ((next = it.next()) == null || !next.isReady(this.f25956w) || next.isHasShown() || (viewHp = hp(context, next)) == null)) {
            }
        }
        if (viewHp != null) {
            this.jl = true;
            List<com.byazt.rt.jx> listHp3 = this.jx.hp(true);
            com.byazt.xob.hp hpVarHp2 = com.byazt.xob.hp.hp();
            String str = this.f25956w;
            com.byazt.iqm.l lVar2 = this.f25948a;
            hpVarHp2.hp(listHp3, str, lVar2, lVar2.w(), this.f25950j);
            if (this.f25950j != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.f25950j);
                com.byazt.ano.hp hpVarHp3 = com.byazt.ano.hp.hp();
                com.byazt.iqm.l lVar3 = this.f25948a;
                hpVarHp3.hp(lVar3, com.byazt.ano.hp.hp(lVar3, arrayList, listHp3));
                hp(arrayList);
            }
            com.byazt.lsx.a.hp(this.f25950j, this.f25948a, false, 0);
            return viewHp;
        }
        com.byazt.lsx.a.hp(listHp, this.f25948a, 0);
        jx(new com.byazt.dq.hp(40052, com.byazt.dq.hp.hp(40052)));
        return null;
    }

    private void hp(boolean z2) {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null && jxVar.canAdReuse() && com.byazt.xob.hp.hp().j(this.f25956w, this.f25950j.getAdNetworkSlotId(), this.f25948a.w())) {
            com.byazt.xob.hp.hp().hp(this.f25950j.getAdNetworkSlotId(), this.f25948a, this.jx.dy(), z2, this.jx.lv(), this.jx.xh(), this.f25954s.get());
        }
    }

    @Override // com.byazt.qre.hp
    public void hp() {
        com.byazt.qre.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp();
        }
    }

    @Override // com.byazt.qre.hp
    public void hp(View view) {
        String strL;
        long jCurrentTimeMillis;
        com.byazt.qre.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(view);
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

    @Override // com.byazt.qre.hp
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

    public void hp(Activity activity, com.byazt.cg.hp hpVar) {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            jxVar.setDislikeCallback(activity, hpVar);
        }
    }

    public void hp(Dialog dialog, Integer[] numArr) {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            jxVar.setDislikeDialog(dialog, numArr);
        }
    }

    public com.byazt.qt.eb hp(Activity activity) {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            return jxVar.getDislikeDialog(activity);
        }
        return null;
    }

    public void hp(com.byazt.gu.jx jxVar) {
        com.byazt.rt.jx jxVar2 = this.f25950j;
        if (jxVar2 != null) {
            jxVar2.setDownloadListener(jxVar);
        }
    }

    public void hp(com.byazt.qrd.jx jxVar) {
        com.byazt.rt.jx jxVar2 = this.f25950j;
        if (jxVar2 != null) {
            jxVar2.setVideoAdListener(jxVar);
        }
    }
}
