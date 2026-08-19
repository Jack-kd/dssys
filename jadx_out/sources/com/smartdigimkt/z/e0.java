package com.smartdigimkt.z;

import android.app.Activity;

/* loaded from: classes5.dex */
public final class e0 extends com.smartdigimkt.x.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g0 f45282a;

    public e0(g0 g0Var) {
        this.f45282a = g0Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        com.smartdigimkt.x3.d dVar = this.f45282a.f45295a;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        com.smartdigimkt.x3.d dVar = this.f45282a.f45295a;
        if (dVar != null) {
            dVar.b();
        }
    }
}
