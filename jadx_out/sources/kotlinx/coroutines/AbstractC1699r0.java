package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.jvm.functions.Function0;

/* renamed from: kotlinx.coroutines.r0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1699r0 {
    public static final Object b(kotlin.coroutines.i iVar, Function0 function0) throws Throwable {
        try {
            P0 p02 = new P0();
            p02.A(AbstractC1709w0.h(iVar));
            try {
                return function0.invoke();
            } finally {
                p02.x();
            }
        } catch (InterruptedException e2) {
            throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e2);
        }
    }
}
