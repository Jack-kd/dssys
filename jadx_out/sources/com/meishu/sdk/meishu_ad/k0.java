package com.meishu.sdk.meishu_ad;

import com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;

/* loaded from: classes4.dex */
public class k0 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32278a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MeishuSplashRootView f32279b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32280c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SplashSkipView f32281d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ v f32282e;

    public k0(v vVar, com.meishu.sdk.meishu_ad.splash.c cVar, MeishuSplashRootView meishuSplashRootView, com.meishu.sdk.meishu_ad.splash.a aVar, SplashSkipView splashSkipView) {
        this.f32282e = vVar;
        this.f32278a = cVar;
        this.f32279b = meishuSplashRootView;
        this.f32280c = aVar;
        this.f32281d = splashSkipView;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        v.a(this.f32282e, this.f32278a, this.f32279b, this.f32280c, this.f32281d);
    }
}
