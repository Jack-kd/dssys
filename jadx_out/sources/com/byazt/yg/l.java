package com.byazt.yg;

import android.graphics.PointF;
import com.bytedance.component.sdk.annotation.ColorInt;

@com.byazt.kj.hp(hp = {0, 1, 1463, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public float f27916a;

    /* renamed from: e, reason: collision with root package name */
    public float f27917e;
    public float eb;
    public boolean gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public hp f27918j;
    public PointF jl;
    public float jx;

    /* renamed from: k, reason: collision with root package name */
    public w f27919k;

    /* renamed from: l, reason: collision with root package name */
    public String f27920l;

    /* renamed from: q, reason: collision with root package name */
    @ColorInt
    public int f27921q;

    /* renamed from: s, reason: collision with root package name */
    @ColorInt
    public int f27922s;

    /* renamed from: u, reason: collision with root package name */
    public String f27923u;

    /* renamed from: v, reason: collision with root package name */
    public String f27924v;

    /* renamed from: w, reason: collision with root package name */
    public int f27925w;
    public PointF zy;

    public enum hp {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public l(String str, String str2, float f2, hp hpVar, int i2, float f3, float f4, @ColorInt int i3, @ColorInt int i4, float f5, boolean z2, PointF pointF, PointF pointF2, w wVar, String str3, String str4) {
        hp(str, str2, f2, hpVar, i2, f3, f4, i3, i4, f5, z2, pointF, pointF2, wVar, str3, str4);
    }

    public int hashCode() {
        int iHashCode = (((((int) ((((this.hp.hashCode() * 31) + this.f27920l.hashCode()) * 31) + this.jx)) * 31) + this.f27918j.ordinal()) * 31) + this.f27925w;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f27916a);
        int i2 = ((((iHashCode * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.f27922s) * 31;
        w wVar = this.f27919k;
        return ((i2 + wVar.hp) * 31) + wVar.f27929l;
    }

    public void hp(String str, String str2, float f2, hp hpVar, int i2, float f3, float f4, @ColorInt int i3, @ColorInt int i4, float f5, boolean z2, PointF pointF, PointF pointF2, w wVar, String str3, String str4) {
        this.hp = str;
        this.f27920l = str2;
        this.jx = f2;
        this.f27918j = hpVar;
        this.f27925w = i2;
        this.f27916a = f3;
        this.eb = f4;
        this.f27922s = i3;
        this.f27921q = i4;
        this.f27917e = f5;
        this.gu = z2;
        this.jl = pointF;
        this.zy = pointF2;
        this.f27919k = wVar;
        this.f27924v = str3;
        this.f27923u = str4;
    }

    public l() {
        this.f27919k = new w();
    }
}
