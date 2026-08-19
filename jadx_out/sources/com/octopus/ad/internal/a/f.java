package com.octopus.ad.internal.a;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;

/* loaded from: classes4.dex */
public class f implements g {

    /* renamed from: c, reason: collision with root package name */
    private static final float[] f34141c = {0.0f, 0.0f, 0.0f, -1.0f};

    /* renamed from: d, reason: collision with root package name */
    private static final float[] f34142d = {0.0f, 0.0f, 0.0f, 1.0f};

    /* renamed from: e, reason: collision with root package name */
    private static final float[] f34143e = {0.0f, 1.0f, 0.0f, 0.0f};

    /* renamed from: f, reason: collision with root package name */
    private static final float[] f34144f = {0.0f, -1.0f, 0.0f, 0.0f};

    /* renamed from: a, reason: collision with root package name */
    private Animation f34145a;

    /* renamed from: b, reason: collision with root package name */
    private Animation f34146b;

    /* renamed from: com.octopus.ad.internal.a.f$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34147a;

        static {
            int[] iArr = new int[h.values().length];
            f34147a = iArr;
            try {
                iArr[h.UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34147a[h.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34147a[h.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34147a[h.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public f(long j2, h hVar) {
        AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        a(accelerateInterpolator, j2);
        a(a(hVar), accelerateInterpolator, j2);
    }

    private void a(Interpolator interpolator, long j2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        this.f34145a = alphaAnimation;
        alphaAnimation.setDuration(j2);
        this.f34145a.setInterpolator(interpolator);
    }

    @Override // com.octopus.ad.internal.a.g
    public Animation b() {
        return this.f34146b;
    }

    private void a(float[] fArr, Interpolator interpolator, long j2) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, fArr[0], 2, fArr[1], 2, fArr[2], 2, fArr[3]);
        translateAnimation.setInterpolator(interpolator);
        translateAnimation.setDuration(j2);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(j2);
        alphaAnimation.setInterpolator(interpolator);
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        this.f34146b = animationSet;
    }

    private float[] a(h hVar) {
        int i2 = AnonymousClass1.f34147a[hVar.ordinal()];
        if (i2 == 1) {
            return f34141c;
        }
        if (i2 == 2) {
            return f34142d;
        }
        if (i2 == 3) {
            return f34143e;
        }
        if (i2 != 4) {
            return f34141c;
        }
        return f34144f;
    }

    @Override // com.octopus.ad.internal.a.g
    public Animation a() {
        return this.f34145a;
    }
}
