package com.byazt.mz;

import android.app.Activity;
import android.app.Dialog;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.byazt.ju.e;
import com.byazt.lyn.gu;
import com.byazt.lyn.zy;
import com.byazt.qjq.s;
import com.byazt.qt.eb;
import com.byazt.qt.k;
import com.byazt.toc.q;
import com.byazt.zg.jl;
import com.byazt.zg.v;
import com.byazt.zg.xs;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 663, 38})
/* loaded from: classes3.dex */
public class j extends k {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.qrd.l f23330a;
    public com.byazt.gu.jx eb;
    public q hp;

    /* renamed from: j, reason: collision with root package name */
    public View f23331j;
    public com.byazt.iqm.l jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.rt.jx f23332l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.gu.l f23333q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.tl.l f23334s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.qrd.jx f23335w;

    public j(q qVar, com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, com.byazt.tl.l lVar2) {
        this.hp = qVar;
        this.f23334s = lVar2;
        this.f23332l = jxVar;
        if (jxVar != null && jxVar.getSubAdType() == 3) {
            this.f23332l.setExpressAd(true);
        }
        this.jx = lVar;
        hp();
    }

    @Override // com.byazt.qt.k
    public void destroy() {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            try {
                jxVar.onDestroy();
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.qt.k
    public eb getDislikeDialog(Activity activity) {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            return jxVar.getDislikeDialog(activity);
        }
        return null;
    }

    @Override // com.byazt.qt.k
    public com.byazt.qt.j getDislikeInfo() {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            return jxVar.getDislikeInfo();
        }
        return null;
    }

    @Override // com.byazt.qt.k
    public View getExpressAdView() throws JSONException {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            if (jxVar.isExpressAd()) {
                com.byazt.lsx.a.hp(this.jx);
                if (this.f23332l.getCallBack() != null) {
                    this.f23332l.getCallBack().hp();
                }
                com.byazt.rt.jx jxVar2 = this.f23332l;
                com.byazt.lsx.a.hp(jxVar2, this.jx, jxVar2.isShowRepeatOnce(), 0);
                View adView = this.f23332l.getAdView();
                this.f23331j = adView;
                return adView;
            }
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(this.f23332l);
            com.byazt.lsx.a.hp(arrayList, this.jx, 0);
        }
        return null;
    }

    @Override // com.byazt.qt.k
    public int getImageMode() {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            return jxVar.getImageMode();
        }
        return -1;
    }

    @Override // com.byazt.qt.k
    public int getInteractionType() {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            return jxVar.getInteractionType();
        }
        return -1;
    }

    @Override // com.byazt.qt.k
    public String getLifecycleId() {
        return null;
    }

    @Override // com.byazt.qt.k
    public Map<String, Object> getMediaExtraInfo() {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar == null) {
            return null;
        }
        Map<String, Object> mediaExtraInfo = jxVar.getMediaExtraInfo();
        if (mediaExtraInfo == null) {
            com.byazt.iqm.l lVar = this.jx;
            mediaExtraInfo = com.byazt.toc.l.jx(lVar != null ? lVar.sz() : "");
        }
        if (this.f23332l.isHasShowCallback() && v.hp()) {
            String strHp = v.hp(jl.hp(this.jx, this.f23332l, true));
            if (!TextUtils.isEmpty(strHp)) {
                mediaExtraInfo.put("get_show_ecpm_info", strHp);
            }
        }
        return com.byazt.lz.l.hp(mediaExtraInfo, this.f23332l.getExtraMsg());
    }

    @Override // com.byazt.qt.k
    public com.byazt.qa.w getMediationManager() {
        return new e(new jx(this.hp, this.f23332l, this.jx));
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
    }

    @Override // com.byazt.qt.k
    public void registerClickableRects(JSONObject jSONObject) {
    }

    @Override // com.byazt.qt.k
    public void render() {
        com.byazt.qrd.l lVar;
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            if (jxVar.isExpressAd()) {
                a();
                this.f23332l.render();
                hp(this.f23332l);
                if (this.f23332l.getSubAdType() != 3 || (lVar = this.f23330a) == null) {
                    return;
                }
                lVar.hp((View) null, -1.0f, -2.0f);
                return;
            }
            com.byazt.tl.l lVar2 = this.f23334s;
            if (lVar2 == null) {
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 自渲染信息流转模板，开发者未提供MediationNativeToBannerListener，将无法展示该广告");
                return;
            }
            try {
                View viewHp = lVar2.hp(new com.byazt.ju.q(this.f23332l) { // from class: com.byazt.mz.j.3
                    @Override // com.byazt.ju.q, com.byazt.oj.hp
                    public void registerView(final Activity activity, final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, final com.byazt.tl.j jVar) throws JSONException {
                        j.this.hp(true, new Handler.Callback() { // from class: com.byazt.mz.j.3.1
                            @Override // android.os.Handler.Callback
                            public boolean handleMessage(@NonNull Message message) {
                                if (j.this.f23332l == null) {
                                    return false;
                                }
                                j.this.f23332l.registerViewForInteraction(activity, viewGroup, list, list2, list3, com.byazt.qjq.e.hp(jVar), null);
                                return false;
                            }
                        });
                    }
                });
                this.f23331j = viewHp;
                if (viewHp != null) {
                    com.byazt.qrd.l lVar3 = this.f23330a;
                    if (lVar3 != null) {
                        lVar3.hp(viewHp, 0.0f, 0.0f);
                        return;
                    }
                    return;
                }
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 自渲染信息流转模板，getMediationBannerViewFromNativeAd()返回null，将无法展示该广告");
                com.byazt.qrd.l lVar4 = this.f23330a;
                if (lVar4 != null) {
                    lVar4.hp((View) null, "渲染失败", com.anythink.core.common.m.q.f5857o);
                }
            } catch (Throwable unused) {
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 自渲染信息流转模板，getMediationBannerViewFromNativeAd()发生异常，将无法展示该广告，信息如下：");
            }
        }
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        this.f23333q = lVar;
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            jxVar.setAdInteractionListener(lVar);
        }
    }

    @Override // com.byazt.qt.k
    public void setCanInterruptVideoPlay(boolean z2) {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            jxVar.setCanInterruptVideoPlay(z2);
        }
    }

    @Override // com.byazt.qt.k
    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar == null || activity == null) {
            return;
        }
        jxVar.setDislikeCallback(activity, hpVar);
    }

    @Override // com.byazt.qt.k
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            jxVar.setDislikeDialog(dialog, numArr);
        }
    }

    @Override // com.byazt.qt.k
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
        this.eb = jxVar;
    }

    @Override // com.byazt.qt.k
    public void setExpressInteractionListener(com.byazt.qrd.l lVar) {
        this.f23330a = lVar;
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
    }

    @Override // com.byazt.qt.k
    public void setSlideIntervalTime(int i2) {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            jxVar.setSlideIntervalTime(i2);
        }
    }

    @Override // com.byazt.qt.k
    public void setVideoAdListener(com.byazt.qrd.jx jxVar) {
        this.f23335w = jxVar;
    }

    @Override // com.byazt.qt.k
    public void showInteractionExpressAd(Activity activity) {
    }

    @Override // com.byazt.qt.k
    public void unRegisterRects() {
    }

    @Override // com.byazt.qt.k
    public void uploadDislikeEvent(String str) {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar != null) {
            jxVar.uploadDislikeEvent(str);
        }
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
    }

    private void a() {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar == null) {
            return;
        }
        int subAdType = jxVar.getSubAdType();
        if (subAdType != 4) {
            if (subAdType == 5) {
                jx();
                return;
            } else if (subAdType == 3) {
                l();
                return;
            }
        }
        j();
    }

    private void j() {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar == null) {
            return;
        }
        if (jxVar.isExpressAd()) {
            this.f23332l.setTTNativeAdListener(new com.byazt.qjq.a() { // from class: com.byazt.mz.j.7
                @Override // com.byazt.qjq.a
                public void hp(View view, String str, int i2) {
                    if (j.this.f23330a != null) {
                        j.this.f23330a.hp(view, str, i2);
                    }
                }

                @Override // com.byazt.qjq.a
                public void hp(float f2, float f3) {
                    if (j.this.f23330a != null) {
                        j.this.f23330a.hp((View) null, f2, f3);
                    }
                }

                @Override // com.byazt.qjq.l
                public void hp(View view) {
                    if (j.this.f23330a != null) {
                        j.this.f23330a.hp(view, 0);
                    }
                    j.this.w();
                }

                @Override // com.byazt.qjq.l
                public void hp() {
                    j.this.hp((View) null);
                }
            });
        } else {
            this.f23332l.setTTNativeAdListener(new com.byazt.qjq.jx() { // from class: com.byazt.mz.j.8
                @Override // com.byazt.qjq.l
                public void hp(View view) {
                    if (j.this.f23330a != null) {
                        j.this.f23330a.hp(view, 0);
                    }
                    j.this.w();
                }

                @Override // com.byazt.qjq.l
                public void hp() {
                    j.this.hp((View) null);
                }
            });
        }
    }

    private void jx() {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar == null) {
            return;
        }
        if (jxVar.isExpressAd()) {
            this.f23332l.setGMDrawAdListener(new com.byazt.gpb.j() { // from class: com.byazt.mz.j.5
                @Override // com.byazt.gpb.j
                public void hp(View view, String str, int i2) {
                    if (j.this.f23330a != null) {
                        j.this.f23330a.hp(view, str, i2);
                    }
                }

                @Override // com.byazt.gpb.j
                public void hp(float f2, float f3) {
                    if (j.this.f23330a != null) {
                        j.this.f23330a.hp((View) null, f2, f3);
                    }
                }

                @Override // com.byazt.gpb.hp
                public void hp(View view) {
                    if (j.this.f23330a != null) {
                        j.this.f23330a.hp(view, 0);
                    }
                    j.this.w();
                }

                @Override // com.byazt.gpb.hp
                public void hp() {
                    j.this.hp((View) null);
                }
            });
        } else {
            this.f23332l.setGMDrawAdListener(new com.byazt.gpb.hp() { // from class: com.byazt.mz.j.6
                @Override // com.byazt.gpb.hp
                public void hp(View view) {
                    if (j.this.f23330a != null) {
                        j.this.f23330a.hp(view, 0);
                    }
                    j.this.w();
                }

                @Override // com.byazt.gpb.hp
                public void hp() {
                    j.this.hp((View) null);
                }
            });
        }
    }

    private void l() {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar == null) {
            return;
        }
        jxVar.setTTAdatperCallback(new com.byazt.sdu.hp() { // from class: com.byazt.mz.j.4
            @Override // com.byazt.qre.hp
            public void hp(@NonNull com.byazt.dq.hp hpVar) {
            }

            @Override // com.byazt.qre.hp
            public void l(View view) {
                j.this.hp(view);
            }

            @Override // com.byazt.qre.hp
            public void hp() {
                if (j.this.f23332l.getDislikeCallback() != null) {
                    j.this.f23332l.getDislikeCallback().hp(0, "banner ad closed", false);
                }
            }

            @Override // com.byazt.qre.hp
            public void hp(View view) {
                if (j.this.f23330a != null) {
                    j.this.f23330a.hp(view, 0);
                }
                j.this.w();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        String strL;
        long jCurrentTimeMillis;
        if (this.f23332l == null || this.jx == null) {
            return;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f23332l)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        String str = strL;
        long j2 = jCurrentTimeMillis;
        com.byazt.xoi.hp.w(this.jx.sz());
        com.byazt.rt.jx jxVar = this.f23332l;
        com.byazt.lsx.a.hp(jxVar, this.jx, 0, str, j2, jxVar.isClickListenRepeatOnce());
    }

    @Override // com.byazt.qt.k
    public void setExpressInteractionListener(com.byazt.qrd.hp hpVar) {
        this.f23330a = hpVar;
    }

    private void hp() {
        com.byazt.rt.jx jxVar = this.f23332l;
        if (jxVar == null) {
            return;
        }
        jxVar.setTTVideoListener(new s() { // from class: com.byazt.mz.j.1
            @Override // com.byazt.qjq.s
            public void hp() {
                if (j.this.f23335w != null) {
                    j.this.f23335w.hp();
                }
            }

            @Override // com.byazt.qjq.s
            public void j() {
                if (j.this.f23335w != null) {
                    j.this.f23335w.j();
                }
            }

            @Override // com.byazt.qjq.s
            public void jx() {
                if (j.this.f23335w != null) {
                    j.this.f23335w.jx();
                }
            }

            @Override // com.byazt.qjq.s
            public void l() {
                if (j.this.f23335w != null) {
                    j.this.f23335w.l();
                }
            }

            @Override // com.byazt.qjq.s
            public void w() {
                if (j.this.f23335w != null) {
                    j.this.f23335w.w();
                }
            }

            @Override // com.byazt.qjq.s
            public void hp(com.byazt.dq.hp hpVar) {
                String strL;
                long jCurrentTimeMillis;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (xs.hp(j.this.f23332l)) {
                    strL = xs.l();
                    jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                } else {
                    strL = null;
                    jCurrentTimeMillis = -1;
                }
                com.byazt.lsx.a.hp(j.this.f23332l, j.this.jx, (com.byazt.dq.hp) null, 2, 0, strL, jCurrentTimeMillis);
                if (hpVar == null || j.this.f23335w == null) {
                    return;
                }
                j.this.f23335w.hp(hpVar.hp, -1);
            }

            @Override // com.byazt.qjq.s
            public void hp(long j2, long j3) {
                if (j.this.f23335w != null) {
                    j.this.f23335w.hp(j2, j3);
                }
            }
        });
        this.f23332l.setTTAdAppDownloadListener(new com.byazt.voc.l() { // from class: com.byazt.mz.j.2
            @Override // com.byazt.voc.l
            public void hp() {
                if (j.this.eb != null) {
                    j.this.eb.hp();
                }
            }

            @Override // com.byazt.voc.l
            public void l() {
            }

            @Override // com.byazt.voc.l
            public void l(long j2, long j3, String str, String str2) {
                if (j.this.eb != null) {
                    j.this.eb.jx(j2, j3, str, str2);
                }
            }

            @Override // com.byazt.voc.l
            public void hp(long j2, long j3, int i2, int i3, String str, String str2) {
                if (j.this.eb != null) {
                    j.this.eb.hp(j2, j3, str, str2);
                }
            }

            @Override // com.byazt.voc.l
            public void hp(long j2, long j3, String str, String str2) {
                if (j.this.eb != null) {
                    j.this.eb.l(j2, j3, str, str2);
                }
            }

            @Override // com.byazt.voc.l
            public void hp(long j2, String str, String str2) {
                if (j.this.eb != null) {
                    j.this.eb.hp(j2, str, str2);
                }
            }

            @Override // com.byazt.voc.l
            public void hp(String str, String str2) {
                if (j.this.eb != null) {
                    j.this.eb.hp(str, str2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(View view) {
        com.byazt.rt.jx jxVar;
        String strL;
        long jCurrentTimeMillis;
        if (this.jx == null || (jxVar = this.f23332l) == null) {
            return;
        }
        jxVar.setHasShowCallback(true);
        com.byazt.qrd.l lVar = this.f23330a;
        if (lVar != null) {
            lVar.l(view, 0);
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(this.jx.sz(), "show_listen") + "adSlotId：" + this.f23332l.getAdNetworkSlotId() + "，广告类型：" + com.byazt.rt.hp.hp(this.f23332l.getAdNetworkPlatformId()));
        zy zyVarHp = zy.hp();
        StringBuilder sb = new StringBuilder();
        sb.append(this.jx.sz());
        zyVarHp.eb(sb.toString());
        zy.hp().l(this.jx.sz());
        gu.hp().l(this.jx.sz(), this.f23332l.getAdNetworkSlotId());
        com.byazt.lyn.jl.hp().l(this.jx.sz(), this.f23332l.getAdNetworkSlotId());
        com.byazt.wgi.jx.hp(this.f23332l.getAdnName(), this.jx.sz(), this.f23332l.getAdNetworkSlotId());
        if (this.f23332l.getCallBack() != null) {
            this.f23332l.getCallBack().hp(this.f23332l);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f23332l)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        String str = strL;
        long j2 = jCurrentTimeMillis;
        boolean zIsShowListenRepeatOnce = this.f23332l.isShowListenRepeatOnce();
        if (!zIsShowListenRepeatOnce) {
            com.byazt.xoi.hp.eb(this.jx.sz());
            com.byazt.xoi.hp.jx(this.jx.sz());
            com.byazt.ney.j.hp(1, this.jx.sz(), this.f23332l.getAdType(), this.f23332l.getCpm());
        }
        com.byazt.lsx.a.hp(this.f23332l, this.jx, 0, str, j2, zIsShowListenRepeatOnce, 1);
        com.byazt.qca.jx.hp(this.jx.sz(), this.f23332l);
    }

    private void hp(com.byazt.rt.jx jxVar) {
        if (com.byazt.di.l.l().kg()) {
            com.byazt.lsx.a.hp(jxVar, this.jx, xs.hp(), 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(boolean z2, Handler.Callback callback) throws JSONException {
        com.byazt.lsx.a.hp(this.jx);
        if (this.f23332l != null) {
            a();
            if (callback != null) {
                callback.handleMessage(null);
            }
            if (this.f23332l.getCallBack() != null) {
                this.f23332l.getCallBack().hp();
            }
            hp(this.f23332l);
            HashMap map = new HashMap();
            map.put("has_view_binder", Boolean.valueOf(z2));
            com.byazt.rt.jx jxVar = this.f23332l;
            com.byazt.lsx.a.hp(jxVar, this.jx, jxVar.isShowRepeatOnce(), 0, map);
            return;
        }
        com.byazt.lsx.a.hp((List<com.byazt.rt.jx>) null, this.jx, 0);
    }
}
