package com.meishu.sdk.meishu_ad;

import com.meishu.sdk.core.view.SwipeView;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;

/* loaded from: classes4.dex */
public class m implements SwipeView.OnSwipeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32298a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32299b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.d f32300c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SplashSkipView f32301d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ v f32302e;

    public m(v vVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.d dVar, SplashSkipView splashSkipView) {
        this.f32302e = vVar;
        this.f32298a = aVar;
        this.f32299b = cVar;
        this.f32300c = dVar;
        this.f32301d = splashSkipView;
    }

    @Override // com.meishu.sdk.core.view.SwipeView.OnSwipeListener
    public void onSwipe() {
        try {
            if (((com.meishu.sdk.platform.ms.splash.g) this.f32298a).f33168e) {
                if (this.f32299b.getInteractionListener() != null) {
                    this.f32299b.getInteractionListener().onAdClicked();
                }
                com.meishu.sdk.meishu_ad.splash.a aVar = this.f32298a;
                if (aVar != null) {
                    ((com.meishu.sdk.platform.ms.splash.g) aVar).f33171h = true;
                }
                if ((this.f32300c.getAct_type() & 128) != 128) {
                    this.f32299b.f32515b.setClkActType(32);
                } else {
                    this.f32299b.f32515b.setClkActType(128);
                }
                com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32299b, true);
                v.a(this.f32302e, this.f32301d);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
