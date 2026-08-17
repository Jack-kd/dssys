package com.smartdigimkt.x1;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.view.View;

/* loaded from: classes5.dex */
public abstract class b implements com.smartdigimkt.w1.b {

    /* renamed from: a, reason: collision with root package name */
    public final View f45059a;

    /* renamed from: b, reason: collision with root package name */
    public ValueAnimator f45060b;

    /* renamed from: c, reason: collision with root package name */
    public int f45061c;

    /* renamed from: d, reason: collision with root package name */
    public int f45062d;

    public b(View view) {
        this.f45059a = view;
    }

    @Override // com.smartdigimkt.w1.b
    public void a(Canvas canvas) {
    }

    public abstract ValueAnimator b();

    public void c() {
        View view = this.f45059a;
        if (view == null) {
            return;
        }
        if (this.f45061c == 0 || this.f45062d == 0) {
            this.f45061c = view.getWidth();
            this.f45062d = this.f45059a.getHeight();
        }
    }

    @Override // com.smartdigimkt.w1.b
    public void pause() {
        ValueAnimator valueAnimator = this.f45060b;
        if (valueAnimator != null) {
            try {
                valueAnimator.pause();
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.smartdigimkt.w1.b
    public synchronized void start() {
        if (this.f45059a == null) {
            return;
        }
        stop();
        ValueAnimator valueAnimatorB = b();
        this.f45060b = valueAnimatorB;
        if (valueAnimatorB != null) {
            this.f45059a.post(new a(this));
        }
    }

    @Override // com.smartdigimkt.w1.b
    public void stop() {
        ValueAnimator valueAnimator = this.f45060b;
        if (valueAnimator != null) {
            try {
                valueAnimator.cancel();
                this.f45060b = null;
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    @Override // com.smartdigimkt.w1.b
    public void a(int i2, int i3) {
        this.f45061c = i2;
        this.f45062d = i3;
    }

    @Override // com.smartdigimkt.w1.b
    public void a() {
        ValueAnimator valueAnimator = this.f45060b;
        if (valueAnimator != null) {
            try {
                valueAnimator.resume();
            } catch (Throwable unused) {
            }
        }
    }
}
