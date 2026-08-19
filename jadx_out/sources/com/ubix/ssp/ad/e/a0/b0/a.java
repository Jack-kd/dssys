package com.ubix.ssp.ad.e.a0.b0;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    private C0786a f46104a = null;

    /* renamed from: com.ubix.ssp.ad.e.a0.b0.a$a, reason: collision with other inner class name */
    public static class C0786a {
        public void a(Activity activity) {
        }

        public void b(Activity activity) {
        }

        public void c(Activity activity) {
        }

        public void d(Activity activity) {
        }

        public void e(Activity activity) {
        }

        public void a(Activity activity, Bundle bundle) {
        }

        public void b(Activity activity, Bundle bundle) {
        }
    }

    public a(Application application) {
        application.registerActivityLifecycleCallbacks(this);
    }

    public void a(C0786a c0786a) {
        this.f46104a = c0786a;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        C0786a c0786a = this.f46104a;
        if (c0786a != null) {
            c0786a.a(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NonNull Activity activity) {
        C0786a c0786a = this.f46104a;
        if (c0786a != null) {
            c0786a.a(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NonNull Activity activity) {
        C0786a c0786a = this.f46104a;
        if (c0786a != null) {
            c0786a.b(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NonNull Activity activity) {
        C0786a c0786a = this.f46104a;
        if (c0786a != null) {
            c0786a.c(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        C0786a c0786a = this.f46104a;
        if (c0786a != null) {
            c0786a.b(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NonNull Activity activity) {
        C0786a c0786a = this.f46104a;
        if (c0786a != null) {
            c0786a.d(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NonNull Activity activity) {
        C0786a c0786a = this.f46104a;
        if (c0786a != null) {
            c0786a.e(activity);
        }
    }
}
