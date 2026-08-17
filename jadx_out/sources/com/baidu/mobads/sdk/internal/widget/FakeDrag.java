package com.baidu.mobads.sdk.internal.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
final class FakeDrag {

    /* renamed from: a, reason: collision with root package name */
    private final ViewPager2 f11603a;

    /* renamed from: b, reason: collision with root package name */
    private final ScrollEventAdapter f11604b;

    /* renamed from: c, reason: collision with root package name */
    private final RecyclerView f11605c;

    /* renamed from: d, reason: collision with root package name */
    private VelocityTracker f11606d;

    /* renamed from: e, reason: collision with root package name */
    private int f11607e;

    /* renamed from: f, reason: collision with root package name */
    private float f11608f;

    /* renamed from: g, reason: collision with root package name */
    private int f11609g;

    /* renamed from: h, reason: collision with root package name */
    private long f11610h;

    public FakeDrag(ViewPager2 viewPager2, ScrollEventAdapter scrollEventAdapter, RecyclerView recyclerView) {
        this.f11603a = viewPager2;
        this.f11604b = scrollEventAdapter;
        this.f11605c = recyclerView;
    }

    private void d() {
        VelocityTracker velocityTracker = this.f11606d;
        if (velocityTracker != null) {
            velocityTracker.clear();
        } else {
            this.f11606d = VelocityTracker.obtain();
            this.f11607e = ViewConfiguration.get(this.f11603a.getContext()).getScaledMaximumFlingVelocity();
        }
    }

    public boolean a() {
        return this.f11604b.g();
    }

    @UiThread
    public boolean b() {
        if (this.f11604b.f()) {
            return false;
        }
        this.f11609g = 0;
        this.f11608f = 0;
        this.f11610h = SystemClock.uptimeMillis();
        d();
        this.f11604b.b();
        if (!this.f11604b.e()) {
            this.f11605c.stopScroll();
        }
        a(this.f11610h, 0, 0.0f, 0.0f);
        return true;
    }

    @UiThread
    public boolean c() {
        if (!this.f11604b.g()) {
            return false;
        }
        this.f11604b.c();
        VelocityTracker velocityTracker = this.f11606d;
        velocityTracker.computeCurrentVelocity(1000, this.f11607e);
        if (this.f11605c.fling((int) velocityTracker.getXVelocity(), (int) velocityTracker.getYVelocity())) {
            return true;
        }
        this.f11603a.d();
        return true;
    }

    @UiThread
    public boolean a(float f2) {
        if (!this.f11604b.g()) {
            return false;
        }
        float f3 = this.f11608f - f2;
        this.f11608f = f3;
        int iRound = Math.round(f3 - this.f11609g);
        this.f11609g += iRound;
        long jUptimeMillis = SystemClock.uptimeMillis();
        boolean z2 = this.f11603a.getOrientation() == 0;
        int i2 = z2 ? iRound : 0;
        int i3 = z2 ? 0 : iRound;
        float f4 = z2 ? this.f11608f : 0.0f;
        float f5 = z2 ? 0.0f : this.f11608f;
        this.f11605c.scrollBy(i2, i3);
        a(jUptimeMillis, 2, f4, f5);
        return true;
    }

    private void a(long j2, int i2, float f2, float f3) {
        MotionEvent motionEventObtain = MotionEvent.obtain(this.f11610h, j2, i2, f2, f3, 0);
        this.f11606d.addMovement(motionEventObtain);
        motionEventObtain.recycle();
    }
}
