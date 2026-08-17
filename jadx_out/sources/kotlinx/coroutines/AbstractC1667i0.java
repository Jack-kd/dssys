package kotlinx.coroutines;

import java.util.concurrent.CancellationException;

/* renamed from: kotlinx.coroutines.i0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1667i0 {
    public static final CancellationException a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }
}
