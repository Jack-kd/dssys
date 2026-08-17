package com.beizi.fusion;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.rf;
import com.sigmob.sdk.base.common.C1244a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class vn {

    /* renamed from: A, reason: collision with root package name */
    private long f16703A;

    /* renamed from: D, reason: collision with root package name */
    private String f16706D;

    /* renamed from: G, reason: collision with root package name */
    private AnimatorSet f16709G;

    /* renamed from: H, reason: collision with root package name */
    private String f16710H;

    /* renamed from: I, reason: collision with root package name */
    private boolean f16711I;

    /* renamed from: K, reason: collision with root package name */
    private int f16713K;

    /* renamed from: L, reason: collision with root package name */
    private Sensor f16714L;

    /* renamed from: M, reason: collision with root package name */
    private float f16715M;

    /* renamed from: P, reason: collision with root package name */
    private float f16718P;

    /* renamed from: Q, reason: collision with root package name */
    private float f16719Q;

    /* renamed from: R, reason: collision with root package name */
    private float f16720R;

    /* renamed from: S, reason: collision with root package name */
    private float f16721S;

    /* renamed from: T, reason: collision with root package name */
    private float f16722T;

    /* renamed from: U, reason: collision with root package name */
    private float f16723U;

    /* renamed from: V, reason: collision with root package name */
    private boolean f16724V;

    /* renamed from: W, reason: collision with root package name */
    private boolean f16725W;

    /* renamed from: X, reason: collision with root package name */
    private long f16726X;

    /* renamed from: Y, reason: collision with root package name */
    private boolean f16727Y;

    /* renamed from: Z, reason: collision with root package name */
    private double f16728Z;

    /* renamed from: a, reason: collision with root package name */
    private Context f16729a;

    /* renamed from: a0, reason: collision with root package name */
    private double f16730a0;

    /* renamed from: b, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f16731b;

    /* renamed from: b0, reason: collision with root package name */
    private double f16732b0;

    /* renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f16733c;

    /* renamed from: c0, reason: collision with root package name */
    private int f16734c0;

    /* renamed from: d, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.AliaseShakeViewBean f16735d;

    /* renamed from: e, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.CoolShakeViewBean f16736e;

    /* renamed from: f, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.PercentPositionBean f16737f;

    /* renamed from: l, reason: collision with root package name */
    private SensorManager f16743l;

    /* renamed from: m, reason: collision with root package name */
    private Sensor f16744m;

    /* renamed from: o, reason: collision with root package name */
    private float f16746o;

    /* renamed from: p, reason: collision with root package name */
    private float f16747p;

    /* renamed from: q, reason: collision with root package name */
    private float f16748q;

    /* renamed from: s, reason: collision with root package name */
    private double f16750s;

    /* renamed from: t, reason: collision with root package name */
    private double f16751t;

    /* renamed from: u, reason: collision with root package name */
    private double f16752u;

    /* renamed from: v, reason: collision with root package name */
    private int f16753v;

    /* renamed from: w, reason: collision with root package name */
    private int f16754w;

    /* renamed from: g, reason: collision with root package name */
    private double f16738g = 9.8d;

    /* renamed from: h, reason: collision with root package name */
    private int f16739h = -100;

    /* renamed from: i, reason: collision with root package name */
    private int f16740i = 0;

    /* renamed from: j, reason: collision with root package name */
    private int f16741j = 1;

    /* renamed from: k, reason: collision with root package name */
    private int f16742k = 2;

    /* renamed from: n, reason: collision with root package name */
    private f f16745n = null;

    /* renamed from: r, reason: collision with root package name */
    private int f16749r = 0;

    /* renamed from: x, reason: collision with root package name */
    private int f16755x = 0;

    /* renamed from: y, reason: collision with root package name */
    private int f16756y = 0;

    /* renamed from: z, reason: collision with root package name */
    private boolean f16757z = true;

    /* renamed from: B, reason: collision with root package name */
    private boolean f16704B = false;

    /* renamed from: C, reason: collision with root package name */
    private boolean f16705C = false;

    /* renamed from: E, reason: collision with root package name */
    private int f16707E = 80;

    /* renamed from: F, reason: collision with root package name */
    private float f16708F = 30.0f;

    /* renamed from: J, reason: collision with root package name */
    private final SensorEventListener f16712J = new e();

    /* renamed from: N, reason: collision with root package name */
    private float f16716N = 1.0E-9f;

    /* renamed from: O, reason: collision with root package name */
    private float[] f16717O = new float[3];

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vn.this.u();
        }
    }

    public class b implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f16759a;

        public b(ImageView imageView) {
            this.f16759a = imageView;
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                ImageView imageView = this.f16759a;
                if (imageView == null || bitmap == null) {
                    return;
                }
                imageView.setImageBitmap(bitmap);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f16761a;

        public c(ImageView imageView) {
            this.f16761a = imageView;
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                ImageView imageView = this.f16761a;
                if (imageView == null || bitmap == null) {
                    return;
                }
                imageView.setImageBitmap(bitmap);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements Animator.AnimatorListener {
        public d() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            try {
                if (vn.this.f16709G != null) {
                    vn.this.f16709G.start();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public class e implements SensorEventListener {
        public e() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            Sensor sensor;
            if (sensorEvent == null || (sensor = sensorEvent.sensor) == null) {
                return;
            }
            int type = sensor.getType();
            if (type == 1) {
                vn.this.b(sensorEvent);
            } else if (type == 4) {
                vn.this.a(sensorEvent);
            }
        }
    }

    public interface f {
        void a();
    }

    public vn(Context context, AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean, String str, String str2) {
        float f2 = -100;
        this.f16746o = f2;
        this.f16747p = f2;
        this.f16748q = f2;
        this.f16706D = null;
        this.f16711I = false;
        try {
            this.f16729a = context;
            this.f16731b = shakeViewBean;
            if (!TextUtils.isEmpty(str)) {
                this.f16706D = "beizi_cool_" + str;
            }
            AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(shakeViewBean.getOrderData(), str2);
            if (orderDataShakeViewBeanA != null && orderDataShakeViewBeanA.getShakeView() != null) {
                this.f16733c = orderDataShakeViewBeanA.getShakeView();
            }
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f16731b;
            if (shakeViewBean2 != null) {
                this.f16736e = shakeViewBean2.getCoolShakeView();
                this.f16713K = shakeViewBean.getRegulatoryAngle();
                this.f16734c0 = this.f16731b.getIsUnidirection();
            }
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean3 = this.f16733c;
            if (shakeViewBean3 != null) {
                this.f16735d = shakeViewBean3.getAliaseShakeView();
                this.f16737f = this.f16733c.getPosition();
                List<String> imageURL = this.f16733c.getImageURL();
                if (imageURL != null && imageURL.size() > 0) {
                    this.f16710H = imageURL.get(0);
                }
                this.f16713K = this.f16733c.getRegulatoryAngle();
                this.f16734c0 = this.f16733c.getIsUnidirection();
            } else {
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean4 = this.f16731b;
                if (shakeViewBean4 != null) {
                    this.f16735d = shakeViewBean4.getAliaseShakeView();
                    this.f16737f = this.f16731b.getPosition();
                    List<String> imageURL2 = this.f16731b.getImageURL();
                    if (imageURL2 != null && imageURL2.size() > 0) {
                        this.f16710H = imageURL2.get(0);
                    }
                }
            }
            if (!f()) {
                this.f16711I = false;
                return;
            }
            this.f16711I = true;
            r();
            o();
            q();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean f() {
        double shakeStartAmplitude;
        double shakeEndAmplitude;
        int shakeCount;
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f16733c;
        if (shakeViewBean != null) {
            shakeStartAmplitude = shakeViewBean.getShakeStartAmplitude();
            shakeEndAmplitude = this.f16733c.getShakeEndAmplitude();
            shakeCount = this.f16733c.getShakeCount();
        } else {
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f16731b;
            if (shakeViewBean2 != null) {
                shakeStartAmplitude = shakeViewBean2.getShakeStartAmplitude();
                shakeEndAmplitude = this.f16731b.getShakeEndAmplitude();
                shakeCount = this.f16731b.getShakeCount();
            } else {
                shakeStartAmplitude = 0.0d;
                shakeEndAmplitude = 0.0d;
                shakeCount = 0;
            }
        }
        return shakeStartAmplitude > 0.0d && shakeEndAmplitude > 0.0d && shakeCount > 0;
    }

    private boolean g() {
        try {
            AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeViewBean = this.f16735d;
            if (aliaseShakeViewBean != null && aliaseShakeViewBean.getPassivationTime() > 0) {
                if (this.f16735d.getShakeCount() > 0) {
                    return true;
                }
                if (this.f16735d.getRotatCount() > 0) {
                    return true;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    private boolean h() {
        AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean;
        try {
            coolShakeViewBean = this.f16736e;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (coolShakeViewBean == null) {
            return false;
        }
        if (coolShakeViewBean.getShakeCount() <= 0) {
            return this.f16736e.getRotatCount() > 0;
        }
        return true;
    }

    private boolean i() {
        try {
            if (this.f16736e == null || TextUtils.isEmpty(this.f16706D)) {
                return false;
            }
            long coolTime = this.f16736e.getCoolTime();
            long jLongValue = ((Long) sm.b(this.f16729a, this.f16706D, 0L)).longValue();
            if (jLongValue != 0) {
                if (System.currentTimeMillis() - jLongValue < coolTime) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean j() {
        try {
            AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.f16736e;
            if (coolShakeViewBean == null) {
                return false;
            }
            return System.currentTimeMillis() - wo.e(this.f16729a) < coolShakeViewBean.getUserProtectTime();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void n() {
        try {
            SensorManager sensorManager = this.f16743l;
            if (sensorManager != null) {
                Sensor defaultSensor = sensorManager.getDefaultSensor(4);
                this.f16714L = defaultSensor;
                if (defaultSensor != null) {
                    this.f16743l.registerListener(this.f16712J, defaultSensor, 1);
                } else {
                    this.f16724V = true;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void o() {
        try {
            nh.a("ShakeUtil", "registerShakeListener");
            this.f16705C = true;
            p();
            if (this.f16743l == null) {
                this.f16743l = (SensorManager) this.f16729a.getApplicationContext().getSystemService("sensor");
            }
            if (this.f16744m == null) {
                this.f16744m = this.f16743l.getDefaultSensor(1);
            }
            this.f16743l.registerListener(this.f16712J, this.f16744m, 2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void p() {
        this.f16755x = 0;
        this.f16756y = 0;
        float f2 = this.f16739h;
        this.f16746o = f2;
        this.f16747p = f2;
        this.f16748q = f2;
        this.f16749r = this.f16740i;
        this.f16718P = 0.0f;
        this.f16719Q = 0.0f;
        this.f16720R = 0.0f;
        this.f16721S = 0.0f;
        this.f16722T = 0.0f;
        this.f16723U = 0.0f;
        this.f16715M = 0.0f;
        this.f16725W = false;
        if (this.f16713K > 0) {
            this.f16724V = false;
        } else if (this.f16728Z > 0.0d) {
            this.f16724V = true;
        }
        this.f16727Y = false;
    }

    private void r() {
        try {
            p();
            if (!j() && !i()) {
                this.f16704B = false;
            } else if (h()) {
                this.f16704B = true;
            } else {
                this.f16704B = false;
            }
            if (this.f16704B) {
                t();
            } else if (g()) {
                s();
            } else {
                u();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void s() {
        try {
            if (this.f16735d == null) {
                return;
            }
            nh.a("ShakeUtil", "setShakeSensitivityAliase");
            c(this.f16735d.getShakeCount());
            d(this.f16735d.getShakeStartAmplitude());
            c(this.f16735d.getShakeEndAmplitude());
            b(this.f16735d.getRotatAmplitude());
            b(this.f16735d.getRotatCount());
            new Handler().postDelayed(new a(), a(this.f16735d.getPassivationTime()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void t() {
        try {
            if (this.f16736e == null) {
                return;
            }
            nh.a("ShakeUtil", "setShakeSensitivityCool");
            c(this.f16736e.getShakeCount());
            d(this.f16736e.getShakeStartAmplitude());
            c(this.f16736e.getShakeEndAmplitude());
            b(this.f16736e.getRotatAmplitude());
            b(this.f16736e.getRotatCount());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        try {
            nh.a("ShakeUtil", "setShakeSensitivityNormal");
            p();
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f16733c;
            if (shakeViewBean != null) {
                c(shakeViewBean.getShakeCount());
                d(this.f16733c.getShakeStartAmplitude());
                c(this.f16733c.getShakeEndAmplitude());
                b(this.f16733c.getRotatAmplitude());
                b(this.f16733c.getRotatCount());
                return;
            }
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f16731b;
            if (shakeViewBean2 != null) {
                c(shakeViewBean2.getShakeCount());
                d(this.f16731b.getShakeStartAmplitude());
                c(this.f16731b.getShakeEndAmplitude());
                b(this.f16731b.getRotatAmplitude());
                b(this.f16731b.getRotatCount());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void v() {
        try {
            nh.a("ShakeUtil", "unRegisterShakeListener");
            this.f16705C = false;
            SensorManager sensorManager = this.f16743l;
            if (sensorManager != null) {
                sensorManager.unregisterListener(this.f16712J);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public String c() {
        return this.f16710H;
    }

    public void d(ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (this.f16729a != null && this.f16711I) {
                    ImageView imageView = new ImageView(this.f16729a);
                    imageView.setVisibility(0);
                    imageView.setImageResource(R.mipmap.beizi_interaction_icon_shake);
                    if (!TextUtils.isEmpty(this.f16710H)) {
                        rf.a(this.f16729a).b(this.f16710H, new b(imageView));
                    }
                    int[] iArrC = c(viewGroup);
                    if (viewGroup instanceof RelativeLayout) {
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                        int i2 = iArrC[0];
                        if (i2 > 0) {
                            layoutParams.width = i2;
                        }
                        int i3 = iArrC[1];
                        if (i3 > 0) {
                            layoutParams.height = i3;
                        }
                        layoutParams.leftMargin = iArrC[2];
                        layoutParams.topMargin = iArrC[3];
                        layoutParams.addRule(17);
                        viewGroup.addView(imageView, layoutParams);
                    } else if (viewGroup instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2, 17);
                        int i4 = iArrC[0];
                        if (i4 > 0) {
                            layoutParams2.width = i4;
                        }
                        int i5 = iArrC[1];
                        if (i5 > 0) {
                            layoutParams2.height = i5;
                        }
                        layoutParams2.leftMargin = iArrC[2];
                        layoutParams2.topMargin = iArrC[3];
                        viewGroup.addView(imageView, layoutParams2);
                    } else if (viewGroup instanceof LinearLayout) {
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2, 17.0f);
                        int i6 = iArrC[0];
                        if (i6 > 0) {
                            layoutParams3.width = i6;
                        }
                        int i7 = iArrC[1];
                        if (i7 > 0) {
                            layoutParams3.height = i7;
                        }
                        layoutParams3.leftMargin = iArrC[2];
                        layoutParams3.topMargin = iArrC[3];
                        viewGroup.addView(imageView, layoutParams3);
                    } else {
                        ViewGroup.LayoutParams layoutParams4 = new ViewGroup.LayoutParams(-1, -2);
                        int i8 = iArrC[0];
                        if (i8 > 0) {
                            layoutParams4.width = i8;
                        }
                        int i9 = iArrC[1];
                        if (i9 > 0) {
                            layoutParams4.height = i9;
                        }
                        viewGroup.addView(imageView, layoutParams4);
                    }
                    a(imageView);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public double e() {
        return this.f16732b0;
    }

    public void k() {
        try {
            v();
            this.f16731b = null;
            this.f16733c = null;
            this.f16736e = null;
            this.f16735d = null;
            this.f16737f = null;
            this.f16729a = null;
            this.f16743l = null;
            this.f16744m = null;
            this.f16745n = null;
            AnimatorSet animatorSet = this.f16709G;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
            }
            this.f16709G = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void l() {
        try {
            this.f16757z = false;
            v();
            p();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void m() {
        try {
            if (!this.f16705C && this.f16711I) {
                this.f16757z = true;
                r();
                o();
                q();
                a(this.f16728Z);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void q() {
        if (this.f16713K > 0) {
            n();
        } else {
            this.f16724V = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0177 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:4:0x0010, B:7:0x001c, B:10:0x003e, B:16:0x0049, B:18:0x004f, B:21:0x0056, B:23:0x0073, B:24:0x0079, B:27:0x00b7, B:30:0x00be, B:32:0x00c4, B:35:0x00cb, B:37:0x00d1, B:42:0x00ed, B:44:0x00f3, B:49:0x010f, B:51:0x0117, B:56:0x0133, B:58:0x0139, B:63:0x0155, B:65:0x0177, B:67:0x017b, B:68:0x017d, B:60:0x014a, B:62:0x0150, B:52:0x0127, B:54:0x012d, B:45:0x0103, B:47:0x0109, B:38:0x00e1, B:40:0x00e7, B:70:0x01be), top: B:74:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017b A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:4:0x0010, B:7:0x001c, B:10:0x003e, B:16:0x0049, B:18:0x004f, B:21:0x0056, B:23:0x0073, B:24:0x0079, B:27:0x00b7, B:30:0x00be, B:32:0x00c4, B:35:0x00cb, B:37:0x00d1, B:42:0x00ed, B:44:0x00f3, B:49:0x010f, B:51:0x0117, B:56:0x0133, B:58:0x0139, B:63:0x0155, B:65:0x0177, B:67:0x017b, B:68:0x017d, B:60:0x014a, B:62:0x0150, B:52:0x0127, B:54:0x012d, B:45:0x0103, B:47:0x0109, B:38:0x00e1, B:40:0x00e7, B:70:0x01be), top: B:74:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] c(android.view.ViewGroup r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.vn.c(android.view.ViewGroup):int[]");
    }

    public void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        this.f16731b = shakeViewBean;
    }

    public void b(double d2) {
        this.f16752u = d2;
    }

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean a(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBean = (AdSpacesBean.BuyerBean.OrderDataShakeViewBean) it.next();
                List<String> orderList = orderDataShakeViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataShakeViewBean;
                }
            }
        }
        return null;
    }

    public void b(int i2) {
        this.f16754w = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(SensorEvent sensorEvent) {
        float[] fArr;
        try {
            if (System.currentTimeMillis() - this.f16703A >= 100 && sensorEvent != null && this.f16757z && (fArr = sensorEvent.values) != null && fArr.length >= 3) {
                this.f16703A = System.currentTimeMillis();
                float f2 = fArr[0];
                float f3 = fArr[1];
                float f4 = fArr[2];
                double dA = a(f2, f3, f4);
                if (dA > this.f16750s) {
                    double dB = b(f2, f3, f4);
                    if (this.f16730a0 < dB) {
                        this.f16730a0 = dB;
                    }
                    this.f16749r = this.f16741j;
                }
                if (dA <= this.f16751t && this.f16749r == this.f16741j) {
                    this.f16749r = this.f16742k;
                    this.f16755x++;
                }
                int i2 = this.f16753v;
                if (i2 <= 0 || this.f16755x < i2) {
                    return;
                }
                this.f16725W = true;
                nh.d("ShakeUtil", " current: " + String.format("%.4f", Double.valueOf(dA)) + ", execute: " + this.f16755x + ", count: " + this.f16753v + "_" + this.f16754w + ", shake: " + this.f16750s + "_" + this.f16751t);
                if (this.f16725W && this.f16724V) {
                    b();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public View a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (this.f16729a != null && this.f16711I) {
                    ImageView imageView = new ImageView(this.f16729a);
                    imageView.setVisibility(0);
                    imageView.setImageResource(R.drawable.beizi_icon_shake_native);
                    if (!TextUtils.isEmpty(this.f16710H)) {
                        rf.a(this.f16729a).b(this.f16710H, new c(imageView));
                    }
                    int[] iArrB = b(viewGroup);
                    if (viewGroup instanceof RelativeLayout) {
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                        int i2 = iArrB[0];
                        if (i2 > 0) {
                            layoutParams.width = i2;
                        }
                        int i3 = iArrB[1];
                        if (i3 > 0) {
                            layoutParams.height = i3;
                        }
                        layoutParams.leftMargin = iArrB[2];
                        layoutParams.topMargin = iArrB[3];
                        layoutParams.addRule(83);
                        viewGroup.addView(imageView, layoutParams);
                        return imageView;
                    }
                    if (viewGroup instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2, 83);
                        int i4 = iArrB[0];
                        if (i4 > 0) {
                            layoutParams2.width = i4;
                        }
                        int i5 = iArrB[1];
                        if (i5 > 0) {
                            layoutParams2.height = i5;
                        }
                        viewGroup.addView(imageView, layoutParams2);
                        return imageView;
                    }
                    if (viewGroup instanceof LinearLayout) {
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2, 83.0f);
                        int i6 = iArrB[0];
                        if (i6 > 0) {
                            layoutParams3.width = i6;
                        }
                        int i7 = iArrB[1];
                        if (i7 > 0) {
                            layoutParams3.height = i7;
                        }
                        layoutParams3.leftMargin = iArrB[2];
                        layoutParams3.topMargin = iArrB[3];
                        viewGroup.addView(imageView, layoutParams3);
                        return imageView;
                    }
                    ViewGroup.LayoutParams layoutParams4 = new ViewGroup.LayoutParams(-1, -2);
                    int i8 = iArrB[0];
                    if (i8 > 0) {
                        layoutParams4.width = i8;
                    }
                    int i9 = iArrB[1];
                    if (i9 > 0) {
                        layoutParams4.height = i9;
                    }
                    viewGroup.addView(imageView, layoutParams4);
                    return imageView;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    private synchronized void b() {
        try {
            if (this.f16745n != null && this.f16757z && !this.f16727Y) {
                this.f16727Y = true;
                nh.a("ShakeUtil", "callBackResult");
                l();
                if (!this.f16704B && !TextUtils.isEmpty(this.f16706D)) {
                    sm.d(this.f16729a, this.f16706D, Long.valueOf(System.currentTimeMillis()));
                }
                this.f16745n.a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x0191 A[Catch: Exception -> 0x0041, TryCatch #0 {Exception -> 0x0041, blocks: (B:4:0x0010, B:7:0x001c, B:10:0x003a, B:16:0x0045, B:18:0x004b, B:21:0x0052, B:23:0x0058, B:26:0x0060, B:28:0x0066, B:31:0x006e, B:33:0x008d, B:34:0x0093, B:37:0x00d1, B:40:0x00d8, B:42:0x00de, B:45:0x00e5, B:47:0x00eb, B:52:0x0107, B:54:0x010d, B:59:0x0129, B:61:0x0131, B:66:0x014d, B:68:0x0153, B:73:0x016f, B:75:0x0191, B:77:0x0195, B:78:0x0197, B:70:0x0164, B:72:0x016a, B:62:0x0141, B:64:0x0147, B:55:0x011d, B:57:0x0123, B:48:0x00fb, B:50:0x0101, B:80:0x01d8), top: B:84:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0195 A[Catch: Exception -> 0x0041, TryCatch #0 {Exception -> 0x0041, blocks: (B:4:0x0010, B:7:0x001c, B:10:0x003a, B:16:0x0045, B:18:0x004b, B:21:0x0052, B:23:0x0058, B:26:0x0060, B:28:0x0066, B:31:0x006e, B:33:0x008d, B:34:0x0093, B:37:0x00d1, B:40:0x00d8, B:42:0x00de, B:45:0x00e5, B:47:0x00eb, B:52:0x0107, B:54:0x010d, B:59:0x0129, B:61:0x0131, B:66:0x014d, B:68:0x0153, B:73:0x016f, B:75:0x0191, B:77:0x0195, B:78:0x0197, B:70:0x0164, B:72:0x016a, B:62:0x0141, B:64:0x0147, B:55:0x011d, B:57:0x0123, B:48:0x00fb, B:50:0x0101, B:80:0x01d8), top: B:84:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] b(android.view.ViewGroup r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.vn.b(android.view.ViewGroup):int[]");
    }

    public void d(double d2) {
        this.f16750s = d2;
    }

    public double d() {
        try {
            double d2 = this.f16730a0;
            if (d2 > 0.0d) {
                this.f16730a0 = d2 / this.f16738g;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return this.f16730a0;
    }

    public void a(ImageView imageView) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
        } catch (Exception e2) {
            e = e2;
        }
        try {
            a(imageView, arrayList, C1244a.f35650B, 0.0f, this.f16708F);
            a(imageView, arrayList, C1244a.f35650B, this.f16708F, 0.0f);
            a(imageView, arrayList, C1244a.f35650B, 0.0f, -this.f16708F);
            a(imageView, arrayList, C1244a.f35650B, -this.f16708F, 0.0f);
            if (arrayList.size() > 0) {
                AnimatorSet animatorSet = new AnimatorSet();
                this.f16709G = animatorSet;
                animatorSet.addListener(new d());
                this.f16709G.playSequentially(arrayList);
                this.f16709G.start();
            }
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
        }
    }

    public void c(double d2) {
        this.f16751t = d2;
    }

    public void c(int i2) {
        this.f16753v = i2;
    }

    private void a(ImageView imageView, List list, String str, float f2, float f3) {
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, str, f2, f3);
            objectAnimatorOfFloat.setDuration(this.f16707E);
            list.add(objectAnimatorOfFloat);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public int a(int i2) {
        return (int) ((Math.random() * i2) + 1.0d);
    }

    public void a(f fVar) {
        this.f16745n = fVar;
    }

    private double a(float f2, float f3, float f4) {
        try {
            return Math.sqrt(Math.pow(f2 / this.f16738g, 2.0d) + Math.pow(f3 / this.f16738g, 2.0d) + Math.pow(f4 / this.f16738g, 2.0d));
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0.0d;
        }
    }

    public void a(double d2) {
        if (this.f16713K > 0) {
            return;
        }
        this.f16728Z = d2;
        n();
        this.f16724V = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (!this.f16727Y && System.currentTimeMillis() - this.f16726X >= 50) {
                    Sensor sensor = sensorEvent.sensor;
                    float[] fArr = sensorEvent.values;
                    int type = sensor.getType();
                    if (fArr != null && type == 4) {
                        this.f16726X = System.currentTimeMillis();
                        float f2 = this.f16715M;
                        if (f2 != 0.0f) {
                            float f3 = fArr[0];
                            float f4 = fArr[1];
                            float f5 = fArr[2];
                            float f6 = (sensorEvent.timestamp - f2) * this.f16716N;
                            this.f16717O[0] = (float) (r0[0] + Math.toDegrees(f3 * f6));
                            this.f16717O[1] = (float) (r0[1] + Math.toDegrees(f4 * f6));
                            this.f16717O[2] = (float) (r0[2] + Math.toDegrees(f5 * f6));
                            float[] fArr2 = this.f16717O;
                            float f7 = fArr2[0];
                            if (f7 > 0.0f) {
                                if (f7 > this.f16721S) {
                                    this.f16721S = f7;
                                }
                            } else if (f7 < this.f16718P) {
                                this.f16718P = f7;
                            }
                            float f8 = fArr2[1];
                            if (f8 > 0.0f) {
                                if (f8 > this.f16722T) {
                                    this.f16722T = f8;
                                }
                            } else if (f8 < this.f16719Q) {
                                this.f16719Q = f8;
                            }
                            float f9 = fArr2[2];
                            if (f9 > 0.0f) {
                                if (f9 > this.f16723U) {
                                    this.f16723U = f9;
                                }
                            } else if (f9 < this.f16720R) {
                                this.f16720R = f9;
                            }
                            double dMax = Math.max(Math.abs(f7), Math.max(Math.abs(this.f16717O[1]), Math.abs(this.f16717O[2])));
                            if (this.f16732b0 < dMax) {
                                this.f16732b0 = dMax;
                            }
                            if (this.f16713K > 0) {
                                a();
                                if (this.f16725W && this.f16724V) {
                                    b();
                                }
                            }
                        }
                        this.f16715M = sensorEvent.timestamp;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private double b(float f2, float f3, float f4) {
        return Math.sqrt(Math.pow(f2, 2.0d) + Math.pow(f3, 2.0d) + Math.pow(f4, 2.0d));
    }

    private void a() {
        if (this.f16734c0 == 0) {
            if ((Math.abs(this.f16718P) <= this.f16713K || Math.abs(this.f16721S) <= this.f16713K) && ((Math.abs(this.f16719Q) <= this.f16713K || Math.abs(this.f16722T) <= this.f16713K) && (Math.abs(this.f16720R) <= this.f16713K || Math.abs(this.f16723U) <= this.f16713K))) {
                return;
            }
            nh.a("ShakeUtil", "rotate  xMin: " + String.format("%.4f", Float.valueOf(this.f16718P)) + ",xMax: " + String.format("%.4f", Float.valueOf(this.f16721S)) + ",yMin: " + String.format("%.4f", Float.valueOf(this.f16719Q)) + ",yMax: " + String.format("%.4f", Float.valueOf(this.f16722T)) + ",zMin: " + String.format("%.4f", Float.valueOf(this.f16720R)) + ",zMax: " + String.format("%.4f", Float.valueOf(this.f16723U)));
            this.f16724V = true;
            return;
        }
        if (Math.abs(this.f16718P) > this.f16713K || Math.abs(this.f16721S) > this.f16713K || Math.abs(this.f16719Q) > this.f16713K || Math.abs(this.f16722T) > this.f16713K || Math.abs(this.f16720R) > this.f16713K || Math.abs(this.f16723U) > this.f16713K) {
            nh.a("ShakeUtil", "rotate  xMin: " + String.format("%.4f", Float.valueOf(this.f16718P)) + ",xMax: " + String.format("%.4f", Float.valueOf(this.f16721S)) + ",yMin: " + String.format("%.4f", Float.valueOf(this.f16719Q)) + ",yMax: " + String.format("%.4f", Float.valueOf(this.f16722T)) + ",zMin: " + String.format("%.4f", Float.valueOf(this.f16720R)) + ",zMax: " + String.format("%.4f", Float.valueOf(this.f16723U)));
            this.f16724V = true;
        }
    }

    public void a(double d2, double d3) {
        if (this.f16736e != null) {
            return;
        }
        this.f16750s = d2;
        this.f16751t = d3;
        this.f16755x = 0;
        this.f16756y = 0;
        float f2 = this.f16739h;
        this.f16746o = f2;
        this.f16747p = f2;
        this.f16748q = f2;
        this.f16749r = this.f16740i;
        this.f16718P = 0.0f;
        this.f16719Q = 0.0f;
        this.f16720R = 0.0f;
        this.f16721S = 0.0f;
        this.f16722T = 0.0f;
        this.f16723U = 0.0f;
        this.f16715M = 0.0f;
    }
}
