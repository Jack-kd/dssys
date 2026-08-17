package com.octopus.ad.utils;

import android.content.Context;
import android.text.TextUtils;
import com.octopus.ad.d.b.f;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* loaded from: classes4.dex */
public class OctUtil implements InvocationHandler {

    /* renamed from: a, reason: collision with root package name */
    private static OctUtil f35074a;

    public interface C {
        String e(String str);
    }

    public interface E {
        void e(Throwable th);
    }

    static {
        try {
            a.a();
        } catch (Throwable th) {
            f.a("OctopusAd", "A Throwable Caught", th);
        }
    }

    private OctUtil() {
    }

    public static OctUtil a() {
        if (f35074a == null) {
            f35074a = new OctUtil();
        }
        return f35074a;
    }

    private int callInt(int i2, Object... objArr) {
        Object objCallRaw = callRaw(i2, objArr);
        if (objCallRaw instanceof Number) {
            return ((Number) objCallRaw).intValue();
        }
        if (!(objCallRaw instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) objCallRaw);
        } catch (Throwable unused) {
            return 0;
        }
    }

    private Object callRaw(int i2, Object... objArr) {
        a.b();
        try {
            return nativeEntry(i2, objArr);
        } catch (UnsatisfiedLinkError e2) {
            f.a("OctopusAd", "nativeEntry not implemented, cmd=" + i2, e2);
            return null;
        } catch (Throwable th) {
            f.a("OctopusAd", "nativeEntry failed, cmd=" + i2, th);
            return null;
        } finally {
            a.c();
        }
    }

    private String callString(int i2, Object... objArr) {
        Object objCallRaw = callRaw(i2, objArr);
        return objCallRaw == null ? "" : String.valueOf(objCallRaw);
    }

    private void callVoid(int i2, Object... objArr) {
        callRaw(i2, objArr);
    }

    private static void crashCallback(String str) {
        f.d("OctopusAd", "crashCallback: " + str);
        com.octopus.a.a.a().b();
    }

    private native Object nativeEntry(int i2, Object[] objArr);

    public String b() {
        return callString(2, new Object[0]);
    }

    public String c() {
        return callString(3, new Object[0]);
    }

    public int d() {
        return callInt(5, new Object[0]);
    }

    public void e() {
        callVoid(6, new Object[0]);
    }

    @Override // java.lang.reflect.InvocationHandler
    public native Object invoke(Object obj, Method method, Object[] objArr);

    public void b(Context context, String str, String str2, boolean z2, C c2) {
        if (context == null || TextUtils.isEmpty(str)) {
            if (c2 != null) {
                c2.e("-1");
                return;
            }
            return;
        }
        try {
            a(context, str, str2, z2, c2);
        } catch (Throwable th) {
            f.a("OctopusAd", "A Throwable Caught", th);
            if (c2 != null) {
                c2.e("-2," + th);
            }
        }
    }

    public void a(Context context) {
        callVoid(1, context);
    }

    public String a(Context context, int i2) {
        return callString(4, context, Integer.valueOf(i2));
    }

    public void a(String str) {
        callVoid(7, str);
    }

    public void a(C c2, int i2) {
        callVoid(8, c2, Integer.valueOf(i2));
    }

    public void a(E e2) {
        callVoid(9, e2);
    }

    public void a(Context context, String str, String str2, boolean z2, C c2) {
        callVoid(10, context, str, str2, Boolean.valueOf(z2), c2);
    }
}
