package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlinx.coroutines.AbstractC1634e0;

/* renamed from: kotlinx.coroutines.f0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1636f0 extends AbstractC1632d0 {
    public abstract Thread L();

    public void M(long j2, AbstractC1634e0.c cVar) {
        P.f51525h.a0(j2, cVar);
    }

    public final void N() {
        Thread threadL = L();
        if (Thread.currentThread() != threadL) {
            AbstractC1629c.a();
            LockSupport.unpark(threadL);
        }
    }
}
