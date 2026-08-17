package com.meishu.sdk.meishu_ad;

import com.meishu.sdk.core.view.SwipeView;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;

/* loaded from: classes4.dex */
public class h implements SwipeView.OnSwipeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32229a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32230b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplashSkipView f32231c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v f32232d;

    public h(v vVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.c cVar, SplashSkipView splashSkipView) {
        this.f32232d = vVar;
        this.f32229a = aVar;
        this.f32230b = cVar;
        this.f32231c = splashSkipView;
    }

    @Override // com.meishu.sdk.core.view.SwipeView.OnSwipeListener
    public void onSwipe() {
        try {
            if (((com.meishu.sdk.platform.ms.splash.g) this.f32229a).f33168e) {
                if (this.f32230b.getInteractionListener() != null) {
                    this.f32230b.getInteractionListener().onAdClicked();
                }
                com.meishu.sdk.meishu_ad.splash.a aVar = this.f32229a;
                if (aVar != null) {
                    ((com.meishu.sdk.platform.ms.splash.g) aVar).f33171h = true;
                }
                this.f32230b.f32515b.setClkActType(32);
                com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32230b, true);
                v.a(this.f32232d, this.f32231c);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
