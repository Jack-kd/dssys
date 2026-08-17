package com.beizi.fusion;

import android.content.Context;
import android.os.Build;
import android.system.Os;
import android.system.StructStat;
import android.system.StructTimespec;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.beizi.fusion.model.DevInfo;
import com.beizi.fusion.model.RequestInfo;
import com.octopus.ad.ADBidEvent;
import java.util.Locale;

/* loaded from: classes2.dex */
public class w6 {

    /* renamed from: K, reason: collision with root package name */
    public static String f16862K = "SDK_UID_KEY_NEW";

    /* renamed from: L, reason: collision with root package name */
    private static w6 f16863L;

    /* renamed from: A, reason: collision with root package name */
    private String f16864A;

    /* renamed from: B, reason: collision with root package name */
    private String f16865B;

    /* renamed from: C, reason: collision with root package name */
    private long f16866C;

    /* renamed from: D, reason: collision with root package name */
    private long f16867D;

    /* renamed from: E, reason: collision with root package name */
    private String f16868E;

    /* renamed from: F, reason: collision with root package name */
    private Context f16869F;

    /* renamed from: G, reason: collision with root package name */
    private String f16870G;

    /* renamed from: H, reason: collision with root package name */
    private String f16871H;

    /* renamed from: I, reason: collision with root package name */
    private RequestInfo f16872I;

    /* renamed from: J, reason: collision with root package name */
    private DevInfo f16873J;

    /* renamed from: c, reason: collision with root package name */
    private String f16876c;

    /* renamed from: g, reason: collision with root package name */
    private String f16880g;

    /* renamed from: h, reason: collision with root package name */
    private String f16881h;

    /* renamed from: i, reason: collision with root package name */
    private String f16882i;

    /* renamed from: j, reason: collision with root package name */
    private String f16883j;

    /* renamed from: k, reason: collision with root package name */
    private String f16884k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f16885l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f16886m;

    /* renamed from: n, reason: collision with root package name */
    private String f16887n;

    /* renamed from: o, reason: collision with root package name */
    private String f16888o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f16889p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f16890q;

    /* renamed from: r, reason: collision with root package name */
    private String f16891r;

    /* renamed from: s, reason: collision with root package name */
    private String f16892s;

    /* renamed from: t, reason: collision with root package name */
    private String f16893t;

    /* renamed from: u, reason: collision with root package name */
    private String f16894u;

    /* renamed from: v, reason: collision with root package name */
    private String f16895v;

    /* renamed from: w, reason: collision with root package name */
    private String f16896w;

    /* renamed from: x, reason: collision with root package name */
    private String f16897x;

    /* renamed from: y, reason: collision with root package name */
    private String f16898y;

    /* renamed from: z, reason: collision with root package name */
    private String f16899z;

    /* renamed from: a, reason: collision with root package name */
    private String f16874a = null;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16875b = false;

    /* renamed from: d, reason: collision with root package name */
    private l7 f16877d = l7.DEVICE_OTHER;

    /* renamed from: e, reason: collision with root package name */
    private String f16878e = null;

    /* renamed from: f, reason: collision with root package name */
    private String f16879f = null;

    private w6() {
        Context contextN = q1.i().n();
        this.f16869F = contextN;
        if (contextN == null) {
            return;
        }
        RequestInfo requestInfo = RequestInfo.getInstance(contextN);
        this.f16872I = requestInfo;
        if (requestInfo == null) {
            return;
        }
        if (!requestInfo.isInit) {
            requestInfo.init();
        }
        this.f16873J = this.f16872I.getDevInfo();
    }

    private String E() {
        try {
            int i2 = Build.VERSION.SDK_INT;
            StructStat structStatStat = Os.stat("/data/data");
            if (structStatStat == null) {
                return "";
            }
            if (i2 < 27) {
                return structStatStat.st_atime + ".0";
            }
            StructTimespec structTimespec = structStatStat.st_atim;
            return structTimespec.tv_sec + com.anythink.core.common.d.i.f2495E + structTimespec.tv_nsec;
        } catch (Throwable unused) {
            return "";
        }
    }

    private boolean G() {
        if (Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.HUAWEI)) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase(ADBidEvent.HUAWEI) || str.equalsIgnoreCase("HONOR");
    }

    private boolean H() {
        if (Build.MANUFACTURER.equalsIgnoreCase("OPPO")) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase("OPPO") || str.equalsIgnoreCase("REALME");
    }

    private boolean I() {
        return Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.VIVO) || Build.BRAND.equalsIgnoreCase(ADBidEvent.VIVO);
    }

    private boolean K() {
        if (Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.XIAOMI)) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase(ADBidEvent.XIAOMI) || str.equalsIgnoreCase("REDMI");
    }

    public static synchronized w6 m() {
        try {
            if (f16863L == null) {
                synchronized (w6.class) {
                    try {
                        if (f16863L == null) {
                            f16863L = new w6();
                        }
                    } finally {
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f16863L;
    }

    private void z() {
        try {
            WindowManager windowManager = (WindowManager) b4.j().f13060u.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            this.f16878e = displayMetrics.widthPixels + "_" + displayMetrics.heightPixels;
            float f2 = ((float) displayMetrics.heightPixels) / displayMetrics.ydpi;
            float f3 = ((float) displayMetrics.widthPixels) / displayMetrics.xdpi;
            double dSqrt = Math.sqrt((double) ((f3 * f3) + (f2 * f2)));
            this.f16879f = String.format("%.2f", Double.valueOf(Math.round(dSqrt * r2) / Math.pow(10.0d, 2.0d)));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public String A() {
        if (TextUtils.isEmpty(this.f16879f)) {
            DevInfo devInfo = this.f16873J;
            if (devInfo != null) {
                this.f16879f = devInfo.getScreenSize();
            } else {
                z();
            }
        }
        return this.f16879f;
    }

    public String B() {
        if (TextUtils.isEmpty(this.f16874a)) {
            DevInfo devInfo = this.f16873J;
            if (devInfo != null) {
                this.f16874a = devInfo.getSdkUID();
            } else {
                this.f16874a = (String) sm.a(b4.j().f13060u, f16862K, "");
            }
        }
        return this.f16874a;
    }

    public String C() {
        RequestInfo requestInfo;
        if (TextUtils.isEmpty(this.f16865B) && (requestInfo = this.f16872I) != null) {
            this.f16865B = requestInfo.getSdkVersion();
        }
        return this.f16865B;
    }

    public String D() {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (q1.i().t()) {
            return null;
        }
        if (TextUtils.isEmpty(this.f16871H)) {
            if (I()) {
                this.f16871H = wo.b(b4.j().f13060u, "com.bbk.appstore");
            } else if (H()) {
                this.f16871H = wo.b(b4.j().f13060u, "com.heytap.market");
            } else if (K()) {
                this.f16871H = wo.b(b4.j().f13060u, "com.xiaomi.market");
            }
        }
        return this.f16871H;
    }

    public String F() {
        if (this.f16889p) {
            return this.f16891r;
        }
        this.f16889p = true;
        String strC = kq.c();
        this.f16891r = strC;
        return strC;
    }

    public synchronized boolean J() {
        if (this.f16886m) {
            return this.f16885l;
        }
        this.f16886m = true;
        boolean zA = c8.a(b4.j().f13060u, "com.tencent.mm");
        this.f16885l = zA;
        return zA;
    }

    public String a() {
        if (q1.i().t()) {
            return null;
        }
        if (G() && TextUtils.isEmpty(this.f16884k)) {
            this.f16884k = wo.d(b4.j().f13060u);
        }
        return this.f16884k;
    }

    public String b() {
        if (TextUtils.isEmpty(this.f16870G)) {
            try {
                if (q1.i().r()) {
                    this.f16870G = wo.a(q1.i().n());
                } else {
                    this.f16870G = q1.i().b();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return this.f16870G;
    }

    public long c() {
        RequestInfo requestInfo;
        if (this.f16866C == 0 && (requestInfo = this.f16872I) != null) {
            try {
                this.f16866C = Long.parseLong(requestInfo.getInstallTime());
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
            }
        }
        return this.f16866C;
    }

    public String d() {
        RequestInfo requestInfo;
        if (TextUtils.isEmpty(this.f16868E) && (requestInfo = this.f16872I) != null) {
            this.f16868E = requestInfo.getPackageName();
        }
        return this.f16868E;
    }

    public long e() {
        RequestInfo requestInfo;
        if (this.f16867D == 0 && (requestInfo = this.f16872I) != null) {
            try {
                this.f16867D = Long.parseLong(requestInfo.getUpdateTime());
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
            }
        }
        return this.f16867D;
    }

    public String f() {
        RequestInfo requestInfo;
        if (TextUtils.isEmpty(this.f16864A) && (requestInfo = this.f16872I) != null) {
            this.f16864A = requestInfo.getAppVersion();
        }
        return this.f16864A;
    }

    public String g() {
        if (TextUtils.isEmpty(this.f16894u)) {
            DevInfo devInfo = this.f16873J;
            if (devInfo != null) {
                this.f16894u = devInfo.getBrand();
            } else {
                this.f16894u = Build.BRAND;
            }
        }
        return this.f16894u;
    }

    public String h() {
        if (TextUtils.isEmpty(this.f16880g)) {
            DevInfo devInfo = this.f16873J;
            if (devInfo != null) {
                this.f16880g = devInfo.getDensity();
            } else {
                try {
                    if (TextUtils.isEmpty(this.f16880g)) {
                        this.f16880g = b4.j().f13060u.getResources().getDisplayMetrics().density + "";
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return this.f16880g;
    }

    public l7 i() {
        l7 l7Var = this.f16877d;
        l7 l7Var2 = l7.DEVICE_OTHER;
        if (l7Var == l7Var2) {
            DevInfo devInfo = this.f16873J;
            if (devInfo != null) {
                String devType = devInfo.getDevType();
                if ("1".equals(devType)) {
                    this.f16877d = l7.DEVICE_PHONE;
                } else if ("2".equals(devType)) {
                    this.f16877d = l7.DEVICE_FLAT;
                }
            } else if (l7Var == l7Var2) {
                try {
                    try {
                        if (((TelephonyManager) b4.j().f13060u.getSystemService("phone")).getPhoneType() != 0) {
                            this.f16877d = l7.DEVICE_PHONE;
                        } else {
                            this.f16877d = l7.DEVICE_FLAT;
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                } catch (Throwable unused) {
                    int i2 = b4.j().f13060u.getResources().getConfiguration().screenLayout & 15;
                    if (i2 == 4 || i2 == 3) {
                        this.f16877d = l7.DEVICE_FLAT;
                    } else {
                        this.f16877d = l7.DEVICE_PHONE;
                    }
                }
            }
        }
        return this.f16877d;
    }

    public String j() {
        if (TextUtils.isEmpty(this.f16883j)) {
            this.f16883j = wo.c();
        }
        return this.f16883j;
    }

    public String k() {
        if (q1.i().t()) {
            return null;
        }
        if (G() && TextUtils.isEmpty(this.f16887n)) {
            this.f16887n = wo.a(b4.j().f13060u, "com.huawei.hwid");
        }
        return this.f16887n;
    }

    public String l() {
        if (TextUtils.isEmpty(this.f16899z)) {
            this.f16899z = ik.a(this.f16869F);
        }
        return this.f16899z;
    }

    public String n() {
        if (TextUtils.isEmpty(this.f16897x)) {
            DevInfo devInfo = this.f16873J;
            if (devInfo != null) {
                this.f16897x = devInfo.getLanguage();
            } else {
                this.f16897x = Locale.getDefault().getLanguage();
            }
        }
        return this.f16897x;
    }

    public String o() {
        if (TextUtils.isEmpty(this.f16896w)) {
            this.f16896w = c7.c();
        }
        return this.f16896w;
    }

    public String p() {
        if (TextUtils.isEmpty(this.f16881h)) {
            this.f16881h = E();
        }
        return this.f16881h;
    }

    public String q() {
        if (TextUtils.isEmpty(this.f16895v)) {
            DevInfo devInfo = this.f16873J;
            if (devInfo != null) {
                this.f16895v = devInfo.getModel();
            } else {
                this.f16895v = Build.MODEL;
            }
        }
        return this.f16895v;
    }

    public String r() {
        if (TextUtils.isEmpty(this.f16898y)) {
            this.f16898y = ik.b(this.f16869F);
        }
        return this.f16898y;
    }

    public String s() {
        return kq.a();
    }

    public String t() {
        if (this.f16890q) {
            return this.f16892s;
        }
        this.f16890q = true;
        String strB = kq.b();
        this.f16892s = strB;
        return strB;
    }

    public String u() {
        if (TextUtils.isEmpty(this.f16893t)) {
            this.f16893t = Build.VERSION.SDK_INT + " (" + Build.VERSION.RELEASE + ")";
        }
        return this.f16893t;
    }

    public String v() {
        if (TextUtils.isEmpty(this.f16882i)) {
            this.f16882i = wo.k(b4.j().f13060u);
        }
        return this.f16882i;
    }

    public String w() {
        if (TextUtils.isEmpty(this.f16878e)) {
            DevInfo devInfo = this.f16873J;
            if (devInfo != null) {
                this.f16878e = devInfo.getResolution();
            } else {
                z();
            }
        }
        return this.f16878e;
    }

    public String x() {
        if (TextUtils.isEmpty(this.f16888o)) {
            DevInfo devInfo = this.f16873J;
            if (devInfo != null) {
                this.f16888o = devInfo.getRomVersion();
            } else {
                try {
                    hk hkVarA = hk.a();
                    hkVarA.c();
                    this.f16888o = hkVarA.b();
                } catch (Throwable unused) {
                }
            }
        }
        return this.f16888o;
    }

    public String y() {
        if (TextUtils.isEmpty(this.f16876c)) {
            DevInfo devInfo = this.f16873J;
            if (devInfo != null) {
                this.f16876c = devInfo.getRoot();
            } else {
                this.f16876c = wo.b();
            }
        }
        return this.f16876c;
    }
}
