package com.octopus.ad.internal.c;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.octopus.ad.a.g;
import com.umeng.analytics.pro.bv;
import java.util.Locale;

/* loaded from: classes4.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static String f34533a = "ethernet";

    /* renamed from: b, reason: collision with root package name */
    public static int f34534b = 2;

    /* renamed from: c, reason: collision with root package name */
    private static DisplayMetrics f34535c;

    public static void a(Context context) {
        a aVarA = a.a();
        if (TextUtils.isEmpty(aVarA.f34513c)) {
            try {
                b(context, aVarA);
                c(context, aVarA);
                a(context, aVarA);
                aVarA.a(context);
                aVarA.f34529w = com.octopus.ad.d.b.i.k(context);
                aVarA.f34530x = com.octopus.ad.d.b.i.l(context);
                aVarA.f34531y = com.octopus.ad.d.b.i.e();
                aVarA.f34532z = com.octopus.ad.d.b.i.m(context);
                aVarA.f34507A = com.octopus.ad.d.b.i.n(context);
                aVarA.f34508B = com.octopus.ad.d.b.i.o(context);
                aVarA.f34509C = com.octopus.ad.d.b.i.p(context);
                aVarA.f34510D = com.octopus.ad.d.b.i.q(context);
                aVarA.f34511E = com.octopus.ad.d.b.i.d(context, "com.tencent.mm");
                aVarA.f34512F = com.octopus.ad.d.b.i.b(context);
            } catch (Throwable th) {
                com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
            }
        }
    }

    private static void b(Context context, a aVar) {
        try {
            if (((TelephonyManager) context.getApplicationContext().getSystemService("phone")).getPhoneType() != 0) {
                aVar.f34519i = g.b.DEVICE_PHONE;
            } else {
                aVar.f34519i = g.b.DEVICE_FLAT;
            }
        } catch (SecurityException unused) {
            f.e(f.f34565a, "No permission to access imei");
            int i2 = context.getResources().getConfiguration().screenLayout & 15;
            if (i2 == 4 || i2 == 3) {
                aVar.f34519i = g.b.DEVICE_FLAT;
            } else {
                aVar.f34519i = g.b.DEVICE_PHONE;
            }
        }
        aVar.f34515e = com.octopus.ad.d.b.i.b();
        aVar.f34516f = com.octopus.ad.d.b.i.g();
        aVar.f34517g = com.octopus.ad.d.b.i.r(context);
    }

    private static void c(Context context, a aVar) {
        String strB = o.b(context, bv.f48925z);
        String strB2 = o.b(context, "screenSize");
        if (TextUtils.isEmpty(strB) || TextUtils.isEmpty(strB2)) {
            DisplayMetrics displayMetricsB = b(context);
            String str = displayMetricsB.widthPixels + "_" + displayMetricsB.heightPixels;
            float f2 = displayMetricsB.heightPixels / displayMetricsB.ydpi;
            float f3 = displayMetricsB.widthPixels / displayMetricsB.xdpi;
            double dSqrt = Math.sqrt((f3 * f3) + (f2 * f2));
            String str2 = String.format(Locale.US, "%.2f", Double.valueOf(Math.round(dSqrt * r6) / Math.pow(10.0d, f34534b)));
            o.a(context, bv.f48925z, str);
            o.a(context, "screenSize", str2);
            strB2 = str2;
            strB = str;
        }
        aVar.f34523m = strB;
        aVar.f34524n = strB2;
    }

    public static DisplayMetrics b(Context context) {
        if (f34535c == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            f34535c = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(f34535c);
        }
        return f34535c;
    }

    private static void a(Context context, a aVar) {
        String str = (String) o.b(context, a.f34502b, "");
        aVar.f34513c = str;
        if (TextUtils.isEmpty(str)) {
            aVar.b(context);
        }
    }
}
