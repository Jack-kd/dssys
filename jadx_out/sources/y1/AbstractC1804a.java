package y1;

import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.j;
import x1.AbstractC1800a;

/* renamed from: y1.a, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1804a extends AbstractC1800a {

    /* renamed from: y1.a$a, reason: collision with other inner class name */
    public static final class C0891a {

        /* renamed from: a, reason: collision with root package name */
        public static final C0891a f52830a = new C0891a();

        /* renamed from: b, reason: collision with root package name */
        public static final Integer f52831b;

        static {
            Object obj;
            Integer num = null;
            try {
                obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Throwable unused) {
            }
            Integer num2 = obj instanceof Integer ? (Integer) obj : null;
            if (num2 != null && num2.intValue() > 0) {
                num = num2;
            }
            f52831b = num;
        }
    }

    private final boolean d(int i2) {
        Integer num = C0891a.f52831b;
        return num == null || num.intValue() >= i2;
    }

    @Override // x1.AbstractC1800a
    public void a(Throwable cause, Throwable exception) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        j.e(cause, "cause");
        j.e(exception, "exception");
        if (d(19)) {
            cause.addSuppressed(exception);
        } else {
            super.a(cause, exception);
        }
    }
}
