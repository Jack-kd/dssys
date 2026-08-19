package com.qq.e.comm.managers.plugin;

import java.lang.reflect.Method;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Method f35355a = null;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f35356b = false;

    private static void a(Throwable th) throws Throwable {
        if (f35356b) {
            return;
        }
        if (f35355a == null) {
            Method declaredMethod = Class.forName("com.tencent.bugly.crashreport.CrashReport").getDeclaredMethod("postCatchedException", Throwable.class);
            f35355a = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        f35355a.invoke(null, th);
    }

    public static void a(Throwable th, String str) {
        try {
            a(new Exception("插件错误：" + str, th));
        } catch (Throwable unused) {
            f35356b = true;
        }
    }
}
