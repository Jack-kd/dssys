package com.meishu.sdk.platform.ms.banner;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.meishu.sdk.R;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.ad.banner.IBannerAd;
import com.meishu.sdk.core.loader.InteractionListener;
import com.meishu.sdk.core.utils.C1242a;
import com.meishu.sdk.core.utils.ResultBean;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.p1;
import java.util.Map;

/* loaded from: classes4.dex */
public class c extends com.meishu.sdk.platform.ms.b implements IBannerAd {

    /* renamed from: b, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.banner.a f32856b;

    /* renamed from: c, reason: collision with root package name */
    public Activity f32857c;

    /* renamed from: d, reason: collision with root package name */
    public ViewGroup f32858d;

    public c(com.meishu.sdk.meishu_ad.banner.a aVar) {
        super(aVar);
        this.f32856b = aVar;
    }

    @Override // com.meishu.sdk.platform.ms.c
    public AdType b() {
        return AdType.BANNER;
    }

    @Override // com.meishu.sdk.platform.ms.c
    public Context getContext() {
        Activity activity = this.f32857c;
        if (activity != null) {
            return activity;
        }
        ViewGroup viewGroup = this.f32858d;
        return viewGroup != null ? viewGroup.getContext() : this.adView.getContext();
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        resultBean.setCid(this.f32856b.getCid());
        resultBean.setCat(this.f32856b.getCat());
        resultBean.setAderId(this.f32856b.getAder_id());
        resultBean.setFromId(this.f32856b.getFromId());
        resultBean.setDrawing(this.f32856b.getDrawing());
        resultBean.setPid(this.f32856b.getPosId());
        resultBean.setReqId(this.f32856b.getReq_id());
        resultBean.setPrice(this.f32856b.getEcpm());
        resultBean.setEcpm(String.valueOf(this.f32856b.getEcpm()));
        resultBean.setS_code(this.f32856b.getS_code());
        resultBean.setS_ext(this.f32856b.getS_ext());
        resultBean.setSdkName("MS");
        resultBean.setAdInfo(C1242a.a((BaseAdSlot) this.f32856b));
        return resultBean;
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public boolean isAdValid() {
        try {
            int expire_timestamp = this.f32856b.getExpire_timestamp();
            return SystemClock.uptimeMillis() - this.f32856b.getLoadedTime() < (expire_timestamp <= 0 ? 1740000L : (long) (expire_timestamp * 1000));
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.s2s.ISBidding
    public void sendLossNotification(Map map) {
        a0.a(getContext(), this.f32856b.getLossUrl(), (Map<String, Object>) map);
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.s2s.ISBidding
    public void sendWinNotification(Map map) {
        a0.b(getContext(), this.f32856b.getWinUrl(), map);
    }

    @Override // com.meishu.sdk.core.ad.banner.IBannerAd
    public void setCloseButtonVisible(boolean z2) {
        this.adView.findViewById(R.id.ms_banner_close_button).setVisibility(z2 ? 0 : 4);
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public void setInteractionListener(InteractionListener interactionListener) {
        super.setInteractionListener(interactionListener);
    }

    @Override // com.meishu.sdk.core.ad.banner.IBannerAd
    public void setWidthAndHeight(int i2, int i3) {
        if (i3 == 0) {
            return;
        }
        ImageView imageView = (ImageView) this.adView.findViewById(R.id.ms_banner_image);
        imageView.getLayoutParams().width = i2;
        imageView.getLayoutParams().height = i3;
        imageView.getParent().requestLayout();
    }

    @Override // com.meishu.sdk.core.ad.banner.IBannerAd
    public void showAd(ViewGroup viewGroup) {
        View view = this.adView;
        if (view == null) {
            return;
        }
        this.f32858d = viewGroup;
        if (viewGroup == null || view.getParent() != null) {
            return;
        }
        viewGroup.addView(this.adView);
        p1.a(viewGroup, this.f32856b.getPosId(), this.f32856b.getLoadedTime());
        p1.b(this.f32856b.getEventUrl());
    }

    @Override // com.meishu.sdk.core.ad.banner.IBannerAd
    public void showAd(Activity activity, ViewGroup viewGroup) {
        View view = this.adView;
        if (view == null) {
            return;
        }
        this.f32857c = activity;
        this.f32858d = viewGroup;
        if (viewGroup == null || view.getParent() != null) {
            return;
        }
        viewGroup.addView(this.adView);
        p1.a(viewGroup, this.f32856b.getPosId(), this.f32856b.getLoadedTime());
        p1.b(this.f32856b.getEventUrl());
    }
}
