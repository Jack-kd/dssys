package com.octopus.ad.internal.a;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;

/* loaded from: classes4.dex */
public class e implements g {

    /* renamed from: c, reason: collision with root package name */
    private static final float[] f34130c = {0.0f, 0.0f, 1.0f, 0.0f};

    /* renamed from: d, reason: collision with root package name */
    private static final float[] f34131d = {0.0f, 0.0f, -1.0f, 0.0f};

    /* renamed from: e, reason: collision with root package name */
    private static final float[] f34132e = {-1.0f, 0.0f, 0.0f, 0.0f};

    /* renamed from: f, reason: collision with root package name */
    private static final float[] f34133f = {1.0f, 0.0f, 0.0f, 0.0f};

    /* renamed from: g, reason: collision with root package name */
    private static final float[] f34134g = {0.0f, 0.0f, 0.0f, -1.0f};

    /* renamed from: h, reason: collision with root package name */
    private static final float[] f34135h = {0.0f, 0.0f, 0.0f, 1.0f};

    /* renamed from: i, reason: collision with root package name */
    private static final float[] f34136i = {0.0f, 1.0f, 0.0f, 0.0f};

    /* renamed from: j, reason: collision with root package name */
    private static final float[] f34137j = {0.0f, -1.0f, 0.0f, 0.0f};

    /* renamed from: a, reason: collision with root package name */
    private Animation f34138a;

    /* renamed from: b, reason: collision with root package name */
    private Animation f34139b;

    /* renamed from: com.octopus.ad.internal.a.e$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34140a;

        static {
            int[] iArr = new int[h.values().length];
            f34140a = iArr;
            try {
                iArr[h.UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34140a[h.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34140a[h.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34140a[h.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public e(long j2, h hVar) {
        AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        this.f34138a = a(a(hVar), accelerateInterpolator, j2);
        this.f34139b = a(b(hVar), accelerateInterpolator, j2);
    }

    private float[] a(h hVar) {
        int i2 = AnonymousClass1.f34140a[hVar.ordinal()];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? f34130c : f34133f : f34132e : f34131d : f34130c;
    }

    private float[] b(h hVar) {
        int i2 = AnonymousClass1.f34140a[hVar.ordinal()];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? f34134g : f34137j : f34136i : f34135h : f34134g;
    }

    private Animation a(float[] fArr, Interpolator interpolator, long j2) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, fArr[0], 2, fArr[1], 2, fArr[2], 2, fArr[3]);
        translateAnimation.setInterpolator(interpolator);
        translateAnimation.setDuration(j2);
        return translateAnimation;
    }

    @Override // com.octopus.ad.internal.a.g
    public Animation b() {
        return this.f34139b;
    }

    @Override // com.octopus.ad.internal.a.g
    public Animation a() {
        return this.f34138a;
    }
}
