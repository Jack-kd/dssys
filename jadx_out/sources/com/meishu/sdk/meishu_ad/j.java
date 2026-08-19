package com.meishu.sdk.meishu_ad;

import com.meishu.sdk.core.view.SwipeView;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;

/* loaded from: classes4.dex */
public class j implements SwipeView.OnSwipeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32264a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32265b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplashSkipView f32266c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v f32267d;

    public j(v vVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.c cVar, SplashSkipView splashSkipView) {
        this.f32267d = vVar;
        this.f32264a = aVar;
        this.f32265b = cVar;
        this.f32266c = splashSkipView;
    }

    @Override // com.meishu.sdk.core.view.SwipeView.OnSwipeListener
    public void onSwipe() {
        try {
            if (((com.meishu.sdk.platform.ms.splash.g) this.f32264a).f33168e) {
                if (this.f32265b.getInteractionListener() != null) {
                    this.f32265b.getInteractionListener().onAdClicked();
                }
                com.meishu.sdk.meishu_ad.splash.a aVar = this.f32264a;
                if (aVar != null) {
                    ((com.meishu.sdk.platform.ms.splash.g) aVar).f33171h = true;
                }
                this.f32265b.f32515b.setClkActType(128);
                com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32265b, true);
                v.a(this.f32267d, this.f32266c);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
