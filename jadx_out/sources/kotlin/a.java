package kotlin;

import java.lang.reflect.InvocationTargetException;
import x1.AbstractC1801b;

/* loaded from: classes5.dex */
public abstract class a {
    public static void a(Throwable th, Throwable exception) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.j.e(th, "<this>");
        kotlin.jvm.internal.j.e(exception, "exception");
        if (th != exception) {
            AbstractC1801b.f52829a.a(th, exception);
        }
    }
}
