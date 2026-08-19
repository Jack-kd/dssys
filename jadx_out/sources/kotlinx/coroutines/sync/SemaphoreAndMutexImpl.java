package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.j;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.U0;
import kotlinx.coroutines.channels.k;
import kotlinx.coroutines.internal.AbstractC1668a;
import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.internal.z;

/* loaded from: classes5.dex */
public class SemaphoreAndMutexImpl {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51889c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "head$volatile");

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f51890d = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51891e = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "tail$volatile");

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f51892f = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51893g = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");
    private volatile /* synthetic */ int _availablePermits$volatile;

    /* renamed from: a, reason: collision with root package name */
    public final int f51894a;

    /* renamed from: b, reason: collision with root package name */
    public final Function3 f51895b;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    public SemaphoreAndMutexImpl(int i2, int i3) {
        this.f51894a = i2;
        if (i2 <= 0) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i2).toString());
        }
        if (i3 < 0 || i3 > i2) {
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i2).toString());
        }
        i iVar = new i(0L, null, 2);
        this.head$volatile = iVar;
        this.tail$volatile = iVar;
        this._availablePermits$volatile = i2 - i3;
        this.f51895b = new Function3() { // from class: kotlinx.coroutines.sync.h
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return SemaphoreAndMutexImpl.p(this.f51917b, (Throwable) obj, (j) obj2, (kotlin.coroutines.i) obj3);
            }
        };
    }

    public static final j p(SemaphoreAndMutexImpl semaphoreAndMutexImpl, Throwable th, j jVar, kotlin.coroutines.i iVar) {
        semaphoreAndMutexImpl.q();
        return j.f51397a;
    }

    public final void e(InterfaceC1687l interfaceC1687l) {
        while (h() <= 0) {
            kotlin.jvm.internal.j.c(interfaceC1687l, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (f((U0) interfaceC1687l)) {
                return;
            }
        }
        interfaceC1687l.q(j.f51397a, this.f51895b);
    }

    public final boolean f(U0 u02) {
        Object objC;
        i iVar = (i) f51891e.get(this);
        long andIncrement = f51892f.getAndIncrement(this);
        SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51891e;
        long j2 = andIncrement / SemaphoreKt.f51901f;
        loop0: while (true) {
            objC = AbstractC1668a.c(iVar, j2, semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1);
            if (!z.c(objC)) {
                y yVarB = z.b(objC);
                while (true) {
                    y yVar = (y) atomicReferenceFieldUpdater.get(this);
                    if (yVar.f51813d >= yVarB.f51813d) {
                        break loop0;
                    }
                    if (!yVarB.u()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, yVar, yVarB)) {
                        if (yVar.p()) {
                            yVar.n();
                        }
                    } else if (yVarB.p()) {
                        yVarB.n();
                    }
                }
            } else {
                break;
            }
        }
        i iVar2 = (i) z.b(objC);
        int i2 = (int) (andIncrement % SemaphoreKt.f51901f);
        if (k.a(iVar2.v(), i2, null, u02)) {
            u02.b(iVar2, i2);
            return true;
        }
        if (!k.a(iVar2.v(), i2, SemaphoreKt.f51897b, SemaphoreKt.f51898c)) {
            return false;
        }
        if (u02 instanceof InterfaceC1687l) {
            kotlin.jvm.internal.j.c(u02, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            ((InterfaceC1687l) u02).q(j.f51397a, this.f51895b);
        } else {
            if (!(u02 instanceof kotlinx.coroutines.selects.i)) {
                throw new IllegalStateException(("unexpected: " + u02).toString());
            }
            ((kotlinx.coroutines.selects.i) u02).d(j.f51397a);
        }
        return true;
    }

    public final void g() {
        int i2;
        do {
            i2 = f51893g.get(this);
            if (i2 <= this.f51894a) {
                return;
            }
        } while (!f51893g.compareAndSet(this, i2, this.f51894a));
    }

    public final int h() {
        int andDecrement;
        do {
            andDecrement = f51893g.getAndDecrement(this);
        } while (andDecrement > this.f51894a);
        return andDecrement;
    }

    public final int i() {
        return Math.max(f51893g.get(this), 0);
    }

    public final void o(kotlinx.coroutines.selects.i iVar, Object obj) {
        while (h() <= 0) {
            kotlin.jvm.internal.j.c(iVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (f((U0) iVar)) {
                return;
            }
        }
        iVar.d(j.f51397a);
    }

    public final void q() {
        do {
            int andIncrement = f51893g.getAndIncrement(this);
            if (andIncrement >= this.f51894a) {
                g();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.f51894a).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!t());
    }

    public final boolean r() {
        while (true) {
            int i2 = f51893g.get(this);
            if (i2 > this.f51894a) {
                g();
            } else {
                if (i2 <= 0) {
                    return false;
                }
                if (f51893g.compareAndSet(this, i2, i2 - 1)) {
                    return true;
                }
            }
        }
    }

    public final boolean s(Object obj) {
        if (!(obj instanceof InterfaceC1687l)) {
            if (obj instanceof kotlinx.coroutines.selects.i) {
                return ((kotlinx.coroutines.selects.i) obj).f(this, j.f51397a);
            }
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
        kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        InterfaceC1687l interfaceC1687l = (InterfaceC1687l) obj;
        Object objD = interfaceC1687l.D(j.f51397a, null, this.f51895b);
        if (objD == null) {
            return false;
        }
        interfaceC1687l.t(objD);
        return true;
    }

    public final boolean t() {
        Object objC;
        i iVar = (i) f51889c.get(this);
        long andIncrement = f51890d.getAndIncrement(this);
        long j2 = andIncrement / SemaphoreKt.f51901f;
        SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51889c;
        loop0: while (true) {
            objC = AbstractC1668a.c(iVar, j2, semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1);
            if (z.c(objC)) {
                break;
            }
            y yVarB = z.b(objC);
            while (true) {
                y yVar = (y) atomicReferenceFieldUpdater.get(this);
                if (yVar.f51813d >= yVarB.f51813d) {
                    break loop0;
                }
                if (!yVarB.u()) {
                    break;
                }
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, yVar, yVarB)) {
                    if (yVar.p()) {
                        yVar.n();
                    }
                } else if (yVarB.p()) {
                    yVarB.n();
                }
            }
        }
        i iVar2 = (i) z.b(objC);
        iVar2.b();
        if (iVar2.f51813d > j2) {
            return false;
        }
        int i2 = (int) (andIncrement % SemaphoreKt.f51901f);
        Object andSet = iVar2.v().getAndSet(i2, SemaphoreKt.f51897b);
        if (andSet != null) {
            if (andSet == SemaphoreKt.f51900e) {
                return false;
            }
            return s(andSet);
        }
        int i3 = SemaphoreKt.f51896a;
        for (int i4 = 0; i4 < i3; i4++) {
            if (iVar2.v().get(i2) == SemaphoreKt.f51898c) {
                return true;
            }
        }
        return !k.a(iVar2.v(), i2, SemaphoreKt.f51897b, SemaphoreKt.f51899d);
    }
}
