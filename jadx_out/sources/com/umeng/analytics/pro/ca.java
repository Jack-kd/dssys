package com.umeng.analytics.pro;

import android.text.TextUtils;
import com.umeng.analytics.pro.cc;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.net.URL;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class ca {

    /* renamed from: a, reason: collision with root package name */
    public static final String f49001a = "resolve.umeng.com";

    /* renamed from: b, reason: collision with root package name */
    public static final int f49002b = 15000;

    /* renamed from: c, reason: collision with root package name */
    private static ce f49003c = null;

    /* renamed from: d, reason: collision with root package name */
    private static volatile int f49004d = -1;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final ca f49005a = new ca();

        private a() {
        }
    }

    public static ca a() {
        return a.f49005a;
    }

    private String c() {
        if (f49003c == null) {
            f49003c = ce.b();
        }
        cc ccVar = new cc("https://resolve.umeng.com/resolve", cc.a.GET, null, f49003c);
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 发送domain下发请求。");
        return ccVar.a(f49002b, "");
    }

    public synchronized boolean b() {
        try {
            if (f49004d < 0) {
                String strImprintProperty = UMEnvelopeBuild.imprintProperty(UMGlobalContext.getAppContext(), "cj_domain", "0");
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> cj_domain读取值：" + strImprintProperty);
                if ("1".equalsIgnoreCase(strImprintProperty)) {
                    f49004d = 1;
                } else {
                    f49004d = 0;
                }
            }
            return f49004d <= 0;
        } catch (Throwable th) {
            throw th;
        }
    }

    private ca() {
    }

    public synchronized String a(String str) {
        String str2 = "";
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        c();
        String strC = ce.b().c();
        if (!TextUtils.isEmpty(strC)) {
            str2 = "https://" + strC + ServiceReference.DELIMITER + str;
        }
        return str2;
    }

    private static String c(String str) {
        try {
            return new URL(str).getHost();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return "https://" + str + ServiceReference.DELIMITER + str2;
        }
        return "";
    }

    public static String b(String str) {
        try {
            String strC = c(str);
            return str.substring(str.indexOf(strC) + strC.length() + 1);
        } catch (Throwable unused) {
            return "";
        }
    }
}
