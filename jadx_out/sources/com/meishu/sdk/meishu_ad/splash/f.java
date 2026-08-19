package com.meishu.sdk.meishu_ad.splash;

import android.app.Activity;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.utils.w;

/* loaded from: classes4.dex */
public class f extends com.meishu.sdk.core.service.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f32530a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w f32531b;

    public f(c cVar, w wVar) {
        this.f32530a = cVar;
        this.f32531b = wVar;
    }

    @Override // com.meishu.sdk.core.service.a, com.meishu.sdk.core.service.e
    public void onActivityPause(Activity activity) {
        try {
            d dVar = this.f32530a.f32515b;
            w wVar = this.f32531b;
            boolean z2 = wVar.f32039c;
            boolean z3 = wVar.f32040d;
            if (!dVar.getAppendInfo().getHasClicked().f31835b && !dVar.getAppendInfo().isHasClickedSkip() && !dVar.getAppendInfo().isHasTimeOver() && !z2 && !z3) {
                p1.a(dVar.getEventUrl(), 25, 0, "");
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.meishu.sdk.core.service.a, com.meishu.sdk.core.service.e
    public void onActivityResume(Activity activity) {
    }

    @Override // com.meishu.sdk.core.service.e
    public boolean onAppStateUpdate(boolean z2) {
        return false;
    }
}
