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
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.rf;
import com.sigmob.sdk.base.common.C1244a;
import com.umeng.analytics.pro.bv;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class s7 {

    /* renamed from: R, reason: collision with root package name */
    private static final String f16170R = "s7";

    /* renamed from: S, reason: collision with root package name */
    private static SensorManager f16171S;

    /* renamed from: H, reason: collision with root package name */
    private AnimatorSet f16179H;

    /* renamed from: I, reason: collision with root package name */
    private boolean f16180I;

    /* renamed from: J, reason: collision with root package name */
    private String f16181J;

    /* renamed from: K, reason: collision with root package name */
    private float f16182K;

    /* renamed from: L, reason: collision with root package name */
    private float f16183L;

    /* renamed from: M, reason: collision with root package name */
    private float f16184M;

    /* renamed from: N, reason: collision with root package name */
    private float f16185N;

    /* renamed from: O, reason: collision with root package name */
    private float f16186O;

    /* renamed from: P, reason: collision with root package name */
    private float f16187P;

    /* renamed from: a, reason: collision with root package name */
    private Context f16189a;

    /* renamed from: b, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewBean f16190b;

    /* renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewBean f16191c;

    /* renamed from: d, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f16192d;

    /* renamed from: e, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f16193e;

    /* renamed from: f, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f16194f;

    /* renamed from: g, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleRenderBean f16195g;

    /* renamed from: j, reason: collision with root package name */
    private Sensor f16198j;

    /* renamed from: n, reason: collision with root package name */
    private String f16202n;

    /* renamed from: o, reason: collision with root package name */
    private String f16203o;

    /* renamed from: p, reason: collision with root package name */
    private String f16204p;

    /* renamed from: s, reason: collision with root package name */
    private float f16207s;

    /* renamed from: t, reason: collision with root package name */
    private e f16208t;

    /* renamed from: w, reason: collision with root package name */
    private String f16211w;

    /* renamed from: h, reason: collision with root package name */
    private float f16196h = 1.0E-9f;

    /* renamed from: i, reason: collision with root package name */
    private float[] f16197i = new float[3];

    /* renamed from: k, reason: collision with root package name */
    private double f16199k = 0.0d;

    /* renamed from: l, reason: collision with root package name */
    private double f16200l = 0.0d;

    /* renamed from: m, reason: collision with root package name */
    private double f16201m = 0.0d;

    /* renamed from: q, reason: collision with root package name */
    private boolean f16205q = false;

    /* renamed from: r, reason: collision with root package name */
    private int f16206r = 0;

    /* renamed from: u, reason: collision with root package name */
    private boolean f16209u = true;

    /* renamed from: v, reason: collision with root package name */
    private boolean f16210v = false;

    /* renamed from: x, reason: collision with root package name */
    String f16212x = "x";

    /* renamed from: y, reason: collision with root package name */
    String f16213y = "y";

    /* renamed from: z, reason: collision with root package name */
    String f16214z = bv.aD;

    /* renamed from: A, reason: collision with root package name */
    String f16172A = "0";

    /* renamed from: B, reason: collision with root package name */
    String f16173B = "1";

    /* renamed from: C, reason: collision with root package name */
    String f16174C = "2";

    /* renamed from: D, reason: collision with root package name */
    private int f16175D = 350;

    /* renamed from: E, reason: collision with root package name */
    private float f16176E = 60.0f;

    /* renamed from: F, reason: collision with root package name */
    private float f16177F = 60.0f;

    /* renamed from: G, reason: collision with root package name */
    private float f16178G = 30.0f;

    /* renamed from: Q, reason: collision with root package name */
    private SensorEventListener f16188Q = new d();

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ double f16215a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ double f16216b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ double f16217c;

        public a(double d2, double d3, double d4) {
            this.f16215a = d2;
            this.f16216b = d3;
            this.f16217c = d4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                s7.this.f16207s = 0.0f;
                s7.this.f16197i[0] = 0.0f;
                s7.this.f16197i[1] = 0.0f;
                s7.this.f16197i[2] = 0.0f;
                s7.this.f16199k = this.f16215a;
                s7.this.f16200l = this.f16216b;
                s7.this.f16201m = this.f16217c;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class b implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f16219a;

        public b(ImageView imageView) {
            this.f16219a = imageView;
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                ImageView imageView = this.f16219a;
                if (imageView == null || bitmap == null) {
                    return;
                }
                imageView.setImageBitmap(bitmap);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements Animator.AnimatorListener {
        public c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            try {
                if (s7.this.f16179H != null) {
                    s7.this.f16179H.start();
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

    public class d implements SensorEventListener {
        public d() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            try {
                s7.this.a(sensorEvent);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public interface e {
        void a();
    }

    public s7(Context context, AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean, String str, String str2) {
        this.f16211w = null;
        this.f16180I = false;
        this.f16189a = context;
        this.f16190b = eulerAngleViewBean;
        this.f16211w = "beizi_cool_" + str;
        AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBeanA = a(this.f16190b.getOrderData(), str2);
        if (orderDataEulerAngleViewBeanA != null && orderDataEulerAngleViewBeanA.getEulerAngleRule() != null) {
            this.f16191c = orderDataEulerAngleViewBeanA.getEulerAngleRule();
        }
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean2 = this.f16190b;
        if (eulerAngleViewBean2 != null) {
            this.f16194f = eulerAngleViewBean2.getCoolRule();
        }
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean3 = this.f16191c;
        if (eulerAngleViewBean3 != null) {
            this.f16193e = eulerAngleViewBean3.getNomalRule();
            this.f16195g = this.f16191c.getRender();
        } else {
            AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean4 = this.f16190b;
            if (eulerAngleViewBean4 != null) {
                this.f16193e = eulerAngleViewBean4.getNomalRule();
                this.f16195g = this.f16190b.getRender();
            }
        }
        if (!e()) {
            this.f16180I = false;
            return;
        }
        this.f16180I = true;
        d();
        m();
    }

    private void d() {
        try {
            if (!i() && !h()) {
                this.f16205q = false;
            } else if (f()) {
                this.f16205q = true;
            } else {
                this.f16205q = false;
            }
            if (this.f16205q) {
                this.f16192d = this.f16194f;
                b();
            } else {
                this.f16192d = this.f16193e;
                b();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean e() {
        List<AdSpacesBean.BuyerBean.EulerAngleRuleBean> rules;
        AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f16193e;
        if (eulerAngleViewRuleBean != null && (rules = eulerAngleViewRuleBean.getRules()) != null && rules.size() != 0) {
            for (AdSpacesBean.BuyerBean.EulerAngleRuleBean eulerAngleRuleBean : rules) {
                if (eulerAngleRuleBean != null) {
                    String axis = eulerAngleRuleBean.getAxis();
                    double angle = eulerAngleRuleBean.getAngle();
                    if (!TextUtils.isEmpty(axis) && angle > 0.0d) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private boolean f() {
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f16194f;
            if (eulerAngleViewRuleBean != null && eulerAngleViewRuleBean.getRules() != null && this.f16194f.getRules().size() > 0) {
                if (this.f16194f.getStyle() != null) {
                    return true;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    private boolean g() {
        try {
            if (this.f16199k > 0.0d) {
                if (this.f16174C.equals(this.f16202n)) {
                    if (this.f16197i[0] > 0.0f && Math.abs(r1) >= this.f16199k) {
                        return true;
                    }
                } else if (this.f16173B.equals(this.f16202n)) {
                    if (this.f16197i[0] < 0.0f && Math.abs(r1) >= this.f16199k) {
                        return true;
                    }
                } else if (this.f16172A.equals(this.f16202n)) {
                    if (Math.abs(this.f16197i[0]) >= this.f16199k) {
                        return true;
                    }
                } else if ("3".equals(this.f16202n) && Math.abs(this.f16182K) >= this.f16199k && Math.abs(this.f16185N) > this.f16199k) {
                    return true;
                }
            }
            if (this.f16200l > 0.0d) {
                if (this.f16174C.equals(this.f16203o)) {
                    if (this.f16197i[1] < 0.0f && Math.abs(r1) >= this.f16200l) {
                        return true;
                    }
                } else if (this.f16173B.equals(this.f16203o)) {
                    if (this.f16197i[1] > 0.0f && Math.abs(r1) >= this.f16200l) {
                        return true;
                    }
                } else if (this.f16172A.equals(this.f16203o)) {
                    if (Math.abs(this.f16197i[1]) >= this.f16200l) {
                        return true;
                    }
                } else if ("3".equals(this.f16203o) && Math.abs(this.f16183L) >= this.f16200l && Math.abs(this.f16186O) > this.f16200l) {
                    return true;
                }
            }
            if (this.f16201m > 0.0d) {
                if (this.f16174C.equals(this.f16204p)) {
                    if (this.f16197i[2] > 0.0f && Math.abs(r1) >= this.f16201m) {
                        return true;
                    }
                } else if (this.f16173B.equals(this.f16204p)) {
                    if (this.f16197i[2] < 0.0f && Math.abs(r1) >= this.f16201m) {
                        return true;
                    }
                } else if (this.f16172A.equals(this.f16204p)) {
                    if (Math.abs(this.f16197i[2]) >= this.f16201m) {
                        return true;
                    }
                } else if ("3".equals(this.f16204p) && Math.abs(this.f16184M) >= this.f16201m && Math.abs(this.f16187P) > this.f16201m) {
                    return true;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    private boolean h() {
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f16194f;
            if (eulerAngleViewRuleBean == null) {
                return false;
            }
            long coolTime = eulerAngleViewRuleBean.getCoolTime();
            long jLongValue = ((Long) sm.b(this.f16189a, this.f16211w, 0L)).longValue();
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

    private boolean i() {
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f16194f;
            if (eulerAngleViewRuleBean == null) {
                return false;
            }
            return System.currentTimeMillis() - wo.e(this.f16189a) < eulerAngleViewRuleBean.getUserProtectTime();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void m() {
        try {
            if (f16171S == null) {
                f16171S = (SensorManager) this.f16189a.getApplicationContext().getSystemService("sensor");
            }
            if (this.f16198j == null) {
                this.f16198j = f16171S.getDefaultSensor(4);
            }
            f16171S.registerListener(this.f16188Q, this.f16198j, 1);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void n() {
        this.f16207s = 0.0f;
        float[] fArr = this.f16197i;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        this.f16182K = 0.0f;
        this.f16183L = 0.0f;
        this.f16184M = 0.0f;
        this.f16185N = 0.0f;
        this.f16186O = 0.0f;
        this.f16187P = 0.0f;
    }

    private void o() {
        try {
            nh.a(f16170R, "enter unRegisterListener");
            SensorManager sensorManager = f16171S;
            if (sensorManager != null) {
                sensorManager.unregisterListener(this.f16188Q);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void j() {
        try {
            o();
            this.f16190b = null;
            this.f16191c = null;
            this.f16192d = null;
            this.f16193e = null;
            this.f16194f = null;
            this.f16195g = null;
            this.f16189a = null;
            this.f16208t = null;
            f16171S = null;
            this.f16198j = null;
            AnimatorSet animatorSet = this.f16179H;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
            }
            this.f16179H = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void k() {
        this.f16209u = false;
        n();
        o();
    }

    public void l() {
        if (this.f16210v || !this.f16180I) {
            return;
        }
        this.f16209u = true;
        n();
        d();
        m();
    }

    public String c() {
        return this.f16181J;
    }

    private void b() {
        List<AdSpacesBean.BuyerBean.EulerAngleRuleBean> rules;
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f16192d;
            if (eulerAngleViewRuleBean != null && (rules = eulerAngleViewRuleBean.getRules()) != null && rules.size() != 0) {
                int passivationTime = this.f16192d.getPassivationTime();
                double angle = 0.0d;
                double angle2 = 0.0d;
                double angle3 = 0.0d;
                for (AdSpacesBean.BuyerBean.EulerAngleRuleBean eulerAngleRuleBean : rules) {
                    if (eulerAngleRuleBean != null) {
                        if (this.f16212x.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime > 0 && eulerAngleRuleBean.getPangle() > 0.0d) {
                                this.f16199k = eulerAngleRuleBean.getPangle();
                            } else {
                                this.f16199k = eulerAngleRuleBean.getAngle();
                            }
                            angle = eulerAngleRuleBean.getAngle();
                            this.f16202n = eulerAngleRuleBean.getDirection();
                        } else if (this.f16213y.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime > 0 && eulerAngleRuleBean.getPangle() > 0.0d) {
                                this.f16200l = eulerAngleRuleBean.getPangle();
                            } else {
                                this.f16200l = eulerAngleRuleBean.getAngle();
                            }
                            angle2 = eulerAngleRuleBean.getAngle();
                            this.f16203o = eulerAngleRuleBean.getDirection();
                        } else if (this.f16214z.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime > 0 && eulerAngleRuleBean.getPangle() > 0.0d) {
                                this.f16201m = eulerAngleRuleBean.getPangle();
                            } else {
                                this.f16201m = eulerAngleRuleBean.getAngle();
                            }
                            angle3 = eulerAngleRuleBean.getAngle();
                            this.f16204p = eulerAngleRuleBean.getDirection();
                        }
                    }
                }
                if (passivationTime > 0) {
                    new Handler().postDelayed(new a(angle, angle2, angle3), a(passivationTime));
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean a(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBean = (AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean) it.next();
                List<String> orderList = orderDataEulerAngleViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataEulerAngleViewBean;
                }
            }
        }
        return null;
    }

    public int a(int i2) {
        return (int) ((Math.random() * i2) + 1.0d);
    }

    public void a(e eVar) {
        this.f16208t = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0177 A[Catch: Exception -> 0x0041, TryCatch #0 {Exception -> 0x0041, blocks: (B:4:0x000e, B:7:0x001a, B:10:0x003a, B:16:0x0045, B:18:0x004b, B:21:0x0052, B:23:0x006f, B:24:0x0075, B:27:0x00b7, B:30:0x00be, B:32:0x00c4, B:35:0x00cb, B:37:0x00d1, B:42:0x00ed, B:44:0x00f3, B:49:0x010f, B:51:0x0117, B:56:0x0133, B:58:0x0139, B:63:0x0155, B:65:0x0177, B:67:0x017b, B:68:0x017d, B:60:0x014a, B:62:0x0150, B:52:0x0127, B:54:0x012d, B:45:0x0103, B:47:0x0109, B:38:0x00e1, B:40:0x00e7, B:70:0x01be), top: B:74:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017b A[Catch: Exception -> 0x0041, TryCatch #0 {Exception -> 0x0041, blocks: (B:4:0x000e, B:7:0x001a, B:10:0x003a, B:16:0x0045, B:18:0x004b, B:21:0x0052, B:23:0x006f, B:24:0x0075, B:27:0x00b7, B:30:0x00be, B:32:0x00c4, B:35:0x00cb, B:37:0x00d1, B:42:0x00ed, B:44:0x00f3, B:49:0x010f, B:51:0x0117, B:56:0x0133, B:58:0x0139, B:63:0x0155, B:65:0x0177, B:67:0x017b, B:68:0x017d, B:60:0x014a, B:62:0x0150, B:52:0x0127, B:54:0x012d, B:45:0x0103, B:47:0x0109, B:38:0x00e1, B:40:0x00e7, B:70:0x01be), top: B:74:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] a(android.view.ViewGroup r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.s7.a(android.view.ViewGroup):int[]");
    }

    public void b(ViewGroup viewGroup) {
        AdSpacesBean.BuyerBean.EulerAngleStyleBean style;
        List<String> imgs;
        if (viewGroup != null) {
            try {
                if (this.f16189a != null && this.f16180I) {
                    ImageView imageView = new ImageView(this.f16189a);
                    imageView.setVisibility(0);
                    imageView.setImageResource(R.mipmap.beizi_interaction_icon_euler_angle);
                    AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f16192d;
                    if (eulerAngleViewRuleBean != null && (style = eulerAngleViewRuleBean.getStyle()) != null && (imgs = style.getImgs()) != null && imgs.size() > 0) {
                        this.f16181J = imgs.get(0);
                    }
                    if (!TextUtils.isEmpty(this.f16181J)) {
                        rf.a(this.f16189a).b(this.f16181J, new b(imageView));
                    }
                    int[] iArrA = a(viewGroup);
                    if (viewGroup instanceof RelativeLayout) {
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                        int i2 = iArrA[0];
                        if (i2 > 0) {
                            layoutParams.width = i2;
                        }
                        int i3 = iArrA[1];
                        if (i3 > 0) {
                            layoutParams.height = i3;
                        }
                        layoutParams.leftMargin = iArrA[2];
                        layoutParams.topMargin = iArrA[3];
                        layoutParams.addRule(17);
                        viewGroup.addView(imageView, layoutParams);
                    } else if (viewGroup instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2, 17);
                        int i4 = iArrA[0];
                        if (i4 > 0) {
                            layoutParams2.width = i4;
                        }
                        int i5 = iArrA[1];
                        if (i5 > 0) {
                            layoutParams2.height = i5;
                        }
                        layoutParams2.leftMargin = iArrA[2];
                        layoutParams2.topMargin = iArrA[3];
                        viewGroup.addView(imageView, layoutParams2);
                    } else if (viewGroup instanceof LinearLayout) {
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2, 17.0f);
                        int i6 = iArrA[0];
                        if (i6 > 0) {
                            layoutParams3.width = i6;
                        }
                        int i7 = iArrA[1];
                        if (i7 > 0) {
                            layoutParams3.height = i7;
                        }
                        layoutParams3.leftMargin = iArrA[2];
                        layoutParams3.topMargin = iArrA[3];
                        viewGroup.addView(imageView, layoutParams3);
                    } else {
                        ViewGroup.LayoutParams layoutParams4 = new ViewGroup.LayoutParams(-1, -2);
                        int i8 = iArrA[0];
                        if (i8 > 0) {
                            layoutParams4.width = i8;
                        }
                        int i9 = iArrA[1];
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

    public void a(ImageView imageView) {
        ArrayList arrayList;
        s7 s7Var;
        ImageView imageView2;
        try {
            arrayList = new ArrayList();
        } catch (Exception e2) {
            e = e2;
        }
        try {
            if (TextUtils.isEmpty(this.f16202n)) {
                s7Var = this;
                imageView2 = imageView;
            } else if (this.f16174C.equals(this.f16202n)) {
                s7Var = this;
                imageView2 = imageView;
                s7Var.a(imageView2, arrayList, "rotationX", 0.0f, -this.f16176E);
                s7Var.a(imageView2, arrayList, "rotationX", -s7Var.f16176E, 0.0f);
            } else {
                s7Var = this;
                imageView2 = imageView;
                if (s7Var.f16173B.equals(s7Var.f16202n)) {
                    s7Var.a(imageView2, arrayList, "rotationX", 0.0f, s7Var.f16176E);
                    s7Var.a(imageView2, arrayList, "rotationX", s7Var.f16176E, 0.0f);
                } else {
                    s7Var.a(imageView2, arrayList, "rotationX", 0.0f, s7Var.f16176E);
                    s7Var.a(imageView2, arrayList, "rotationX", s7Var.f16176E, 0.0f);
                    s7Var.a(imageView2, arrayList, "rotationX", 0.0f, -s7Var.f16176E);
                    s7Var.a(imageView2, arrayList, "rotationX", -s7Var.f16176E, 0.0f);
                }
            }
            if (!TextUtils.isEmpty(s7Var.f16203o)) {
                if (s7Var.f16174C.equals(s7Var.f16203o)) {
                    s7Var.a(imageView2, arrayList, "rotationY", 0.0f, -s7Var.f16177F);
                    s7Var.a(imageView2, arrayList, "rotationY", -s7Var.f16177F, 0.0f);
                } else if (s7Var.f16173B.equals(s7Var.f16203o)) {
                    s7Var.a(imageView2, arrayList, "rotationY", 0.0f, s7Var.f16177F);
                    s7Var.a(imageView2, arrayList, "rotationY", s7Var.f16177F, 0.0f);
                } else {
                    s7Var.a(imageView2, arrayList, "rotationY", 0.0f, s7Var.f16177F);
                    s7Var.a(imageView2, arrayList, "rotationY", s7Var.f16177F, 0.0f);
                    s7Var.a(imageView2, arrayList, "rotationY", 0.0f, -s7Var.f16177F);
                    s7Var.a(imageView2, arrayList, "rotationY", -s7Var.f16177F, 0.0f);
                }
            }
            if (!TextUtils.isEmpty(s7Var.f16204p)) {
                if (s7Var.f16174C.equals(s7Var.f16204p)) {
                    s7Var.a(imageView2, arrayList, C1244a.f35650B, 0.0f, -s7Var.f16178G);
                    s7Var.a(imageView2, arrayList, C1244a.f35650B, -s7Var.f16178G, 0.0f);
                } else if (s7Var.f16173B.equals(s7Var.f16204p)) {
                    s7Var.a(imageView2, arrayList, C1244a.f35650B, 0.0f, s7Var.f16178G);
                    s7Var.a(imageView2, arrayList, C1244a.f35650B, s7Var.f16178G, 0.0f);
                } else {
                    s7Var.a(imageView2, arrayList, C1244a.f35650B, 0.0f, s7Var.f16178G);
                    s7Var.a(imageView2, arrayList, C1244a.f35650B, s7Var.f16178G, 0.0f);
                    s7Var.a(imageView2, arrayList, C1244a.f35650B, 0.0f, -s7Var.f16178G);
                    s7Var.a(imageView2, arrayList, C1244a.f35650B, -s7Var.f16178G, 0.0f);
                }
            }
            if (s7Var.f16179H != null) {
                s7Var.f16179H = null;
            }
            if (arrayList.size() > 0) {
                AnimatorSet animatorSet = new AnimatorSet();
                s7Var.f16179H = animatorSet;
                animatorSet.addListener(new c());
                s7Var.f16179H.playSequentially(arrayList);
                s7Var.f16179H.start();
            }
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
        }
    }

    private void a(ImageView imageView, List list, String str, float f2, float f3) {
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, str, f2, f3);
            objectAnimatorOfFloat.setDuration(this.f16175D);
            list.add(objectAnimatorOfFloat);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (this.f16209u) {
                    Sensor sensor = sensorEvent.sensor;
                    float[] fArr = sensorEvent.values;
                    int type = sensor.getType();
                    if (fArr != null && type == 4) {
                        float f2 = this.f16207s;
                        if (f2 != 0.0f) {
                            float f3 = fArr[0];
                            float f4 = fArr[1];
                            float f5 = fArr[2];
                            float f6 = (sensorEvent.timestamp - f2) * this.f16196h;
                            this.f16197i[0] = (float) (r1[0] + Math.toDegrees(f3 * f6));
                            this.f16197i[1] = (float) (r1[1] + Math.toDegrees(f4 * f6));
                            this.f16197i[2] = (float) (r1[2] + Math.toDegrees(f5 * f6));
                            float[] fArr2 = this.f16197i;
                            float f7 = fArr2[0];
                            if (f7 > 0.0f) {
                                if (f7 > this.f16185N) {
                                    this.f16185N = f7;
                                }
                            } else if (f7 < this.f16182K) {
                                this.f16182K = f7;
                            }
                            float f8 = fArr2[1];
                            if (f8 > 0.0f) {
                                if (f8 > this.f16186O) {
                                    this.f16186O = f8;
                                }
                            } else if (f8 < this.f16183L) {
                                this.f16183L = f8;
                            }
                            float f9 = fArr2[2];
                            if (f9 > 0.0f) {
                                if (f9 > this.f16187P) {
                                    this.f16187P = f9;
                                }
                            } else if (f9 < this.f16184M) {
                                this.f16184M = f9;
                            }
                            nh.a(f16170R, "rotate  x: " + String.format("%.4f", Float.valueOf(this.f16197i[0])) + ",y: " + String.format("%.4f", Float.valueOf(this.f16197i[1])) + ",z: " + String.format("%.4f", Float.valueOf(this.f16197i[2])) + ",x : " + this.f16199k + ",y : " + this.f16200l + ",z : " + this.f16201m);
                            if (g()) {
                                a();
                            }
                        }
                        this.f16207s = sensorEvent.timestamp;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void a() {
        try {
            if (this.f16208t != null && this.f16209u) {
                nh.a(f16170R, "onEulerAngleHappened");
                k();
                if (!this.f16205q) {
                    sm.d(this.f16189a, this.f16211w, Long.valueOf(System.currentTimeMillis()));
                }
                this.f16208t.a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
