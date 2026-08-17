package kotlin.jvm.internal;

import java.util.Arrays;
import kotlin.UninitializedPropertyAccessException;

/* loaded from: classes5.dex */
public abstract class j {

    public static class a {
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static void b(Object obj) {
        if (obj == null) {
            n();
        }
    }

    public static void c(Object obj, String str) {
        if (obj == null) {
            o(str);
        }
    }

    public static void d(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) l(new NullPointerException(str + " must not be null")));
    }

    public static void e(Object obj, String str) {
        if (obj == null) {
            q(str);
        }
    }

    public static void f(Object obj, String str) {
        if (obj == null) {
            p(str);
        }
    }

    public static int g(int i2, int i3) {
        if (i2 < i3) {
            return -1;
        }
        return i2 == i3 ? 0 : 1;
    }

    public static int h(long j2, long j3) {
        if (j2 < j3) {
            return -1;
        }
        return j2 == j3 ? 0 : 1;
    }

    public static String i(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = j.class.getName();
        int i2 = 0;
        while (!stackTrace[i2].getClassName().equals(name)) {
            i2++;
        }
        while (stackTrace[i2].getClassName().equals(name)) {
            i2++;
        }
        StackTraceElement stackTraceElement = stackTrace[i2];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + com.anythink.core.common.d.i.f2495E + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    public static void j() {
        r();
    }

    public static void k(int i2, String str) {
        r();
    }

    public static Throwable l(Throwable th) {
        return m(th, j.class.getName());
    }

    public static Throwable m(Throwable th, String str) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            if (str.equals(stackTrace[i3].getClassName())) {
                i2 = i3;
            }
        }
        th.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i2 + 1, length));
        return th;
    }

    public static void n() {
        throw ((NullPointerException) l(new NullPointerException()));
    }

    public static void o(String str) {
        throw ((NullPointerException) l(new NullPointerException(str)));
    }

    public static void p(String str) {
        throw ((IllegalArgumentException) l(new IllegalArgumentException(i(str))));
    }

    public static void q(String str) {
        throw ((NullPointerException) l(new NullPointerException(i(str))));
    }

    public static void r() {
        s("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void s(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static void t(String str) {
        throw ((UninitializedPropertyAccessException) l(new UninitializedPropertyAccessException(str)));
    }

    public static void u(String str) {
        t("lateinit property " + str + " has not been initialized");
    }
}
