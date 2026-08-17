package com.umeng.analytics.pro;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.umeng.commonsdk.debug.UMRTLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public class cj implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    private static final String f49030a = "ForegroundBackgroundListener";

    /* renamed from: b, reason: collision with root package name */
    private static final long f49031b = 500;

    /* renamed from: c, reason: collision with root package name */
    private List<a> f49032c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    private boolean f49033d = false;

    /* renamed from: e, reason: collision with root package name */
    private int f49034e = 0;

    /* renamed from: f, reason: collision with root package name */
    private Handler f49035f = new Handler(Looper.getMainLooper());

    /* renamed from: g, reason: collision with root package name */
    private Runnable f49036g = new Runnable() { // from class: com.umeng.analytics.pro.cj.1
        @Override // java.lang.Runnable
        public void run() {
            if (cj.this.f49034e == 0) {
                if (cj.this.f49033d) {
                    cj.this.f49033d = false;
                    cj.this.c();
                    return;
                }
                return;
            }
            if (cj.this.f49033d) {
                return;
            }
            cj.this.f49033d = true;
            cj.this.b();
        }
    };

    public interface a {
        void a();

        void b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f49034e++;
        this.f49035f.removeCallbacks(this.f49036g);
        this.f49035f.postDelayed(this.f49036g, 500L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        this.f49034e--;
        this.f49035f.removeCallbacks(this.f49036g);
        this.f49035f.postDelayed(this.f49036g, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Iterator<a> it = this.f49032c.iterator();
        while (it.hasNext()) {
            try {
                it.next().b();
            } catch (Throwable th) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: Error in onSwitchBackground callback: " + th.getMessage());
            }
        }
    }

    public void b(a aVar) {
        if (aVar != null) {
            this.f49032c.remove(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        Iterator<a> it = this.f49032c.iterator();
        while (it.hasNext()) {
            try {
                it.next().a();
            } catch (Throwable th) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: Error in onSwitchForeground callback: " + th.getMessage());
            }
        }
    }

    public void a(a aVar) {
        if (aVar == null || this.f49032c.contains(aVar)) {
            return;
        }
        this.f49032c.add(aVar);
    }

    public boolean a() {
        return this.f49033d;
    }
}
