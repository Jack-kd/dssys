package com.meishu.sdk.platform.ms.splash;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.r0;
import com.meishu.sdk.core.utils.v0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class ShakeUtil {

    /* renamed from: c, reason: collision with root package name */
    public SensorManager f33099c;

    /* renamed from: e, reason: collision with root package name */
    public float f33101e;

    /* renamed from: h, reason: collision with root package name */
    public String f33104h;

    /* renamed from: i, reason: collision with root package name */
    public long f33105i;
    public int indexLocal;

    /* renamed from: j, reason: collision with root package name */
    public MeishuAdInfo.DClickData f33106j;

    /* renamed from: k, reason: collision with root package name */
    public Sensor f33107k;

    /* renamed from: l, reason: collision with root package name */
    public Sensor f33108l;

    /* renamed from: m, reason: collision with root package name */
    public Sensor f33109m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f33110n;

    /* renamed from: x, reason: collision with root package name */
    public List<d> f33120x;

    /* renamed from: y, reason: collision with root package name */
    public List<d> f33121y;

    /* renamed from: z, reason: collision with root package name */
    public List<d> f33122z;

    /* renamed from: a, reason: collision with root package name */
    public int f33097a = 1;

    /* renamed from: b, reason: collision with root package name */
    public long f33098b = 500;

    /* renamed from: d, reason: collision with root package name */
    public boolean f33100d = false;

    /* renamed from: f, reason: collision with root package name */
    public float[] f33102f = new float[3];

    /* renamed from: g, reason: collision with root package name */
    public List<com.meishu.sdk.platform.ms.splash.c> f33103g = new ArrayList();

    /* renamed from: o, reason: collision with root package name */
    public SensorEventListener f33111o = new a();

    /* renamed from: p, reason: collision with root package name */
    public float f33112p = 0.0f;

    /* renamed from: q, reason: collision with root package name */
    public float f33113q = 0.0f;

    /* renamed from: r, reason: collision with root package name */
    public float f33114r = 0.0f;

    /* renamed from: s, reason: collision with root package name */
    public float f33115s = 0.0f;

    /* renamed from: t, reason: collision with root package name */
    public float f33116t = 0.0f;

    /* renamed from: u, reason: collision with root package name */
    public float f33117u = 0.0f;

    /* renamed from: v, reason: collision with root package name */
    public final float[] f33118v = new float[3];

    /* renamed from: w, reason: collision with root package name */
    public int f33119w = 0;

    public class a implements SensorEventListener {
        public a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            try {
                if (sensorEvent.sensor.getType() == 4) {
                    ShakeUtil shakeUtil = ShakeUtil.this;
                    shakeUtil.getClass();
                    try {
                        float f2 = shakeUtil.f33101e;
                        if (f2 != 0.0f && shakeUtil.f33100d) {
                            float f3 = sensorEvent.timestamp;
                            if ((f3 - f2) * 1.0E-9f >= 10.0f) {
                                shakeUtil.f33101e = f3;
                            }
                            float f4 = (f3 - shakeUtil.f33101e) * 1.0E-9f;
                            float[] fArr = sensorEvent.values;
                            shakeUtil.a(fArr[0], fArr[1], fArr[2], f4);
                        }
                        shakeUtil.f33101e = sensorEvent.timestamp;
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                if (sensorEvent.sensor.getType() == 1 || sensorEvent.sensor.getType() == 4 || sensorEvent.sensor.getType() == 9) {
                    ShakeUtil.a(ShakeUtil.this, sensorEvent);
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static ShakeUtil f33124a = new ShakeUtil();
    }

    public interface c {
        void onShake(int i2, boolean z2, int i3, ShakeResult shakeResult);
    }

    public ShakeUtil() {
        new ArrayList();
        new ArrayList();
        new ArrayList();
        this.f33120x = new ArrayList();
        this.f33121y = new ArrayList();
        this.f33122z = new ArrayList();
    }

    public static void a(ShakeUtil shakeUtil, SensorEvent sensorEvent) {
        shakeUtil.getClass();
        try {
            if (shakeUtil.f33100d) {
                int type = sensorEvent.sensor.getType();
                if (type != 1) {
                    if (type != 4) {
                        if (type != 9) {
                            return;
                        }
                        float[] fArr = sensorEvent.values;
                        shakeUtil.f33115s = fArr[0];
                        shakeUtil.f33116t = fArr[1];
                        shakeUtil.f33117u = fArr[2];
                        return;
                    }
                    for (com.meishu.sdk.platform.ms.splash.c cVar : shakeUtil.f33103g) {
                        int i2 = cVar.f33142f;
                        if (i2 == 1 || i2 == 3 || i2 == 4 || i2 == 5) {
                            if (cVar.f33143g && cVar.f33144h == 1 && cVar.f33138b != null && (i2 == 4 || i2 == 5)) {
                                if (cVar.f33155s) {
                                    float[] fArr2 = sensorEvent.values;
                                    float f2 = fArr2[0];
                                    float f3 = fArr2[1];
                                    float f4 = fArr2[2];
                                    if (Math.abs(f2) > 2.0f || Math.abs(f3) > 2.0f || Math.abs(f4) > 2.0f) {
                                        shakeUtil.f33120x.add(new d(f2, f3, f4, System.currentTimeMillis()));
                                    }
                                }
                            }
                        }
                    }
                    return;
                }
                float[] fArr3 = sensorEvent.values;
                float f5 = fArr3[0];
                shakeUtil.f33112p = f5;
                float f6 = fArr3[1];
                shakeUtil.f33113q = f6;
                float f7 = fArr3[2];
                shakeUtil.f33114r = f7;
                try {
                    float[] fArr4 = shakeUtil.f33118v;
                    float f8 = fArr4[0];
                    if (f8 == 0.0f && fArr4[1] == 0.0f && fArr4[2] == 0.0f) {
                        fArr4[0] = f5;
                        fArr4[1] = f6;
                        fArr4[2] = f7;
                        return;
                    }
                    shakeUtil.f33119w = 0;
                    if (f8 == f5) {
                        shakeUtil.f33119w = 1;
                    }
                    if (fArr4[1] == f6) {
                        shakeUtil.f33119w++;
                    }
                    if (fArr4[2] == f7) {
                        shakeUtil.f33119w++;
                    }
                    if (shakeUtil.f33119w >= 2) {
                        fArr4[0] = f5;
                        fArr4[1] = f6;
                        fArr4[2] = f7;
                        return;
                    }
                    fArr4[0] = f5;
                    fArr4[1] = f6;
                    fArr4[2] = f7;
                    float f9 = f5 - shakeUtil.f33115s;
                    float f10 = f6 - shakeUtil.f33116t;
                    float f11 = f7 - shakeUtil.f33117u;
                    float f12 = f11 * f11;
                    double dSqrt = Math.sqrt(f12 + (f10 * f10) + (f9 * f9));
                    if ((shakeUtil.f33115s == 0.0f && shakeUtil.f33116t == 0.0f && shakeUtil.f33117u == 0.0f) || (shakeUtil.f33112p == 0.0f && shakeUtil.f33113q == 0.0f && shakeUtil.f33114r == 0.0f)) {
                        dSqrt -= 9.8d;
                    }
                    double dAtan = (dSqrt * 100.0d) / 30.0d;
                    if (80.0d < dAtan) {
                        dAtan = (((Math.atan((dAtan - 80.0d) / 30.0d) * 20.0d) * 2.0d) / 3.141592653589793d) + 80.0d;
                    }
                    shakeUtil.a(dAtan, shakeUtil.f33112p, shakeUtil.f33113q, shakeUtil.f33114r, sensorEvent);
                } catch (Throwable th) {
                    float[] fArr5 = shakeUtil.f33118v;
                    float[] fArr6 = sensorEvent.values;
                    fArr5[0] = fArr6[0];
                    fArr5[1] = fArr6[1];
                    fArr5[2] = fArr6[2];
                    throw th;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static ShakeUtil getInstance() {
        return b.f33124a;
    }

    public final void b(com.meishu.sdk.platform.ms.splash.c cVar, boolean z2, int i2, float f2, float f3, float f4) {
        try {
            this.f33100d = false;
            this.f33101e = 0.0f;
            float[] fArr = this.f33102f;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            ShakeResult shakeResult = new ShakeResult();
            shakeResult.setTurnX(f2);
            shakeResult.setTurnY(f3);
            shakeResult.setTurnZ(f4);
            int i3 = cVar.f33142f;
            if (i3 == 6 || i3 == 7 || i3 == 8) {
                cVar.f33138b.onShake(256, z2, i2, shakeResult);
            } else {
                cVar.f33138b.onShake(8, z2, i2, shakeResult);
            }
            this.f33103g.remove(cVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final boolean c() {
        float f2;
        try {
            float fMax = 0.0f;
            float fMax2 = 0.0f;
            float fMax3 = 0.0f;
            for (d dVar : this.f33120x) {
                fMax = Math.max(fMax, Math.abs(dVar.f33158a));
                fMax2 = Math.max(fMax2, Math.abs(dVar.f33159b));
                fMax3 = Math.max(fMax3, Math.abs(dVar.f33160c));
            }
            char c2 = (fMax < fMax2 || fMax < fMax3) ? (fMax2 < fMax || fMax2 < fMax3) ? 'Z' : 'Y' : 'X';
            boolean z2 = false;
            boolean z3 = false;
            for (d dVar2 : this.f33120x) {
                switch (c2) {
                    case 'X':
                        f2 = dVar2.f33158a;
                        break;
                    case 'Y':
                        f2 = dVar2.f33159b;
                        break;
                    case 'Z':
                        f2 = dVar2.f33160c;
                        break;
                    default:
                        f2 = 0.0f;
                        break;
                }
                if (f2 > 0.0f) {
                    z2 = true;
                }
                if (f2 < 0.0f) {
                    z3 = true;
                }
                if (z2 && z3) {
                    return true;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    public final void d() {
        v0.a aVar = v0.f32032a.get(this.f33104h + this.f33105i);
        if (aVar == null) {
            aVar = new v0.a();
            aVar.f32035a = true;
            v0.a(this.f33104h, 5);
            v0.a(this.f33104h, 7);
        } else if (!aVar.f32036b) {
            v0.a(this.f33104h, 5);
            v0.a(this.f33104h, 7);
        }
        v0.f32032a.put(this.f33104h + this.f33105i, aVar);
    }

    public void e() {
        this.f33110n = true;
        SensorManager sensorManager = this.f33099c;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.f33111o);
        }
    }

    public void f() {
        try {
            this.f33110n = false;
            SensorManager sensorManager = this.f33099c;
            if (sensorManager != null) {
                this.f33099c.registerListener(this.f33111o, sensorManager.getDefaultSensor(4), 2);
                this.f33099c.registerListener(this.f33111o, this.f33099c.getDefaultSensor(9), 1);
                this.f33099c.registerListener(this.f33111o, this.f33099c.getDefaultSensor(1), 2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public int b() {
        return (int) (((Math.random() * 9.0d) + 1.0d) * 1.0E7d);
    }

    public void a(int i2, int i3, int i4, long j2, int i5, int i6, int i7, c cVar) {
        try {
            AdSdk.getContext();
            this.f33098b = j2;
            float[] fArr = this.f33102f;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            float[] fArr2 = this.f33118v;
            fArr2[0] = 0.0f;
            fArr2[1] = 0.0f;
            fArr2[2] = 0.0f;
            this.f33112p = 0.0f;
            this.f33113q = 0.0f;
            this.f33114r = 0.0f;
            this.f33115s = 0.0f;
            this.f33116t = 0.0f;
            this.f33117u = 0.0f;
            this.f33097a = i4;
            com.meishu.sdk.platform.ms.splash.c cVar2 = new com.meishu.sdk.platform.ms.splash.c();
            cVar2.f33144h = 1;
            cVar2.f33145i = this.f33104h;
            cVar2.f33147k = this.f33106j;
            cVar2.f33146j = this.f33105i;
            cVar2.f33149m = i5;
            cVar2.f33137a = i6;
            cVar2.f33139c = i7;
            cVar2.f33138b = cVar;
            cVar2.f33140d = i3;
            if (i3 >= 1 && i3 <= 100) {
                double d2 = (i3 * 90.0d) / 100.0d;
                cVar2.f33153q = d2;
                if (d2 < 2.0d) {
                    cVar2.f33153q = 2.0d;
                }
            } else {
                cVar2.f33140d = 50;
                cVar2.f33153q = 20.0d;
            }
            if (i2 <= 0 || i2 > 100) {
                i2 = cVar2.f33140d;
            }
            cVar2.f33141e = i2;
            cVar2.f33142f = i4;
            cVar2.f33143g = true;
            cVar2.b();
            this.f33103g.add(cVar2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f33110n = false;
    }

    public final void a(double d2, float f2, float f3, float f4, SensorEvent sensorEvent) {
        try {
            List<com.meishu.sdk.platform.ms.splash.c> list = this.f33103g;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (com.meishu.sdk.platform.ms.splash.c cVar : this.f33103g) {
                int i2 = cVar.f33142f;
                if (i2 == 1 || i2 == 3 || i2 == 4 || i2 == 5 || i2 == 7) {
                    if (cVar.f33143g && cVar.f33144h == 1 && cVar.f33138b != null) {
                        if (i2 == 4 || i2 == 5) {
                            long j2 = r0.f31976g;
                            if (j2 <= 0) {
                                j2 = 2000;
                            }
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            if (jCurrentTimeMillis - cVar.f33157u > j2) {
                                this.f33120x.clear();
                                this.f33121y.clear();
                                cVar.f33156t = false;
                                cVar.f33155s = false;
                            }
                            if (!cVar.f33155s) {
                                if (d2 < cVar.f33140d) {
                                    return;
                                }
                                cVar.f33155s = true;
                                cVar.f33157u = jCurrentTimeMillis;
                            }
                            if (!cVar.f33156t) {
                                if (c() || a(f2, f3, f4)) {
                                    cVar.f33156t = true;
                                    this.f33120x.clear();
                                    this.f33121y.clear();
                                    return;
                                }
                                return;
                            }
                            if (d2 >= cVar.f33141e) {
                                cVar.c();
                                if (cVar.f33150n > cVar.f33149m) {
                                    a(cVar, false, (int) d2, f2, f3, f4);
                                }
                            } else if (cVar.a() && d2 >= cVar.f33151o) {
                                cVar.c();
                                if (cVar.f33150n > cVar.f33149m) {
                                    a(cVar, true, (int) d2, f2, f3, f4);
                                }
                            }
                            this.f33121y.clear();
                            this.f33120x.clear();
                        } else if (d2 >= cVar.f33140d) {
                            cVar.c();
                            if (cVar.f33150n > cVar.f33149m) {
                                a(cVar, false, (int) d2, f2, f3, f4);
                            }
                        } else if (cVar.a() && d2 >= cVar.f33151o) {
                            cVar.c();
                            if (cVar.f33150n > cVar.f33149m) {
                                a(cVar, true, (int) d2, f2, f3, f4);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final boolean a(float f2, float f3, float f4) {
        if (this.f33121y.size() == 0) {
            this.f33121y.add(new d(f2 - this.f33115s, f3 - this.f33116t, f4 - this.f33117u, System.currentTimeMillis()));
        } else {
            List<d> list = this.f33121y;
            d dVar = list.get(list.size() - 1);
            float f5 = dVar.f33158a;
            float f6 = dVar.f33159b;
            float f7 = dVar.f33160c;
            float f8 = f2 - this.f33115s;
            float f9 = f3 - this.f33116t;
            float f10 = f4 - this.f33117u;
            if ((((Math.abs(f5) >= 2.0f || Math.abs(f6) >= 2.0f || Math.abs(f7) >= 2.0f) && (Math.abs(f8) >= 2.0f || Math.abs(f9) >= 2.0f || Math.abs(f10) >= 2.0f)) ? (float) (Math.acos(((f7 * f10) + ((f6 * f9) + (f5 * f8))) / (Math.sqrt(Math.pow(f7, 2.0d) + (Math.pow(f6, 2.0d) + Math.pow(f5, 2.0d))) * Math.sqrt(Math.pow(f10, 2.0d) + (Math.pow(f9, 2.0d) + Math.pow(f8, 2.0d))))) * 57.29577951308232d) : 0.0f) > 60.0f) {
                this.f33121y.add(new d(f2 - this.f33115s, f3 - this.f33116t, f4 - this.f33117u, System.currentTimeMillis()));
            }
        }
        long j2 = r0.f31976g;
        if (j2 <= 0) {
            j2 = 2000;
        }
        if (this.f33121y.size() <= 0) {
            return false;
        }
        Iterator<d> it = this.f33121y.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (System.currentTimeMillis() - it.next().f33161d > j2) {
                it.remove();
            } else {
                i2++;
            }
        }
        return i2 >= 5;
    }

    public final void a(com.meishu.sdk.platform.ms.splash.c cVar, boolean z2, int i2, float f2, float f3, float f4) {
        if (z2) {
            try {
                d();
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        this.f33100d = false;
        this.f33112p = 0.0f;
        this.f33113q = 0.0f;
        this.f33114r = 0.0f;
        this.f33115s = 0.0f;
        this.f33116t = 0.0f;
        this.f33117u = 0.0f;
        ShakeResult shakeResult = new ShakeResult();
        shakeResult.setShakeX(f2);
        shakeResult.setShakeY(f3);
        shakeResult.setShakeZ(f4);
        int i3 = cVar.f33142f;
        if (i3 != 4 && i3 != 5) {
            cVar.f33138b.onShake(4, z2, i2, shakeResult);
        } else {
            cVar.f33138b.onShake(64, z2, i2, shakeResult);
        }
        this.f33103g.remove(cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v38 */
    public final void a(float f2, float f3, float f4, float f5) {
        float f6;
        float f7;
        float f8;
        float f9;
        float degrees;
        float degrees2;
        ShakeUtil shakeUtil = this;
        List<com.meishu.sdk.platform.ms.splash.c> list = shakeUtil.f33103g;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (com.meishu.sdk.platform.ms.splash.c cVar : shakeUtil.f33103g) {
            int i2 = cVar.f33142f;
            if (i2 == 2 || i2 == 3 || i2 == 5 || i2 == 6 || i2 == 7 || i2 == 8) {
                if (cVar.f33143g && cVar.f33144h == 1 && cVar.f33138b != null) {
                    double d2 = cVar.f33153q;
                    char c2 = 0;
                    if (i2 != 6 && i2 != 7 && i2 != 8) {
                        float[] fArr = shakeUtil.f33102f;
                        float f10 = (f2 * f5) + fArr[0];
                        fArr[0] = f10;
                        fArr[1] = (f3 * f5) + fArr[1];
                        fArr[2] = (f4 * f5) + fArr[2];
                        float degrees3 = (float) Math.toDegrees(f10);
                        degrees = (float) Math.toDegrees(shakeUtil.f33102f[1]);
                        degrees2 = (float) Math.toDegrees(shakeUtil.f33102f[2]);
                        f9 = degrees3;
                    } else {
                        long j2 = r0.f31976g;
                        if (j2 <= 0) {
                            j2 = 3000;
                        }
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        float f11 = 0.0f;
                        if (jCurrentTimeMillis - cVar.f33157u > j2) {
                            shakeUtil.f33122z.clear();
                            cVar.f33157u = jCurrentTimeMillis;
                            cVar.f33156t = false;
                            cVar.f33155s = false;
                            float[] fArr2 = shakeUtil.f33102f;
                            fArr2[0] = 0.0f;
                            fArr2[1] = 0.0f;
                            fArr2[2] = 0.0f;
                        }
                        float[] fArr3 = shakeUtil.f33102f;
                        float f12 = (f2 * f5) + fArr3[0];
                        fArr3[0] = f12;
                        if (f12 * f2 < 0.0f) {
                            fArr3[0] = 0.0f;
                        }
                        float f13 = (f3 * f5) + fArr3[1];
                        fArr3[1] = f13;
                        if (f13 * f3 < 0.0f) {
                            fArr3[1] = 0.0f;
                        }
                        float f14 = (f4 * f5) + fArr3[2];
                        fArr3[2] = f14;
                        if (f14 * f4 < 0.0f) {
                            fArr3[2] = 0.0f;
                        }
                        float degrees4 = (float) Math.toDegrees(fArr3[0]);
                        float degrees5 = (float) Math.toDegrees(shakeUtil.f33102f[1]);
                        float degrees6 = (float) Math.toDegrees(shakeUtil.f33102f[2]);
                        cVar.a();
                        double d3 = cVar.f33153q;
                        double d4 = cVar.f33141e;
                        if (Math.abs(degrees4) > 2.0f || Math.abs(degrees5) > 2.0f || Math.abs(degrees6) > 2.0f) {
                            f6 = degrees4;
                            f7 = degrees5;
                            f8 = degrees6;
                            shakeUtil.f33122z.add(new d(f6, f7, f8, System.currentTimeMillis()));
                        } else {
                            f6 = degrees4;
                            f7 = degrees5;
                            f8 = degrees6;
                        }
                        if (shakeUtil.f33122z.isEmpty()) {
                            return;
                        }
                        long j3 = r0.f31976g;
                        long j4 = j3 > 0 ? j3 : 3000L;
                        Iterator<d> it = shakeUtil.f33122z.iterator();
                        char c3 = 0;
                        char c4 = 0;
                        double d5 = d3;
                        double d6 = d5;
                        while (it.hasNext()) {
                            d next = it.next();
                            float f15 = f11;
                            char c5 = c3;
                            if (System.currentTimeMillis() - next.f33161d > j4) {
                                it.remove();
                                f11 = f15;
                                c3 = c5;
                            } else {
                                float f16 = next.f33158a;
                                float f17 = next.f33159b;
                                float f18 = next.f33160c;
                                Iterator<d> it2 = it;
                                if (Math.abs(f16) > d3) {
                                    c2 = f16 > f15 ? c2 | 1 : c2 | 2;
                                    d3 = d4;
                                }
                                if (Math.abs(f17) > d5) {
                                    c3 = f17 > f15 ? c5 | 1 : c5 | 2;
                                    d5 = d4;
                                } else {
                                    c3 = c5;
                                }
                                if (Math.abs(f18) > d6) {
                                    c4 = f18 > f15 ? c4 | 1 : c4 | 2;
                                    d6 = d4;
                                }
                                if (c2 == 3 || c3 == 3 || c4 == 3) {
                                    d2 = cVar.f33141e;
                                    shakeUtil.f33122z.clear();
                                    f9 = f6;
                                    degrees = f7;
                                    degrees2 = f8;
                                } else {
                                    f11 = f15;
                                    it = it2;
                                }
                            }
                        }
                        return;
                    }
                    int iMax = Math.max((int) Math.abs(f9), Math.max((int) Math.abs(degrees), (int) Math.abs(degrees2)));
                    double d7 = iMax;
                    if (d7 >= d2) {
                        cVar.c();
                        if (cVar.f33150n > cVar.f33149m) {
                            shakeUtil.b(cVar, false, (iMax * 100) / 90, f9, degrees, degrees2);
                        }
                    } else if (cVar.a()) {
                        if (d7 >= cVar.f33152p) {
                            cVar.c();
                        }
                        if (cVar.f33150n > cVar.f33149m) {
                            d();
                            shakeUtil = this;
                            shakeUtil.b(cVar, true, (iMax * 100) / 90, f9, degrees, degrees2);
                        }
                    }
                }
                shakeUtil = this;
            }
        }
    }

    public void a(boolean z2) {
        this.f33100d = z2;
        try {
            new Handler().postDelayed(new e(this), this.f33098b);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(int i2, boolean z2) {
        List<com.meishu.sdk.platform.ms.splash.c> list = this.f33103g;
        if (list == null || list.size() == 0) {
            return;
        }
        boolean z3 = true;
        for (com.meishu.sdk.platform.ms.splash.c cVar : this.f33103g) {
            if (i2 == cVar.f33137a) {
                cVar.f33143g = z2;
            }
            if (cVar.f33143g) {
                z3 = false;
            }
        }
        if (z3) {
            e();
        } else {
            f();
        }
        SdkHandler.getInstance().postDelay(new f(this), 1000L);
    }

    public void a(int i2) {
        List<com.meishu.sdk.platform.ms.splash.c> list = this.f33103g;
        if (list != null && list.size() != 0) {
            Iterator<com.meishu.sdk.platform.ms.splash.c> it = this.f33103g.iterator();
            while (it.hasNext()) {
                if (i2 == it.next().f33137a) {
                    it.remove();
                }
            }
            SdkHandler.getInstance().postDelay(new f(this), 1000L);
            return;
        }
        a();
    }

    public void a() {
        this.f33100d = false;
        this.f33110n = false;
        float[] fArr = this.f33102f;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        this.f33101e = 0.0f;
        List<d> list = this.f33120x;
        if (list != null) {
            list.clear();
        }
        List<d> list2 = this.f33122z;
        if (list2 != null) {
            list2.clear();
        }
        List<d> list3 = this.f33121y;
        if (list3 != null) {
            list3.clear();
        }
        SensorManager sensorManager = this.f33099c;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.f33111o);
            this.f33099c = null;
            this.f33108l = null;
            this.f33109m = null;
            this.f33107k = null;
        }
        List<com.meishu.sdk.platform.ms.splash.c> list4 = this.f33103g;
        if (list4 != null) {
            list4.clear();
        }
        float[] fArr2 = this.f33118v;
        fArr2[0] = 0.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 0.0f;
    }

    public void a(String str, long j2, MeishuAdInfo.DClickData dClickData) {
        this.f33104h = str;
        this.f33105i = j2;
        this.f33106j = dClickData;
    }
}
