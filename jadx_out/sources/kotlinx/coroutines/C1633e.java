package kotlinx.coroutines;

import androidx.core.location.LocationRequestCompat;
import java.util.concurrent.locks.LockSupport;

/* renamed from: kotlinx.coroutines.e, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1633e extends AbstractC1625a {

    /* renamed from: e, reason: collision with root package name */
    public final Thread f51607e;

    /* renamed from: f, reason: collision with root package name */
    public final AbstractC1632d0 f51608f;

    public C1633e(kotlin.coroutines.i iVar, Thread thread, AbstractC1632d0 abstractC1632d0) {
        super(iVar, true, true);
        this.f51607e = thread;
        this.f51608f = abstractC1632d0;
    }

    @Override // kotlinx.coroutines.y0
    public void M(Object obj) {
        if (kotlin.jvm.internal.j.a(Thread.currentThread(), this.f51607e)) {
            return;
        }
        Thread thread = this.f51607e;
        AbstractC1629c.a();
        LockSupport.unpark(thread);
    }

    public final Object W0() throws Throwable {
        AbstractC1629c.a();
        try {
            AbstractC1632d0 abstractC1632d0 = this.f51608f;
            if (abstractC1632d0 != null) {
                AbstractC1632d0.E(abstractC1632d0, false, 1, null);
            }
            while (!Thread.interrupted()) {
                try {
                    AbstractC1632d0 abstractC1632d02 = this.f51608f;
                    long jI = abstractC1632d02 != null ? abstractC1632d02.I() : LocationRequestCompat.PASSIVE_INTERVAL;
                    if (isCompleted()) {
                        AbstractC1632d0 abstractC1632d03 = this.f51608f;
                        if (abstractC1632d03 != null) {
                            AbstractC1632d0.k(abstractC1632d03, false, 1, null);
                        }
                        AbstractC1629c.a();
                        Object objH = z0.h(h0());
                        A a3 = objH instanceof A ? (A) objH : null;
                        if (a3 == null) {
                            return objH;
                        }
                        throw a3.f51510a;
                    }
                    AbstractC1629c.a();
                    LockSupport.parkNanos(this, jI);
                } catch (Throwable th) {
                    AbstractC1632d0 abstractC1632d04 = this.f51608f;
                    if (abstractC1632d04 != null) {
                        AbstractC1632d0.k(abstractC1632d04, false, 1, null);
                    }
                    throw th;
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            P(interruptedException);
            throw interruptedException;
        } catch (Throwable th2) {
            AbstractC1629c.a();
            throw th2;
        }
    }

    @Override // kotlinx.coroutines.y0
    public boolean o0() {
        return true;
    }
}
