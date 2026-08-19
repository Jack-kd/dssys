package kotlinx.coroutines;

import androidx.core.location.LocationRequestCompat;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.T;
import kotlinx.coroutines.internal.C1682o;
import org.jetbrains.annotations.Nullable;

/* renamed from: kotlinx.coroutines.e0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1634e0 extends AbstractC1636f0 implements T {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51609e = AtomicReferenceFieldUpdater.newUpdater(AbstractC1634e0.class, Object.class, "_queue$volatile");

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51610f = AtomicReferenceFieldUpdater.newUpdater(AbstractC1634e0.class, Object.class, "_delayed$volatile");

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51611g = AtomicIntegerFieldUpdater.newUpdater(AbstractC1634e0.class, "_isCompleted$volatile");
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile = 0;
    private volatile /* synthetic */ Object _queue$volatile;

    /* renamed from: kotlinx.coroutines.e0$a */
    public final class a extends c {

        /* renamed from: d, reason: collision with root package name */
        public final InterfaceC1687l f51612d;

        public a(long j2, InterfaceC1687l interfaceC1687l) {
            super(j2);
            this.f51612d = interfaceC1687l;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f51612d.x(AbstractC1634e0.this, kotlin.j.f51397a);
        }

        @Override // kotlinx.coroutines.AbstractC1634e0.c
        public String toString() {
            return super.toString() + this.f51612d;
        }
    }

    /* renamed from: kotlinx.coroutines.e0$b */
    public static final class b extends c {

        /* renamed from: d, reason: collision with root package name */
        public final Runnable f51614d;

        public b(long j2, Runnable runnable) {
            super(j2);
            this.f51614d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f51614d.run();
        }

        @Override // kotlinx.coroutines.AbstractC1634e0.c
        public String toString() {
            return super.toString() + this.f51614d;
        }
    }

    /* renamed from: kotlinx.coroutines.e0$c */
    public static abstract class c implements Runnable, Comparable, Z, kotlinx.coroutines.internal.N {

        @Nullable
        private volatile Object _heap;

        /* renamed from: b, reason: collision with root package name */
        public long f51615b;

        /* renamed from: c, reason: collision with root package name */
        public int f51616c = -1;

        public c(long j2) {
            this.f51615b = j2;
        }

        @Override // kotlinx.coroutines.internal.N
        public void a(kotlinx.coroutines.internal.M m2) {
            if (this._heap == AbstractC1665h0.f51749a) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this._heap = m2;
        }

        @Override // kotlinx.coroutines.internal.N
        public kotlinx.coroutines.internal.M c() {
            Object obj = this._heap;
            if (obj instanceof kotlinx.coroutines.internal.M) {
                return (kotlinx.coroutines.internal.M) obj;
            }
            return null;
        }

        @Override // java.lang.Comparable
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            long j2 = this.f51615b - cVar.f51615b;
            if (j2 > 0) {
                return 1;
            }
            return j2 < 0 ? -1 : 0;
        }

        @Override // kotlinx.coroutines.Z
        public final void dispose() {
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    if (obj == AbstractC1665h0.f51749a) {
                        return;
                    }
                    d dVar = obj instanceof d ? (d) obj : null;
                    if (dVar != null) {
                        dVar.h(this);
                    }
                    this._heap = AbstractC1665h0.f51749a;
                    kotlin.j jVar = kotlin.j.f51397a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final int e(long j2, d dVar, AbstractC1634e0 abstractC1634e0) {
            synchronized (this) {
                if (this._heap == AbstractC1665h0.f51749a) {
                    return 2;
                }
                synchronized (dVar) {
                    try {
                        c cVar = (c) dVar.b();
                        if (abstractC1634e0.isCompleted()) {
                            return 1;
                        }
                        if (cVar == null) {
                            dVar.f51617c = j2;
                        } else {
                            long j3 = cVar.f51615b;
                            if (j3 - j2 < 0) {
                                j2 = j3;
                            }
                            if (j2 - dVar.f51617c > 0) {
                                dVar.f51617c = j2;
                            }
                        }
                        long j4 = this.f51615b;
                        long j5 = dVar.f51617c;
                        if (j4 - j5 < 0) {
                            this.f51615b = j5;
                        }
                        dVar.a(this);
                        return 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        public final boolean f(long j2) {
            return j2 - this.f51615b >= 0;
        }

        @Override // kotlinx.coroutines.internal.N
        public int getIndex() {
            return this.f51616c;
        }

        @Override // kotlinx.coroutines.internal.N
        public void setIndex(int i2) {
            this.f51616c = i2;
        }

        public String toString() {
            return "Delayed[nanos=" + this.f51615b + ']';
        }
    }

    /* renamed from: kotlinx.coroutines.e0$d */
    public static final class d extends kotlinx.coroutines.internal.M {

        /* renamed from: c, reason: collision with root package name */
        public long f51617c;

        public d(long j2) {
            this.f51617c = j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isCompleted() {
        return f51611g.get(this) != 0;
    }

    @Override // kotlinx.coroutines.AbstractC1632d0
    public long C() {
        c cVar;
        if (super.C() == 0) {
            return 0L;
        }
        Object obj = f51609e.get(this);
        if (obj != null) {
            if (!(obj instanceof C1682o)) {
                if (obj == AbstractC1665h0.f51750b) {
                    return LocationRequestCompat.PASSIVE_INTERVAL;
                }
                return 0L;
            }
            if (!((C1682o) obj).j()) {
                return 0L;
            }
        }
        d dVar = (d) f51610f.get(this);
        if (dVar == null || (cVar = (c) dVar.f()) == null) {
            return LocationRequestCompat.PASSIVE_INTERVAL;
        }
        long j2 = cVar.f51615b;
        AbstractC1629c.a();
        return E1.f.c(j2 - System.nanoTime(), 0L);
    }

    @Override // kotlinx.coroutines.AbstractC1632d0
    public long I() {
        if (J()) {
            return 0L;
        }
        S();
        Runnable runnableQ = Q();
        if (runnableQ == null) {
            return C();
        }
        runnableQ.run();
        return 0L;
    }

    public final void P() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51609e;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(f51609e, this, null, AbstractC1665h0.f51750b)) {
                    return;
                }
            } else if (obj instanceof C1682o) {
                ((C1682o) obj).d();
                return;
            } else {
                if (obj == AbstractC1665h0.f51750b) {
                    return;
                }
                C1682o c1682o = new C1682o(8, true);
                kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type java.lang.Runnable");
                c1682o.a((Runnable) obj);
                if (androidx.concurrent.futures.a.a(f51609e, this, obj, c1682o)) {
                    return;
                }
            }
        }
    }

    public final Runnable Q() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51609e;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (obj instanceof C1682o) {
                kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>");
                C1682o c1682o = (C1682o) obj;
                Object objM = c1682o.m();
                if (objM != C1682o.f51799h) {
                    return (Runnable) objM;
                }
                androidx.concurrent.futures.a.a(f51609e, this, obj, c1682o.l());
            } else {
                if (obj == AbstractC1665h0.f51750b) {
                    return null;
                }
                if (androidx.concurrent.futures.a.a(f51609e, this, obj, null)) {
                    kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type java.lang.Runnable");
                    return (Runnable) obj;
                }
            }
        }
    }

    public void R(Runnable runnable) {
        S();
        if (T(runnable)) {
            N();
        } else {
            P.f51525h.R(runnable);
        }
    }

    public final void S() {
        kotlinx.coroutines.internal.N nI;
        d dVar = (d) f51610f.get(this);
        if (dVar == null || dVar.e()) {
            return;
        }
        AbstractC1629c.a();
        long jNanoTime = System.nanoTime();
        do {
            synchronized (dVar) {
                try {
                    kotlinx.coroutines.internal.N nB = dVar.b();
                    if (nB != null) {
                        c cVar = (c) nB;
                        nI = cVar.f(jNanoTime) ? T(cVar) : false ? dVar.i(0) : null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (((c) nI) != null);
    }

    public final boolean T(Runnable runnable) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51609e;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (isCompleted()) {
                return false;
            }
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(f51609e, this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof C1682o) {
                kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>");
                C1682o c1682o = (C1682o) obj;
                int iA = c1682o.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    androidx.concurrent.futures.a.a(f51609e, this, obj, c1682o.l());
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (obj == AbstractC1665h0.f51750b) {
                    return false;
                }
                C1682o c1682o2 = new C1682o(8, true);
                kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type java.lang.Runnable");
                c1682o2.a((Runnable) obj);
                c1682o2.a(runnable);
                if (androidx.concurrent.futures.a.a(f51609e, this, obj, c1682o2)) {
                    return true;
                }
            }
        }
    }

    public boolean X() {
        if (!H()) {
            return false;
        }
        d dVar = (d) f51610f.get(this);
        if (dVar != null && !dVar.e()) {
            return false;
        }
        Object obj = f51609e.get(this);
        if (obj == null) {
            return true;
        }
        return obj instanceof C1682o ? ((C1682o) obj).j() : obj == AbstractC1665h0.f51750b;
    }

    public final void Y() {
        c cVar;
        AbstractC1629c.a();
        long jNanoTime = System.nanoTime();
        while (true) {
            d dVar = (d) f51610f.get(this);
            if (dVar == null || (cVar = (c) dVar.j()) == null) {
                return;
            } else {
                M(jNanoTime, cVar);
            }
        }
    }

    public final void Z() {
        f51609e.set(this, null);
        f51610f.set(this, null);
    }

    public final void a0(long j2, c cVar) {
        int iB0 = b0(j2, cVar);
        if (iB0 == 0) {
            if (e0(cVar)) {
                N();
            }
        } else if (iB0 == 1) {
            M(j2, cVar);
        } else if (iB0 != 2) {
            throw new IllegalStateException("unexpected result");
        }
    }

    public final int b0(long j2, c cVar) {
        if (isCompleted()) {
            return 1;
        }
        d dVar = (d) f51610f.get(this);
        if (dVar == null) {
            androidx.concurrent.futures.a.a(f51610f, this, null, new d(j2));
            Object obj = f51610f.get(this);
            kotlin.jvm.internal.j.b(obj);
            dVar = (d) obj;
        }
        return cVar.e(j2, dVar, this);
    }

    public final Z c0(long j2, Runnable runnable) {
        long jD = AbstractC1665h0.d(j2);
        if (jD >= 4611686018427387903L) {
            return D0.f51515b;
        }
        AbstractC1629c.a();
        long jNanoTime = System.nanoTime();
        b bVar = new b(jD + jNanoTime, runnable);
        a0(jNanoTime, bVar);
        return bVar;
    }

    @Override // kotlinx.coroutines.T
    public void d(long j2, InterfaceC1687l interfaceC1687l) {
        long jD = AbstractC1665h0.d(j2);
        if (jD < 4611686018427387903L) {
            AbstractC1629c.a();
            long jNanoTime = System.nanoTime();
            a aVar = new a(jD + jNanoTime, interfaceC1687l);
            a0(jNanoTime, aVar);
            AbstractC1695p.a(interfaceC1687l, aVar);
        }
    }

    public final void d0(boolean z2) {
        f51611g.set(this, z2 ? 1 : 0);
    }

    @Override // kotlinx.coroutines.H
    public final void dispatch(kotlin.coroutines.i iVar, Runnable runnable) {
        R(runnable);
    }

    public final boolean e0(c cVar) {
        d dVar = (d) f51610f.get(this);
        return (dVar != null ? (c) dVar.f() : null) == cVar;
    }

    public Z f(long j2, Runnable runnable, kotlin.coroutines.i iVar) {
        return T.a.a(this, j2, runnable, iVar);
    }

    @Override // kotlinx.coroutines.AbstractC1632d0
    public void shutdown() {
        O0.f51523a.c();
        d0(true);
        P();
        while (I() <= 0) {
        }
        Y();
    }
}
