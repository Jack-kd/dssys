package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: kotlinx.coroutines.l0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1688l0 extends AbstractC1686k0 implements T {

    /* renamed from: c, reason: collision with root package name */
    public final Executor f51817c;

    public C1688l0(Executor executor) {
        this.f51817c = executor;
        if (C() instanceof ScheduledThreadPoolExecutor) {
            ((ScheduledThreadPoolExecutor) C()).setRemoveOnCancelPolicy(true);
        }
    }

    public Executor C() {
        return this.f51817c;
    }

    public final ScheduledFuture D(ScheduledExecutorService scheduledExecutorService, Runnable runnable, kotlin.coroutines.i iVar, long j2) {
        try {
            return scheduledExecutorService.schedule(runnable, j2, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e2) {
            j(iVar, e2);
            return null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor executorC = C();
        ExecutorService executorService = executorC instanceof ExecutorService ? (ExecutorService) executorC : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override // kotlinx.coroutines.T
    public void d(long j2, InterfaceC1687l interfaceC1687l) {
        long j3;
        Executor executorC = C();
        ScheduledFuture scheduledFutureD = null;
        ScheduledExecutorService scheduledExecutorService = executorC instanceof ScheduledExecutorService ? (ScheduledExecutorService) executorC : null;
        if (scheduledExecutorService != null) {
            j3 = j2;
            scheduledFutureD = D(scheduledExecutorService, new I0(this, interfaceC1687l), interfaceC1687l.getContext(), j3);
        } else {
            j3 = j2;
        }
        if (scheduledFutureD != null) {
            AbstractC1695p.c(interfaceC1687l, new C1683j(scheduledFutureD));
        } else {
            P.f51525h.d(j3, interfaceC1687l);
        }
    }

    @Override // kotlinx.coroutines.H
    public void dispatch(kotlin.coroutines.i iVar, Runnable runnable) {
        try {
            Executor executorC = C();
            AbstractC1629c.a();
            executorC.execute(runnable);
        } catch (RejectedExecutionException e2) {
            AbstractC1629c.a();
            j(iVar, e2);
            X.b().dispatch(iVar, runnable);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof C1688l0) && ((C1688l0) obj).C() == C();
    }

    @Override // kotlinx.coroutines.T
    public Z f(long j2, Runnable runnable, kotlin.coroutines.i iVar) {
        long j3;
        Runnable runnable2;
        kotlin.coroutines.i iVar2;
        Executor executorC = C();
        ScheduledFuture scheduledFutureD = null;
        ScheduledExecutorService scheduledExecutorService = executorC instanceof ScheduledExecutorService ? (ScheduledExecutorService) executorC : null;
        if (scheduledExecutorService != null) {
            j3 = j2;
            runnable2 = runnable;
            iVar2 = iVar;
            scheduledFutureD = D(scheduledExecutorService, runnable2, iVar2, j3);
        } else {
            j3 = j2;
            runnable2 = runnable;
            iVar2 = iVar;
        }
        return scheduledFutureD != null ? new Y(scheduledFutureD) : P.f51525h.f(j3, runnable2, iVar2);
    }

    public int hashCode() {
        return System.identityHashCode(C());
    }

    public final void j(kotlin.coroutines.i iVar, RejectedExecutionException rejectedExecutionException) {
        AbstractC1709w0.c(iVar, AbstractC1667i0.a("The task was rejected", rejectedExecutionException));
    }

    @Override // kotlinx.coroutines.H
    public String toString() {
        return C().toString();
    }
}
