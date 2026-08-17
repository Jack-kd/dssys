package com.sigmob.sdk.base.common;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.models.SensorEntity;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes4.dex */
public class am {

    /* renamed from: a, reason: collision with root package name */
    public static String f35750a = "am";

    /* renamed from: b, reason: collision with root package name */
    private static ag f35751b;

    /* renamed from: com.sigmob.sdk.base.common.am$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f35752a;

        static {
            int[] iArr = new int[d.values().length];
            f35752a = iArr;
            try {
                iArr[d.SLOPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35752a[d.SWING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35752a[d.WRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class a implements SensorEventListener {

        /* renamed from: e, reason: collision with root package name */
        static int[] f35753e = {25, 60, 50, 45, 35, 25, 20, 15, 10, 5, 1};

        /* renamed from: f, reason: collision with root package name */
        static float[] f35754f = {4.0f, 10.0f, 8.0f, 6.0f, 5.0f, 4.0f, 3.0f, 2.0f, 1.8f, 1.5f, 1.0f};

        /* renamed from: g, reason: collision with root package name */
        static int[] f35755g = {15, 15, 13, 11, 10, 8, 6, 4, 3, 2, 1};

        /* renamed from: h, reason: collision with root package name */
        static float[] f35756h = {35.0f, 35.0f, 30.0f, 25.0f, 20.0f, 15.0f, 12.0f, 8.0f, 5.0f, 2.0f, 1.0f};

        /* renamed from: o, reason: collision with root package name */
        private static float f35757o = 40.0f;

        /* renamed from: A, reason: collision with root package name */
        private boolean f35758A;

        /* renamed from: B, reason: collision with root package name */
        private float f35759B;

        /* renamed from: D, reason: collision with root package name */
        private long f35761D;

        /* renamed from: E, reason: collision with root package name */
        private Integer f35762E;

        /* renamed from: F, reason: collision with root package name */
        private boolean f35763F;

        /* renamed from: G, reason: collision with root package name */
        private boolean f35764G;

        /* renamed from: H, reason: collision with root package name */
        private Timer f35765H;

        /* renamed from: b, reason: collision with root package name */
        public int f35769b;

        /* renamed from: c, reason: collision with root package name */
        public int f35770c;

        /* renamed from: d, reason: collision with root package name */
        public int f35771d;

        /* renamed from: k, reason: collision with root package name */
        Float f35774k;

        /* renamed from: l, reason: collision with root package name */
        private SensorEvent f35775l;

        /* renamed from: m, reason: collision with root package name */
        private SensorEvent f35776m;

        /* renamed from: n, reason: collision with root package name */
        private SensorEvent f35777n;

        /* renamed from: p, reason: collision with root package name */
        private c f35778p;

        /* renamed from: q, reason: collision with root package name */
        private float f35779q;

        /* renamed from: r, reason: collision with root package name */
        private float f35780r;

        /* renamed from: s, reason: collision with root package name */
        private float f35781s;

        /* renamed from: t, reason: collision with root package name */
        private long f35782t;

        /* renamed from: u, reason: collision with root package name */
        private boolean f35783u;

        /* renamed from: v, reason: collision with root package name */
        private final d f35784v;

        /* renamed from: w, reason: collision with root package name */
        private long f35785w;

        /* renamed from: x, reason: collision with root package name */
        private float f35786x;

        /* renamed from: y, reason: collision with root package name */
        private float f35787y;

        /* renamed from: z, reason: collision with root package name */
        private float f35788z;

        /* renamed from: a, reason: collision with root package name */
        protected int f35768a = 0;

        /* renamed from: i, reason: collision with root package name */
        float[] f35772i = new float[9];

        /* renamed from: j, reason: collision with root package name */
        float[] f35773j = new float[3];

        /* renamed from: C, reason: collision with root package name */
        private int f35760C = 100;

        /* renamed from: I, reason: collision with root package name */
        private final long f35766I = -1;

        /* renamed from: J, reason: collision with root package name */
        private long f35767J = -1;

        public a(Context context, c cVar, d dVar) {
            if (am.f35751b == null && com.sigmob.sdk.base.utils.v.b(context)) {
                ag unused = am.f35751b = ag.a(context);
            }
            this.f35778p = cVar;
            this.f35784v = dVar;
        }

        private void d() {
            SigmobLogger.d(am.f35750a, "cancelTimer", new Object[0]);
            Timer timer = this.f35765H;
            if (timer == null) {
                return;
            }
            timer.cancel();
            this.f35765H = null;
        }

        public void b() {
            if (am.f35751b != null) {
                am.f35751b.b(this);
            }
            this.f35787y = 0.0f;
            this.f35788z = 0.0f;
            this.f35786x = 0.0f;
            this.f35785w = 0L;
            this.f35779q = 0.0f;
            this.f35780r = 0.0f;
            this.f35781s = 0.0f;
            this.f35759B = 0.0f;
            this.f35761D = 0L;
            this.f35774k = null;
        }

        public void c() {
            b();
            d();
            this.f35778p = null;
        }

        public void e(int i2) {
            this.f35770c = i2;
        }

        public void f(int i2) {
            this.f35771d = i2;
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
            SigmobLogger.d(am.f35750a, "onAccuracyChanged: sensor = " + sensor.toString() + ", i = " + i2, new Object[0]);
        }

        /* JADX WARN: Removed duplicated region for block: B:119:0x02af  */
        /* JADX WARN: Removed duplicated region for block: B:122:0x02e5  */
        /* JADX WARN: Removed duplicated region for block: B:127:0x02f8  */
        /* JADX WARN: Removed duplicated region for block: B:151:0x03c1  */
        /* JADX WARN: Removed duplicated region for block: B:154:0x03d1  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x03e1  */
        /* JADX WARN: Removed duplicated region for block: B:161:0x03f6  */
        /* JADX WARN: Removed duplicated region for block: B:180:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:188:? A[RETURN, SYNTHETIC] */
        @Override // android.hardware.SensorEventListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onSensorChanged(android.hardware.SensorEvent r24) {
            /*
                Method dump skipped, instructions count: 1196
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.common.am.a.onSensorChanged(android.hardware.SensorEvent):void");
        }

        private boolean e() {
            long j2 = this.f35767J;
            boolean z2 = j2 == -1 || j2 >= ((long) this.f35770c);
            boolean z3 = System.currentTimeMillis() - this.f35761D >= 2000;
            boolean z4 = z2 && z3;
            SigmobLogger.d(am.f35750a, "overWidgetIntervalTime: type = " + this.f35784v.name() + ", foregroundDuration = " + this.f35767J + ", widgetIntervalTime = " + this.f35770c + ", canProceedToJump = " + z2 + ", isIntervalMet = " + z3 + ", result = " + z4, new Object[0]);
            return z4;
        }

        public void b(int i2) {
            this.f35762E = Integer.valueOf(i2);
        }

        public void c(int i2) {
            this.f35768a = i2;
        }

        public void d(int i2) {
            this.f35769b = i2;
        }

        public void a() {
            if (am.f35751b != null) {
                am.f35751b.b(this);
                am.f35751b.a(this);
            }
            this.f35774k = null;
        }

        public void a(int i2) {
            if (i2 > 0) {
                this.f35760C = i2;
            }
        }

        private void a(SensorEvent sensorEvent, SensorEvent sensorEvent2) {
            int iIntValue;
            if (a(sensorEvent, 3) || a(sensorEvent2, 3)) {
                com.sigmob.sdk.base.utils.k.e(am.f35750a, "handleAccelerometerData: event is unavailable.", new Object[0]);
                return;
            }
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            float[] fArr2 = sensorEvent2.values;
            float f5 = fArr2[0];
            float f6 = fArr2[1];
            float f7 = fArr2[2];
            if (this.f35783u) {
                degrees = this.f35785w > 0 ? Math.toDegrees(((float) Math.sqrt(Math.pow(f5, 2.0d) + Math.pow(f6, 2.0d) + Math.pow(f7, 2.0d))) * (((sensorEvent2.timestamp - this.f35785w) * 1.0f) / 1.0E9f)) : 0.0d;
                this.f35785w = sensorEvent2.timestamp;
            } else {
                this.f35785w = 0L;
            }
            double d2 = degrees;
            float fSqrt = (float) Math.sqrt(Math.pow(f2, 2.0d) + Math.pow(f3, 2.0d) + Math.pow(f4, 2.0d));
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = jCurrentTimeMillis - this.f35782t;
            if (Math.abs(this.f35779q) < Math.abs(f2)) {
                this.f35779q = f2;
            }
            if (Math.abs(this.f35780r) < Math.abs(f3)) {
                this.f35780r = f3;
            }
            if (Math.abs(this.f35781s) < Math.abs(f4)) {
                this.f35781s = f4;
            }
            Integer num = this.f35762E;
            if (num == null) {
                int i2 = this.f35768a;
                if (i2 <= 0 || i2 > 10) {
                    this.f35768a = 1;
                }
                iIntValue = f35755g[this.f35768a];
            } else {
                iIntValue = num.intValue();
            }
            f35757o = iIntValue;
            if (fSqrt <= 0.1d) {
                this.f35782t = System.currentTimeMillis();
                return;
            }
            float f8 = f35756h[this.f35768a];
            boolean z2 = fSqrt > f35757o;
            if (!this.f35783u) {
                this.f35783u = true;
                this.f35782t = jCurrentTimeMillis;
                SigmobLogger.d(am.f35750a, "handleAccelerometerData(start): acceleration = " + fSqrt, new Object[0]);
                if (com.sigmob.sdk.base.utils.v.b(this.f35778p)) {
                    this.f35778p.a();
                    return;
                }
                return;
            }
            if (d2 > f8 && z2) {
                if (f7 >= 0.0f) {
                    this.f35763F = true;
                } else {
                    this.f35764G = true;
                }
                SigmobLogger.d(am.f35750a, "handleAccelerometerData: currentRotationAngle = " + d2 + ", rotationAngleValue = " + f8 + ", shakeLeftOver = " + this.f35763F + ", shakeRightOver = " + this.f35764G, new Object[0]);
            }
            if (com.sigmob.sdk.base.utils.v.b(Boolean.valueOf(e()))) {
                return;
            }
            int i3 = this.f35769b;
            if (i3 != 1 || !this.f35763F || !this.f35764G) {
                if (i3 != 0) {
                    return;
                }
                if (!this.f35763F && !this.f35764G) {
                    return;
                }
            }
            if (!z2 || j2 < this.f35771d) {
                return;
            }
            this.f35783u = false;
            SigmobLogger.d(am.f35750a, "handleAccelerometerData(end): acceleration = " + fSqrt + ", sensitivity = " + f35757o + ", currentDuration = " + j2 + ", shakeTriggerType = " + this.f35769b + ", shakeTimeThreshold = " + this.f35771d, new Object[0]);
            SigmobLog.d("handleAccelerometerData: shake end");
            this.f35779q = 0.0f;
            this.f35780r = 0.0f;
            this.f35781s = 0.0f;
            this.f35763F = false;
            this.f35764G = false;
            HashMap map = new HashMap();
            map.put("x_max_acc", Float.valueOf(this.f35779q * ((float) this.f35760C)));
            map.put("y_max_acc", Float.valueOf(this.f35780r * ((float) this.f35760C)));
            map.put("z_max_acc", Float.valueOf(this.f35781s * ((float) this.f35760C)));
            a(map);
        }

        public void a(SensorEntity sensorEntity) {
            this.f35768a = sensorEntity == null ? 0 : sensorEntity.level;
            this.f35769b = sensorEntity == null ? 0 : sensorEntity.shakeTriggerType;
            this.f35770c = sensorEntity == null ? 0 : sensorEntity.widgetIntervalTime;
            this.f35771d = sensorEntity != null ? sensorEntity.shakeTimeThreshold : 0;
        }

        private void a(Map<String, Number> map) {
            SigmobLogger.d(am.f35750a, "interactionCompleted: type = " + this.f35784v.name() + ", foregroundDuration = " + this.f35767J + ", widgetIntervalTime = " + this.f35770c, new Object[0]);
            if (this.f35778p == null || map == null) {
                return;
            }
            SigmobLogger.d(am.f35750a, "interactionCompleted: map = " + map, new Object[0]);
            this.f35778p.a(map);
            this.f35767J = 0L;
            d();
            if (this.f35770c <= 0) {
                return;
            }
            Timer timer = new Timer();
            this.f35765H = timer;
            timer.schedule(new TimerTask() { // from class: com.sigmob.sdk.base.common.am.a.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    boolean zC = com.sigmob.sdk.manager.a.c();
                    if (zC) {
                        a.this.f35767J += 1000;
                    }
                    SigmobLogger.d(am.f35750a, "interactionCompleted#run: foreground = " + zC + ", foregroundDuration = " + a.this.f35767J, new Object[0]);
                }
            }, 2000L, 1000L);
        }

        private boolean a(SensorEvent sensorEvent, int i2) {
            float[] fArr;
            return sensorEvent == null || (fArr = sensorEvent.values) == null || fArr.length < i2;
        }
    }

    public static class b implements c {
        @Override // com.sigmob.sdk.base.common.am.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(float f2) {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
        }
    }

    public interface c {
        void a();

        void a(float f2);

        void a(Map<String, Number> map);
    }

    public enum d {
        SWING,
        WRING,
        SLOPE,
        SHAKE
    }
}
