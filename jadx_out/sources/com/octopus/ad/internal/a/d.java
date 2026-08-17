package com.octopus.ad.internal.a;

import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;

/* loaded from: classes4.dex */
public class d implements g {

    /* renamed from: c, reason: collision with root package name */
    private static final float[] f34123c = {0.0f, 0.0f, 1.0f, 0.0f};

    /* renamed from: d, reason: collision with root package name */
    private static final float[] f34124d = {0.0f, 0.0f, -1.0f, 0.0f};

    /* renamed from: e, reason: collision with root package name */
    private static final float[] f34125e = {-1.0f, 0.0f, 0.0f, 0.0f};

    /* renamed from: f, reason: collision with root package name */
    private static final float[] f34126f = {1.0f, 0.0f, 0.0f, 0.0f};

    /* renamed from: a, reason: collision with root package name */
    private Animation f34127a;

    /* renamed from: b, reason: collision with root package name */
    private Animation f34128b;

    /* renamed from: com.octopus.ad.internal.a.d$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34129a;

        static {
            int[] iArr = new int[h.values().length];
            f34129a = iArr;
            try {
                iArr[h.UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34129a[h.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34129a[h.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34129a[h.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public d(long j2, h hVar) {
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        a(a(hVar), linearInterpolator, j2);
        b(a(hVar), linearInterpolator, j2);
    }

    private float[] a(h hVar) {
        int i2 = AnonymousClass1.f34129a[hVar.ordinal()];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? f34123c : f34126f : f34125e : f34124d : f34123c;
    }

    private void b(float[] fArr, Interpolator interpolator, long j2) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, -1.0f, 2, 0.0f, 2, 0.0f);
        this.f34128b = translateAnimation;
        translateAnimation.setFillAfter(true);
        this.f34128b.setDuration(j2);
        this.f34128b.setInterpolator(interpolator);
    }

    @Override // com.octopus.ad.internal.a.g
    public Animation b() {
        return this.f34128b;
    }

    private void a(float[] fArr, Interpolator interpolator, long j2) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, fArr[0], 2, fArr[1], 2, fArr[2], 2, fArr[3]);
        this.f34127a = translateAnimation;
        translateAnimation.setInterpolator(interpolator);
        this.f34127a.setFillAfter(true);
        this.f34127a.setDuration(j2);
    }

    @Override // com.octopus.ad.internal.a.g
    public Animation a() {
        return this.f34127a;
    }
}
