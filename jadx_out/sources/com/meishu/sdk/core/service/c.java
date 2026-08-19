package com.meishu.sdk.core.service;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class c implements Application.ActivityLifecycleCallbacks {
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        try {
            List<e> list = d.f31732f;
            if (!list.isEmpty()) {
                ArrayList arrayList = new ArrayList(list);
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    try {
                        ((e) obj).onActivityDestroyed(activity);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        if ("MeishuOpenDeepLinkActivity".equals(activity.getClass().getSimpleName())) {
            Runnable runnable = d.f31729c;
            if (runnable != null) {
                d.f31727a.removeCallbacks(runnable);
                d.f31729c = null;
            }
            d.f31728b = null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Runnable runnable;
        int i2 = 0;
        boolean unused = d.f31731e = false;
        try {
            List<e> list = d.f31732f;
            if (!list.isEmpty()) {
                ArrayList arrayList = new ArrayList(list);
                int size = arrayList.size();
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    try {
                        ((e) obj).onActivityPause(activity);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        if (!"MeishuOpenDeepLinkActivity".equals(activity.getClass().getSimpleName()) || (runnable = d.f31729c) == null) {
            return;
        }
        d.f31727a.removeCallbacks(runnable);
        d.f31729c = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        boolean unused = d.f31731e = true;
        try {
            List<e> list = d.f31732f;
            if (!list.isEmpty()) {
                ArrayList arrayList = new ArrayList(list);
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    try {
                        ((e) obj).onActivityResume(activity);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        if ("MeishuOpenDeepLinkActivity".equals(activity.getClass().getSimpleName())) {
            Runnable runnable = d.f31729c;
            if (runnable != null) {
                d.f31727a.removeCallbacks(runnable);
                d.f31729c = null;
            }
            d.f31728b = new WeakReference<>(activity);
            b bVar = new b();
            d.f31729c = bVar;
            d.f31727a.postDelayed(bVar, 2000L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (d.f31730d.incrementAndGet() == 1) {
            d.a(true);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (d.f31730d.decrementAndGet() == 0) {
            d.a(false);
        }
    }
}
