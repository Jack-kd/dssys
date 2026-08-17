package com.beizi.fusion;

import android.content.Context;
import android.graphics.Color;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.ShakeView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes2.dex */
public class ui {

    /* renamed from: Q, reason: collision with root package name */
    private static SensorManager f16457Q;

    /* renamed from: C, reason: collision with root package name */
    private float f16460C;

    /* renamed from: D, reason: collision with root package name */
    private float f16461D;

    /* renamed from: E, reason: collision with root package name */
    private float f16462E;

    /* renamed from: F, reason: collision with root package name */
    private float f16463F;

    /* renamed from: G, reason: collision with root package name */
    private float f16464G;

    /* renamed from: H, reason: collision with root package name */
    private float f16465H;

    /* renamed from: I, reason: collision with root package name */
    private boolean f16466I;

    /* renamed from: J, reason: collision with root package name */
    private boolean f16467J;

    /* renamed from: K, reason: collision with root package name */
    private long f16468K;

    /* renamed from: L, reason: collision with root package name */
    private double f16469L;

    /* renamed from: M, reason: collision with root package name */
    private boolean f16470M;

    /* renamed from: N, reason: collision with root package name */
    private double f16471N;

    /* renamed from: O, reason: collision with root package name */
    private double f16472O;

    /* renamed from: P, reason: collision with root package name */
    private int f16473P;

    /* renamed from: a, reason: collision with root package name */
    private Context f16474a;

    /* renamed from: b, reason: collision with root package name */
    private double f16475b;

    /* renamed from: c, reason: collision with root package name */
    private double f16476c;

    /* renamed from: d, reason: collision with root package name */
    private double f16477d;

    /* renamed from: e, reason: collision with root package name */
    private int f16478e;

    /* renamed from: f, reason: collision with root package name */
    private int f16479f;

    /* renamed from: r, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.CoolShakeViewBean f16491r;

    /* renamed from: s, reason: collision with root package name */
    private String f16492s;

    /* renamed from: u, reason: collision with root package name */
    private boolean f16494u;

    /* renamed from: w, reason: collision with root package name */
    ShakeView f16496w;

    /* renamed from: x, reason: collision with root package name */
    private int f16497x;

    /* renamed from: y, reason: collision with root package name */
    private Sensor f16498y;

    /* renamed from: z, reason: collision with root package name */
    private float f16499z;

    /* renamed from: g, reason: collision with root package name */
    private int f16480g = 0;

    /* renamed from: h, reason: collision with root package name */
    private int f16481h = 0;

    /* renamed from: i, reason: collision with root package name */
    private float f16482i = -100.0f;

    /* renamed from: j, reason: collision with root package name */
    private float f16483j = -100.0f;

    /* renamed from: k, reason: collision with root package name */
    private float f16484k = -100.0f;

    /* renamed from: l, reason: collision with root package name */
    private int f16485l = 0;

    /* renamed from: m, reason: collision with root package name */
    private b f16486m = null;

    /* renamed from: n, reason: collision with root package name */
    private boolean f16487n = false;

    /* renamed from: o, reason: collision with root package name */
    private int f16488o = 200;

    /* renamed from: p, reason: collision with root package name */
    private View f16489p = null;

    /* renamed from: q, reason: collision with root package name */
    private long f16490q = 0;

    /* renamed from: t, reason: collision with root package name */
    private boolean f16493t = false;

    /* renamed from: v, reason: collision with root package name */
    private final SensorEventListener f16495v = new a();

    /* renamed from: A, reason: collision with root package name */
    private float f16458A = 1.0E-9f;

    /* renamed from: B, reason: collision with root package name */
    private float[] f16459B = new float[3];

    public class a implements SensorEventListener {
        public a() {
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
                    ui.this.b(sensorEvent);
                } else if (type == 4) {
                    ui.this.a(sensorEvent);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public interface b {
        void a();
    }

    public ui(Context context) {
        this.f16474a = context;
        f16457Q = (SensorManager) context.getApplicationContext().getSystemService("sensor");
    }

    private void e() {
        try {
            SensorManager sensorManager = f16457Q;
            if (sensorManager != null) {
                Sensor defaultSensor = sensorManager.getDefaultSensor(4);
                this.f16498y = defaultSensor;
                if (defaultSensor == null) {
                    this.f16466I = true;
                } else {
                    this.f16470M = true;
                    f16457Q.registerListener(this.f16495v, defaultSensor, 1);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void c(double d2) {
        this.f16476c = d2;
    }

    public void d(double d2) {
        this.f16475b = d2;
    }

    public void f() {
        SensorManager sensorManager = f16457Q;
        if (sensorManager != null) {
            sensorManager.registerListener(this.f16495v, sensorManager.getDefaultSensor(1), 100000);
        }
    }

    public void g() {
        this.f16482i = -100.0f;
        this.f16483j = -100.0f;
        this.f16484k = -100.0f;
        this.f16485l = 0;
        this.f16488o = 200;
        this.f16480g = 0;
        this.f16481h = 0;
        this.f16487n = false;
        this.f16460C = 0.0f;
        this.f16461D = 0.0f;
        this.f16462E = 0.0f;
        this.f16463F = 0.0f;
        this.f16464G = 0.0f;
        this.f16465H = 0.0f;
        this.f16499z = 0.0f;
        this.f16467J = false;
        if (this.f16497x <= 0 || !this.f16470M) {
            return;
        }
        this.f16466I = false;
    }

    public void h() {
        mh.a("BeiZis", "enter unRegisterShakeListenerAndSetDefault");
        SensorManager sensorManager = f16457Q;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.f16495v);
        }
        g();
        ShakeView shakeView = this.f16496w;
        if (shakeView != null) {
            shakeView.stopShake();
        }
        this.f16486m = null;
        this.f16474a = null;
        this.f16496w = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(SensorEvent sensorEvent) {
        int i2;
        if (System.currentTimeMillis() - this.f16490q >= 200) {
            if (!bq.a(this.f16489p)) {
                g();
                return;
            }
            if (this.f16493t && this.f16491r != null && !TextUtils.isEmpty(this.f16492s) && tn.a().a(this.f16492s) > 0) {
                b(this.f16491r);
            }
            float[] fArr = sensorEvent.values;
            if (fArr != null && fArr.length >= 3) {
                float f2 = fArr[0];
                float f3 = fArr[1];
                float f4 = fArr[2];
                if (this.f16482i == -100.0f) {
                    this.f16482i = f2;
                }
                if (this.f16483j == -100.0f) {
                    this.f16483j = f3;
                }
                if (this.f16484k == -100.0f) {
                    this.f16484k = f4;
                }
                double dAbs = Math.abs(f2 - this.f16482i) / 9.8d;
                double dAbs2 = Math.abs(f3 - this.f16483j) / 9.8d;
                double dAbs3 = Math.abs(f4 - this.f16484k) / 9.8d;
                double d2 = this.f16477d;
                if (dAbs > d2) {
                    this.f16481h++;
                    this.f16482i = f2;
                }
                if (dAbs2 > d2) {
                    this.f16481h++;
                    this.f16483j = f3;
                }
                if (dAbs3 > d2) {
                    this.f16481h++;
                    this.f16484k = f4;
                }
                if (b(f2, f3, f4, this.f16475b)) {
                    double dA = a(f2, f3, f4);
                    if (this.f16471N < dA) {
                        this.f16471N = dA;
                    }
                    this.f16485l = 1;
                }
                if (this.f16485l == 1 && a(f2, f3, f4, this.f16476c)) {
                    this.f16485l = 2;
                    this.f16480g++;
                }
                int i3 = this.f16478e;
                if ((i3 > 0 && this.f16480g >= i3) || ((i2 = this.f16479f) > 0 && this.f16481h >= i2)) {
                    this.f16467J = true;
                    mh.c("ShakeUtil", "mShakeCount = " + this.f16480g + ",dstShakeCount = " + this.f16478e + ",mRotateCount = " + this.f16481h + ",dstRotateCount = " + this.f16479f);
                    if (this.f16467J && this.f16466I) {
                        b();
                    }
                }
                this.f16490q = System.currentTimeMillis();
            }
        }
    }

    public void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            return;
        }
        mh.a("BeiZis", "setShakeParams shakeCount:" + shakeViewBean.getShakeCount() + ";rotatCount:" + shakeViewBean.getRotatCount());
        try {
            this.f16493t = true;
            c(shakeViewBean.getShakeCount());
            d(shakeViewBean.getShakeStartAmplitude());
            c(shakeViewBean.getShakeEndAmplitude());
            b(shakeViewBean.getRotatAmplitude());
            a(shakeViewBean.getRotatCount());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void c(int i2) {
        this.f16478e = i2;
    }

    public double d() {
        return this.f16472O;
    }

    public double c() {
        try {
            double d2 = this.f16471N;
            if (d2 > 0.0d) {
                this.f16471N = d2 / 9.8d;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return this.f16471N;
    }

    public void d(int i2) {
        this.f16473P = i2;
    }

    public void a(AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean, String str) {
        a(coolShakeViewBean);
        a(str);
    }

    public void a(b bVar) {
        this.f16486m = bVar;
    }

    public void a(int i2) {
        this.f16479f = i2;
    }

    public void a(AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean) {
        this.f16491r = coolShakeViewBean;
    }

    public void a(String str) {
        this.f16492s = str;
    }

    private boolean a(float f2, float f3, float f4, double d2) {
        return Math.sqrt((Math.pow(((double) f2) / 9.8d, 2.0d) + Math.pow(((double) f3) / 9.8d, 2.0d)) + Math.pow(((double) f4) / 9.8d, 2.0d)) < d2;
    }

    public void a(View view) {
        this.f16489p = view;
    }

    public View a(int i2, int i3, AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean) throws NumberFormatException {
        int i4;
        int i5;
        int i6;
        mh.a("BeiZis", "enter getShakeView");
        if (this.f16474a == null || percentPositionBean == null) {
            return null;
        }
        this.f16496w = new ShakeView(this.f16474a);
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
        float fI = vo.i(this.f16474a);
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
        int iA = vo.a(this.f16474a, i7);
        int iA2 = vo.a(this.f16474a, i6);
        int iA3 = vo.a(this.f16474a, i4);
        int iA4 = vo.a(this.f16474a, i5);
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
            iA4 = vo.a(this.f16474a, i3) / 2;
        }
        if (iA3 == 0) {
            iA3 = vo.a(this.f16474a, i2) / 2;
        }
        marginLayoutParams.topMargin = iA4 - (iA2 / 2);
        marginLayoutParams.leftMargin = iA3 - (iA / 2);
        this.f16496w.setLayoutParams(marginLayoutParams);
        mh.a("BeiZis", "topMargin = " + marginLayoutParams.topMargin + ",leftMargin = " + marginLayoutParams.leftMargin + ",widthInt = " + iA + ",heightInt = " + iA2);
        this.f16496w.setDownloadApp(Boolean.valueOf(this.f16494u));
        this.f16496w.startShake();
        f();
        return this.f16496w;
    }

    public void b(AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean) {
        if (coolShakeViewBean == null) {
            return;
        }
        mh.b("ShakeUtil", "setShakeCoolParams mShakeCount:" + coolShakeViewBean.getShakeCount() + ";mRotateCount:" + coolShakeViewBean.getRotatCount());
        try {
            this.f16493t = false;
            c(coolShakeViewBean.getShakeCount());
            d(coolShakeViewBean.getShakeStartAmplitude());
            c(coolShakeViewBean.getShakeEndAmplitude());
            b(coolShakeViewBean.getRotatAmplitude());
            a(coolShakeViewBean.getRotatCount());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void b(double d2) {
        this.f16477d = d2;
    }

    private boolean b(float f2, float f3, float f4, double d2) {
        return Math.sqrt((Math.pow(((double) f2) / 9.8d, 2.0d) + Math.pow(((double) f3) / 9.8d, 2.0d)) + Math.pow(((double) f4) / 9.8d, 2.0d)) > d2;
    }

    public synchronized void b() {
        StringBuilder sb = new StringBuilder();
        sb.append("enter callBackShakeHappened and mShakeStateListener != null ? ");
        sb.append(this.f16486m != null);
        sb.append(",!isCallBack = ");
        sb.append(!this.f16487n);
        mh.a("BeiZis", sb.toString());
        if (this.f16486m == null || this.f16487n) {
            return;
        }
        mh.a("BeiZis", "callback onShakeHappened()");
        this.f16487n = true;
        this.f16486m.a();
    }

    public void b(int i2) {
        this.f16497x = i2;
        if (i2 > 0) {
            e();
        } else {
            this.f16466I = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View a(int i2, int i3, AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean, String str) throws NumberFormatException {
        int i4;
        int i5;
        int i6;
        TextView textView;
        mh.a("BeiZis", "enter getShakeView");
        if (this.f16474a == null || percentPositionBean == null) {
            return null;
        }
        String centerX = percentPositionBean.getCenterX();
        String centerY = percentPositionBean.getCenterY();
        String width = percentPositionBean.getWidth();
        String height = percentPositionBean.getHeight();
        if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
            centerX = "0";
        }
        if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
            centerY = "0";
        }
        if (TextUtils.isEmpty(width) || "0".equals(width)) {
            width = "120";
        }
        if (TextUtils.isEmpty(height) || "0".equals(height)) {
            height = "36";
        }
        float fI = vo.i(this.f16474a);
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
        int iA = vo.a(this.f16474a, i7);
        int iA2 = vo.a(this.f16474a, i6);
        int iA3 = vo.a(this.f16474a, i4);
        int iA4 = vo.a(this.f16474a, i5);
        mh.a("BeiZis", "widthInt = " + iA + ",heightInt = " + iA2);
        if (iA == 0) {
            iA = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        }
        if (iA2 == 0) {
            iA2 = 108;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(iA, iA2);
        mh.a("BeiZis", "centerYInt = " + iA4 + ",centerXInt = " + iA3 + ",adWidthDp = " + i2 + ",adHeightDp = " + i3);
        float f2 = (float) i3;
        int iA5 = (vo.a(this.f16474a, f2) - iA4) - iA2;
        if (iA5 < 0) {
            iA5 = vo.a(this.f16474a, f2) / 4;
        }
        marginLayoutParams.topMargin = iA5;
        marginLayoutParams.leftMargin = iA3;
        if (TextUtils.isEmpty(str)) {
            ImageView imageView = new ImageView(this.f16474a);
            if (!this.f16494u) {
                imageView.setImageResource(R.drawable.beizi_icon_shake_native);
                textView = imageView;
            } else {
                imageView.setImageResource(R.drawable.beizi_icon_shake_native_download);
                textView = imageView;
            }
        } else {
            TextView textView2 = new TextView(this.f16474a);
            textView2.setText(str);
            textView2.setTextColor(Color.parseColor("#FFFFFFFF"));
            textView2.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
            textView = textView2;
        }
        textView.setLayoutParams(marginLayoutParams);
        mh.a("BeiZis", "topMargin = " + marginLayoutParams.topMargin + ",leftMargin = " + marginLayoutParams.leftMargin + ",widthInt = " + iA + ",heightInt = " + iA2);
        f();
        return textView;
    }

    public void a(Boolean bool) {
        this.f16494u = bool.booleanValue();
    }

    public void a(boolean z2) {
        this.f16487n = !z2;
    }

    public void a(double d2) {
        if (this.f16497x > 0) {
            return;
        }
        this.f16469L = d2;
        e();
        this.f16466I = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (!this.f16487n && System.currentTimeMillis() - this.f16468K >= 50) {
                    Sensor sensor = sensorEvent.sensor;
                    float[] fArr = sensorEvent.values;
                    int type = sensor.getType();
                    if (fArr != null && type == 4) {
                        this.f16468K = System.currentTimeMillis();
                        float f2 = this.f16499z;
                        if (f2 != 0.0f) {
                            float f3 = fArr[0];
                            float f4 = fArr[1];
                            float f5 = fArr[2];
                            float f6 = (sensorEvent.timestamp - f2) * this.f16458A;
                            this.f16459B[0] = (float) (r0[0] + Math.toDegrees(f3 * f6));
                            this.f16459B[1] = (float) (r0[1] + Math.toDegrees(f4 * f6));
                            this.f16459B[2] = (float) (r0[2] + Math.toDegrees(f5 * f6));
                            float[] fArr2 = this.f16459B;
                            float f7 = fArr2[0];
                            if (f7 > 0.0f) {
                                if (f7 > this.f16463F) {
                                    this.f16463F = f7;
                                }
                            } else if (f7 < this.f16460C) {
                                this.f16460C = f7;
                            }
                            float f8 = fArr2[1];
                            if (f8 > 0.0f) {
                                if (f8 > this.f16464G) {
                                    this.f16464G = f8;
                                }
                            } else if (f8 < this.f16461D) {
                                this.f16461D = f8;
                            }
                            float f9 = fArr2[2];
                            if (f9 > 0.0f) {
                                if (f9 > this.f16465H) {
                                    this.f16465H = f9;
                                }
                            } else if (f9 < this.f16462E) {
                                this.f16462E = f9;
                            }
                            double dMax = Math.max(Math.abs(f7), Math.max(Math.abs(this.f16459B[1]), Math.abs(this.f16459B[2])));
                            if (this.f16472O < dMax) {
                                this.f16472O = dMax;
                            }
                            if (this.f16497x > 0) {
                                a();
                                if (this.f16467J && this.f16466I) {
                                    b();
                                }
                            }
                        }
                        this.f16499z = sensorEvent.timestamp;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private double a(float f2, float f3, float f4) {
        return Math.sqrt(Math.pow(f2, 2.0d) + Math.pow(f3, 2.0d) + Math.pow(f4, 2.0d));
    }

    private void a() {
        if (this.f16473P == 0) {
            if ((Math.abs(this.f16460C) <= this.f16497x || Math.abs(this.f16463F) <= this.f16497x) && ((Math.abs(this.f16461D) <= this.f16497x || Math.abs(this.f16464G) <= this.f16497x) && (Math.abs(this.f16462E) <= this.f16497x || Math.abs(this.f16465H) <= this.f16497x))) {
                return;
            }
            mh.a("ShakeUtil", "rotate  xMin: " + String.format("%.4f", Float.valueOf(this.f16460C)) + ",xMax: " + String.format("%.4f", Float.valueOf(this.f16463F)) + ",yMin: " + String.format("%.4f", Float.valueOf(this.f16461D)) + ",yMax: " + String.format("%.4f", Float.valueOf(this.f16464G)) + ",zMin: " + String.format("%.4f", Float.valueOf(this.f16462E)) + ",zMax: " + String.format("%.4f", Float.valueOf(this.f16465H)));
            this.f16466I = true;
            return;
        }
        if (Math.abs(this.f16460C) > this.f16497x || Math.abs(this.f16463F) > this.f16497x || Math.abs(this.f16461D) > this.f16497x || Math.abs(this.f16464G) > this.f16497x || Math.abs(this.f16462E) > this.f16497x || Math.abs(this.f16465H) > this.f16497x) {
            mh.a("ShakeUtil", "rotate  xMin: " + String.format("%.4f", Float.valueOf(this.f16460C)) + ",xMax: " + String.format("%.4f", Float.valueOf(this.f16463F)) + ",yMin: " + String.format("%.4f", Float.valueOf(this.f16461D)) + ",yMax: " + String.format("%.4f", Float.valueOf(this.f16464G)) + ",zMin: " + String.format("%.4f", Float.valueOf(this.f16462E)) + ",zMax: " + String.format("%.4f", Float.valueOf(this.f16465H)));
            this.f16466I = true;
        }
    }

    public void a(double d2, double d3) {
        this.f16475b = d2;
        this.f16476c = d3;
        this.f16482i = -100.0f;
        this.f16483j = -100.0f;
        this.f16484k = -100.0f;
        this.f16485l = 0;
        this.f16488o = 200;
        this.f16480g = 0;
        this.f16481h = 0;
        this.f16460C = 0.0f;
        this.f16461D = 0.0f;
        this.f16462E = 0.0f;
        this.f16463F = 0.0f;
        this.f16464G = 0.0f;
        this.f16465H = 0.0f;
        this.f16499z = 0.0f;
        this.f16467J = false;
        if (this.f16497x <= 0 || !this.f16470M) {
            return;
        }
        this.f16466I = false;
    }
}
