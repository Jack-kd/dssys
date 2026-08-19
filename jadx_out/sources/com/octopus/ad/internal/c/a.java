package com.octopus.ad.internal.c;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.octopus.ad.R;
import com.octopus.ad.a.g;
import com.octopus.ad.utils.OctUtil;
import java.util.Calendar;
import java.util.Locale;
import java.util.Random;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: G, reason: collision with root package name */
    private static a f34500G = null;

    /* renamed from: a, reason: collision with root package name */
    public static String f34501a = "SDK_UID_KEY";

    /* renamed from: b, reason: collision with root package name */
    public static String f34502b = "SDK_UID_KEY_NEW";

    /* renamed from: o, reason: collision with root package name */
    public static String f34503o;

    /* renamed from: p, reason: collision with root package name */
    public static String f34504p;

    /* renamed from: u, reason: collision with root package name */
    public static String f34505u;

    /* renamed from: v, reason: collision with root package name */
    public static String f34506v;

    /* renamed from: A, reason: collision with root package name */
    public String f34507A;

    /* renamed from: B, reason: collision with root package name */
    public String f34508B;

    /* renamed from: C, reason: collision with root package name */
    public String f34509C;

    /* renamed from: D, reason: collision with root package name */
    public String f34510D;

    /* renamed from: E, reason: collision with root package name */
    public boolean f34511E;

    /* renamed from: F, reason: collision with root package name */
    public String f34512F;

    /* renamed from: e, reason: collision with root package name */
    public String f34515e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f34516f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f34517g;

    /* renamed from: s, reason: collision with root package name */
    public String f34527s;

    /* renamed from: t, reason: collision with root package name */
    public String f34528t;

    /* renamed from: w, reason: collision with root package name */
    public String f34529w;

    /* renamed from: x, reason: collision with root package name */
    public String f34530x;

    /* renamed from: y, reason: collision with root package name */
    public String f34531y;

    /* renamed from: z, reason: collision with root package name */
    public String f34532z;

    /* renamed from: c, reason: collision with root package name */
    public String f34513c = null;

    /* renamed from: d, reason: collision with root package name */
    public boolean f34514d = false;

    /* renamed from: h, reason: collision with root package name */
    public final String f34518h = Build.VERSION.SDK_INT + " (" + Build.VERSION.RELEASE + ")";

    /* renamed from: i, reason: collision with root package name */
    public g.b f34519i = g.b.DEVICE_OTHER;

    /* renamed from: j, reason: collision with root package name */
    public final String f34520j = Build.BRAND;

    /* renamed from: k, reason: collision with root package name */
    public final String f34521k = Build.MODEL;

    /* renamed from: l, reason: collision with root package name */
    public final String f34522l = Build.MANUFACTURER;

    /* renamed from: m, reason: collision with root package name */
    public String f34523m = null;

    /* renamed from: n, reason: collision with root package name */
    public String f34524n = null;

    /* renamed from: q, reason: collision with root package name */
    public final String f34525q = Locale.getDefault().getLanguage();

    /* renamed from: r, reason: collision with root package name */
    public final String f34526r = Locale.getDefault().getCountry();

    private a() {
    }

    public static a a() {
        a aVar;
        synchronized (a.class) {
            try {
                if (f34500G == null) {
                    f34500G = new a();
                    f.a(f.f34565a, f.a(R.string.init));
                    Context context = com.octopus.ad.internal.q.a().f35026t;
                    if (context != null) {
                        String strB = o.b(context, "density");
                        f34503o = strB;
                        if (TextUtils.isEmpty(strB)) {
                            String str = context.getResources().getDisplayMetrics().density + "";
                            f34503o = str;
                            o.a(context, "density", str);
                        }
                        String strB2 = o.b(context, "ppi");
                        f34504p = strB2;
                        if (TextUtils.isEmpty(strB2)) {
                            String str2 = context.getResources().getDisplayMetrics().densityDpi + "";
                            f34504p = str2;
                            o.a(context, "ppi", str2);
                        }
                        f34505u = com.octopus.ad.d.b.i.j(context);
                        f34506v = com.octopus.ad.d.b.i.c();
                    }
                }
                aVar = f34500G;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    private String c() {
        Random random = new Random();
        return "" + random.nextInt(10) + random.nextInt(10) + random.nextInt(10) + random.nextInt(10);
    }

    public void b(Context context) {
        String strC = c();
        String strB = b();
        String str = p.b(this.f34520j + "_" + this.f34521k + "_" + com.octopus.ad.d.b.i.d(context) + "_1_" + strC + "_" + strB) + "_1_" + strC + "_" + strB;
        this.f34513c = str;
        o.a(context, f34502b, str);
    }

    private String b() {
        Calendar calendar = Calendar.getInstance(Locale.CHINA);
        calendar.clear();
        calendar.set(2020, 0, 1, 0, 0, 0);
        return String.valueOf(System.currentTimeMillis() - calendar.getTimeInMillis());
    }

    public void a(Context context) {
        String strB;
        try {
            int iB = o.b(context, "SystemMarkStatus", 0);
            com.octopus.ad.d.b.f.d("OctopusAd", "getMarks status= " + iB);
            int i2 = 1;
            if (iB == 1) {
                o.a(context, "SystemMarkStatus", 3);
                o.a(context, "SystemMarkStatusExpireTime", Long.valueOf(System.currentTimeMillis()));
                iB = 3;
            }
            if (iB == 0 || iB == 2) {
                o.a(context, "SystemMarkStatus", 1);
            } else {
                i2 = iB;
            }
            if (i2 == 3) {
                Long l2 = (Long) o.b(context, "SystemMarkStatusExpireTime", Long.valueOf(Long.parseLong("0")));
                if (l2 == null || l2.longValue() == 0 || System.currentTimeMillis() - l2.longValue() <= 2592000000L) {
                    return;
                }
                o.a(context, "SystemMarkStatus", 0);
                o.a(context, "SystemMarkStatusExpireTime", Long.valueOf(Long.parseLong("0")));
                com.octopus.ad.d.b.f.a("OctopusAd", "bootMark expireTime= null and status = 0");
                return;
            }
            if (com.octopus.ad.internal.q.a().f35015f && (strB = OctUtil.a().b()) != null) {
                this.f34527s = strB.substring(0, Math.min(36, strB.length()));
            }
            this.f34528t = OctUtil.a().c();
            o.a(context, "SystemMarkStatus", 2);
            com.octopus.ad.d.b.f.d("OctopusAd", "bootMark = " + this.f34527s + ",updateMark = " + this.f34528t);
        } catch (Throwable th) {
            com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
        }
    }
}
