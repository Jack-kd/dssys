package com.beizi.fusion;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.EulerAngleView;
import com.umeng.analytics.pro.bv;
import java.util.List;

/* loaded from: classes2.dex */
public class t7 {

    /* renamed from: F, reason: collision with root package name */
    private static SensorManager f16297F;

    /* renamed from: A, reason: collision with root package name */
    private float f16298A;

    /* renamed from: B, reason: collision with root package name */
    private float f16299B;

    /* renamed from: C, reason: collision with root package name */
    private float f16300C;

    /* renamed from: D, reason: collision with root package name */
    private float f16301D;

    /* renamed from: a, reason: collision with root package name */
    private Context f16303a;

    /* renamed from: b, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewBean f16304b;

    /* renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewBean f16305c;

    /* renamed from: d, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f16306d;

    /* renamed from: e, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f16307e;

    /* renamed from: f, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f16308f;

    /* renamed from: g, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleRenderBean f16309g;

    /* renamed from: j, reason: collision with root package name */
    private Sensor f16312j;

    /* renamed from: n, reason: collision with root package name */
    private String f16316n;

    /* renamed from: o, reason: collision with root package name */
    private String f16317o;

    /* renamed from: p, reason: collision with root package name */
    private String f16318p;

    /* renamed from: s, reason: collision with root package name */
    private float f16321s;

    /* renamed from: t, reason: collision with root package name */
    private EulerAngleView f16322t;

    /* renamed from: u, reason: collision with root package name */
    private c f16323u;

    /* renamed from: w, reason: collision with root package name */
    private String f16325w;

    /* renamed from: x, reason: collision with root package name */
    private Boolean f16326x;

    /* renamed from: y, reason: collision with root package name */
    private float f16327y;

    /* renamed from: z, reason: collision with root package name */
    private float f16328z;

    /* renamed from: h, reason: collision with root package name */
    private float f16310h = 1.0E-9f;

    /* renamed from: i, reason: collision with root package name */
    private float[] f16311i = new float[3];

    /* renamed from: k, reason: collision with root package name */
    private double f16313k = 0.0d;

    /* renamed from: l, reason: collision with root package name */
    private double f16314l = 0.0d;

    /* renamed from: m, reason: collision with root package name */
    private double f16315m = 0.0d;

    /* renamed from: q, reason: collision with root package name */
    private boolean f16319q = false;

    /* renamed from: r, reason: collision with root package name */
    private int f16320r = 0;

    /* renamed from: v, reason: collision with root package name */
    private boolean f16324v = false;

    /* renamed from: E, reason: collision with root package name */
    private SensorEventListener f16302E = new b();

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ double f16329a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ double f16330b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ double f16331c;

        public a(double d2, double d3, double d4) {
            this.f16329a = d2;
            this.f16330b = d3;
            this.f16331c = d4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                t7.this.f16319q = true;
                t7.this.f16321s = 0.0f;
                t7.this.f16311i[0] = 0.0f;
                t7.this.f16311i[1] = 0.0f;
                t7.this.f16311i[2] = 0.0f;
                t7.this.f16313k = this.f16329a;
                t7.this.f16314l = this.f16330b;
                t7.this.f16315m = this.f16331c;
            } catch (Exception unused) {
            }
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
            try {
                t7.this.a(sensorEvent);
            } catch (Exception unused) {
            }
        }
    }

    public interface c {
        void a();
    }

    public t7(Context context, String str, AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean, AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean2) {
        this.f16325w = null;
        f16297F = (SensorManager) context.getApplicationContext().getSystemService("sensor");
        this.f16303a = context;
        this.f16304b = eulerAngleViewBean;
        this.f16305c = eulerAngleViewBean2;
        this.f16325w = "splash_cool_" + str;
        c();
        b();
    }

    private boolean d() {
        try {
            if (this.f16313k > 0.0d) {
                if ("2".equals(this.f16316n)) {
                    if (this.f16311i[0] > 0.0f && Math.abs(r1) >= this.f16313k) {
                        return true;
                    }
                } else if ("1".equals(this.f16316n)) {
                    if (this.f16311i[0] < 0.0f && Math.abs(r1) >= this.f16313k) {
                        return true;
                    }
                } else if ("0".equals(this.f16316n)) {
                    if (Math.abs(this.f16311i[0]) >= this.f16313k) {
                        return true;
                    }
                } else if ("3".equals(this.f16316n) && Math.abs(this.f16327y) >= this.f16313k && Math.abs(this.f16299B) > this.f16313k) {
                    return true;
                }
            }
            if (this.f16314l > 0.0d) {
                if ("2".equals(this.f16317o)) {
                    if (this.f16311i[1] < 0.0f && Math.abs(r1) >= this.f16314l) {
                        return true;
                    }
                } else if ("1".equals(this.f16317o)) {
                    if (this.f16311i[1] > 0.0f && Math.abs(r1) >= this.f16314l) {
                        return true;
                    }
                } else if ("0".equals(this.f16317o)) {
                    if (Math.abs(this.f16311i[1]) >= this.f16314l) {
                        return true;
                    }
                } else if ("3".equals(this.f16317o) && Math.abs(this.f16328z) >= this.f16314l && Math.abs(this.f16300C) > this.f16314l) {
                    return true;
                }
            }
            if (this.f16315m > 0.0d) {
                if ("2".equals(this.f16318p)) {
                    if (this.f16311i[2] > 0.0f && Math.abs(r1) >= this.f16315m) {
                        return true;
                    }
                } else if ("1".equals(this.f16318p)) {
                    if (this.f16311i[2] < 0.0f && Math.abs(r1) >= this.f16315m) {
                        return true;
                    }
                } else if ("0".equals(this.f16318p)) {
                    if (Math.abs(this.f16311i[2]) >= this.f16315m) {
                        return true;
                    }
                } else if ("3".equals(this.f16318p) && Math.abs(this.f16298A) >= this.f16315m && Math.abs(this.f16301D) > this.f16315m) {
                    return true;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    public void e() {
        try {
            SensorManager sensorManager = f16297F;
            if (sensorManager != null) {
                Sensor defaultSensor = sensorManager.getDefaultSensor(4);
                this.f16312j = defaultSensor;
                if (defaultSensor != null) {
                    f16297F.registerListener(this.f16302E, defaultSensor, 1);
                }
            }
        } catch (Exception unused) {
        }
    }

    public void f() {
        try {
            mh.a("BeiZis", "enter unRegisterListener");
            SensorManager sensorManager = f16297F;
            if (sensorManager != null) {
                sensorManager.unregisterListener(this.f16302E);
            }
            EulerAngleView eulerAngleView = this.f16322t;
            if (eulerAngleView != null) {
                eulerAngleView.onDestroy();
            }
            this.f16322t = null;
            this.f16303a = null;
            this.f16323u = null;
        } catch (Exception unused) {
        }
    }

    private void b() {
        List<AdSpacesBean.BuyerBean.EulerAngleRuleBean> rules;
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f16306d;
            if (eulerAngleViewRuleBean != null && (rules = eulerAngleViewRuleBean.getRules()) != null && rules.size() != 0) {
                int passivationTime = this.f16306d.getPassivationTime();
                double angle = 0.0d;
                double angle2 = 0.0d;
                double angle3 = 0.0d;
                for (AdSpacesBean.BuyerBean.EulerAngleRuleBean eulerAngleRuleBean : rules) {
                    if (eulerAngleRuleBean != null) {
                        if ("x".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime <= 0 || eulerAngleRuleBean.getPangle() <= 0.0d) {
                                this.f16313k = eulerAngleRuleBean.getAngle();
                            } else {
                                this.f16313k = eulerAngleRuleBean.getPangle();
                            }
                            angle = eulerAngleRuleBean.getAngle();
                            this.f16316n = eulerAngleRuleBean.getDirection();
                        } else if ("y".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime <= 0 || eulerAngleRuleBean.getPangle() <= 0.0d) {
                                this.f16314l = eulerAngleRuleBean.getAngle();
                            } else {
                                this.f16314l = eulerAngleRuleBean.getPangle();
                            }
                            angle2 = eulerAngleRuleBean.getAngle();
                            this.f16317o = eulerAngleRuleBean.getDirection();
                        } else if (bv.aD.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime <= 0 || eulerAngleRuleBean.getPangle() <= 0.0d) {
                                this.f16315m = eulerAngleRuleBean.getAngle();
                            } else {
                                this.f16315m = eulerAngleRuleBean.getPangle();
                            }
                            angle3 = eulerAngleRuleBean.getAngle();
                            this.f16318p = eulerAngleRuleBean.getDirection();
                        }
                    }
                }
                if (passivationTime > 0) {
                    new Handler().postDelayed(new a(angle, angle2, angle3), rl.b(passivationTime));
                }
            }
        } catch (Exception unused) {
        }
    }

    private void c() {
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean = this.f16304b;
            if (eulerAngleViewBean != null) {
                this.f16308f = eulerAngleViewBean.getCoolRule();
            }
            AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean2 = this.f16305c;
            if (eulerAngleViewBean2 != null) {
                this.f16307e = eulerAngleViewBean2.getNomalRule();
                this.f16309g = this.f16305c.getRender();
            } else {
                AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean3 = this.f16304b;
                if (eulerAngleViewBean3 != null) {
                    this.f16307e = eulerAngleViewBean3.getNomalRule();
                    this.f16309g = this.f16304b.getRender();
                }
            }
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f16308f;
            if (eulerAngleViewRuleBean == null) {
                this.f16319q = true;
                this.f16306d = this.f16307e;
            } else if (a(eulerAngleViewRuleBean.getCoolTime())) {
                this.f16319q = false;
                this.f16306d = this.f16308f;
            } else if (b(this.f16308f.getUserProtectTime())) {
                this.f16319q = false;
                this.f16306d = this.f16308f;
            } else {
                this.f16319q = true;
                this.f16306d = this.f16307e;
            }
        } catch (Exception unused) {
        }
    }

    private boolean a(long j2) {
        try {
            long jLongValue = ((Long) go.a(this.f16303a, this.f16325w, (Object) 0L)).longValue();
            if (jLongValue != 0) {
                return System.currentTimeMillis() - jLongValue < j2;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public void a(ViewGroup viewGroup, int i2, int i3) throws NumberFormatException {
        AdSpacesBean.BuyerBean.EulerAngleRenderBean eulerAngleRenderBean;
        int iA;
        int iA2;
        int i4;
        int i5;
        try {
            if (this.f16303a != null && (eulerAngleRenderBean = this.f16309g) != null && viewGroup != null) {
                String centerX = eulerAngleRenderBean.getCenterX();
                String centerY = this.f16309g.getCenterY();
                String width = this.f16309g.getWidth();
                String height = this.f16309g.getHeight();
                if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                    centerX = "85%";
                }
                if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
                    centerY = "50%";
                }
                if (TextUtils.isEmpty(width) || "0".equals(width)) {
                    width = "120";
                }
                if (TextUtils.isEmpty(height) || "0".equals(height)) {
                    height = "120";
                }
                float fI = vo.i(this.f16303a);
                int i6 = 100;
                if (centerX.endsWith("%")) {
                    iA = (Integer.parseInt(centerX.substring(0, centerX.indexOf("%"))) * i2) / 100;
                } else {
                    iA = Integer.parseInt(centerX);
                }
                if (centerY.endsWith("%")) {
                    iA2 = (Integer.parseInt(centerY.substring(0, centerY.indexOf("%"))) * i3) / 100;
                } else {
                    iA2 = Integer.parseInt(centerY);
                }
                if (width.endsWith("%")) {
                    i4 = (((int) fI) * Integer.parseInt(width.substring(0, width.indexOf("%")))) / 100;
                } else {
                    i4 = Integer.parseInt(width);
                }
                if (height.endsWith("%")) {
                    i5 = (Integer.parseInt(height.substring(0, height.indexOf("%"))) * i4) / 100;
                } else {
                    i5 = Integer.parseInt(height);
                }
                if (i4 == 0) {
                    i4 = 100;
                }
                if (i5 != 0) {
                    i6 = i5;
                }
                if (iA2 == 0) {
                    iA2 = vo.a(this.f16303a, i3) / 2;
                }
                if (iA == 0) {
                    iA = vo.a(this.f16303a, i2) / 2;
                }
                int iA3 = vo.a(this.f16303a, i4);
                int iA4 = vo.a(this.f16303a, i6);
                int iA5 = vo.a(this.f16303a, iA);
                int iA6 = vo.a(this.f16303a, iA2);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                EulerAngleView eulerAngleView = new EulerAngleView(this.f16303a);
                this.f16322t = eulerAngleView;
                eulerAngleView.setEulerAngleViewRuleBean(this.f16306d);
                this.f16322t.setEulerAngleRenderBean(this.f16309g);
                this.f16322t.setAnimationViewWidthAndHeight(iA3, iA4);
                this.f16322t.setDownloadApp(this.f16326x);
                this.f16322t.buildEulerAngleView();
                this.f16322t.measure(0, 0);
                int measuredWidth = this.f16322t.getMeasuredWidth();
                int measuredHeight = this.f16322t.getMeasuredHeight();
                mh.a("BeiZis", "centerYInt = " + iA6 + ",centerXInt = " + iA5 + ",adWidthDp = " + i2 + ",adHeightDp = " + i3 + ",widthInt = " + iA3 + ",heightInt = " + iA4 + ",viewWidth = " + measuredWidth + ",viewHeight = " + measuredHeight);
                layoutParams.topMargin = iA6 - (measuredHeight / 2);
                layoutParams.leftMargin = iA5 - (measuredWidth / 2);
                viewGroup.addView(this.f16322t, layoutParams);
                this.f16322t.startContinuousRotations();
            }
        } catch (NumberFormatException unused) {
        }
    }

    private boolean b(long j2) {
        try {
            return System.currentTimeMillis() - vo.a(this.f16303a).longValue() < j2;
        } catch (Exception unused) {
            return false;
        }
    }

    public void a(c cVar) {
        this.f16323u = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (this.f16324v) {
                    return;
                }
                Sensor sensor = sensorEvent.sensor;
                float[] fArr = sensorEvent.values;
                int type = sensor.getType();
                if (fArr != null && type == 4) {
                    float f2 = this.f16321s;
                    if (f2 != 0.0f) {
                        float f3 = fArr[0];
                        float f4 = fArr[1];
                        float f5 = fArr[2];
                        float f6 = (sensorEvent.timestamp - f2) * this.f16310h;
                        this.f16311i[0] = (float) (r3[0] + Math.toDegrees(f3 * f6));
                        this.f16311i[1] = (float) (r3[1] + Math.toDegrees(f4 * f6));
                        this.f16311i[2] = (float) (r3[2] + Math.toDegrees(f5 * f6));
                        float[] fArr2 = this.f16311i;
                        float f7 = fArr2[0];
                        if (f7 > 0.0f) {
                            if (f7 > this.f16299B) {
                                this.f16299B = f7;
                            }
                        } else if (f7 < this.f16327y) {
                            this.f16327y = f7;
                        }
                        float f8 = fArr2[1];
                        if (f8 > 0.0f) {
                            if (f8 > this.f16300C) {
                                this.f16300C = f8;
                            }
                        } else if (f8 < this.f16328z) {
                            this.f16328z = f8;
                        }
                        float f9 = fArr2[2];
                        if (f9 > 0.0f) {
                            if (f9 > this.f16301D) {
                                this.f16301D = f9;
                            }
                        } else if (f9 < this.f16298A) {
                            this.f16298A = f9;
                        }
                        EulerAngleView eulerAngleView = this.f16322t;
                        if (eulerAngleView != null) {
                            eulerAngleView.setAngle(this.f16313k, this.f16314l, this.f16315m);
                            EulerAngleView eulerAngleView2 = this.f16322t;
                            float[] fArr3 = this.f16311i;
                            eulerAngleView2.setCurrentProgress(fArr3[0], fArr3[1], fArr3[2]);
                        }
                        mh.a("ShakeUtil", "rotate  x: " + String.format("%.4f", Float.valueOf(this.f16311i[0])) + ",y: " + String.format("%.4f", Float.valueOf(this.f16311i[1])) + ",z: " + String.format("%.4f", Float.valueOf(this.f16311i[2])) + ",x : " + this.f16313k + ",y : " + this.f16314l + ",z : " + this.f16315m);
                        if (d()) {
                            a();
                        }
                    }
                    this.f16321s = sensorEvent.timestamp;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void a() {
        try {
            if (this.f16323u == null || this.f16324v || !bq.b(this.f16322t)) {
                return;
            }
            this.f16324v = true;
            if (this.f16319q && this.f16308f != null) {
                go.b(this.f16303a, this.f16325w, Long.valueOf(System.currentTimeMillis()));
            }
            this.f16323u.a();
            f();
            mh.a("ShakeUtil", "onEulerAngleHappened");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(Boolean bool) {
        this.f16326x = bool;
    }
}
