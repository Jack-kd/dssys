package com.octopus.ad.d;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.octopus.ad.a.c;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.utilities.ViewUtil;

/* loaded from: classes4.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public static volatile long f34052a;

    /* renamed from: b, reason: collision with root package name */
    private static SensorManager f34053b;

    /* renamed from: A, reason: collision with root package name */
    private View f34054A;

    /* renamed from: B, reason: collision with root package name */
    private float f34055B;

    /* renamed from: c, reason: collision with root package name */
    private Context f34059c;

    /* renamed from: d, reason: collision with root package name */
    private double f34060d;

    /* renamed from: e, reason: collision with root package name */
    private double f34061e;

    /* renamed from: f, reason: collision with root package name */
    private double f34062f;

    /* renamed from: g, reason: collision with root package name */
    private int f34063g;

    /* renamed from: h, reason: collision with root package name */
    private int f34064h;

    /* renamed from: k, reason: collision with root package name */
    private int f34067k;

    /* renamed from: m, reason: collision with root package name */
    private com.octopus.ad.e.b f34069m;

    /* renamed from: n, reason: collision with root package name */
    private a f34070n;

    /* renamed from: z, reason: collision with root package name */
    private View f34082z;

    /* renamed from: i, reason: collision with root package name */
    private int f34065i = 0;

    /* renamed from: j, reason: collision with root package name */
    private int f34066j = 0;

    /* renamed from: l, reason: collision with root package name */
    private int f34068l = 0;

    /* renamed from: o, reason: collision with root package name */
    private boolean f34071o = false;

    /* renamed from: p, reason: collision with root package name */
    private String f34072p = "50%";

    /* renamed from: q, reason: collision with root package name */
    private String f34073q = "70%";

    /* renamed from: r, reason: collision with root package name */
    private String f34074r = "140";

    /* renamed from: s, reason: collision with root package name */
    private String f34075s = "140";

    /* renamed from: t, reason: collision with root package name */
    private boolean f34076t = false;

    /* renamed from: u, reason: collision with root package name */
    private boolean f34077u = false;

    /* renamed from: v, reason: collision with root package name */
    private boolean f34078v = false;

    /* renamed from: w, reason: collision with root package name */
    private boolean f34079w = false;

    /* renamed from: x, reason: collision with root package name */
    private boolean f34080x = false;

    /* renamed from: y, reason: collision with root package name */
    private boolean f34081y = false;

    /* renamed from: C, reason: collision with root package name */
    private final float[] f34056C = new float[3];

    /* renamed from: D, reason: collision with root package name */
    private int f34057D = 2;

    /* renamed from: E, reason: collision with root package name */
    private final SensorEventListener f34058E = new SensorEventListener() { // from class: com.octopus.ad.d.l.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x0164  */
        /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
        @Override // android.hardware.SensorEventListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onSensorChanged(android.hardware.SensorEvent r22) {
            /*
                Method dump skipped, instructions count: 608
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.octopus.ad.d.l.AnonymousClass1.onSensorChanged(android.hardware.SensorEvent):void");
        }
    };

    public interface a {
        void a(com.octopus.ad.a.d dVar);
    }

    public l(Context context) {
        this.f34059c = context;
        f34053b = (SensorManager) context.getApplicationContext().getSystemService("sensor");
        f();
    }

    public static /* synthetic */ int d(l lVar) {
        int i2 = lVar.f34065i;
        lVar.f34065i = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int i(l lVar) {
        int i2 = lVar.f34066j;
        lVar.f34066j = i2 + 1;
        return i2;
    }

    public float a(float f2, float f3) {
        return (f2 != f3 || f2 > 15.0f) ? f2 : (15.0f + f2) - ((int) f2);
    }

    private void g() {
        SensorManager sensorManager = f34053b;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.f34058E);
        }
    }

    private void h() {
        com.octopus.ad.e.b bVar = this.f34069m;
        if (bVar != null) {
            bVar.b();
            ViewUtil.removeChildFromParent(this.f34069m);
            this.f34069m = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d() {
        Context context;
        View view = this.f34082z;
        int width = view != null ? view.getWidth() : 0;
        return (width > 0 || (context = this.f34059c) == null) ? width : ViewUtil.getScreenWidth(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int e() {
        Context context;
        View view = this.f34082z;
        int height = view != null ? view.getHeight() : 0;
        return (height > 0 || (context = this.f34059c) == null) ? height : ViewUtil.getScreenHeight(context);
    }

    private void f() {
        a(1.5d);
        b(1.5d);
        c(35.0d);
        c(2);
        a(1);
    }

    public void c(double d2) {
        this.f34062f = d2;
    }

    public void b(double d2) {
        this.f34061e = d2;
    }

    public void c(int i2) {
        this.f34064h = i2;
    }

    public void b(int i2) {
        this.f34067k = i2;
    }

    public void c() {
        this.f34076t = false;
        this.f34077u = false;
        this.f34078v = false;
        this.f34079w = false;
        this.f34080x = false;
        this.f34081y = false;
        this.f34071o = false;
        this.f34065i = 0;
        this.f34066j = 0;
        this.f34068l = 0;
        this.f34070n = null;
        this.f34059c = null;
        this.f34069m = null;
        this.f34054A = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(float f2, float f3, float f4, double d2) {
        return Math.sqrt((Math.pow(((double) f2) / 9.8d, 2.0d) + Math.pow(((double) f3) / 9.8d, 2.0d)) + Math.pow(((double) f4) / 9.8d, 2.0d)) > d2;
    }

    public void b() {
        this.f34076t = false;
        this.f34077u = false;
        this.f34078v = false;
        this.f34079w = false;
        this.f34080x = false;
        this.f34081y = false;
        this.f34071o = false;
        this.f34065i = 0;
        this.f34066j = 0;
        this.f34068l = 0;
    }

    public void a(String str, String str2, String str3, String str4) {
        this.f34072p = str;
        this.f34073q = str2;
        this.f34074r = str3;
        this.f34075s = str4;
    }

    public void a(c.v vVar) {
        if (vVar == null) {
            return;
        }
        a(vVar.d());
        b(vVar.d());
        c(vVar.f());
        c(vVar.c());
        b(vVar.h());
        a(1);
    }

    public void a(double d2) {
        this.f34060d = d2;
    }

    public void a(int i2) {
        this.f34063g = i2;
    }

    public void a(a aVar) {
        this.f34070n = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(float f2, float f3, float f4, double d2) {
        return Math.sqrt((Math.pow(((double) f2) / 9.8d, 2.0d) + Math.pow(((double) f3) / 9.8d, 2.0d)) + Math.pow(((double) f4) / 9.8d, 2.0d)) > d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double a(float f2, float f3, float f4) {
        return Math.sqrt(Math.pow(f2, 2.0d) + Math.pow(f3, 2.0d) + Math.pow(f4, 2.0d));
    }

    public void a(com.octopus.ad.a.d dVar) {
        View view = this.f34054A;
        if (view == null || !view.isShown()) {
            b();
            return;
        }
        if (System.currentTimeMillis() - f34052a > 1000) {
            StringBuilder sb = new StringBuilder();
            sb.append("enter callBackShakeHappened and mShakeStateListener != null ? ");
            sb.append(this.f34070n != null);
            sb.append(",!isCallBack = ");
            sb.append(!this.f34071o);
            com.octopus.ad.d.b.f.a("OctopusAd", sb.toString());
            if (this.f34070n == null || this.f34071o) {
                return;
            }
            com.octopus.ad.d.b.f.a("OctopusAd", "callback onShakeHappened()");
            this.f34070n.a(dVar);
            this.f34071o = true;
            int i2 = this.f34057D;
            if (i2 == 1) {
                g();
                c();
            } else if (i2 == 2) {
                a();
            } else if (i2 == 3) {
                a(2000L);
            }
            f34052a = System.currentTimeMillis();
            return;
        }
        b();
    }

    public void a(View view) {
        try {
            this.f34054A = view;
            SensorManager sensorManager = f34053b;
            if (sensorManager != null) {
                sensorManager.registerListener(this.f34058E, sensorManager.getDefaultSensor(1), 2);
                SensorManager sensorManager2 = f34053b;
                sensorManager2.registerListener(this.f34058E, sensorManager2.getDefaultSensor(4), 2);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void a() {
        com.octopus.ad.d.b.f.a("OctopusAd", "enter unRegisterShakeListenerAndSetDefault");
        h();
        g();
        c();
    }

    private void a(long j2) {
        new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.d.l.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    l.this.b();
                } catch (Exception e2) {
                    com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                }
            }
        }, j2);
    }

    public View a(View view, View view2, float f2, String str, p pVar, boolean z2) {
        String str2;
        int i2;
        int i3;
        int i4;
        int i5;
        float f3;
        float f4;
        float f5;
        com.octopus.ad.d.b.f.a("OctopusAd", "enter getShakeView");
        if (this.f34059c == null || view == null || view2 == null) {
            return null;
        }
        if (this.f34064h == 0 && this.f34063g == 0) {
            return null;
        }
        this.f34082z = view;
        this.f34054A = view2;
        int iPx2dip = ViewUtil.px2dip(view2.getContext(), view2.getWidth());
        int iPx2dip2 = ViewUtil.px2dip(view2.getContext(), view2.getHeight());
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
        } else if (this.f34067k == 0) {
            str2 = "摇一摇跳转至\n第三方应用或详情页";
        } else {
            str2 = "转一转跳转至\n第三方应用或详情页";
        }
        if (TextUtils.isEmpty(this.f34072p) || "0".equals(this.f34072p)) {
            this.f34072p = "50%";
        }
        if (TextUtils.isEmpty(this.f34073q) || "0".equals(this.f34073q)) {
            this.f34073q = "50%";
        }
        if (TextUtils.isEmpty(this.f34074r) || "0".equals(this.f34074r)) {
            this.f34074r = "180";
        }
        if (TextUtils.isEmpty(this.f34075s) || "0".equals(this.f34075s)) {
            this.f34075s = "180";
        }
        if (this.f34072p.endsWith("%")) {
            String str3 = this.f34072p;
            i2 = (Integer.parseInt(str3.substring(0, str3.indexOf("%"))) * iPx2dip) / 100;
        } else {
            i2 = Integer.parseInt(this.f34072p);
        }
        if (this.f34073q.endsWith("%")) {
            String str4 = this.f34073q;
            i3 = (Integer.parseInt(str4.substring(0, str4.indexOf("%"))) * iPx2dip2) / 100;
        } else {
            i3 = Integer.parseInt(this.f34073q);
        }
        if (this.f34074r.endsWith("%")) {
            String str5 = this.f34074r;
            i4 = (Integer.parseInt(str5.substring(0, str5.indexOf("%"))) * iPx2dip) / 100;
        } else {
            i4 = Integer.parseInt(this.f34074r);
        }
        if (i4 > iPx2dip) {
            i4 = iPx2dip;
        }
        if (this.f34075s.endsWith("%")) {
            String str6 = this.f34075s;
            i5 = (Integer.parseInt(str6.substring(0, str6.indexOf("%"))) * iPx2dip2) / 100;
        } else {
            i5 = Integer.parseInt(this.f34075s);
        }
        if (i5 > iPx2dip2) {
            i5 = iPx2dip2;
        }
        int iDip2px = ViewUtil.dip2px(this.f34059c, i4);
        int iDip2px2 = ViewUtil.dip2px(this.f34059c, i5);
        int iDip2px3 = ViewUtil.dip2px(this.f34059c, i2);
        int iDip2px4 = ViewUtil.dip2px(this.f34059c, i3);
        com.octopus.ad.d.b.f.a("OctopusAd", "widthInt = " + iDip2px + ",heightInt = " + iDip2px2);
        com.octopus.ad.d.b.f.a("OctopusAd", "centerYInt = " + iDip2px4 + ",centerXInt = " + iDip2px3 + ",adWidthDp = " + iPx2dip + ",adHeightDp = " + iPx2dip2);
        if (iDip2px4 == 0) {
            iDip2px4 = ViewUtil.dip2px(this.f34059c, iPx2dip2) / 2;
        }
        if (z2) {
            f3 = 1.0f;
        } else {
            if (pVar != p.BANNER) {
                f5 = (pVar == p.INTERSTITIAL || pVar == p.NATIVE) ? iPx2dip / 360.0f : 0.5f;
                f3 = 1.0f;
            }
            f3 = f5;
        }
        if (f3 < 1.0f) {
            iDip2px = (int) (iDip2px * f3);
            iDip2px2 = (int) (iDip2px2 * f3);
            f4 = f2 * f3;
        } else {
            f4 = f2;
        }
        int i6 = iDip2px;
        com.octopus.ad.e.b bVar = new com.octopus.ad.e.b(this.f34059c, i6, f4, f3, this.f34067k);
        this.f34069m = bVar;
        bVar.setTitleText(str2);
        if (pVar != p.NATIVE && pVar != p.BANNER) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i6, -2);
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = iDip2px4 - (iDip2px2 / 2);
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = iDip2px3 - (i6 / 2);
            this.f34069m.setLayoutParams(layoutParams);
            com.octopus.ad.d.b.f.a("OctopusAd", "topMargin = " + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ",leftMargin = " + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ",widthInt = " + i6 + ",heightInt = " + iDip2px2);
        } else {
            this.f34069m.setLayoutParams(new FrameLayout.LayoutParams(i6, -2, 17));
        }
        this.f34069m.a();
        return this.f34069m;
    }
}
