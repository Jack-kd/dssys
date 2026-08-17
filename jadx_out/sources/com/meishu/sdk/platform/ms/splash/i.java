package com.meishu.sdk.platform.ms.splash;

import com.meishu.sdk.core.safe.l;

/* loaded from: classes4.dex */
public class i extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f33181a;

    public i(g gVar) {
        this.f33181a = gVar;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            g gVar = this.f33181a;
            com.meishu.sdk.core.ad.splash.d dVar = gVar.f33165b;
            if (dVar != null) {
                dVar.onAdTimeOver(gVar.f33167d);
            }
            if (this.f33181a.f33167d.getSplashFinishingTouchListener() != null) {
                g gVar2 = this.f33181a;
                if (gVar2.f33171h) {
                    gVar2.f33167d.getSplashFinishingTouchListener().a(false);
                } else if (gVar2.f33166c != null) {
                    gVar2.f33167d.getSplashFinishingTouchListener().a(((com.meishu.sdk.meishu_ad.splash.d) this.f33181a.f33166c.f32888a).f32527H == 1);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
