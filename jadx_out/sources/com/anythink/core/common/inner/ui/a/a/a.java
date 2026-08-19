package com.anythink.core.common.inner.ui.a.a;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.view.View;

/* loaded from: classes2.dex */
public abstract class a implements com.anythink.core.common.inner.ui.a.b {

    /* renamed from: a, reason: collision with root package name */
    protected View f5080a;

    /* renamed from: b, reason: collision with root package name */
    protected ValueAnimator f5081b;

    /* renamed from: c, reason: collision with root package name */
    protected int f5082c;

    /* renamed from: d, reason: collision with root package name */
    protected int f5083d;

    public a(View view) {
        this.f5080a = view;
    }

    @Override // com.anythink.core.common.inner.ui.a.b
    public void a(Canvas canvas) {
    }

    @Override // com.anythink.core.common.inner.ui.a.b
    public void b() {
        ValueAnimator valueAnimator = this.f5081b;
        if (valueAnimator != null) {
            try {
                valueAnimator.pause();
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.anythink.core.common.inner.ui.a.b
    public void c() {
        ValueAnimator valueAnimator = this.f5081b;
        if (valueAnimator != null) {
            try {
                valueAnimator.resume();
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.anythink.core.common.inner.ui.a.b
    public void d() {
        ValueAnimator valueAnimator = this.f5081b;
        if (valueAnimator != null) {
            try {
                valueAnimator.cancel();
                this.f5081b = null;
            } catch (Throwable unused) {
            }
        }
    }

    public ValueAnimator e() {
        return null;
    }

    public void f() {
        View view = this.f5080a;
        if (view == null) {
            return;
        }
        if (this.f5082c == 0 || this.f5083d == 0) {
            this.f5082c = view.getWidth();
            this.f5083d = this.f5080a.getHeight();
        }
    }

    @Override // com.anythink.core.common.inner.ui.a.b
    public void a(int i2, int i3) {
        this.f5082c = i2;
        this.f5083d = i3;
    }

    @Override // com.anythink.core.common.inner.ui.a.b
    public synchronized void a() {
        if (this.f5080a == null) {
            return;
        }
        d();
        ValueAnimator valueAnimatorE = e();
        this.f5081b = valueAnimatorE;
        if (valueAnimatorE != null) {
            this.f5080a.post(new Runnable() { // from class: com.anythink.core.common.inner.ui.a.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    ValueAnimator valueAnimator = a.this.f5081b;
                    if (valueAnimator == null || valueAnimator.isStarted()) {
                        return;
                    }
                    a.this.f();
                    try {
                        a.this.f5081b.start();
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }
}
