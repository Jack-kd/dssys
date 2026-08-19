package com.umeng.analytics.pro;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.umeng.commonsdk.debug.UMRTLog;
import java.util.ArrayList;

@TargetApi(14)
/* loaded from: classes5.dex */
public class p implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    private static p f49579a = new p();

    /* renamed from: b, reason: collision with root package name */
    private final int f49580b = 3000;

    /* renamed from: c, reason: collision with root package name */
    private boolean f49581c = false;

    /* renamed from: d, reason: collision with root package name */
    private boolean f49582d = true;

    /* renamed from: e, reason: collision with root package name */
    private Handler f49583e = new Handler(Looper.getMainLooper());

    /* renamed from: f, reason: collision with root package name */
    private ArrayList<q> f49584f = new ArrayList<>();

    /* renamed from: g, reason: collision with root package name */
    private a f49585g = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!p.this.f49581c || !p.this.f49582d) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> still foreground.");
                return;
            }
            p.this.f49581c = false;
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> went background.");
            for (int i2 = 0; i2 < p.this.f49584f.size(); i2++) {
                ((q) p.this.f49584f.get(i2)).n();
            }
        }
    }

    private p() {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f49582d = true;
        a aVar = this.f49585g;
        if (aVar != null) {
            this.f49583e.removeCallbacks(aVar);
            this.f49583e.postDelayed(this.f49585g, 3000L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f49582d = false;
        this.f49581c = true;
        a aVar = this.f49585g;
        if (aVar != null) {
            this.f49583e.removeCallbacks(aVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    public synchronized void b(q qVar) {
        if (qVar != null) {
            for (int i2 = 0; i2 < this.f49584f.size(); i2++) {
                try {
                    if (this.f49584f.get(i2) == qVar) {
                        this.f49584f.remove(i2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(f49579a);
        }
    }

    public static p a() {
        return f49579a;
    }

    public synchronized void a(q qVar) {
        if (qVar != null) {
            this.f49584f.add(qVar);
        }
    }
}
