package com.sigmob.sdk.base.utils;

import android.util.Log;
import com.sigmob.sdk.base.common.C1250d;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.windad.natives.AdAppInfo;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes4.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public static final int f36593a = 2;

    /* renamed from: b, reason: collision with root package name */
    public static final int f36594b = 3;

    /* renamed from: c, reason: collision with root package name */
    public static final int f36595c = 4;

    /* renamed from: d, reason: collision with root package name */
    public static final int f36596d = 5;

    /* renamed from: e, reason: collision with root package name */
    public static final int f36597e = 6;

    /* renamed from: f, reason: collision with root package name */
    private static final String f36598f = "SigAds";

    /* renamed from: g, reason: collision with root package name */
    private static final boolean f36599g = true;

    /* renamed from: h, reason: collision with root package name */
    private static boolean f36600h = true;

    /* renamed from: i, reason: collision with root package name */
    private static final int f36601i = 1;

    /* renamed from: j, reason: collision with root package name */
    private static final int f36602j = 1;

    /* renamed from: k, reason: collision with root package name */
    private static final int f36603k = 4;

    /* renamed from: l, reason: collision with root package name */
    private static final Set<String> f36604l = new HashSet();

    private static int a(StackTraceElement[] stackTraceElementArr) {
        for (int i2 = 1; i2 < stackTraceElementArr.length; i2++) {
            if (!stackTraceElementArr[i2].getClassName().split("\\$")[0].equals(k.class.getName())) {
                return i2;
            }
        }
        return -1;
    }

    private static String b() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int iA = a(stackTrace);
        int length = iA + 4;
        int length2 = iA + 5;
        if (length >= stackTrace.length) {
            length = stackTrace.length - 1;
        }
        if (length2 > stackTrace.length) {
            length2 = stackTrace.length;
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        for (int i2 = length2 - 1; i2 >= length; i2--) {
            String strA = a(stackTrace[i2]);
            sb.append((CharSequence) sb2);
            sb.append(strA);
            sb.append('\n');
            sb2.append("  ");
        }
        return sb.toString();
    }

    public static void c(String str, String str2, Object... objArr) {
        if (!f36600h || f36604l.contains(str)) {
            return;
        }
        b(str);
        a(a(str2, objArr));
    }

    public static void d(String str, String str2, Object... objArr) {
        if (!f36600h) {
            f36604l.contains(str);
            return;
        }
        String strA = a(str2, objArr);
        if (strA.length() < 3000) {
            b(str);
            return;
        }
        synchronized (k.class) {
            int length = strA.length();
            int i2 = 0;
            int i3 = 0;
            do {
                i2 += 3000;
                if (i2 >= length) {
                    i2 = length - 1;
                }
                b(str);
                strA.substring(i3, i2);
                i3 = i2 + 1;
            } while (i2 != length - 1);
        }
    }

    public static void e(String str, String str2, Object... objArr) {
        if (!f36600h || f36604l.contains(str)) {
            return;
        }
        b(str);
        a(a(str2, objArr));
    }

    public static void f(String str, String str2, Object... objArr) {
        if (!f36600h || f36604l.contains(str)) {
            return;
        }
        Log.e(b(str), a(a(str2, objArr)));
    }

    private static String a() {
        return Thread.currentThread().getName();
    }

    private static String b(String str) {
        return "SigAds#" + str;
    }

    public static void c(String str, Throwable th, String str2, Object... objArr) {
        if (!f36600h || f36604l.contains(str)) {
            return;
        }
        b(str);
        a(a(str2, objArr));
    }

    private static String a(StackTraceElement stackTraceElement) {
        return "(" + stackTraceElement.getFileName() + ':' + stackTraceElement.getLineNumber() + ')';
    }

    public static void b(int i2, String str, String str2, BaseAdUnit baseAdUnit, Map<String, Object> map) {
        if (baseAdUnit == null) {
            f(str, str2 + ": adUnit is null.", new Object[0]);
            return;
        }
        AdAppInfo adAppInfo = baseAdUnit.getAdAppInfo();
        a(i2, str, str2 + ": placementId = " + baseAdUnit.getAdslot_id() + ", requestId = " + baseAdUnit.getRequestId() + ", adType = " + C1250d.a(baseAdUnit.getAd_type()) + ", appInfo = " + adAppInfo + ", params = " + map, new Object[0]);
    }

    private static String a(String str) {
        return str + " [" + a() + "] " + b();
    }

    public static void b(String str, String str2, Object... objArr) {
        if (!f36600h || f36604l.contains(str)) {
            return;
        }
        b(str);
        a(a(str2, objArr));
    }

    public static String a(String str, Object... objArr) {
        return (objArr == null || objArr.length == 0) ? str : String.format(str, objArr);
    }

    public static void b(String str, Throwable th, String str2, Object... objArr) {
        if (!f36600h || f36604l.contains(str)) {
            return;
        }
        b(str);
        a(a(str2, objArr));
    }

    public static void a(int i2, String str, String str2, BaseAdUnit baseAdUnit, Map<String, Object> map) {
        if (baseAdUnit == null) {
            f(str, str2 + ": adUnit is null.", new Object[0]);
            return;
        }
        String vid = baseAdUnit.getVid();
        int playMode = baseAdUnit.getPlayMode();
        String requestId = baseAdUnit.getRequestId();
        String adslot_id = baseAdUnit.getAdslot_id();
        boolean disableAutoLoad = baseAdUnit.getDisableAutoLoad();
        a(i2, str, str2 + ": placementId = " + adslot_id + ", sceneType = " + baseAdUnit.getRequestSceneType() + ", requestId = " + requestId + ", playMode = " + playMode + ", autoLoad = " + disableAutoLoad + ", adType = " + C1250d.a(baseAdUnit.getAd_type()) + ", vid = " + vid + ", params = " + map, new Object[0]);
    }

    public static void a(int i2, String str, String str2, LoadAdRequest loadAdRequest, Map<String, Object> map) {
        if (loadAdRequest == null) {
            f(str, str2 + ": request is null.", new Object[0]);
            return;
        }
        String requestId = loadAdRequest.getRequestId();
        a(i2, str, str2 + ": placementId = " + loadAdRequest.getPlacementId() + ", sceneType = " + loadAdRequest.getRequest_scene_type() + ", requestId = " + requestId + ", adType = " + C1250d.a(loadAdRequest.getAdType()) + ", params = " + map, new Object[0]);
    }

    public static void a(int i2, String str, String str2, Object... objArr) {
        if (i2 == 2) {
            a(str, str2, objArr);
            return;
        }
        if (i2 == 3) {
            c(str, str2, objArr);
            return;
        }
        if (i2 == 4) {
            b(str, str2, objArr);
            return;
        }
        if (i2 == 5) {
            e(str, str2, objArr);
        } else if (i2 != 6) {
            f(str, "level is unknown.", new Object[0]);
        } else {
            f(str, str2, objArr);
        }
    }

    public static void a(Class<?> cls) {
        f36604l.add(cls.getSimpleName());
    }

    public static void a(String str, String str2, Throwable th, Object... objArr) {
        if (!f36600h || f36604l.contains(str)) {
            return;
        }
        Log.e(b(str), a(a(str2, objArr)), th);
    }

    public static void a(String str, String str2, Object... objArr) {
        if (!f36600h || f36604l.contains(str)) {
            return;
        }
        b(str);
        a(a(str2, objArr));
    }

    public static void a(String str, Throwable th) {
        if (!f36600h || f36604l.contains(str)) {
            return;
        }
        b(str);
    }

    public static void a(String str, Throwable th, String str2, Object... objArr) {
        if (!f36600h || f36604l.contains(str)) {
            return;
        }
        b(str);
        a(a(str2, objArr));
    }

    public static void a(boolean z2) {
        f36600h = z2;
    }
}
