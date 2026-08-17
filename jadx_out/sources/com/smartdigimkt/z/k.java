package com.smartdigimkt.z;

import android.app.Activity;
import android.graphics.Rect;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import com.smartdigimkt.sdk.basead.ui.MCView;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WeakReference f45309a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WeakReference f45310b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f45311c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ WeakReference f45312d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ WeakReference f45313e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ m f45314f;

    public k(m mVar, WeakReference weakReference, WeakReference weakReference2, Runnable runnable, WeakReference weakReference3, WeakReference weakReference4) {
        this.f45314f = mVar;
        this.f45309a = weakReference;
        this.f45310b = weakReference2;
        this.f45311c = runnable;
        this.f45312d = weakReference3;
        this.f45313e = weakReference4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Rect rect;
        MCView mCView = (MCView) this.f45309a.get();
        Activity activity = (Activity) this.f45310b.get();
        if (mCView == null || activity == null) {
            com.smartdigimkt.b4.e.a().a(this.f45311c);
            return;
        }
        int[] iArr = new int[2];
        mCView.getLocationOnScreen(iArr);
        int width = mCView.getWidth();
        int height = mCView.getHeight();
        if (width <= 0 || height <= 0) {
            com.smartdigimkt.b4.e.a().a(200L, this.f45311c);
            return;
        }
        View view = (View) this.f45312d.get();
        View view2 = (View) this.f45313e.get();
        Rect rectA = m.a(view);
        Rect rectA2 = m.a(view2);
        mCView.handleMC(true);
        m mVar = this.f45314f;
        WeakReference weakReference = this.f45309a;
        WeakReference weakReference2 = this.f45310b;
        int i2 = iArr[0];
        int i3 = iArr[1];
        Runnable runnable = this.f45311c;
        mVar.getClass();
        Activity activity2 = (Activity) weakReference2.get();
        if (activity2 == null) {
            MCView mCView2 = (MCView) weakReference.get();
            if (mCView2 != null) {
                mCView2.handleMC(false);
            }
            com.smartdigimkt.b4.e.a().a(200L, runnable);
            return;
        }
        if (rectA2 == null || rectA2.isEmpty()) {
            if (rectA == null || rectA.isEmpty()) {
                Rect rect2 = new Rect(i2, i3, width + i2, height + i3);
                int iWidth = rect2.width();
                float f2 = iWidth;
                float fHeight = rect2.height();
                rect = new Rect(Math.round(0.1f * f2) + rect2.left, Math.round(0.6f * fHeight) + rect2.top, Math.round(f2 * 0.9f) + rect2.left, Math.round(fHeight * 0.9f) + rect2.top);
                rect2.toString();
            } else {
                int iWidth2 = rectA.width();
                float f3 = iWidth2;
                float fHeight2 = rectA.height();
                rect = new Rect(Math.round(0.1f * f3) + rectA.left, Math.round(0.6f * fHeight2) + rectA.top, Math.round(f3 * 0.9f) + rectA.left, Math.round(fHeight2 * 0.9f) + rectA.top);
                rectA.toString();
            }
            rectA2 = rect;
        } else {
            rectA2.toString();
        }
        float fNextFloat = (mVar.f45320a.nextFloat() * rectA2.width()) + rectA2.left;
        float fNextFloat2 = (mVar.f45320a.nextFloat() * rectA2.height()) + rectA2.top;
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, fNextFloat, fNextFloat2, 0);
        if (motionEventObtain != null) {
            Window window = activity2.getWindow();
            if (window == null || window.getCallback() == null) {
                activity2.dispatchTouchEvent(motionEventObtain);
            } else {
                window.getCallback().dispatchTouchEvent(motionEventObtain);
            }
        }
        motionEventObtain.recycle();
        com.smartdigimkt.b4.e.a().a(((long) (mVar.f45320a.nextFloat() * 100.0f)) + 50, new l(weakReference2, jUptimeMillis, fNextFloat, fNextFloat2, runnable));
    }
}
