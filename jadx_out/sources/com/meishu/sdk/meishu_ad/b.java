package com.meishu.sdk.meishu_ad;

import android.view.View;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;

/* loaded from: classes4.dex */
public class b extends com.meishu.sdk.core.safe.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32188a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32189b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplashSkipView f32190c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v f32191d;

    public b(v vVar, com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.a aVar, SplashSkipView splashSkipView) {
        this.f32191d = vVar;
        this.f32188a = cVar;
        this.f32189b = aVar;
        this.f32190c = splashSkipView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        if (this.f32188a.getInteractionListener() != null && this.f32188a.f32515b.getCbc() == 0) {
            this.f32188a.getInteractionListener().onAdClicked();
        }
        com.meishu.sdk.meishu_ad.splash.a aVar = this.f32189b;
        if (aVar != null) {
            ((com.meishu.sdk.platform.ms.splash.g) aVar).f33171h = true;
        }
        this.f32188a.f32515b.setClkActType(2);
        com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32188a, true);
        v.a(this.f32191d, this.f32190c);
    }
}
