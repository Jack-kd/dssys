package H1;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Ref$ObjectRef;

/* loaded from: classes5.dex */
public final class k {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f143b = AtomicReferenceFieldUpdater.newUpdater(k.class, Object.class, "lastScheduledTask$volatile");

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f144c = AtomicIntegerFieldUpdater.newUpdater(k.class, "producerIndex$volatile");

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f145d = AtomicIntegerFieldUpdater.newUpdater(k.class, "consumerIndex$volatile");

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f146e = AtomicIntegerFieldUpdater.newUpdater(k.class, "blockingTasksInBuffer$volatile");

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray f147a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    public final g a(g gVar, boolean z2) {
        if (z2) {
            return b(gVar);
        }
        g gVar2 = (g) f143b.getAndSet(this, gVar);
        if (gVar2 == null) {
            return null;
        }
        return b(gVar2);
    }

    public final g b(g gVar) {
        if (e() == 127) {
            return gVar;
        }
        if (gVar.f134c) {
            f146e.incrementAndGet(this);
        }
        int i2 = f144c.get(this) & 127;
        while (this.f147a.get(i2) != null) {
            Thread.yield();
        }
        this.f147a.lazySet(i2, gVar);
        f144c.incrementAndGet(this);
        return null;
    }

    public final void c(g gVar) {
        if (gVar == null || !gVar.f134c) {
            return;
        }
        f146e.decrementAndGet(this);
    }

    public final int e() {
        return f144c.get(this) - f145d.get(this);
    }

    public final int i() {
        return f143b.get(this) != null ? e() + 1 : e();
    }

    public final void j(c cVar) {
        g gVar = (g) f143b.getAndSet(this, null);
        if (gVar != null) {
            cVar.a(gVar);
        }
        while (n(cVar)) {
        }
    }

    public final g k() {
        g gVar = (g) f143b.getAndSet(this, null);
        return gVar == null ? m() : gVar;
    }

    public final g l() {
        return o(true);
    }

    public final g m() {
        g gVar;
        while (true) {
            int i2 = f145d.get(this);
            if (i2 - f144c.get(this) == 0) {
                return null;
            }
            int i3 = i2 & 127;
            if (f145d.compareAndSet(this, i2, i2 + 1) && (gVar = (g) this.f147a.getAndSet(i3, null)) != null) {
                c(gVar);
                return gVar;
            }
        }
    }

    public final boolean n(c cVar) {
        g gVarM = m();
        if (gVarM == null) {
            return false;
        }
        cVar.a(gVarM);
        return true;
    }

    public final g o(boolean z2) {
        g gVar;
        do {
            gVar = (g) f143b.get(this);
            if (gVar == null || gVar.f134c != z2) {
                int i2 = f145d.get(this);
                int i3 = f144c.get(this);
                while (i2 != i3) {
                    if (z2 && f146e.get(this) == 0) {
                        return null;
                    }
                    i3--;
                    g gVarQ = q(i3, z2);
                    if (gVarQ != null) {
                        return gVarQ;
                    }
                }
                return null;
            }
        } while (!androidx.concurrent.futures.a.a(f143b, this, gVar, null));
        return gVar;
    }

    public final g p(int i2) {
        int i3 = f145d.get(this);
        int i4 = f144c.get(this);
        boolean z2 = i2 == 1;
        while (i3 != i4) {
            if (z2 && f146e.get(this) == 0) {
                return null;
            }
            int i5 = i3 + 1;
            g gVarQ = q(i3, z2);
            if (gVarQ != null) {
                return gVarQ;
            }
            i3 = i5;
        }
        return null;
    }

    public final g q(int i2, boolean z2) {
        int i3 = i2 & 127;
        g gVar = (g) this.f147a.get(i3);
        if (gVar == null || gVar.f134c != z2 || !kotlinx.coroutines.channels.k.a(this.f147a, i3, gVar, null)) {
            return null;
        }
        if (z2) {
            f146e.decrementAndGet(this);
        }
        return gVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long r(int i2, Ref$ObjectRef ref$ObjectRef) {
        T tM = i2 == 3 ? m() : p(i2);
        if (tM == 0) {
            return s(i2, ref$ObjectRef);
        }
        ref$ObjectRef.element = tM;
        return -1L;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [H1.g, T, java.lang.Object] */
    public final long s(int i2, Ref$ObjectRef ref$ObjectRef) {
        ?? r02;
        do {
            r02 = (g) f143b.get(this);
            if (r02 == 0) {
                return -2L;
            }
            if (((r02.f134c ? 1 : 2) & i2) == 0) {
                return -2L;
            }
            long jA = i.f141f.a() - r02.f133b;
            long j2 = i.f137b;
            if (jA < j2) {
                return j2 - jA;
            }
        } while (!androidx.concurrent.futures.a.a(f143b, this, r02, null));
        ref$ObjectRef.element = r02;
        return -1L;
    }
}
