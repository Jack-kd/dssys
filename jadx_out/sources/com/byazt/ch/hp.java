package com.byazt.ch;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.byazt.na.a;

@com.byazt.kj.hp(hp = {0, 1, 162, 28})
/* loaded from: classes2.dex */
public class hp<T> {

    /* renamed from: a, reason: collision with root package name */
    public final float f18846a;

    /* renamed from: e, reason: collision with root package name */
    public final a f18847e;
    public Float eb;
    public float gu;
    public final T hp;

    /* renamed from: j, reason: collision with root package name */
    public final Interpolator f18848j;
    public float jl;
    public final Interpolator jx;

    /* renamed from: k, reason: collision with root package name */
    public int f18849k;

    /* renamed from: l, reason: collision with root package name */
    public T f18850l;

    /* renamed from: q, reason: collision with root package name */
    public PointF f18851q;

    /* renamed from: s, reason: collision with root package name */
    public PointF f18852s;

    /* renamed from: u, reason: collision with root package name */
    public float f18853u;

    /* renamed from: v, reason: collision with root package name */
    public float f18854v;

    /* renamed from: w, reason: collision with root package name */
    public final Interpolator f18855w;
    public int zy;

    public hp(a aVar, T t2, T t3, Interpolator interpolator, float f2, Float f3) {
        this.gu = -3987645.8f;
        this.jl = -3987645.8f;
        this.zy = 784923401;
        this.f18849k = 784923401;
        this.f18854v = Float.MIN_VALUE;
        this.f18853u = Float.MIN_VALUE;
        this.f18852s = null;
        this.f18851q = null;
        this.f18847e = aVar;
        this.hp = t2;
        this.f18850l = t3;
        this.jx = interpolator;
        this.f18848j = null;
        this.f18855w = null;
        this.f18846a = f2;
        this.eb = f3;
    }

    public float a() {
        if (this.gu == -3987645.8f) {
            this.gu = ((Float) this.hp).floatValue();
        }
        return this.gu;
    }

    public float eb() {
        if (this.jl == -3987645.8f) {
            this.jl = ((Float) this.f18850l).floatValue();
        }
        return this.jl;
    }

    public hp<T> hp(T t2, T t3) {
        return new hp<>(t2, t3);
    }

    public float j() {
        if (this.f18847e == null) {
            return 1.0f;
        }
        if (this.f18853u == Float.MIN_VALUE) {
            if (this.eb == null) {
                this.f18853u = 1.0f;
            } else {
                this.f18853u = jx() + ((this.eb.floatValue() - this.f18846a) / this.f18847e.vv());
            }
        }
        return this.f18853u;
    }

    public float jx() {
        a aVar = this.f18847e;
        if (aVar == null) {
            return 0.0f;
        }
        if (this.f18854v == Float.MIN_VALUE) {
            this.f18854v = (this.f18846a - aVar.a()) / this.f18847e.vv();
        }
        return this.f18854v;
    }

    public int q() {
        if (this.f18849k == 784923401) {
            this.f18849k = ((Integer) this.f18850l).intValue();
        }
        return this.f18849k;
    }

    public int s() {
        if (this.zy == 784923401) {
            this.zy = ((Integer) this.hp).intValue();
        }
        return this.zy;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.hp + ", endValue=" + this.f18850l + ", startFrame=" + this.f18846a + ", endFrame=" + this.eb + ", interpolator=" + this.jx + '}';
    }

    public boolean w() {
        return this.jx == null && this.f18848j == null && this.f18855w == null;
    }

    public boolean hp(float f2) {
        return f2 >= jx() && f2 < j();
    }

    public hp(a aVar, T t2, T t3, Interpolator interpolator, Interpolator interpolator2, float f2, Float f3) {
        this.gu = -3987645.8f;
        this.jl = -3987645.8f;
        this.zy = 784923401;
        this.f18849k = 784923401;
        this.f18854v = Float.MIN_VALUE;
        this.f18853u = Float.MIN_VALUE;
        this.f18852s = null;
        this.f18851q = null;
        this.f18847e = aVar;
        this.hp = t2;
        this.f18850l = t3;
        this.jx = null;
        this.f18848j = interpolator;
        this.f18855w = interpolator2;
        this.f18846a = f2;
        this.eb = f3;
    }

    public hp(a aVar, T t2, T t3, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f2, Float f3) {
        this.gu = -3987645.8f;
        this.jl = -3987645.8f;
        this.zy = 784923401;
        this.f18849k = 784923401;
        this.f18854v = Float.MIN_VALUE;
        this.f18853u = Float.MIN_VALUE;
        this.f18852s = null;
        this.f18851q = null;
        this.f18847e = aVar;
        this.hp = t2;
        this.f18850l = t3;
        this.jx = interpolator;
        this.f18848j = interpolator2;
        this.f18855w = interpolator3;
        this.f18846a = f2;
        this.eb = f3;
    }

    public hp(T t2) {
        this.gu = -3987645.8f;
        this.jl = -3987645.8f;
        this.zy = 784923401;
        this.f18849k = 784923401;
        this.f18854v = Float.MIN_VALUE;
        this.f18853u = Float.MIN_VALUE;
        this.f18852s = null;
        this.f18851q = null;
        this.f18847e = null;
        this.hp = t2;
        this.f18850l = t2;
        this.jx = null;
        this.f18848j = null;
        this.f18855w = null;
        this.f18846a = Float.MIN_VALUE;
        this.eb = Float.valueOf(Float.MAX_VALUE);
    }

    private hp(T t2, T t3) {
        this.gu = -3987645.8f;
        this.jl = -3987645.8f;
        this.zy = 784923401;
        this.f18849k = 784923401;
        this.f18854v = Float.MIN_VALUE;
        this.f18853u = Float.MIN_VALUE;
        this.f18852s = null;
        this.f18851q = null;
        this.f18847e = null;
        this.hp = t2;
        this.f18850l = t3;
        this.jx = null;
        this.f18848j = null;
        this.f18855w = null;
        this.f18846a = Float.MIN_VALUE;
        this.eb = Float.valueOf(Float.MAX_VALUE);
    }
}
