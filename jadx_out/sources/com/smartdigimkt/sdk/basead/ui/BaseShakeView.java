package com.smartdigimkt.sdk.basead.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e1.a;
import com.smartdigimkt.i0.j;
import com.smartdigimkt.i1.c;
import com.smartdigimkt.i1.f;
import com.smartdigimkt.i1.g;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.v1.h1;
import com.smartdigimkt.v1.i1;
import com.smartdigimkt.v1.j1;
import com.smartdigimkt.v1.k1;
import com.smartdigimkt.v1.l1;
import com.smartdigimkt.v1.m1;
import com.smartdigimkt.v1.n1;
import com.smartdigimkt.v1.o1;
import com.smartdigimkt.v1.p1;
import com.smartdigimkt.v1.q1;
import com.smartdigimkt.v1.r1;
import com.smartdigimkt.v1.s1;
import com.smartdigimkt.v1.t1;
import com.smartdigimkt.v1.u1;
import com.smartdigimkt.v1.v1;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class BaseShakeView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public ImageView f43316a;

    /* renamed from: b, reason: collision with root package name */
    public ImageView f43317b;

    /* renamed from: c, reason: collision with root package name */
    public int f43318c;

    /* renamed from: d, reason: collision with root package name */
    public ValueAnimator f43319d;

    /* renamed from: e, reason: collision with root package name */
    public int f43320e;

    /* renamed from: f, reason: collision with root package name */
    public String f43321f;

    /* renamed from: g, reason: collision with root package name */
    public String f43322g;

    /* renamed from: h, reason: collision with root package name */
    public String f43323h;

    /* renamed from: i, reason: collision with root package name */
    public String f43324i;

    /* renamed from: j, reason: collision with root package name */
    public Bitmap f43325j;

    /* renamed from: k, reason: collision with root package name */
    public v1 f43326k;

    /* renamed from: l, reason: collision with root package name */
    public final m1 f43327l;

    public BaseShakeView(Context context) {
        super(context);
        this.f43318c = 0;
        this.f43327l = new m1(this);
        a();
    }

    public abstract void a();

    public void b() {
        a.a().a(this.f43327l);
    }

    public void c() {
        a.a().b(this.f43327l);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        startShakeIconAnimation();
        b();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f43319d;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        c();
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z2) {
        super.onVisibilityAggregated(z2);
        if (z2) {
            b();
        } else {
            c();
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            b();
        } else {
            c();
        }
    }

    public void setOnShakeListener(v1 v1Var, e eVar) {
        List list;
        m1 m1Var = this.f43327l;
        m1Var.getClass();
        f fVar = new f(eVar);
        if (fVar.f40711a != 1 || (list = fVar.f40713c) == null || list.size() <= 0) {
            m1Var.f40664a = new g();
        } else {
            m1Var.f40664a = new c();
        }
        fVar.toString();
        m1Var.f40664a.getClass();
        m1Var.f40664a.a(new f(eVar));
        m1Var.f40664a.a(new j(m1Var));
        this.f43326k = v1Var;
    }

    public void setShakeSetting(e eVar, int i2) {
        if (eVar != null) {
            this.f43320e = eVar.f41976u0;
            String str = eVar.f41979v0;
            this.f43321f = str;
            this.f43322g = eVar.f41982w0;
            this.f43323h = eVar.f41985x0;
            this.f43324i = eVar.f41988y0;
            if (TextUtils.isEmpty(str)) {
                com.smartdigimkt.b4.e.a().a(new l1(this));
            } else {
                com.smartdigimkt.b4.e.a().c(new k1(this));
            }
        }
    }

    public void startShakeIconAnimation() {
        ValueAnimator valueAnimatorOfFloat;
        if (this.f43316a != null) {
            ValueAnimator valueAnimator = this.f43319d;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            int i2 = this.f43320e;
            if (i2 == 1) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, -25.0f, 0.0f, 25.0f, 0.0f);
                valueAnimatorOfFloat.setDuration(500L);
                valueAnimatorOfFloat.setRepeatCount(-1);
                valueAnimatorOfFloat.addUpdateListener(new q1(this));
                valueAnimatorOfFloat.addListener(new r1(this));
                valueAnimatorOfFloat.setInterpolator(new s1(this));
                this.f43316a.post(new t1(this));
            } else if (i2 != 2) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(-10.0f, 10.0f);
                valueAnimatorOfFloat.setDuration(150L);
                valueAnimatorOfFloat.setRepeatMode(2);
                valueAnimatorOfFloat.setRepeatCount(-1);
                valueAnimatorOfFloat.addUpdateListener(new u1(this));
                valueAnimatorOfFloat.addListener(new h1(this));
                valueAnimatorOfFloat.setInterpolator(new i1(this));
                this.f43316a.post(new j1(this));
            } else {
                int iA = k.a(getContext(), 8.0f);
                float f2 = iA;
                float f3 = -iA;
                valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, f2, f3, f2, f3, iA / 2, r6 / 2, iA / 4, r6 / 4, 0.0f);
                valueAnimatorOfFloat.setDuration(1000L);
                valueAnimatorOfFloat.setRepeatCount(-1);
                valueAnimatorOfFloat.addUpdateListener(new n1(this));
                valueAnimatorOfFloat.addListener(new o1(this));
                valueAnimatorOfFloat.setInterpolator(new p1(this));
            }
            this.f43319d = valueAnimatorOfFloat;
            valueAnimatorOfFloat.start();
        }
    }

    public BaseShakeView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43318c = 0;
        this.f43327l = new m1(this);
        a();
    }

    public BaseShakeView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43318c = 0;
        this.f43327l = new m1(this);
        a();
    }

    @RequiresApi(api = 21)
    public BaseShakeView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f43318c = 0;
        this.f43327l = new m1(this);
        a();
    }
}
