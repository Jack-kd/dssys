package com.beizi.fusion;

import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class uo {

    /* renamed from: a, reason: collision with root package name */
    private Method f16519a;

    /* renamed from: b, reason: collision with root package name */
    private Method f16520b;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static uo f16521a = new uo();
    }

    private void a() throws SecurityException {
        try {
            for (Method method : Class.forName("android.os.SystemProperties").getMethods()) {
                String name = method.getName();
                if (name.equals("getLong")) {
                    this.f16519a = method;
                } else if (name.equals("get")) {
                    this.f16520b = method;
                }
            }
        } catch (ClassNotFoundException unused) {
        }
    }

    private uo() throws SecurityException {
        if (b.f16521a != null) {
            throw new RuntimeException("Singleton ...");
        }
        a();
    }

    public static long a(String str, long j2) {
        try {
            if (b.f16521a.f16519a != null) {
                return ((Long) b.f16521a.f16519a.invoke(null, str, Long.valueOf(j2))).longValue();
            }
        } catch (Throwable unused) {
        }
        return j2;
    }

    public static String a(String str, String str2) {
        try {
            if (b.f16521a.f16520b != null) {
                return b.f16521a.f16520b.invoke(null, str, str2).toString();
            }
        } catch (Throwable unused) {
        }
        return str2;
    }
}
