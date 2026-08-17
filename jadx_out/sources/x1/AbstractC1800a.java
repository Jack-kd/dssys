package x1;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.collections.m;
import kotlin.jvm.internal.j;
import kotlin.random.Random;

/* renamed from: x1.a, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1800a {

    /* renamed from: x1.a$a, reason: collision with other inner class name */
    public static final class C0890a {

        /* renamed from: a, reason: collision with root package name */
        public static final C0890a f52826a = new C0890a();

        /* renamed from: b, reason: collision with root package name */
        public static final Method f52827b;

        /* renamed from: c, reason: collision with root package name */
        public static final Method f52828c;

        static {
            Method method;
            Method method2;
            Method[] methods = Throwable.class.getMethods();
            j.b(methods);
            int length = methods.length;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                method = null;
                if (i3 >= length) {
                    method2 = null;
                    break;
                }
                method2 = methods[i3];
                if (j.a(method2.getName(), "addSuppressed")) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    j.d(parameterTypes, "getParameterTypes(...)");
                    if (j.a(m.T(parameterTypes), Throwable.class)) {
                        break;
                    }
                }
                i3++;
            }
            f52827b = method2;
            int length2 = methods.length;
            while (true) {
                if (i2 >= length2) {
                    break;
                }
                Method method3 = methods[i2];
                if (j.a(method3.getName(), "getSuppressed")) {
                    method = method3;
                    break;
                }
                i2++;
            }
            f52828c = method;
        }
    }

    public void a(Throwable cause, Throwable exception) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        j.e(cause, "cause");
        j.e(exception, "exception");
        Method method = C0890a.f52827b;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    public Random b() {
        return new kotlin.random.b();
    }

    public abstract kotlin.time.a c();
}
