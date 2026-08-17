package com.meishu.sdk.meishu_ad;

import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView;

/* loaded from: classes4.dex */
public class g extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MeishuSplashRootView f32224a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LinearLayout f32225b;

    public g(v vVar, MeishuSplashRootView meishuSplashRootView, LinearLayout linearLayout) {
        this.f32224a = meishuSplashRootView;
        this.f32225b = linearLayout;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        int measuredHeight = this.f32224a.getMeasuredHeight();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f32225b.getLayoutParams();
        layoutParams.bottomMargin = (int) (measuredHeight * 0.1d);
        this.f32225b.setLayoutParams(layoutParams);
    }
}
