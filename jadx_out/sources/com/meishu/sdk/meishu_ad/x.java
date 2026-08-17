package com.meishu.sdk.meishu_ad;

import android.view.View;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;

/* loaded from: classes4.dex */
public class x extends com.meishu.sdk.core.safe.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32811a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32812b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplashSkipView f32813c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v f32814d;

    public x(v vVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.c cVar, SplashSkipView splashSkipView) {
        this.f32814d = vVar;
        this.f32811a = aVar;
        this.f32812b = cVar;
        this.f32813c = splashSkipView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        try {
            if (((com.meishu.sdk.platform.ms.splash.g) this.f32811a).f33168e) {
                if (this.f32812b.getInteractionListener() != null && this.f32812b.f32515b.getCbc() == 0) {
                    this.f32812b.getInteractionListener().onAdClicked();
                }
                com.meishu.sdk.meishu_ad.splash.a aVar = this.f32811a;
                if (aVar != null) {
                    ((com.meishu.sdk.platform.ms.splash.g) aVar).f33171h = true;
                }
                this.f32812b.f32515b.setClkActType(2);
                com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32812b, true);
                v.a(this.f32814d, this.f32813c);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
