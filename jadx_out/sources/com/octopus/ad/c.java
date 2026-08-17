package com.octopus.ad;

import android.graphics.Matrix;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private C0719c f33731a;

    /* renamed from: b, reason: collision with root package name */
    private C0719c f33732b;

    /* renamed from: com.octopus.ad.c$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f33733a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f33734b;

        static {
            int[] iArr = new int[a.values().length];
            f33734b = iArr;
            try {
                iArr[a.LEFT_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33734b[a.LEFT_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33734b[a.LEFT_BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33734b[a.CENTER_TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33734b[a.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33734b[a.CENTER_BOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33734b[a.RIGHT_TOP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f33734b[a.RIGHT_CENTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f33734b[a.RIGHT_BOTTOM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[b.values().length];
            f33733a = iArr2;
            try {
                iArr2[b.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f33733a[b.FIT_XY.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f33733a[b.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f33733a[b.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f33733a[b.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f33733a[b.LEFT_TOP.ordinal()] = 6;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f33733a[b.LEFT_CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f33733a[b.LEFT_BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f33733a[b.CENTER_TOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f33733a[b.CENTER.ordinal()] = 10;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f33733a[b.CENTER_BOTTOM.ordinal()] = 11;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f33733a[b.RIGHT_TOP.ordinal()] = 12;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f33733a[b.RIGHT_CENTER.ordinal()] = 13;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f33733a[b.RIGHT_BOTTOM.ordinal()] = 14;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f33733a[b.LEFT_TOP_CROP.ordinal()] = 15;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f33733a[b.LEFT_CENTER_CROP.ordinal()] = 16;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f33733a[b.LEFT_BOTTOM_CROP.ordinal()] = 17;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f33733a[b.CENTER_TOP_CROP.ordinal()] = 18;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f33733a[b.CENTER_CROP.ordinal()] = 19;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f33733a[b.CENTER_BOTTOM_CROP.ordinal()] = 20;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f33733a[b.RIGHT_TOP_CROP.ordinal()] = 21;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f33733a[b.RIGHT_CENTER_CROP.ordinal()] = 22;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f33733a[b.RIGHT_BOTTOM_CROP.ordinal()] = 23;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f33733a[b.START_INSIDE.ordinal()] = 24;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f33733a[b.CENTER_INSIDE.ordinal()] = 25;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f33733a[b.END_INSIDE.ordinal()] = 26;
            } catch (NoSuchFieldError unused35) {
            }
        }
    }

    public enum a {
        LEFT_TOP,
        LEFT_CENTER,
        LEFT_BOTTOM,
        CENTER_TOP,
        CENTER,
        CENTER_BOTTOM,
        RIGHT_TOP,
        RIGHT_CENTER,
        RIGHT_BOTTOM
    }

    public enum b {
        NONE,
        FIT_XY,
        FIT_START,
        FIT_CENTER,
        FIT_END,
        LEFT_TOP,
        LEFT_CENTER,
        LEFT_BOTTOM,
        CENTER_TOP,
        CENTER,
        CENTER_BOTTOM,
        RIGHT_TOP,
        RIGHT_CENTER,
        RIGHT_BOTTOM,
        LEFT_TOP_CROP,
        LEFT_CENTER_CROP,
        LEFT_BOTTOM_CROP,
        CENTER_TOP_CROP,
        CENTER_CROP,
        CENTER_BOTTOM_CROP,
        RIGHT_TOP_CROP,
        RIGHT_CENTER_CROP,
        RIGHT_BOTTOM_CROP,
        START_INSIDE,
        CENTER_INSIDE,
        END_INSIDE
    }

    /* renamed from: com.octopus.ad.c$c, reason: collision with other inner class name */
    public static class C0719c {

        /* renamed from: a, reason: collision with root package name */
        private int f33787a;

        /* renamed from: b, reason: collision with root package name */
        private int f33788b;

        public C0719c(int i2, int i3) {
            this.f33787a = i2;
            this.f33788b = i3;
        }

        public int a() {
            return this.f33787a;
        }

        public int b() {
            return this.f33788b;
        }
    }

    public c(C0719c c0719c, C0719c c0719c2) {
        this.f33731a = c0719c;
        this.f33732b = c0719c2;
    }

    private Matrix b() {
        return a(1.0f, 1.0f, a.LEFT_TOP);
    }

    private Matrix c() {
        return a(a.LEFT_TOP);
    }

    private Matrix d() {
        return a(a.CENTER);
    }

    private Matrix e() {
        return a(a.RIGHT_BOTTOM);
    }

    private Matrix f() {
        return (this.f33732b.b() > this.f33731a.a() || this.f33732b.b() > this.f33731a.b()) ? c() : b(a.LEFT_TOP);
    }

    private Matrix g() {
        return (this.f33732b.b() > this.f33731a.a() || this.f33732b.b() > this.f33731a.b()) ? d() : b(a.CENTER);
    }

    private Matrix h() {
        return (this.f33732b.b() > this.f33731a.a() || this.f33732b.b() > this.f33731a.b()) ? e() : b(a.RIGHT_BOTTOM);
    }

    public Matrix a(b bVar) {
        switch (AnonymousClass1.f33733a[bVar.ordinal()]) {
            case 1:
                return a();
            case 2:
                return b();
            case 3:
                return d();
            case 4:
                return c();
            case 5:
                return e();
            case 6:
                return b(a.LEFT_TOP);
            case 7:
                return b(a.LEFT_CENTER);
            case 8:
                return b(a.LEFT_BOTTOM);
            case 9:
                return b(a.CENTER_TOP);
            case 10:
                return b(a.CENTER);
            case 11:
                return b(a.CENTER_BOTTOM);
            case 12:
                return b(a.RIGHT_TOP);
            case 13:
                return b(a.RIGHT_CENTER);
            case 14:
                return b(a.RIGHT_BOTTOM);
            case 15:
                return c(a.LEFT_TOP);
            case 16:
                return c(a.LEFT_CENTER);
            case 17:
                return c(a.LEFT_BOTTOM);
            case 18:
                return c(a.CENTER_TOP);
            case 19:
                return c(a.CENTER);
            case 20:
                return c(a.CENTER_BOTTOM);
            case 21:
                return c(a.RIGHT_TOP);
            case 22:
                return c(a.RIGHT_CENTER);
            case 23:
                return c(a.RIGHT_BOTTOM);
            case 24:
                return f();
            case 25:
                return g();
            case 26:
                return h();
            default:
                return null;
        }
    }

    private Matrix b(a aVar) {
        return a(this.f33732b.a() / this.f33731a.a(), this.f33732b.b() / this.f33731a.b(), aVar);
    }

    private Matrix c(a aVar) {
        float fA = this.f33731a.a() / this.f33732b.a();
        float fB = this.f33731a.b() / this.f33732b.b();
        float fMax = Math.max(fA, fB);
        return a(fMax / fA, fMax / fB, aVar);
    }

    private Matrix a(float f2, float f3, float f4, float f5) {
        Matrix matrix = new Matrix();
        matrix.setScale(f2, f3, f4, f5);
        return matrix;
    }

    private Matrix a(float f2, float f3, a aVar) {
        switch (AnonymousClass1.f33734b[aVar.ordinal()]) {
            case 1:
                return a(f2, f3, 0.0f, 0.0f);
            case 2:
                return a(f2, f3, 0.0f, this.f33731a.b() / 2.0f);
            case 3:
                return a(f2, f3, 0.0f, this.f33731a.b());
            case 4:
                return a(f2, f3, this.f33731a.a() / 2.0f, 0.0f);
            case 5:
                return a(f2, f3, this.f33731a.a() / 2.0f, this.f33731a.b() / 2.0f);
            case 6:
                return a(f2, f3, this.f33731a.a() / 2.0f, this.f33731a.b());
            case 7:
                return a(f2, f3, this.f33731a.a(), 0.0f);
            case 8:
                return a(f2, f3, this.f33731a.a(), this.f33731a.b() / 2.0f);
            case 9:
                return a(f2, f3, this.f33731a.a(), this.f33731a.b());
            default:
                throw new IllegalArgumentException("Illegal PivotPoint");
        }
    }

    private Matrix a() {
        return a(this.f33732b.a() / this.f33731a.a(), this.f33732b.b() / this.f33731a.b(), a.LEFT_TOP);
    }

    private Matrix a(a aVar) {
        float fA = this.f33731a.a() / this.f33732b.a();
        float fB = this.f33731a.b() / this.f33732b.b();
        float fMin = Math.min(fA, fB);
        return a(fMin / fA, fMin / fB, aVar);
    }
}
