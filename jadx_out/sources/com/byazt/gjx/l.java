package com.byazt.gjx;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.bytedance.pangle.annotations.ForbidWrapParam;

@com.byazt.kj.hp(hp = {0, 1, 737, 34})
/* loaded from: classes2.dex */
public class l implements Application.ActivityLifecycleCallbacks {
    public static volatile l hp;

    /* renamed from: l, reason: collision with root package name */
    public final jx f20487l;

    private l(Application application) {
        this.f20487l = jx.hp(application);
    }

    public static l hp(Application application) {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l(application);
                        application.registerActivityLifecycleCallbacks(hp);
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void l(Application application) {
        application.unregisterActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@ForbidWrapParam Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@ForbidWrapParam Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@ForbidWrapParam Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
        View decorView;
        if (Build.VERSION.SDK_INT < 29 || activity == null || activity.getWindow() == null || (decorView = activity.getWindow().getDecorView()) == null) {
            return;
        }
        hp.hp(decorView);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        View decorView;
        if (Build.VERSION.SDK_INT >= 29 || activity == null || activity.getWindow() == null || (decorView = activity.getWindow().getDecorView()) == null) {
            return;
        }
        hp.hp(decorView);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@ForbidWrapParam Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@ForbidWrapParam Activity activity) {
        jx jxVar = this.f20487l;
        if (jxVar != null) {
            jxVar.hp(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@ForbidWrapParam Activity activity) {
        jx jxVar = this.f20487l;
        if (jxVar != null) {
            jxVar.l(activity);
        }
    }

    public String hp(String str, long j2, int i2, boolean z2) {
        jx jxVar = this.f20487l;
        if (jxVar != null) {
            return jxVar.hp(str, j2, i2, z2);
        }
        return null;
    }
}
