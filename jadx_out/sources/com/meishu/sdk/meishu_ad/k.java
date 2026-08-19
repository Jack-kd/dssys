package com.meishu.sdk.meishu_ad;

import android.view.View;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;

/* loaded from: classes4.dex */
public class k extends com.meishu.sdk.core.safe.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32274a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32275b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplashSkipView f32276c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v f32277d;

    public k(v vVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.c cVar, SplashSkipView splashSkipView) {
        this.f32277d = vVar;
        this.f32274a = aVar;
        this.f32275b = cVar;
        this.f32276c = splashSkipView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        try {
            if (((com.meishu.sdk.platform.ms.splash.g) this.f32274a).f33168e) {
                if (this.f32275b.getInteractionListener() != null && this.f32275b.f32515b.getCbc() == 0) {
                    this.f32275b.getInteractionListener().onAdClicked();
                }
                com.meishu.sdk.meishu_ad.splash.a aVar = this.f32274a;
                if (aVar != null) {
                    ((com.meishu.sdk.platform.ms.splash.g) aVar).f33171h = true;
                }
                this.f32275b.f32515b.setClkActType(2);
                com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32275b, true);
                v.a(this.f32277d, this.f32276c);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
