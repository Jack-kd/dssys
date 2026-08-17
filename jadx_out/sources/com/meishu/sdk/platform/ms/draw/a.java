package com.meishu.sdk.platform.ms.draw;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.ad.draw.DrawAd;
import com.meishu.sdk.core.utils.C1242a;
import com.meishu.sdk.core.utils.ResultBean;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import java.util.Map;

/* loaded from: classes4.dex */
public class a extends DrawAd implements com.meishu.sdk.platform.ms.c {

    /* renamed from: a, reason: collision with root package name */
    public AdSlot f32859a;

    /* renamed from: b, reason: collision with root package name */
    public View f32860b;

    /* renamed from: c, reason: collision with root package name */
    public ViewGroup f32861c;

    public a(AdSlot adSlot, View view) {
        super(null, "MS");
        this.f32859a = adSlot;
        this.f32860b = view;
    }

    @Override // com.meishu.sdk.platform.ms.c
    public AdSlot a() {
        return this.f32859a;
    }

    @Override // com.meishu.sdk.platform.ms.c
    public AdType b() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.draw.DrawAd, com.meishu.sdk.core.ad.draw.IDrawAd
    public void destroy() {
        View view = this.f32860b;
        if (view == null || !(view instanceof NormalMediaView)) {
            return;
        }
        ((NormalMediaView) view).d();
    }

    @Override // com.meishu.sdk.platform.ms.c
    public Context getContext() {
        ViewGroup viewGroup = this.f32861c;
        return viewGroup != null ? viewGroup.getContext() : this.f32860b.getContext();
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        AdSlot adSlot = this.f32859a;
        if (adSlot instanceof com.meishu.sdk.meishu_ad.nativ.f) {
            resultBean.setCid(((com.meishu.sdk.meishu_ad.nativ.f) adSlot).getCid());
            resultBean.setCat(((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getCat());
            resultBean.setAderId(((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getAder_id());
            resultBean.setFromId(((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getFromId());
            resultBean.setDrawing(((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getDrawing());
            resultBean.setPid(((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getPosId());
            resultBean.setReqId(((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getReq_id());
            resultBean.setPrice(((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getEcpm());
            resultBean.setEcpm(((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getEcpm() + "");
            resultBean.setS_code(((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getS_code());
            resultBean.setS_ext(((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getS_ext());
            resultBean.setSdkName("MS");
            resultBean.setAdInfo(C1242a.a((BaseAdSlot) this.f32859a));
        }
        return resultBean;
    }

    @Override // com.meishu.sdk.core.ad.draw.DrawAd, com.meishu.sdk.core.ad.draw.IDrawAd
    public int getDrawType() {
        return 2;
    }

    @Override // com.meishu.sdk.core.ad.draw.DrawAd, com.meishu.sdk.core.ad.draw.IDrawAd
    public int getInteractionType() {
        return this.f32859a.getInteractionType();
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public boolean isAdValid() {
        try {
            int expire_timestamp = ((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getExpire_timestamp();
            return SystemClock.uptimeMillis() - ((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getLoadedTime() < (expire_timestamp <= 0 ? 1740000L : (long) (expire_timestamp * 1000));
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // com.meishu.sdk.core.ad.draw.DrawAd, com.meishu.sdk.core.ad.draw.IDrawAd
    public void pause() {
        super.pause();
        View view = this.f32860b;
        if (view == null || !(view instanceof NormalMediaView)) {
            return;
        }
        ((NormalMediaView) view).pause();
    }

    @Override // com.meishu.sdk.core.ad.draw.DrawAd, com.meishu.sdk.core.ad.draw.IDrawAd
    public void resume() {
        super.resume();
        View view = this.f32860b;
        if (view != null && (view instanceof NormalMediaView) && view.getVisibility() == 0) {
            ((NormalMediaView) this.f32860b).resume();
        }
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.s2s.ISBidding
    public void sendLossNotification(Map map) {
        a0.a(getContext(), ((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getLossUrl(), (Map<String, Object>) map);
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.s2s.ISBidding
    public void sendWinNotification(Map map) {
        a0.b(getContext(), ((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getWinUrl(), map);
    }

    @Override // com.meishu.sdk.core.ad.draw.DrawAd, com.meishu.sdk.core.ad.draw.IDrawAd
    public void setVideoMute(boolean z2) {
        View view = this.f32860b;
        if (view == null || !(view instanceof NormalMediaView)) {
            return;
        }
        if (z2) {
            ((NormalMediaView) view).g();
        } else {
            ((NormalMediaView) view).j();
        }
    }

    @Override // com.meishu.sdk.core.ad.draw.DrawAd, com.meishu.sdk.core.ad.draw.IDrawAd
    public void showAd(Activity activity, ViewGroup viewGroup) {
        this.f32861c = viewGroup;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            View adView = getAdView();
            if (adView == null) {
                return;
            }
            if (adView.getParent() != null && (adView.getParent() instanceof ViewGroup)) {
                ((ViewGroup) adView.getParent()).removeView(adView);
            }
            viewGroup.addView(adView);
        }
        View view = this.f32860b;
        if (view != null && (view instanceof NormalMediaView)) {
            ((NormalMediaView) view).start();
        }
        super.showAd(activity, viewGroup);
        p1.a(viewGroup, ((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getPosId(), ((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getLoadedTime());
    }

    @Override // com.meishu.sdk.core.ad.draw.DrawAd, com.meishu.sdk.core.ad.draw.IDrawAd
    public void showAd(ViewGroup viewGroup) {
        this.f32861c = viewGroup;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            View adView = getAdView();
            if (adView == null) {
                return;
            }
            if (adView.getParent() != null && (adView.getParent() instanceof ViewGroup)) {
                ((ViewGroup) adView.getParent()).removeView(adView);
            }
            viewGroup.addView(adView);
        }
        View view = this.f32860b;
        if (view != null && (view instanceof NormalMediaView)) {
            ((NormalMediaView) view).start();
        }
        AdSlot adSlot = this.f32859a;
        if (adSlot instanceof BaseAdSlot) {
            p1.b(((BaseAdSlot) adSlot).getEventUrl());
        }
        p1.a(viewGroup, ((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getPosId(), ((com.meishu.sdk.meishu_ad.nativ.f) this.f32859a).getLoadedTime());
    }
}
