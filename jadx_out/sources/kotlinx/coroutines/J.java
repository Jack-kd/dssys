package kotlinx.coroutines;

import java.lang.reflect.InvocationTargetException;
import kotlinx.coroutines.internal.AbstractC1673f;

/* loaded from: classes5.dex */
public abstract class J {
    public static final void a(kotlin.coroutines.i iVar, Throwable th) {
        try {
            I i2 = (I) iVar.get(I.S2);
            if (i2 != null) {
                i2.m(iVar, th);
            } else {
                AbstractC1673f.a(iVar, th);
            }
        } catch (Throwable th2) {
            AbstractC1673f.a(iVar, b(th, th2));
        }
    }

    public static final Throwable b(Throwable th, Throwable th2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        kotlin.a.a(runtimeException, th);
        return runtimeException;
    }
}
