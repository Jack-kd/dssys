package com.meishu.sdk.meishu_ad;

import android.view.View;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;

/* loaded from: classes4.dex */
public class w extends com.meishu.sdk.core.safe.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32807a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32808b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplashSkipView f32809c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v f32810d;

    public w(v vVar, com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.a aVar, SplashSkipView splashSkipView) {
        this.f32810d = vVar;
        this.f32807a = cVar;
        this.f32808b = aVar;
        this.f32809c = splashSkipView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        if (this.f32807a.getInteractionListener() != null && this.f32807a.f32515b.getCbc() == 0) {
            this.f32807a.getInteractionListener().onAdClicked();
        }
        com.meishu.sdk.meishu_ad.splash.a aVar = this.f32808b;
        if (aVar != null) {
            ((com.meishu.sdk.platform.ms.splash.g) aVar).f33171h = true;
        }
        this.f32807a.f32515b.setClkActType(1);
        com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32807a, false);
        v.a(this.f32810d, this.f32809c);
    }
}
