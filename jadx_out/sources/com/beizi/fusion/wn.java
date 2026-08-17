package com.beizi.fusion;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.update.ShakeArcView;
import com.beizi.fusion.widget.ShakeView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.umeng.analytics.pro.bv;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* loaded from: classes2.dex */
public class wn {

    /* renamed from: k0, reason: collision with root package name */
    private static SensorManager f17288k0;

    /* renamed from: A, reason: collision with root package name */
    private Map f17289A;

    /* renamed from: B, reason: collision with root package name */
    private boolean f17290B;

    /* renamed from: C, reason: collision with root package name */
    private double f17291C;

    /* renamed from: G, reason: collision with root package name */
    ShakeView f17295G;

    /* renamed from: I, reason: collision with root package name */
    private float f17297I;

    /* renamed from: M, reason: collision with root package name */
    private int f17301M;

    /* renamed from: N, reason: collision with root package name */
    private Sensor f17302N;

    /* renamed from: O, reason: collision with root package name */
    private float f17303O;

    /* renamed from: R, reason: collision with root package name */
    private float f17306R;

    /* renamed from: S, reason: collision with root package name */
    private float f17307S;

    /* renamed from: T, reason: collision with root package name */
    private float f17308T;

    /* renamed from: U, reason: collision with root package name */
    private float f17309U;

    /* renamed from: V, reason: collision with root package name */
    private float f17310V;

    /* renamed from: W, reason: collision with root package name */
    private float f17311W;

    /* renamed from: X, reason: collision with root package name */
    private boolean f17312X;

    /* renamed from: Y, reason: collision with root package name */
    private boolean f17313Y;

    /* renamed from: Z, reason: collision with root package name */
    private long f17314Z;

    /* renamed from: a, reason: collision with root package name */
    private Context f17315a;

    /* renamed from: a0, reason: collision with root package name */
    private double f17316a0;

    /* renamed from: b, reason: collision with root package name */
    private double f17317b;

    /* renamed from: b0, reason: collision with root package name */
    private boolean f17318b0;

    /* renamed from: c, reason: collision with root package name */
    private double f17319c;

    /* renamed from: c0, reason: collision with root package name */
    private int f17320c0;

    /* renamed from: d, reason: collision with root package name */
    private double f17321d;

    /* renamed from: d0, reason: collision with root package name */
    private int f17322d0;

    /* renamed from: e, reason: collision with root package name */
    private int f17323e;

    /* renamed from: e0, reason: collision with root package name */
    private String f17324e0;

    /* renamed from: f, reason: collision with root package name */
    private int f17325f;

    /* renamed from: f0, reason: collision with root package name */
    private long f17326f0;

    /* renamed from: g, reason: collision with root package name */
    private int f17327g;

    /* renamed from: g0, reason: collision with root package name */
    private long f17328g0;

    /* renamed from: h, reason: collision with root package name */
    private int f17329h;

    /* renamed from: u, reason: collision with root package name */
    private boolean f17345u;

    /* renamed from: v, reason: collision with root package name */
    private double f17346v;

    /* renamed from: w, reason: collision with root package name */
    private int f17347w;

    /* renamed from: x, reason: collision with root package name */
    private int f17348x;

    /* renamed from: y, reason: collision with root package name */
    private int f17349y;

    /* renamed from: z, reason: collision with root package name */
    private boolean f17350z;

    /* renamed from: i, reason: collision with root package name */
    private int f17331i = 0;

    /* renamed from: j, reason: collision with root package name */
    private int f17333j = 0;

    /* renamed from: k, reason: collision with root package name */
    private float f17335k = -100.0f;

    /* renamed from: l, reason: collision with root package name */
    private float f17336l = -100.0f;

    /* renamed from: m, reason: collision with root package name */
    private float f17337m = -100.0f;

    /* renamed from: n, reason: collision with root package name */
    private int f17338n = 0;

    /* renamed from: o, reason: collision with root package name */
    private c f17339o = null;

    /* renamed from: p, reason: collision with root package name */
    private boolean f17340p = false;

    /* renamed from: q, reason: collision with root package name */
    private int f17341q = 200;

    /* renamed from: r, reason: collision with root package name */
    private long f17342r = 0;

    /* renamed from: s, reason: collision with root package name */
    private ShakeArcView f17343s = null;

    /* renamed from: t, reason: collision with root package name */
    private int f17344t = 0;

    /* renamed from: D, reason: collision with root package name */
    private float[] f17292D = new float[3];

    /* renamed from: E, reason: collision with root package name */
    private float[] f17293E = new float[3];

    /* renamed from: F, reason: collision with root package name */
    private final SensorEventListener f17294F = new b();

    /* renamed from: H, reason: collision with root package name */
    private float f17296H = 0.0f;

    /* renamed from: J, reason: collision with root package name */
    private float f17298J = 0.0f;

    /* renamed from: K, reason: collision with root package name */
    private float f17299K = 0.0f;

    /* renamed from: L, reason: collision with root package name */
    final float f17300L = 0.85f;

    /* renamed from: P, reason: collision with root package name */
    private float f17304P = 1.0E-9f;

    /* renamed from: Q, reason: collision with root package name */
    private float[] f17305Q = new float[3];

    /* renamed from: h0, reason: collision with root package name */
    private double f17330h0 = 0.35d;

    /* renamed from: i0, reason: collision with root package name */
    private float[] f17332i0 = new float[3];

    /* renamed from: j0, reason: collision with root package name */
    private Random f17334j0 = new Random();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wn.this.c();
        }
    }

    public class b implements SensorEventListener {
        public b() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent == null) {
                return;
            }
            try {
                Sensor sensor = sensorEvent.sensor;
                if (sensor == null) {
                    return;
                }
                int type = sensor.getType();
                if (type == 1) {
                    if (wn.this.k()) {
                        wn.this.b(sensorEvent);
                        return;
                    } else {
                        wn.this.d(sensorEvent);
                        return;
                    }
                }
                if (type == 2) {
                    wn.this.f17293E = (float[]) sensorEvent.values.clone();
                } else if (type == 4) {
                    if (wn.this.k()) {
                        wn.this.a(sensorEvent);
                    } else {
                        wn.this.c(sensorEvent);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public interface c {
        void a();
    }

    public wn(Context context) {
        this.f17315a = context;
        f17288k0 = (SensorManager) context.getApplicationContext().getSystemService("sensor");
    }

    private Map g() {
        HashMap map = new HashMap();
        map.put("actionType", 1);
        map.put("maxAcc", Double.valueOf(Double.parseDouble(String.format("%.2f", Double.valueOf(this.f17346v)))));
        if (this.f17350z) {
            map.put("angle", Long.valueOf(Math.round(this.f17291C)));
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k() {
        return this.f17347w == 1 && this.f17318b0;
    }

    private void l() {
        try {
            SensorManager sensorManager = f17288k0;
            if (sensorManager != null) {
                Sensor defaultSensor = sensorManager.getDefaultSensor(4);
                this.f17302N = defaultSensor;
                if (defaultSensor != null) {
                    f17288k0.registerListener(this.f17294F, defaultSensor, 1);
                } else {
                    this.f17312X = true;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void o() {
        if (((Boolean) a(this.f17329h).second).booleanValue()) {
            d9.a(new a(), this.f17327g + (((Integer) r0.first).intValue() * 10));
        }
    }

    private void p() {
        int i2;
        ShakeArcView shakeArcView = this.f17343s;
        if (shakeArcView == null || (i2 = this.f17344t) == 0) {
            return;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                shakeArcView.setMaxProgress(this.f17323e);
            }
        } else {
            if (this.f17325f > 0) {
                double d2 = this.f17321d;
                if (d2 > 0.0d) {
                    shakeArcView.setMaxProgress(d2);
                    return;
                }
            }
            shakeArcView.setMaxProgress(this.f17317b);
        }
    }

    public void e(int i2) {
        this.f17329h = i2;
        if (i2 > 0) {
            o();
        }
    }

    public void f(int i2) {
        this.f17327g = i2;
    }

    public void h(int i2) {
        this.f17323e = i2;
    }

    public double i() {
        try {
            double d2 = this.f17346v;
            if (d2 > 0.0d) {
                this.f17346v = d2 / 9.8d;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return this.f17346v;
    }

    public double j() {
        return this.f17291C;
    }

    public void m() {
        SensorManager sensorManager = f17288k0;
        if (sensorManager != null) {
            sensorManager.registerListener(this.f17294F, sensorManager.getDefaultSensor(1), 100000);
        }
    }

    public void n() {
        this.f17340p = false;
        this.f17331i = 0;
        this.f17333j = 0;
        this.f17335k = -100.0f;
        this.f17336l = -100.0f;
        this.f17337m = -100.0f;
        this.f17338n = 0;
        this.f17339o = null;
        this.f17315a = null;
        this.f17295G = null;
        this.f17341q = 200;
        this.f17343s = null;
        this.f17306R = 0.0f;
        this.f17307S = 0.0f;
        this.f17308T = 0.0f;
        this.f17309U = 0.0f;
        this.f17310V = 0.0f;
        this.f17311W = 0.0f;
        this.f17303O = 0.0f;
        this.f17313Y = false;
        if (this.f17301M > 0) {
            this.f17312X = false;
        }
    }

    public void q() {
        mh.a("BeiZis", "enter unRegisterShakeListenerAndSetDefault");
        SensorManager sensorManager = f17288k0;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.f17294F);
        }
        n();
        ShakeView shakeView = this.f17295G;
        if (shakeView != null) {
            shakeView.stopShake();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(SensorEvent sensorEvent) {
        float[] fArr;
        char c2;
        double d2;
        int i2;
        if (sensorEvent == null || (fArr = sensorEvent.values) == null || fArr.length < 3) {
            return;
        }
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[2];
        if (this.f17335k == -100.0f) {
            this.f17335k = f2;
        }
        if (this.f17336l == -100.0f) {
            this.f17336l = f3;
        }
        if (this.f17337m == -100.0f) {
            this.f17337m = f4;
        }
        double dAbs = Math.abs(f2 - this.f17335k) / 9.8d;
        double dAbs2 = Math.abs(f3 - this.f17336l) / 9.8d;
        double dAbs3 = Math.abs(f4 - this.f17337m) / 9.8d;
        double d3 = this.f17321d;
        if (dAbs > d3) {
            c2 = 0;
            this.f17333j++;
            this.f17335k = f2;
        } else {
            c2 = 0;
        }
        if (dAbs2 > d3) {
            this.f17333j++;
            this.f17336l = f3;
        }
        if (dAbs3 > d3) {
            this.f17333j++;
            this.f17337m = f4;
        }
        if (this.f17290B && this.f17350z) {
            float[] fArr2 = (float[]) sensorEvent.values.clone();
            this.f17292D = fArr2;
            float f5 = fArr2[c2] * 0.85f;
            float[] fArr3 = sensorEvent.values;
            fArr2[c2] = f5 + (fArr3[c2] * 0.14999998f);
            fArr2[1] = (fArr2[1] * 0.85f) + (fArr3[1] * 0.14999998f);
            fArr2[2] = (fArr2[2] * 0.85f) + (fArr3[2] * 0.14999998f);
            b();
        }
        double dB = b(f2, f3, f4, this.f17317b);
        if (dB > this.f17317b) {
            double dA = a(f2, f3, f4);
            d2 = dAbs;
            if (this.f17346v < dA) {
                this.f17346v = dA;
            }
            this.f17338n = 1;
        } else {
            d2 = dAbs;
        }
        if (this.f17338n == 1 && a(f2, f3, f4, this.f17319c)) {
            this.f17338n = 2;
            this.f17331i++;
        }
        a(d2, dAbs2, dAbs3, dB);
        int i3 = this.f17323e;
        if ((i3 <= 0 || this.f17331i < i3) && ((i2 = this.f17325f) <= 0 || this.f17333j < i2)) {
            return;
        }
        if (this.f17290B && this.f17350z && this.f17291C < this.f17348x) {
            this.f17331i--;
            return;
        }
        mh.c("ShakeUtil", "mShakeCount = " + this.f17331i + ",dstShakeCount = " + this.f17323e + ",mRotateCount = " + this.f17333j + ",dstRotateCount = " + this.f17325f);
        this.f17313Y = true;
        if (this.f17312X) {
            c();
        }
    }

    private int f() {
        int iNextInt = this.f17348x + new Random().nextInt(150 - this.f17348x);
        return iNextInt > 120 ? iNextInt - new Random().nextInt(30) : iNextInt;
    }

    private Map h() {
        HashMap map = new HashMap();
        map.put("actionType", 1);
        Map map2 = this.f17289A;
        if (map2 == null) {
            Double dE = e();
            dE.getClass();
            map.put("maxAcc", dE);
            if (this.f17350z) {
                map.put("angle", Integer.valueOf(f()));
                return map;
            }
        } else {
            double dDoubleValue = map2.containsKey("maxAcc") ? ((Double) this.f17289A.get("maxAcc")).doubleValue() : 0.0d;
            if (dDoubleValue <= 0.0d) {
                dDoubleValue = e().doubleValue();
            }
            map.put("maxAcc", Double.valueOf(dDoubleValue));
            if (this.f17350z) {
                int iRound = this.f17289A.containsKey("angle") ? (int) Math.round(((Double) this.f17289A.get("angle")).doubleValue()) : 0;
                if (iRound > 0) {
                    map.put("angle", Integer.valueOf(iRound));
                    return map;
                }
                map.put("angle", Integer.valueOf(f()));
            }
        }
        return map;
    }

    public void b(double d2) {
        this.f17321d = d2;
    }

    public void c(double d2) {
        this.f17319c = d2;
    }

    private double b(float f2, float f3, float f4, double d2) {
        return Math.sqrt(Math.pow(f2 / 9.8d, 2.0d) + Math.pow(f3 / 9.8d, 2.0d) + Math.pow(f4 / 9.8d, 2.0d));
    }

    private Double e() {
        return Double.valueOf(Double.parseDouble(String.format("%.2f", Double.valueOf((new Random().nextInt(TTAdConstant.STYLE_SIZE_RADIO_3_2) / 100.0d) + 15.0d))));
    }

    public void c(int i2) {
        this.f17325f = i2;
    }

    public void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            return;
        }
        mh.b("ShakeUtil", "setShakeParams mShakeCount:" + shakeViewBean.getShakeCount() + ";mRotateCount:" + shakeViewBean.getRotatCount());
        try {
            this.f17335k = -100.0f;
            this.f17336l = -100.0f;
            this.f17337m = -100.0f;
            this.f17331i = 0;
            this.f17333j = 0;
            this.f17338n = 0;
            h(shakeViewBean.getShakeCount());
            d(shakeViewBean.getShakeStartAmplitude());
            c(shakeViewBean.getShakeEndAmplitude());
            b(shakeViewBean.getRotatAmplitude());
            c(shakeViewBean.getRotatCount());
            f(shakeViewBean.getRandomClickTime());
            e(shakeViewBean.getRandomClickNum());
            b(shakeViewBean.getAnimationInterval());
            p();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void b(int i2) {
        this.f17341q = i2;
    }

    public synchronized void c() {
        StringBuilder sb = new StringBuilder();
        sb.append("enter callBackShakeHappened and mShakeStateListener != null ? ");
        sb.append(this.f17339o != null);
        sb.append(",!isCallBack = ");
        sb.append(!this.f17340p);
        mh.a("BeiZis", sb.toString());
        if (this.f17339o != null && !this.f17340p) {
            mh.a("BeiZis", "callback onShakeHappened()");
            ShakeArcView shakeArcView = this.f17343s;
            if (shakeArcView != null && !bq.b(shakeArcView)) {
                mh.c("ShakeUtil", "mShakeCount onShakeHappened mShakeArcView is not show");
                this.f17335k = -100.0f;
                this.f17336l = -100.0f;
                this.f17337m = -100.0f;
                this.f17331i = 0;
                this.f17333j = 0;
                this.f17338n = 0;
                return;
            }
            this.f17340p = true;
            this.f17339o.a();
            ShakeView shakeView = this.f17295G;
            if (shakeView != null) {
                shakeView.stopShake();
                q();
            }
        }
    }

    private void b() {
        float[] fArr = new float[9];
        SensorManager.getRotationMatrix(fArr, null, this.f17292D, this.f17293E);
        float[] fArr2 = {degrees, 0.0f, 0.0f};
        SensorManager.getOrientation(fArr, fArr2);
        float degrees = (float) Math.toDegrees(fArr2[0]);
        if (degrees == 0.0f) {
            return;
        }
        float f2 = this.f17296H;
        if (f2 == 0.0f) {
            this.f17296H = degrees;
            return;
        }
        float f3 = degrees - f2;
        if (Math.abs(f3) > 180.0f) {
            this.f17296H = fArr2[0];
            return;
        }
        float f4 = this.f17297I + f3;
        this.f17297I = f4;
        if (f4 < this.f17298J) {
            this.f17298J = f4;
        }
        if (f4 > this.f17299K) {
            this.f17299K = f4;
        }
        double dAbs = Math.abs(this.f17299K - this.f17298J);
        if (dAbs <= 360.0d) {
            if (dAbs > 180.0d) {
                this.f17291C = 360.0d - dAbs;
            } else {
                this.f17291C = dAbs;
            }
        }
        double d2 = this.f17291C;
        if (d2 > 120.0d) {
            this.f17291C = d2 - new Random().nextInt(30);
        }
        this.f17296H = fArr2[0];
    }

    public void g(int i2) {
        this.f17301M = i2;
        if (i2 > 0) {
            l();
        } else {
            this.f17312X = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (!this.f17340p && System.currentTimeMillis() - this.f17314Z >= 50) {
                    Sensor sensor = sensorEvent.sensor;
                    float[] fArr = sensorEvent.values;
                    int type = sensor.getType();
                    if (fArr != null && type == 4) {
                        this.f17314Z = System.currentTimeMillis();
                        float f2 = this.f17303O;
                        if (f2 != 0.0f) {
                            float f3 = fArr[0];
                            float f4 = fArr[1];
                            float f5 = fArr[2];
                            float f6 = (sensorEvent.timestamp - f2) * this.f17304P;
                            this.f17305Q[0] = (float) (r0[0] + Math.toDegrees(f3 * f6));
                            this.f17305Q[1] = (float) (r0[1] + Math.toDegrees(f4 * f6));
                            this.f17305Q[2] = (float) (r0[2] + Math.toDegrees(f5 * f6));
                            float[] fArr2 = this.f17305Q;
                            float f7 = fArr2[0];
                            if (f7 > 0.0f) {
                                if (f7 > this.f17309U) {
                                    this.f17309U = f7;
                                }
                            } else if (f7 < this.f17306R) {
                                this.f17306R = f7;
                            }
                            float f8 = fArr2[1];
                            if (f8 > 0.0f) {
                                if (f8 > this.f17310V) {
                                    this.f17310V = f8;
                                }
                            } else if (f8 < this.f17307S) {
                                this.f17307S = f8;
                            }
                            float f9 = fArr2[2];
                            if (f9 > 0.0f) {
                                if (f9 > this.f17311W) {
                                    this.f17311W = f9;
                                }
                            } else if (f9 < this.f17308T) {
                                this.f17308T = f9;
                            }
                            double dMax = Math.max(Math.abs(f7), Math.max(Math.abs(this.f17305Q[1]), Math.abs(this.f17305Q[2])));
                            if (this.f17291C < dMax) {
                                this.f17291C = dMax;
                            }
                            if (this.f17301M > 0) {
                                a();
                                if (this.f17313Y && this.f17312X) {
                                    c();
                                }
                            }
                        }
                        this.f17303O = sensorEvent.timestamp;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void a(AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean) {
        if (coolShakeViewBean == null) {
            return;
        }
        mh.b("ShakeUtil", "setShakeCoolParams mShakeCount:" + coolShakeViewBean.getShakeCount() + ";mRotateCount:" + coolShakeViewBean.getRotatCount());
        try {
            h(coolShakeViewBean.getShakeCount());
            d(coolShakeViewBean.getShakeStartAmplitude());
            c(coolShakeViewBean.getShakeEndAmplitude());
            b(coolShakeViewBean.getRotatAmplitude());
            c(coolShakeViewBean.getRotatCount());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(SensorEvent sensorEvent) {
        if (sensorEvent == null) {
            return;
        }
        try {
            float[] fArr = sensorEvent.values;
            if (fArr != null && fArr.length >= 3) {
                double dA = a(fArr[0], fArr[1], fArr[2]);
                if (dA > 10.7d && this.f17326f0 > 0) {
                    this.f17328g0 += System.currentTimeMillis() - this.f17326f0;
                }
                this.f17326f0 = System.currentTimeMillis();
                if (this.f17346v < dA) {
                    this.f17346v = dA;
                }
                if (dA > this.f17322d0) {
                    mh.c("ShakeUtil", "tempShakeAcc:" + dA + ";shakeMaxAngle:" + this.f17291C + ";mShakeDurationTime:" + this.f17328g0 + ";mDirection:" + this.f17324e0);
                }
                if (this.f17346v >= this.f17322d0 && this.f17291C >= this.f17348x && this.f17328g0 >= this.f17320c0) {
                    this.f17313Y = true;
                    if (this.f17312X) {
                        c();
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeViewBean) {
        if (aliaseShakeViewBean == null) {
            return;
        }
        mh.b("ShakeUtil", "setShakeAliaseParams mShakeCount:" + aliaseShakeViewBean.getShakeCount() + ";mRotateCount:" + aliaseShakeViewBean.getRotatCount());
        try {
            h(aliaseShakeViewBean.getShakeCount());
            d(aliaseShakeViewBean.getShakeStartAmplitude());
            c(aliaseShakeViewBean.getShakeEndAmplitude());
            b(aliaseShakeViewBean.getRotatAmplitude());
            c(aliaseShakeViewBean.getRotatCount());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(ShakeArcView shakeArcView, int i2) {
        mh.b("ShakeUtil", "setShakeFeedback feedback:" + i2);
        a(shakeArcView);
        d(i2);
        p();
    }

    private void a(double d2, double d3, double d4, double d5) {
        ShakeArcView shakeArcView = this.f17343s;
        if (shakeArcView == null) {
            return;
        }
        if (this.f17344t == 2) {
            shakeArcView.setCurrentProgress(this.f17331i);
            return;
        }
        if (this.f17325f > 0 && this.f17321d > 0.0d) {
            if (d2 < d3 || d2 < d4) {
                d2 = (d3 < d2 || d3 < d4) ? (d4 < d2 || d4 < d3) ? 0.0d : d4 : d3;
            }
            double dDoubleValue = new BigDecimal(d2).setScale(2, 4).doubleValue();
            if (dDoubleValue >= 0.1d) {
                this.f17343s.setCurrentProgress(dDoubleValue);
                return;
            } else {
                if (dDoubleValue < 0.1d) {
                    this.f17343s.setCurrentProgress(0.0d);
                    return;
                }
                return;
            }
        }
        int i2 = this.f17323e;
        if (i2 > 0 && this.f17331i >= i2) {
            shakeArcView.setCurrentProgress(this.f17317b);
            return;
        }
        double dDoubleValue2 = new BigDecimal(d5).setScale(2, 4).doubleValue();
        if (dDoubleValue2 >= 1.1d) {
            this.f17343s.setCurrentProgress(dDoubleValue2);
        } else if (dDoubleValue2 < 1.1d) {
            this.f17343s.setCurrentProgress(0.0d);
        }
    }

    public void d(int i2) {
        this.f17344t = i2;
    }

    public void d(double d2) {
        this.f17317b = d2;
    }

    public Map d() {
        int i2 = this.f17347w;
        if (i2 == 0) {
            return null;
        }
        if (i2 == 2) {
            return h();
        }
        if (i2 != 1) {
            return null;
        }
        if (this.f17290B) {
            return g();
        }
        return h();
    }

    public void a(c cVar) {
        this.f17339o = cVar;
    }

    public void a(ShakeArcView shakeArcView) {
        this.f17343s = shakeArcView;
    }

    private boolean a(float f2, float f3, float f4, double d2) {
        return Math.sqrt((Math.pow(((double) f2) / 9.8d, 2.0d) + Math.pow(((double) f3) / 9.8d, 2.0d)) + Math.pow(((double) f4) / 9.8d, 2.0d)) < d2;
    }

    public static Pair a(int i2) {
        int iRandom = (int) ((Math.random() * 100.0d) + 1.0d);
        if (iRandom <= i2) {
            return new Pair(Integer.valueOf(iRandom), Boolean.TRUE);
        }
        return new Pair(Integer.valueOf(iRandom), Boolean.FALSE);
    }

    public View a(int i2, int i3, AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean) throws NumberFormatException {
        int i4;
        int i5;
        int i6;
        mh.a("BeiZis", "enter getShakeView");
        if (this.f17315a == null || percentPositionBean == null) {
            return null;
        }
        this.f17295G = new ShakeView(this.f17315a);
        String centerX = percentPositionBean.getCenterX();
        String centerY = percentPositionBean.getCenterY();
        String width = percentPositionBean.getWidth();
        String height = percentPositionBean.getHeight();
        if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
            centerX = "50%";
        }
        if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
            centerY = "50%";
        }
        if (TextUtils.isEmpty(width) || "0".equals(width)) {
            width = "180";
        }
        if (TextUtils.isEmpty(height) || "0".equals(height)) {
            height = "180";
        }
        float fI = vo.i(this.f17315a);
        if (centerX.endsWith("%")) {
            i4 = (Integer.parseInt(centerX.substring(0, centerX.indexOf("%"))) * i2) / 100;
        } else {
            i4 = Integer.parseInt(centerX);
        }
        if (centerY.endsWith("%")) {
            i5 = (Integer.parseInt(centerY.substring(0, centerY.indexOf("%"))) * i3) / 100;
        } else {
            i5 = Integer.parseInt(centerY);
        }
        boolean zEndsWith = width.endsWith("%");
        int i7 = MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL;
        if (zEndsWith) {
            int i8 = Integer.parseInt(width.substring(0, width.indexOf("%")));
            if (fI >= 400.0f) {
                i7 = (i8 * MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL) / 100;
            } else {
                i7 = (((int) fI) * i8) / 100;
            }
        } else {
            int i9 = Integer.parseInt(width);
            if (i9 < 400) {
                i7 = i9;
            }
        }
        if (height.endsWith("%")) {
            i6 = (Integer.parseInt(height.substring(0, height.indexOf("%"))) * i7) / 100;
        } else {
            i6 = Integer.parseInt(height);
        }
        int iA = vo.a(this.f17315a, i7);
        int iA2 = vo.a(this.f17315a, i6);
        int iA3 = vo.a(this.f17315a, i4);
        int iA4 = vo.a(this.f17315a, i5);
        mh.a("BeiZis", "widthInt = " + iA + ",heightInt = " + iA2);
        if (iA == 0) {
            iA = 180;
        }
        if (iA2 == 0) {
            iA2 = iA;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(iA, iA2);
        mh.a("BeiZis", "centerYInt = " + iA4 + ",centerXInt = " + iA3 + ",adWidthDp = " + i2 + ",adHeightDp = " + i3);
        if (iA4 == 0) {
            iA4 = vo.a(this.f17315a, i3) / 2;
        }
        if (iA3 == 0) {
            iA3 = vo.a(this.f17315a, i2) / 2;
        }
        marginLayoutParams.topMargin = iA4 - (iA2 / 2);
        marginLayoutParams.leftMargin = iA3 - (iA / 2);
        this.f17295G.setLayoutParams(marginLayoutParams);
        mh.a("BeiZis", "topMargin = " + marginLayoutParams.topMargin + ",leftMargin = " + marginLayoutParams.leftMargin + ",widthInt = " + iA + ",heightInt = " + iA2);
        this.f17295G.setDownloadApp(Boolean.valueOf(this.f17345u));
        this.f17295G.startShake();
        m();
        return this.f17295G;
    }

    public void a(int i2, int i3, boolean z2, int i4, Map map) {
        Sensor defaultSensor;
        try {
            this.f17347w = i2;
            this.f17348x = i3;
            this.f17350z = z2;
            this.f17349y = i4;
            this.f17289A = map;
            if (i3 <= 0) {
                this.f17348x = 35;
            }
            if (i2 == 1) {
                if (map == null) {
                    this.f17290B = true;
                    return;
                } else if (!map.containsKey("forceUnreal")) {
                    this.f17290B = true;
                    return;
                } else {
                    Object obj = map.get("forceUnreal");
                    if (!(obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false)) {
                        this.f17290B = true;
                    }
                }
            }
            if (this.f17290B && z2 && (defaultSensor = f17288k0.getDefaultSensor(2)) != null) {
                f17288k0.registerListener(this.f17294F, defaultSensor, 1);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private double a(float f2, float f3, float f4) {
        return Math.sqrt(Math.pow(f2, 2.0d) + Math.pow(f3, 2.0d) + Math.pow(f4, 2.0d));
    }

    public void a(Boolean bool) {
        this.f17345u = bool.booleanValue();
    }

    public void a(double d2) {
        if (this.f17301M > 0) {
            return;
        }
        this.f17316a0 = d2;
        l();
        this.f17312X = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (!this.f17340p && System.currentTimeMillis() - this.f17314Z >= 50) {
                    Sensor sensor = sensorEvent.sensor;
                    float[] fArr = sensorEvent.values;
                    int type = sensor.getType();
                    if (fArr != null && type == 4) {
                        this.f17314Z = System.currentTimeMillis();
                        float f2 = this.f17303O;
                        if (f2 != 0.0f) {
                            float f3 = fArr[0];
                            float f4 = fArr[1];
                            float f5 = fArr[2];
                            double d2 = this.f17330h0;
                            double d3 = f3 * d2;
                            double d4 = 1.0d - d2;
                            float[] fArr2 = this.f17332i0;
                            fArr2[0] = (float) (d3 + (fArr2[0] * d4));
                            fArr2[1] = (float) ((f4 * d2) + (fArr2[1] * d4));
                            fArr2[2] = (float) ((d2 * f5) + (d4 * fArr2[2]));
                            float f6 = (sensorEvent.timestamp - f2) * this.f17304P;
                            this.f17305Q[0] = (float) (r2[0] + Math.toDegrees(r5 * f6));
                            this.f17305Q[1] = (float) (r2[1] + Math.toDegrees(r6 * f6));
                            this.f17305Q[2] = (float) (r2[2] + Math.toDegrees(r3 * f6));
                            float[] fArr3 = this.f17305Q;
                            float f7 = fArr3[0];
                            if (f7 > 0.0f) {
                                if (f7 > this.f17309U) {
                                    this.f17309U = f7;
                                }
                            } else if (f7 < this.f17306R) {
                                this.f17306R = f7;
                            }
                            float f8 = fArr3[1];
                            if (f8 > 0.0f) {
                                if (f8 > this.f17310V) {
                                    this.f17310V = f8;
                                }
                            } else if (f8 < this.f17307S) {
                                this.f17307S = f8;
                            }
                            float f9 = fArr3[2];
                            if (f9 > 0.0f) {
                                if (f9 > this.f17311W) {
                                    this.f17311W = f9;
                                }
                            } else if (f9 < this.f17308T) {
                                this.f17308T = f9;
                            }
                            if (k() && ((Math.abs(this.f17306R) > this.f17348x && Math.abs(this.f17309U) > this.f17348x) || ((Math.abs(this.f17307S) > this.f17348x && Math.abs(this.f17310V) > this.f17348x) || (Math.abs(this.f17308T) > this.f17348x && Math.abs(this.f17311W) > this.f17348x)))) {
                                List listAsList = Arrays.asList(Float.valueOf(Math.abs(this.f17306R)), Float.valueOf(Math.abs(this.f17309U)), Float.valueOf(Math.abs(this.f17307S)), Float.valueOf(Math.abs(this.f17310V)), Float.valueOf(Math.abs(this.f17308T)), Float.valueOf(Math.abs(this.f17311W)));
                                int iIndexOf = listAsList.indexOf((Float) Collections.max(listAsList));
                                if (this.f17291C < r3.floatValue() && (this.f17346v < this.f17322d0 || this.f17291C < this.f17348x)) {
                                    this.f17291C = r3.floatValue();
                                    if (iIndexOf == 0 || iIndexOf == 1) {
                                        this.f17324e0 = "x";
                                    } else if (iIndexOf == 2 || iIndexOf == 3) {
                                        this.f17324e0 = "y";
                                    } else if (iIndexOf == 4 || iIndexOf == 5) {
                                        this.f17324e0 = bv.aD;
                                    }
                                }
                            }
                            double dMax = Math.max(Math.abs(this.f17305Q[0]), Math.max(Math.abs(this.f17305Q[1]), Math.abs(this.f17305Q[2])));
                            if (this.f17291C < dMax) {
                                this.f17291C = dMax;
                            }
                            if (this.f17301M > 0) {
                                a();
                                if (this.f17313Y && this.f17312X) {
                                    c();
                                }
                            }
                        }
                        this.f17303O = sensorEvent.timestamp;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void a() {
        if (this.f17349y == 0) {
            if ((Math.abs(this.f17306R) <= this.f17301M || Math.abs(this.f17309U) <= this.f17301M) && ((Math.abs(this.f17307S) <= this.f17301M || Math.abs(this.f17310V) <= this.f17301M) && (Math.abs(this.f17308T) <= this.f17301M || Math.abs(this.f17311W) <= this.f17301M))) {
                return;
            }
            mh.a("ShakeUtil", "rotate  xMin: " + String.format("%.4f", Float.valueOf(this.f17306R)) + ",xMax: " + String.format("%.4f", Float.valueOf(this.f17309U)) + ",yMin: " + String.format("%.4f", Float.valueOf(this.f17307S)) + ",yMax: " + String.format("%.4f", Float.valueOf(this.f17310V)) + ",zMin: " + String.format("%.4f", Float.valueOf(this.f17308T)) + ",zMax: " + String.format("%.4f", Float.valueOf(this.f17311W)));
            this.f17312X = true;
            return;
        }
        if (Math.abs(this.f17306R) > this.f17301M || Math.abs(this.f17309U) > this.f17301M || Math.abs(this.f17307S) > this.f17301M || Math.abs(this.f17310V) > this.f17301M || Math.abs(this.f17308T) > this.f17301M || Math.abs(this.f17311W) > this.f17301M) {
            mh.a("ShakeUtil", "rotate  xMin: " + String.format("%.4f", Float.valueOf(this.f17306R)) + ",xMax: " + String.format("%.4f", Float.valueOf(this.f17309U)) + ",yMin: " + String.format("%.4f", Float.valueOf(this.f17307S)) + ",yMax: " + String.format("%.4f", Float.valueOf(this.f17310V)) + ",zMin: " + String.format("%.4f", Float.valueOf(this.f17308T)) + ",zMax: " + String.format("%.4f", Float.valueOf(this.f17311W)));
            this.f17312X = true;
        }
    }

    public void a(double d2, double d3) {
        this.f17317b = d2;
        this.f17319c = d3;
        this.f17331i = 0;
        this.f17333j = 0;
        this.f17335k = -100.0f;
        this.f17336l = -100.0f;
        this.f17337m = -100.0f;
        this.f17338n = 0;
        this.f17341q = 200;
        this.f17306R = 0.0f;
        this.f17307S = 0.0f;
        this.f17308T = 0.0f;
        this.f17309U = 0.0f;
        this.f17310V = 0.0f;
        this.f17311W = 0.0f;
        this.f17303O = 0.0f;
    }
}
