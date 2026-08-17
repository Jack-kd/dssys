package com.ubix.ssp.ad.e.a0;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import com.sigmob.sdk.base.common.C1244a;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public class s implements SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    public static ScheduledExecutorService f46410a;

    /* renamed from: A, reason: collision with root package name */
    float f46411A;

    /* renamed from: B, reason: collision with root package name */
    float f46412B;

    /* renamed from: C, reason: collision with root package name */
    float f46413C;

    /* renamed from: D, reason: collision with root package name */
    private float f46414D;

    /* renamed from: E, reason: collision with root package name */
    private float f46415E;

    /* renamed from: F, reason: collision with root package name */
    private float f46416F;

    /* renamed from: G, reason: collision with root package name */
    private c f46417G;

    /* renamed from: H, reason: collision with root package name */
    private boolean f46418H;

    /* renamed from: I, reason: collision with root package name */
    private boolean f46419I;

    /* renamed from: J, reason: collision with root package name */
    private boolean f46420J;

    /* renamed from: K, reason: collision with root package name */
    private float f46421K;

    /* renamed from: L, reason: collision with root package name */
    boolean f46422L;

    /* renamed from: M, reason: collision with root package name */
    private float f46423M;

    /* renamed from: N, reason: collision with root package name */
    private float f46424N;

    /* renamed from: O, reason: collision with root package name */
    private float f46425O;

    /* renamed from: P, reason: collision with root package name */
    private float f46426P;

    /* renamed from: Q, reason: collision with root package name */
    private float f46427Q;

    /* renamed from: R, reason: collision with root package name */
    private float f46428R;

    /* renamed from: S, reason: collision with root package name */
    private float f46429S;

    /* renamed from: T, reason: collision with root package name */
    private float f46430T;

    /* renamed from: U, reason: collision with root package name */
    private float f46431U;

    /* renamed from: V, reason: collision with root package name */
    private boolean f46432V;

    /* renamed from: W, reason: collision with root package name */
    private boolean f46433W;

    /* renamed from: b, reason: collision with root package name */
    private Context f46434b;

    /* renamed from: c, reason: collision with root package name */
    private SensorManager f46435c;

    /* renamed from: d, reason: collision with root package name */
    private Sensor f46436d;

    /* renamed from: e, reason: collision with root package name */
    private Sensor f46437e;

    /* renamed from: f, reason: collision with root package name */
    private float f46438f;

    /* renamed from: g, reason: collision with root package name */
    private float f46439g;

    /* renamed from: h, reason: collision with root package name */
    private float f46440h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f46441i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f46442j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f46443k;

    /* renamed from: l, reason: collision with root package name */
    long f46444l;

    /* renamed from: m, reason: collision with root package name */
    public double f46445m;

    /* renamed from: n, reason: collision with root package name */
    public int f46446n;

    /* renamed from: o, reason: collision with root package name */
    private e f46447o;

    /* renamed from: p, reason: collision with root package name */
    private ObjectAnimator f46448p;

    /* renamed from: q, reason: collision with root package name */
    int[] f46449q;

    /* renamed from: r, reason: collision with root package name */
    boolean f46450r;

    /* renamed from: s, reason: collision with root package name */
    private long f46451s;

    /* renamed from: t, reason: collision with root package name */
    d[] f46452t;

    /* renamed from: u, reason: collision with root package name */
    long f46453u;

    /* renamed from: v, reason: collision with root package name */
    boolean f46454v;

    /* renamed from: w, reason: collision with root package name */
    float f46455w;

    /* renamed from: x, reason: collision with root package name */
    private int f46456x;

    /* renamed from: y, reason: collision with root package name */
    private double f46457y;

    /* renamed from: z, reason: collision with root package name */
    private long f46458z;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f46459a;

        public a(ImageView imageView) {
            this.f46459a = imageView;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (s.this.f46448p != null) {
                    s.this.f46448p.cancel();
                    s.this.f46448p.removeAllListeners();
                    s.this.f46448p = null;
                }
            } catch (Throwable unused) {
            }
            this.f46459a.setPivotX(r0.getWidth());
            this.f46459a.setPivotY(r0.getWidth());
            s.this.f46448p = ObjectAnimator.ofFloat(this.f46459a, C1244a.f35650B, 0.0f, 2.0f, -6.0f, 6.0f, -6.0f, 3.0f, 0.0f);
            s.this.f46448p.setStartDelay(500L);
            s.this.f46448p.setDuration(1800L);
            s.this.f46448p.setInterpolator(new AccelerateDecelerateInterpolator());
            s.this.f46448p.setRepeatCount(-1);
            s.this.f46448p.start();
        }
    }

    public class b implements ThreadFactory {
        public b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.SSMonitorThread");
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private String f46462a;

        public c(String str) {
            this.f46462a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (s.this.f46432V && s.this.f46433W && TextUtils.isEmpty(this.f46462a)) {
                    return;
                }
                Bundle bundleA = s.this.a(this.f46462a, "{\"acc\":" + s.this.f46432V + ",\"angle\":" + s.this.f46433W + "}");
                if (s.this.f46447o != null) {
                    s.this.f46447o.a(bundleA);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class d {

        /* renamed from: d, reason: collision with root package name */
        private float f46467d;

        /* renamed from: e, reason: collision with root package name */
        private long[] f46468e;

        /* renamed from: f, reason: collision with root package name */
        private int[] f46469f;

        /* renamed from: g, reason: collision with root package name */
        private float[] f46470g;

        /* renamed from: h, reason: collision with root package name */
        private boolean f46471h;

        /* renamed from: i, reason: collision with root package name */
        private int f46472i;

        /* renamed from: a, reason: collision with root package name */
        private float f46464a = 0.0f;

        /* renamed from: b, reason: collision with root package name */
        private float f46465b = 0.0f;

        /* renamed from: c, reason: collision with root package name */
        private float f46466c = 0.0f;

        /* renamed from: j, reason: collision with root package name */
        private long f46473j = 0;

        /* renamed from: k, reason: collision with root package name */
        private int f46474k = 0;

        /* renamed from: l, reason: collision with root package name */
        private float f46475l = 0.0f;

        /* renamed from: m, reason: collision with root package name */
        private float f46476m = 0.0f;

        public d(int i2, float f2) {
            this.f46467d = f2;
            this.f46468e = new long[i2];
            this.f46469f = new int[i2];
            this.f46470g = new float[i2];
        }

        private int a(boolean z2) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (z2) {
                return 1;
            }
            long j2 = this.f46468e[0];
            if (j2 == 0 || jCurrentTimeMillis - j2 <= s.this.f46456x) {
                return this.f46472i;
            }
            return 1;
        }

        public long b() {
            try {
                return this.f46468e[0];
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0L;
            }
        }

        public float c() {
            return this.f46476m;
        }

        public float d() {
            float f2 = this.f46476m % 360.0f;
            return f2 >= 0.0f ? f2 > 180.0f ? f2 - 360.0f : f2 : Math.abs(f2) > 180.0f ? f2 + 360.0f : f2;
        }

        public long[] e() {
            return this.f46468e;
        }

        public boolean f() {
            long[] jArr = this.f46468e;
            if (jArr.length == 1 && jArr[0] > 0) {
                return true;
            }
            long j2 = jArr[jArr.length - 1] - jArr[0];
            return j2 > 0 && j2 < ((long) s.this.f46456x);
        }

        private void a(float f2) {
            float fAbs = Math.abs(f2 - this.f46465b);
            int[] iArr = s.this.f46449q;
            int i2 = this.f46474k;
            if (fAbs <= iArr[i2 % iArr.length] || f2 - this.f46465b >= 0.0f) {
                this.f46465b = (int) Math.max(this.f46465b, f2);
                return;
            }
            if (i2 >= iArr.length) {
                this.f46474k = 0;
            } else {
                this.f46474k = i2 + 1;
            }
            long[] jArr = this.f46468e;
            long[] jArrCopyOfRange = Arrays.copyOfRange(jArr, jArr.length != 1 ? 1 : 0, jArr.length);
            if (jArrCopyOfRange.length != 0) {
                long[] jArrCopyOf = Arrays.copyOf(jArrCopyOfRange, s.this.f46449q.length);
                this.f46468e = jArrCopyOf;
                jArrCopyOf[jArrCopyOf.length - 1] = System.currentTimeMillis();
            }
            boolean z2 = this.f46471h;
            this.f46471h = !z2;
            int[] iArr2 = this.f46469f;
            int[] iArr3 = s.this.f46449q;
            iArr2[iArr3.length - 1] = !z2 ? 1 : -1;
            this.f46470g[iArr3.length - 1] = Math.abs(f2 - this.f46465b) * (this.f46471h ? 1 : -1);
            this.f46466c = 0.0f;
            this.f46465b = 0.0f;
            this.f46464a = 0.0f;
            StringBuilder sb = new StringBuilder();
            sb.append("runDimensionInfo =");
            sb.append(this.f46476m);
            sb.append(";正数达到");
            int[] iArr4 = s.this.f46449q;
            sb.append(iArr4[this.f46474k % iArr4.length]);
            sb.append("-");
            sb.append(this.f46472i);
            sb.append(";");
            sb.append(Arrays.toString(this.f46470g));
            sb.append(";");
            sb.append(Arrays.toString(this.f46468e));
            sb.append(";");
            sb.append(this);
            u.e(sb.toString());
        }

        private void b(float f2) {
            float fAbs = Math.abs(f2 - this.f46466c);
            int[] iArr = s.this.f46449q;
            int i2 = this.f46474k;
            if (fAbs <= iArr[i2 % iArr.length] || f2 - this.f46466c <= 0.0f) {
                this.f46466c = (int) Math.min(this.f46466c, f2);
                return;
            }
            if (i2 >= iArr.length) {
                this.f46474k = 0;
            } else {
                this.f46474k = i2 + 1;
            }
            long[] jArr = this.f46468e;
            long[] jArrCopyOfRange = Arrays.copyOfRange(jArr, jArr.length != 1 ? 1 : 0, jArr.length);
            if (jArrCopyOfRange.length != 0) {
                long[] jArrCopyOf = Arrays.copyOf(jArrCopyOfRange, s.this.f46449q.length);
                this.f46468e = jArrCopyOf;
                jArrCopyOf[jArrCopyOf.length - 1] = System.currentTimeMillis();
            }
            boolean z2 = this.f46471h;
            this.f46471h = !z2;
            int[] iArr2 = this.f46469f;
            int[] iArr3 = s.this.f46449q;
            iArr2[iArr3.length - 1] = !z2 ? 1 : -1;
            this.f46470g[iArr3.length - 1] = Math.abs(f2 - this.f46466c) * (this.f46471h ? 1 : -1);
            this.f46466c = 0.0f;
            this.f46465b = 0.0f;
            this.f46464a = 0.0f;
            StringBuilder sb = new StringBuilder();
            sb.append("runDimensionInfo =");
            sb.append(this.f46476m);
            sb.append(";负数达到");
            int[] iArr4 = s.this.f46449q;
            sb.append(iArr4[this.f46474k % iArr4.length]);
            sb.append("-");
            sb.append(this.f46472i);
            sb.append(";");
            sb.append(Arrays.toString(this.f46470g));
            sb.append(";");
            sb.append(Arrays.toString(this.f46468e));
            sb.append(";");
            sb.append(this);
            u.e(sb.toString());
        }

        private void c(float f2) {
            float fAbs = Math.abs(f2 - this.f46465b);
            int[] iArr = s.this.f46449q;
            int i2 = this.f46472i;
            if (fAbs <= iArr[i2] || f2 - this.f46465b >= 0.0f) {
                this.f46465b = (int) Math.max(this.f46465b, f2);
                return;
            }
            this.f46468e[i2] = System.currentTimeMillis();
            boolean z2 = this.f46471h;
            this.f46471h = !z2;
            int[] iArr2 = this.f46469f;
            int i3 = this.f46472i;
            iArr2[i3] = !z2 ? 1 : -1;
            this.f46470g[i3] = Math.abs(f2 - this.f46465b) * (this.f46471h ? 1 : -1);
            u.e("runDimensionInfo =" + this.f46476m + ";正数达到" + s.this.f46449q[this.f46472i] + "-" + this.f46472i + ";" + Arrays.toString(this.f46470g) + ";" + Arrays.toString(this.f46468e) + ";" + this);
            this.f46472i = this.f46472i + 1;
            long[] jArrCopyOfRange = Arrays.copyOfRange(this.f46468e, a(false), this.f46472i);
            if (jArrCopyOfRange.length != 0) {
                this.f46468e = Arrays.copyOf(jArrCopyOfRange, s.this.f46449q.length);
                this.f46472i--;
            }
            this.f46466c = 0.0f;
            this.f46465b = 0.0f;
            this.f46464a = 0.0f;
        }

        private void d(float f2) {
            float fAbs = Math.abs(f2 - this.f46466c);
            int[] iArr = s.this.f46449q;
            int i2 = this.f46472i;
            if (fAbs <= iArr[i2] || f2 - this.f46466c <= 0.0f) {
                this.f46466c = (int) Math.min(this.f46466c, f2);
                return;
            }
            this.f46468e[i2] = System.currentTimeMillis();
            boolean z2 = this.f46471h;
            this.f46471h = !z2;
            int[] iArr2 = this.f46469f;
            int i3 = this.f46472i;
            iArr2[i3] = !z2 ? 1 : -1;
            this.f46470g[i3] = Math.abs(f2 - this.f46466c) * (this.f46471h ? 1 : -1);
            u.e("runDimensionInfo =" + this.f46476m + ";负数达到" + s.this.f46449q[this.f46472i] + "-" + this.f46472i + ";" + Arrays.toString(this.f46470g) + ";" + Arrays.toString(this.f46468e) + ";" + this);
            this.f46472i = this.f46472i + 1;
            long[] jArrCopyOfRange = Arrays.copyOfRange(this.f46468e, a(false), this.f46472i);
            if (jArrCopyOfRange.length != 0) {
                this.f46468e = Arrays.copyOf(jArrCopyOfRange, s.this.f46449q.length);
                this.f46472i--;
            }
            this.f46466c = 0.0f;
            this.f46465b = 0.0f;
            this.f46464a = 0.0f;
        }

        public void a(float f2, float f3) {
            StringBuilder sb;
            try {
                float f4 = f3 * f2;
                float f5 = this.f46475l + f4;
                this.f46475l = f5;
                this.f46476m = (float) Math.toDegrees(f5);
                float f6 = this.f46464a + f4;
                this.f46464a = f6;
                float degrees = (float) Math.toDegrees(f6);
                u.e("runDimensionInfo =" + this.f46476m + ";" + degrees + ";" + this.f46471h + ";" + this);
                if (!s.this.f46419I) {
                    int i2 = this.f46472i;
                    if (i2 != 0) {
                        if (i2 < s.this.f46449q.length) {
                            if (this.f46471h) {
                                c(degrees);
                                return;
                            } else {
                                d(degrees);
                                return;
                            }
                        }
                        if (this.f46471h) {
                            a(degrees);
                            return;
                        } else {
                            b(degrees);
                            return;
                        }
                    }
                    this.f46466c = (int) Math.min(this.f46466c, degrees);
                    float fMax = (int) Math.max(this.f46465b, degrees);
                    this.f46465b = fMax;
                    float f7 = fMax - this.f46466c;
                    int[] iArr = s.this.f46449q;
                    int i3 = this.f46472i;
                    if (f7 > iArr[i3]) {
                        this.f46468e[i3] = System.currentTimeMillis();
                        boolean z2 = degrees > 0.0f;
                        this.f46471h = z2;
                        int[] iArr2 = this.f46469f;
                        int i4 = this.f46472i;
                        iArr2[i4] = z2 ? 1 : -1;
                        this.f46470g[i4] = (this.f46465b - this.f46466c) * (z2 ? 1 : -1);
                        if (!z2) {
                            sb = new StringBuilder();
                            sb.append("runDimensionInfo =");
                            sb.append(this.f46476m);
                            sb.append(";正数达到");
                            sb.append(s.this.f46449q[this.f46472i]);
                            sb.append("-");
                            sb.append(this.f46472i);
                            sb.append(";");
                            sb.append(Arrays.toString(this.f46470g));
                            sb.append(";");
                            sb.append(Arrays.toString(this.f46468e));
                            sb.append(";");
                            sb.append(this);
                        } else {
                            sb = new StringBuilder();
                            sb.append("runDimensionInfo =");
                            sb.append(this.f46476m);
                            sb.append(";负数达到");
                            sb.append(s.this.f46449q[this.f46472i]);
                            sb.append("-");
                            sb.append(this.f46472i);
                            sb.append(";");
                            sb.append(Arrays.toString(this.f46470g));
                            sb.append(";");
                            sb.append(Arrays.toString(this.f46468e));
                            sb.append(";");
                            sb.append(this);
                        }
                        u.e(sb.toString());
                        this.f46472i++;
                        this.f46466c = 0.0f;
                        this.f46465b = 0.0f;
                        this.f46464a = 0.0f;
                        return;
                    }
                    return;
                }
                if (this.f46472i < s.this.f46449q.length) {
                    float fAbs = Math.abs(this.f46476m);
                    int[] iArr3 = s.this.f46449q;
                    int i5 = this.f46472i;
                    if (fAbs <= iArr3[i5] || this.f46476m <= 0.0f || (i5 != 0 && this.f46471h)) {
                        float fAbs2 = Math.abs(this.f46476m);
                        int[] iArr4 = s.this.f46449q;
                        int i6 = this.f46472i;
                        if (fAbs2 <= iArr4[i6] || this.f46476m >= 0.0f) {
                            return;
                        }
                        if (i6 != 0 && !this.f46471h) {
                            return;
                        }
                        this.f46468e[i6] = System.currentTimeMillis();
                        this.f46471h = false;
                        int[] iArr5 = this.f46469f;
                        int i7 = this.f46472i;
                        iArr5[i7] = -1;
                        this.f46470g[i7] = Math.abs(this.f46476m) * (-1.0f);
                        u.e("runDimensionInfo =" + this.f46476m + ";负数达到" + s.this.f46449q[this.f46472i] + "-" + this.f46472i + ";" + Arrays.toString(this.f46470g) + ";" + Arrays.toString(this.f46468e) + ";" + this);
                    } else {
                        this.f46468e[i5] = System.currentTimeMillis();
                        this.f46471h = true;
                        int[] iArr6 = this.f46469f;
                        int i8 = this.f46472i;
                        iArr6[i8] = 1;
                        this.f46470g[i8] = Math.abs(this.f46476m) * 1.0f;
                        u.e("runDimensionInfo =" + this.f46476m + ";正数达到" + s.this.f46449q[this.f46472i] + "-" + this.f46472i + ";" + Arrays.toString(this.f46470g) + ";" + Arrays.toString(this.f46468e) + ";" + this);
                    }
                } else {
                    float fAbs3 = Math.abs(this.f46476m);
                    int[] iArr7 = s.this.f46449q;
                    if (fAbs3 <= iArr7[this.f46472i % iArr7.length] || this.f46476m <= 0.0f || this.f46471h) {
                        float fAbs4 = Math.abs(this.f46476m);
                        int[] iArr8 = s.this.f46449q;
                        if (fAbs4 <= iArr8[this.f46472i % iArr8.length] || this.f46476m >= 0.0f || !this.f46471h) {
                            return;
                        }
                        long[] jArr = this.f46468e;
                        long[] jArrCopyOfRange = Arrays.copyOfRange(jArr, jArr.length == 1 ? 0 : 1, jArr.length);
                        if (jArrCopyOfRange.length != 0) {
                            long[] jArrCopyOf = Arrays.copyOf(jArrCopyOfRange, s.this.f46449q.length);
                            this.f46468e = jArrCopyOf;
                            jArrCopyOf[jArrCopyOf.length - 1] = System.currentTimeMillis();
                        }
                        boolean z3 = this.f46471h;
                        this.f46471h = !z3;
                        int[] iArr9 = this.f46469f;
                        int[] iArr10 = s.this.f46449q;
                        iArr9[iArr10.length - 1] = !z3 ? 1 : -1;
                        this.f46470g[iArr10.length - 1] = Math.abs(this.f46476m) * (this.f46471h ? 1 : -1);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("runDimensionInfo =");
                        sb2.append(this.f46476m);
                        sb2.append(";负数达到");
                        int[] iArr11 = s.this.f46449q;
                        sb2.append(iArr11[this.f46472i % iArr11.length]);
                        sb2.append("-");
                        sb2.append(this.f46472i);
                        sb2.append(";");
                        sb2.append(Arrays.toString(this.f46470g));
                        sb2.append(";");
                        sb2.append(Arrays.toString(this.f46468e));
                        sb2.append(";");
                        sb2.append(this);
                        u.e(sb2.toString());
                    } else {
                        long[] jArr2 = this.f46468e;
                        long[] jArrCopyOfRange2 = Arrays.copyOfRange(jArr2, jArr2.length == 1 ? 0 : 1, jArr2.length);
                        if (jArrCopyOfRange2.length != 0) {
                            long[] jArrCopyOf2 = Arrays.copyOf(jArrCopyOfRange2, s.this.f46449q.length);
                            this.f46468e = jArrCopyOf2;
                            jArrCopyOf2[jArrCopyOf2.length - 1] = System.currentTimeMillis();
                        }
                        boolean z4 = this.f46471h;
                        this.f46471h = !z4;
                        int[] iArr12 = this.f46469f;
                        int[] iArr13 = s.this.f46449q;
                        iArr12[iArr13.length - 1] = !z4 ? 1 : -1;
                        this.f46470g[iArr13.length - 1] = Math.abs(this.f46476m) * (this.f46471h ? 1 : -1);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("runDimensionInfo =");
                        sb3.append(this.f46476m);
                        sb3.append(";正数达到");
                        int[] iArr14 = s.this.f46449q;
                        sb3.append(iArr14[this.f46472i % iArr14.length]);
                        sb3.append("-");
                        sb3.append(this.f46472i);
                        sb3.append(";");
                        sb3.append(Arrays.toString(this.f46470g));
                        sb3.append(";");
                        sb3.append(Arrays.toString(this.f46468e));
                        sb3.append(";");
                        sb3.append(this);
                        u.e(sb3.toString());
                    }
                }
                this.f46472i++;
            } catch (Exception e2) {
                e2.printStackTrace();
                this.f46472i = 0;
                this.f46466c = 0.0f;
                this.f46465b = 0.0f;
                this.f46464a = 0.0f;
            }
        }

        public int[] a() {
            return this.f46469f;
        }
    }

    public interface e {
        void a(float f2, float f3);

        void a(Bundle bundle);
    }

    public s(Context context, double d2, int i2, double d3) {
        this.f46441i = false;
        this.f46442j = true;
        this.f46443k = true;
        this.f46445m = 3.0d;
        this.f46446n = 5;
        this.f46449q = new int[]{35, 35};
        this.f46450r = false;
        this.f46451s = 0L;
        this.f46452t = new d[3];
        this.f46453u = 0L;
        this.f46454v = false;
        this.f46456x = 5000;
        this.f46458z = 0L;
        this.f46418H = false;
        this.f46420J = false;
        this.f46421K = 0.0f;
        this.f46422L = true;
        this.f46434b = context.getApplicationContext();
        this.f46457y = d3;
        if (d2 <= 0.0d) {
            this.f46445m = 3.0d;
        } else {
            this.f46445m = d2;
        }
        if (i2 > 0) {
            this.f46446n = i2;
        }
    }

    private float a(float f2, float f3) {
        return Math.abs(f3) > Math.abs(f2) ? f3 : f2;
    }

    private Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putInt("__SENSOR_INFO_TYPE__", 1);
        if (this.f46452t[1].f()) {
            bundle.putInt("__UBIX_TURN_TARGET__", 1);
        } else {
            bundle.putInt("__UBIX_TURN_TARGET__", 2);
        }
        bundle.putFloat("__UBIX_ACC_X__", this.f46414D);
        bundle.putFloat("__UBIX_ACC_Y__", this.f46415E);
        bundle.putFloat("__UBIX_ACC_Z__", this.f46416F);
        bundle.putFloat("__X_MAX_ACC__", this.f46411A);
        bundle.putFloat("__Y_MAX_ACC__", this.f46412B);
        bundle.putFloat("__Z_MAX_ACC__", this.f46413C);
        bundle.putLong("__TURN_TIME__", System.currentTimeMillis() - this.f46458z);
        bundle.putFloat("__TURN_X__", this.f46452t[0].c());
        bundle.putFloat("__TURN_Y__", this.f46452t[1].c());
        bundle.putFloat("__TURN_Z__", this.f46452t[2].c());
        return bundle;
    }

    private Bundle c() {
        Bundle bundle = new Bundle();
        bundle.putInt("__SENSOR_INFO_TYPE__", 1);
        bundle.putInt("__UBIX_TURN_TARGET__", this.f46426P > ((float) this.f46446n) ? 0 : 2);
        bundle.putLong("__TURN_TIME__", System.currentTimeMillis() - this.f46458z);
        bundle.putFloat("__TURN_X__", this.f46429S);
        bundle.putFloat("__TURN_Y__", this.f46430T);
        bundle.putFloat("__TURN_Z__", this.f46431U);
        bundle.putFloat("__X_MAX_ACC__", this.f46411A);
        bundle.putFloat("__Y_MAX_ACC__", this.f46412B);
        bundle.putFloat("__Z_MAX_ACC__", this.f46413C);
        bundle.putFloat("__UBIX_ACC_X__", this.f46414D);
        bundle.putFloat("__UBIX_ACC_Y__", this.f46415E);
        bundle.putFloat("__UBIX_ACC_Z__", this.f46416F);
        bundle.putFloat("__TURN_INIT_X__", this.f46438f);
        bundle.putFloat("__TURN_INIT_Y__", this.f46439g);
        bundle.putFloat("__TURN_INIT_Z__", this.f46440h);
        return bundle;
    }

    public void f() {
        try {
            synchronized (this) {
                try {
                    SensorManager sensorManager = this.f46435c;
                    if (sensorManager != null) {
                        Sensor sensor = this.f46436d;
                        if (sensor != null) {
                            sensorManager.unregisterListener(this, sensor);
                            this.f46436d = null;
                        }
                        Sensor sensor2 = this.f46437e;
                        if (sensor2 != null) {
                            this.f46435c.unregisterListener(this, sensor2);
                            this.f46437e = null;
                        }
                        this.f46435c = null;
                        this.f46447o = null;
                        e();
                    }
                } finally {
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        try {
            if (this.f46450r) {
                a(sensorEvent);
            } else {
                b(sensorEvent);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public s(Context context, double d2, int[] iArr, int i2, double d3, boolean z2, boolean z3) {
        this.f46441i = false;
        this.f46442j = true;
        this.f46443k = true;
        this.f46445m = 3.0d;
        this.f46446n = 5;
        this.f46449q = new int[]{35, 35};
        this.f46450r = false;
        this.f46451s = 0L;
        this.f46452t = new d[3];
        this.f46453u = 0L;
        this.f46454v = false;
        this.f46456x = 5000;
        this.f46458z = 0L;
        this.f46418H = false;
        this.f46420J = false;
        this.f46421K = 0.0f;
        this.f46422L = true;
        this.f46434b = context.getApplicationContext();
        this.f46419I = z2;
        this.f46420J = z3;
        this.f46450r = true;
        this.f46457y = d3;
        if (d2 <= 0.0d) {
            this.f46445m = 3.0d;
        } else {
            this.f46445m = d2;
        }
        if (iArr.length > 0) {
            this.f46449q = iArr;
        }
        if (i2 > 0) {
            this.f46456x = i2;
        } else {
            this.f46456x = 5000;
        }
    }

    private void b(SensorEvent sensorEvent) {
        this.f46444l = System.currentTimeMillis();
        if (sensorEvent.sensor.getType() == 1) {
            this.f46432V = true;
            float[] fArr = sensorEvent.values;
            this.f46414D = fArr[0];
            this.f46415E = fArr[1];
            this.f46416F = fArr[2];
            float fAbs = Math.abs((float) (Math.sqrt(((r0 * r0) + (r2 * r2)) + (r15 * r15)) - 9.81d));
            this.f46411A = a(this.f46411A, this.f46414D);
            this.f46412B = a(this.f46412B, this.f46415E);
            this.f46413C = a(this.f46413C, this.f46416F);
            if (fAbs > this.f46445m) {
                if (!this.f46442j || this.f46441i) {
                    u.b("ShakeSensor ", "shake trigger： " + fAbs + " server load value ： " + this.f46445m);
                    if (this.f46447o != null) {
                        Bundle bundleC = c();
                        e();
                        this.f46447o.a(bundleC);
                        this.f46447o.a(Math.round(fAbs * 100.0f) / 100.0f, (float) this.f46445m);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (sensorEvent.sensor.getType() == 3) {
            float f2 = this.f46438f;
            if (f2 == 0.0f && this.f46439g == 0.0f && this.f46440h == 0.0f) {
                if (this.f46422L) {
                    this.f46422L = false;
                    return;
                }
                float[] fArr2 = sensorEvent.values;
                this.f46438f = fArr2[0];
                this.f46439g = fArr2[1];
                this.f46440h = fArr2[2];
                this.f46458z = System.currentTimeMillis();
                return;
            }
            this.f46433W = true;
            float fAbs2 = Math.abs(sensorEvent.values[0] - f2);
            this.f46426P = fAbs2;
            if (fAbs2 > 180.0f) {
                this.f46426P = 360.0f - Math.abs(sensorEvent.values[0] - this.f46438f);
            }
            this.f46428R = Math.abs(this.f46440h - sensorEvent.values[2]);
            this.f46427Q = Math.abs(this.f46439g - sensorEvent.values[1]);
            if (u.a()) {
                u.b("ShakeSensor111 ", "event=" + sensorEvent.sensor.getType() + ";x=" + sensorEvent.values[1] + ";y=" + sensorEvent.values[2] + ";z=" + (Math.abs(Math.abs(sensorEvent.values[0]) - 180.0f) - Math.abs(Math.abs(this.f46438f) - 180.0f)));
                u.b("ShakeSensor222 ", "event=" + sensorEvent.sensor.getType() + ";x=" + ((sensorEvent.values[0] - 180.0f) - (this.f46438f - 180.0f)) + ";y=" + (sensorEvent.values[1] - this.f46439g) + ";z=" + (sensorEvent.values[2] - this.f46440h));
                u.b("ShakeSensor333 ", "event=" + sensorEvent.sensor.getType() + ";x=" + ((sensorEvent.values[1] - this.f46439g) * (-1.0f)) + ";y=" + ((sensorEvent.values[2] - this.f46440h) * (-1.0f)) + ";z=" + (((sensorEvent.values[0] - 180.0f) - (this.f46438f - 180.0f)) * (-1.0f)));
                StringBuilder sb = new StringBuilder();
                sb.append("event=");
                sb.append(sensorEvent.sensor.getType());
                sb.append(";x=");
                sb.append(sensorEvent.values[1]);
                sb.append(";y=");
                sb.append(sensorEvent.values[2]);
                sb.append(";z=");
                sb.append(this.f46426P * (sensorEvent.values[0] - this.f46438f > 0.0f ? 1 : -1));
                u.b("ShakeSensor444 ", sb.toString());
                u.b("ShakeSensor555 ", "event=" + sensorEvent.sensor.getType() + ";x=" + sensorEvent.values[1] + ";y=" + sensorEvent.values[2] + ";z=" + sensorEvent.values[0]);
                u.b("ShakeSensor666 ", "event=" + sensorEvent.sensor.getType() + ";x=" + sensorEvent.values[0] + ";y=" + sensorEvent.values[2] + ";z=" + sensorEvent.values[1]);
            }
            if (this.f46426P < 5.0f && this.f46427Q < 5.0f && this.f46428R < 5.0f) {
                this.f46458z = System.currentTimeMillis();
            }
            float f3 = this.f46426P;
            float f4 = this.f46446n;
            if (f3 <= f4 && this.f46428R <= f4) {
                this.f46441i = false;
                return;
            }
            float[] fArr3 = sensorEvent.values;
            this.f46429S = (fArr3[1] - this.f46439g) * (-1.0f);
            this.f46430T = (fArr3[2] - this.f46440h) * (-1.0f);
            this.f46431U = f3 * (fArr3[0] - this.f46438f > 0.0f ? 1 : -1);
            this.f46441i = true;
        }
    }

    private void d() {
        String string;
        StringBuilder sb;
        try {
            if (this.f46436d == null || this.f46435c == null) {
                SensorManager sensorManager = (SensorManager) this.f46434b.getSystemService("sensor");
                this.f46435c = sensorManager;
                int i2 = this.f46450r ? 4 : 3;
                List<Sensor> sensorList = sensorManager.getSensorList(1);
                if (sensorList == null || sensorList.isEmpty()) {
                    this.f46443k = false;
                    string = "1";
                } else {
                    this.f46436d = this.f46435c.getDefaultSensor(1);
                    string = "";
                }
                List<Sensor> sensorList2 = this.f46435c.getSensorList(i2);
                if (sensorList2 == null || sensorList2.isEmpty()) {
                    if (string.isEmpty()) {
                        sb = new StringBuilder();
                        sb.append(i2);
                        sb.append("");
                    } else {
                        sb = new StringBuilder();
                        sb.append(string);
                        sb.append(",");
                        sb.append(i2);
                    }
                    string = sb.toString();
                    double d2 = this.f46457y;
                    if (d2 <= 0.0d) {
                        this.f46445m = 1.0d;
                    } else {
                        this.f46445m = d2;
                    }
                    this.f46442j = false;
                } else {
                    this.f46437e = this.f46435c.getDefaultSensor(i2);
                }
                this.f46444l = System.currentTimeMillis();
            } else {
                string = "";
            }
            if (this.f46436d != null) {
                u.b("reg shakeSensor " + this.f46435c.registerListener(this, this.f46436d, 1));
            }
            if (this.f46437e != null) {
                u.b("reg rotateSensor " + this.f46435c.registerListener(this, this.f46437e, 1));
            }
            try {
                if (!this.f46443k && !this.f46442j) {
                    Bundle bundleA = a(string, "");
                    e eVar = this.f46447o;
                    if (eVar != null) {
                        eVar.a(bundleA);
                        return;
                    }
                    return;
                }
                if (this.f46418H) {
                    return;
                }
                this.f46418H = true;
                ScheduledExecutorService scheduledExecutorService = f46410a;
                if (scheduledExecutorService == null || scheduledExecutorService.isTerminated()) {
                    f46410a = Executors.newScheduledThreadPool(2, new b());
                }
                c cVar = new c(string);
                this.f46417G = cVar;
                f46410a.schedule(cVar, 1L, TimeUnit.SECONDS);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private void e() {
        this.f46431U = 0.0f;
        this.f46430T = 0.0f;
        this.f46429S = 0.0f;
        this.f46428R = 0.0f;
        this.f46427Q = 0.0f;
        this.f46426P = 0.0f;
        this.f46440h = 0.0f;
        this.f46439g = 0.0f;
        this.f46438f = 0.0f;
        this.f46413C = 0.0f;
        this.f46412B = 0.0f;
        this.f46411A = 0.0f;
        this.f46441i = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bundle a(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putInt("__SENSOR_INFO_TYPE__", 0);
        bundle.putString("__SENSOR_UN_RECEIVE__", str2);
        bundle.putString("__SENSOR_UN_SUPPORT_LIST__", str);
        return bundle;
    }

    public void a() {
        try {
            ObjectAnimator objectAnimator = this.f46448p;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.f46448p.removeAllListeners();
                this.f46448p = null;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v4 */
    private void a(SensorEvent sensorEvent) {
        char c2;
        char c3;
        ?? r14;
        Bundle bundleB;
        e eVar;
        this.f46444l = System.currentTimeMillis();
        if (sensorEvent.sensor.getType() == 1) {
            this.f46432V = true;
            float[] fArr = sensorEvent.values;
            this.f46414D = fArr[0];
            this.f46415E = fArr[1];
            this.f46416F = fArr[2];
            float fAbs = Math.abs((float) (Math.sqrt(((r2 * r2) + (r8 * r8)) + (r1 * r1)) - 9.81d));
            u.a("runDimensionInfo_delta=" + fAbs);
            this.f46411A = a(this.f46411A, this.f46414D);
            this.f46412B = a(this.f46412B, this.f46415E);
            this.f46413C = a(this.f46413C, this.f46416F);
            if (fAbs > this.f46445m) {
                this.f46421K = fAbs;
                u.a("runDimensionInfo_delta达到触发值=" + fAbs + ";" + this.f46445m);
                this.f46454v = true;
                this.f46451s = System.currentTimeMillis();
                this.f46455w = ((float) Math.round(fAbs * 100.0f)) / 100.0f;
                if (this.f46442j) {
                    if (!this.f46441i) {
                        return;
                    }
                    long jMax = 0;
                    for (d dVar : this.f46452t) {
                        if (dVar != null) {
                            jMax = Math.max(jMax, dVar.b());
                        }
                    }
                    if (this.f46451s - jMax >= this.f46456x) {
                        return;
                    }
                    u.b("ShakeSensor ", "shake trigger： " + fAbs + " server load value ： " + this.f46445m);
                    if (this.f46447o == null) {
                        return;
                    }
                } else {
                    u.b("ShakeSensor ", "shake trigger： " + fAbs + " server load value ： " + this.f46445m);
                    if (this.f46447o == null) {
                        return;
                    }
                }
                Bundle bundleB2 = b();
                e();
                this.f46447o.a(bundleB2);
                this.f46447o.a(this.f46455w, (float) this.f46445m);
                return;
            }
            return;
        }
        if (sensorEvent.sensor.getType() != 4) {
            return;
        }
        float f2 = this.f46438f;
        if (f2 != 0.0f || this.f46439g != 0.0f || this.f46440h != 0.0f) {
            if (Math.abs(sensorEvent.values[0] - f2) > 180.0f) {
                Math.abs(sensorEvent.values[0] - this.f46438f);
            }
            Math.abs(this.f46440h - sensorEvent.values[2]);
            this.f46433W = true;
            this.f46452t[0].a((sensorEvent.timestamp - this.f46453u) * 1.0E-9f, sensorEvent.values[0]);
            this.f46452t[1].a((sensorEvent.timestamp - this.f46453u) * 1.0E-9f, sensorEvent.values[1]);
            this.f46452t[2].a((sensorEvent.timestamp - this.f46453u) * 1.0E-9f, sensorEvent.values[2]);
            if (u.a()) {
                u.b("ShakeSensor111 ", String.format("event=%s,;Azimuth=%.2f,;Pitch=%.2f,;Roll=%.2f", Integer.valueOf(sensorEvent.sensor.getType()), Float.valueOf(sensorEvent.values[0]), Float.valueOf(sensorEvent.values[1]), Float.valueOf(sensorEvent.values[2])));
                u.b("ShakeSensor222 ", "event=" + sensorEvent.sensor.getType() + ";x=" + (sensorEvent.values[0] - this.f46438f) + ";y=" + sensorEvent.values[1] + ";z=" + (this.f46440h - sensorEvent.values[2]));
                StringBuilder sb = new StringBuilder();
                sb.append("event=");
                sb.append(this.f46452t[0].f());
                sb.append(";dir=");
                sb.append(Arrays.toString(this.f46452t[0].a()));
                sb.append(";time=");
                sb.append(Arrays.toString(this.f46452t[0].e()));
                u.b("ShakeSensor333 ", sb.toString());
                u.b("ShakeSensor444 ", "event=" + this.f46452t[2].f() + ";dir=" + Arrays.toString(this.f46452t[2].a()) + ";time=" + Arrays.toString(this.f46452t[2].e()));
                u.b("ShakeSensor888 ", "event=" + this.f46452t[1].f() + ";dir=" + Arrays.toString(this.f46452t[1].a()) + ";time=" + Arrays.toString(this.f46452t[1].e()));
                Float fValueOf = Float.valueOf(((float) (sensorEvent.timestamp - this.f46453u)) * 1.0E-9f);
                float f3 = this.f46423M + (sensorEvent.values[0] * ((float) (sensorEvent.timestamp - this.f46453u)) * 1.0E-9f);
                this.f46423M = f3;
                Double dValueOf = Double.valueOf(Math.toDegrees((double) f3));
                c2 = (char) 2;
                c3 = (char) 0;
                float f4 = this.f46424N + (sensorEvent.values[1] * ((float) (sensorEvent.timestamp - this.f46453u)) * 1.0E-9f);
                this.f46424N = f4;
                Double dValueOf2 = Double.valueOf(Math.toDegrees(f4));
                r14 = 1;
                float f5 = this.f46425O + (sensorEvent.values[2] * (sensorEvent.timestamp - this.f46453u) * 1.0E-9f);
                this.f46425O = f5;
                u.b("ShakeSensor555 ", String.format("event=%s,;Azimuth=%.2f,;Pitch=%.2f,;Roll=%.2f", fValueOf, dValueOf, dValueOf2, Double.valueOf(Math.toDegrees(f5))));
                u.b("ShakeSensor666 ", "yv=" + a(this.f46452t[1], this.f46451s) + " ;zv=" + a(this.f46452t[1], this.f46451s));
                u.b("ShakeSensor777 ", "rrX=" + this.f46452t[0].d() + " ;rrY=" + this.f46452t[1].d() + " ;rrZ=" + this.f46452t[2].d());
            } else {
                c2 = 2;
                c3 = 0;
                r14 = 1;
            }
            this.f46453u = sensorEvent.timestamp;
            if (Math.abs(this.f46452t[c3].d()) < 5.0f && Math.abs(this.f46452t[r14].d()) < 5.0f && Math.abs(this.f46452t[c2].d()) < 5.0f) {
                this.f46458z = System.currentTimeMillis();
            }
            if ((this.f46420J && this.f46452t[c3].f()) || this.f46452t[r14].f() || this.f46452t[c2].f()) {
                this.f46441i = r14;
                if (this.f46443k) {
                    if ((!this.f46420J || !a(this.f46452t[c3], this.f46451s)) && !a(this.f46452t[1], this.f46451s) && !a(this.f46452t[c2], this.f46451s)) {
                        return;
                    }
                    bundleB = b();
                    u.b("ShakeSensor ", "rotate trigger： " + this.f46421K + " server load value ： " + this.f46445m);
                    e();
                    eVar = this.f46447o;
                    if (eVar == null) {
                        return;
                    }
                } else {
                    bundleB = b();
                    u.b("ShakeSensor ", "rotate trigger： " + this.f46421K + " server load value ： " + this.f46445m);
                    e();
                    eVar = this.f46447o;
                    if (eVar == null) {
                        return;
                    }
                }
                eVar.a(bundleB);
                this.f46447o.a(this.f46455w, (float) this.f46445m);
                return;
            }
            return;
        }
        if (this.f46422L) {
            this.f46422L = false;
            return;
        }
        int i2 = 0;
        while (true) {
            d[] dVarArr = this.f46452t;
            if (i2 < dVarArr.length) {
                dVarArr[i2] = new d(this.f46449q.length, sensorEvent.values[i2]);
                i2++;
            } else {
                float[] fArr2 = sensorEvent.values;
                this.f46438f = fArr2[0];
                this.f46439g = fArr2[1];
                this.f46440h = fArr2[2];
                this.f46453u = sensorEvent.timestamp;
                this.f46458z = System.currentTimeMillis();
                return;
            }
        }
    }

    public void a(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        try {
            if (this.f46448p != null) {
                return;
            }
            imageView.post(new a(imageView));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(e eVar) {
        this.f46447o = eVar;
        d();
    }

    private boolean a(d dVar, long j2) {
        try {
            if (dVar.f()) {
                return Math.abs(j2 - dVar.b()) < ((long) this.f46456x);
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
