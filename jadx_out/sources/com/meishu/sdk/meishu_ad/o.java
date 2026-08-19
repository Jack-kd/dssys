package com.meishu.sdk.meishu_ad;

import android.view.View;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;

/* loaded from: classes4.dex */
public class o extends com.meishu.sdk.core.safe.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32427a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32428b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplashSkipView f32429c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v f32430d;

    public o(v vVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.c cVar, SplashSkipView splashSkipView) {
        this.f32430d = vVar;
        this.f32427a = aVar;
        this.f32428b = cVar;
        this.f32429c = splashSkipView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        com.meishu.sdk.meishu_ad.splash.a aVar = this.f32427a;
        if (aVar == null || !((com.meishu.sdk.platform.ms.splash.g) aVar).f33168e) {
            return;
        }
        if (this.f32428b.getInteractionListener() != null && this.f32428b.f32515b.getCbc() == 0) {
            this.f32428b.getInteractionListener().onAdClicked();
        }
        com.meishu.sdk.meishu_ad.splash.a aVar2 = this.f32427a;
        if (aVar2 != null) {
            ((com.meishu.sdk.platform.ms.splash.g) aVar2).f33171h = true;
        }
        this.f32428b.f32515b.setClkActType(2);
        com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32428b, true);
        v.a(this.f32430d, this.f32429c);
    }
}
