package com.smartdigimkt.z;

import android.app.Activity;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.Window;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WeakReference f45315a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f45316b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f45317c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ float f45318d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Runnable f45319e;

    public l(WeakReference weakReference, long j2, float f2, float f3, Runnable runnable) {
        this.f45315a = weakReference;
        this.f45316b = j2;
        this.f45317c = f2;
        this.f45318d = f3;
        this.f45319e = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity = (Activity) this.f45315a.get();
        if (activity != null) {
            MotionEvent motionEventObtain = MotionEvent.obtain(this.f45316b, SystemClock.uptimeMillis(), 1, this.f45317c, this.f45318d, 0);
            if (motionEventObtain != null) {
                Window window = activity.getWindow();
                if (window == null || window.getCallback() == null) {
                    activity.dispatchTouchEvent(motionEventObtain);
                } else {
                    window.getCallback().dispatchTouchEvent(motionEventObtain);
                }
            }
            motionEventObtain.recycle();
        }
        com.smartdigimkt.b4.e.a().a(200L, this.f45319e);
    }
}
