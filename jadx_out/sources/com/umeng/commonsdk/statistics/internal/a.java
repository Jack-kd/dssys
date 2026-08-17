package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.bv;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.utils.UMUtils;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Context f50323a;

    /* renamed from: b, reason: collision with root package name */
    private String f50324b;

    /* renamed from: c, reason: collision with root package name */
    private String f50325c;

    /* renamed from: com.umeng.commonsdk.statistics.internal.a$a, reason: collision with other inner class name */
    public static class C0863a {

        /* renamed from: a, reason: collision with root package name */
        private static final a f50326a = new a();

        private C0863a() {
        }
    }

    public static a a(Context context) {
        if (f50323a == null && context != null) {
            f50323a = context.getApplicationContext();
        }
        return C0863a.f50326a;
    }

    private void f(String str) {
        try {
            this.f50324b = str.replaceAll("&=", " ").replaceAll("&&", " ").replaceAll("==", ServiceReference.DELIMITER) + ServiceReference.DELIMITER + AnalyticsConstants.SDK_TYPE + " " + HelperUtils.getUmengMD5(UMUtils.getAppkey(f50323a));
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f50323a, th);
        }
    }

    private void g(String str) {
        try {
            String str2 = str.split("&&")[0];
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            String[] strArrSplit = str2.split("&=");
            StringBuilder sb = new StringBuilder();
            sb.append(bv.aQ);
            for (String str3 : strArrSplit) {
                if (!TextUtils.isEmpty(str3)) {
                    String strSubstring = str3.substring(0, 2);
                    if (strSubstring.endsWith("=")) {
                        strSubstring = strSubstring.replace("=", "");
                    }
                    sb.append(strSubstring);
                }
            }
            this.f50325c = sb.toString();
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f50323a, th);
        }
    }

    public boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(bv.aI);
    }

    public boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(bv.aD);
    }

    public boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("h");
    }

    public void e(String str) {
        String strSubstring = str.substring(0, str.indexOf(95));
        g(strSubstring);
        f(strSubstring);
    }

    private a() {
        this.f50324b = null;
        this.f50325c = null;
    }

    public String b() {
        return this.f50324b;
    }

    public boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("a");
    }

    public String a() {
        return this.f50325c;
    }
}
