package com.anythink.core.common.d;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class g implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    int f2485a;

    /* renamed from: d, reason: collision with root package name */
    boolean f2488d;

    /* renamed from: c, reason: collision with root package name */
    boolean f2487c = false;

    /* renamed from: b, reason: collision with root package name */
    ConcurrentHashMap<String, Boolean> f2486b = new ConcurrentHashMap<>(3);

    public g(boolean z2) {
        this.f2488d = false;
        if (z2) {
            this.f2488d = true;
            a();
        }
        s.b().a(new l() { // from class: com.anythink.core.common.d.g.1
            @Override // com.anythink.core.common.d.l
            public final void a(boolean z3) {
                r rVarC = s.b().c();
                if (z3) {
                    if (rVarC == null || !rVarC.a()) {
                        return;
                    }
                    rVarC.onAppForegroundStatusChanged(true);
                    return;
                }
                if (rVarC == null || !rVarC.a()) {
                    return;
                }
                rVarC.onAppForegroundStatusChanged(false);
            }
        });
    }

    private void a() {
        com.anythink.core.common.v.b.c.a().e(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dw, new Runnable() { // from class: com.anythink.core.common.d.g.2
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.common.u.f.a();
                com.anythink.core.common.h.n nVar = new com.anythink.core.common.h.n();
                com.anythink.core.common.u.e.a(s.b().g());
                com.anythink.core.common.u.e.a(21, nVar);
            }
        }));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        if (this.f2488d) {
            return;
        }
        this.f2488d = true;
        a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.f2485a++;
        this.f2486b.put(activity.toString(), Boolean.TRUE);
        if (this.f2485a != 1 || this.f2488d) {
            return;
        }
        this.f2488d = true;
        a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f2485a--;
        boolean zContainsKey = this.f2486b.containsKey(activity.toString());
        if (!this.f2487c && !zContainsKey) {
            this.f2487c = true;
            this.f2485a++;
        }
        if (zContainsKey) {
            try {
                this.f2486b.remove(activity.toString());
            } catch (Throwable unused) {
            }
        }
        if (this.f2485a == 0) {
            this.f2488d = false;
        }
    }
}
