package com.umeng.analytics.pro;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public class au {

    /* renamed from: a, reason: collision with root package name */
    private static String f48713a = "";

    /* renamed from: b, reason: collision with root package name */
    private static String f48714b = "";

    /* renamed from: c, reason: collision with root package name */
    private static final String f48715c = "hw_sc.build.platform.version";

    /* renamed from: d, reason: collision with root package name */
    private static final String f48716d = "ro.build.version.emui";

    /* renamed from: e, reason: collision with root package name */
    private static final String f48717e = "ro.build.version.magic";

    /* renamed from: f, reason: collision with root package name */
    private static final String f48718f = "ro.miui.ui.version.name";

    /* renamed from: g, reason: collision with root package name */
    private static final String f48719g = "ro.build.version.opporom";

    /* renamed from: h, reason: collision with root package name */
    private static final String f48720h = "ro.vivo.os.name";

    /* renamed from: i, reason: collision with root package name */
    private static final String f48721i = "ro.vivo.os.version";

    /* renamed from: j, reason: collision with root package name */
    private static final String f48722j = "ro.build.version.oplusrom";

    /* renamed from: k, reason: collision with root package name */
    private static final String f48723k = "ro.rom.version";

    private static boolean a() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return !TextUtils.isEmpty((String) cls.getMethod("getOsBrand", null).invoke(cls, null));
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(f48713a)) {
            e(str);
        }
        return f48714b;
    }

    public static String c(String str) {
        return TextUtils.isEmpty(str) ? "" : str.replaceAll(" ", "").toUpperCase();
    }

    private static String d(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void e(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.au.e(java.lang.String):void");
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(f48713a)) {
            e(str);
        }
        return f48713a;
    }
}
