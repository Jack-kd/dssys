package com.smartdigimkt.c4;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.g4.f;
import com.smartdigimkt.sdk.core.SDKContext;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class b implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f39683a;

    public b(c cVar) {
        this.f39683a = cVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        c cVar = this.f39683a;
        activity.getClass();
        cVar.getClass();
        c.a(this.f39683a, activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        c.b(this.f39683a, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        c.e(this.f39683a, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        c cVar = this.f39683a;
        activity.getClass();
        cVar.getClass();
        this.f39683a.f39687c = new WeakReference(activity);
        c.d(this.f39683a, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f39683a.a(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        c cVar = this.f39683a;
        int i2 = cVar.f39689e + 1;
        cVar.f39689e = i2;
        if (i2 == 1 && cVar.f39690f) {
            cVar.f39690f = false;
            Context applicationContext = activity != null ? activity.getApplicationContext() : activity;
            f fVarA = f.a();
            fVarA.getClass();
            e.a().c(new com.smartdigimkt.g4.e(fVarA, applicationContext, true));
            SDKContext.getInstance().f44123l = true;
        }
        c cVar2 = this.f39683a;
        cVar2.f39691g = false;
        c.c(cVar2, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        r0.f39689e--;
        this.f39683a.f39691g = activity.isChangingConfigurations();
        try {
            c cVar = this.f39683a;
            Runnable runnable = cVar.f39692h;
            if (runnable != null) {
                cVar.f39688d.removeCallbacks(runnable);
            }
            Context applicationContext = activity.getApplicationContext() != null ? activity.getApplicationContext() : this.f39683a.f39693i;
            c cVar2 = this.f39683a;
            a aVar = new a(this, applicationContext);
            cVar2.f39692h = aVar;
            cVar2.f39688d.postDelayed(aVar, 500L);
        } catch (Throwable unused) {
        }
        c.a(this.f39683a, activity);
    }
}
