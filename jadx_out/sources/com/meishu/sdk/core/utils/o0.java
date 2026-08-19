package com.meishu.sdk.core.utils;

import android.app.Activity;

/* loaded from: classes4.dex */
public class o0 extends com.meishu.sdk.core.service.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f31943a;

    public o0(boolean z2) {
        this.f31943a = z2;
    }

    @Override // com.meishu.sdk.core.service.a, com.meishu.sdk.core.service.e
    public void onActivityPause(Activity activity) {
    }

    @Override // com.meishu.sdk.core.service.a, com.meishu.sdk.core.service.e
    public void onActivityResume(Activity activity) {
        p0.a(this.f31943a);
        com.meishu.sdk.core.service.d.b(this);
    }

    @Override // com.meishu.sdk.core.service.e
    public boolean onAppStateUpdate(boolean z2) {
        return true;
    }
}
