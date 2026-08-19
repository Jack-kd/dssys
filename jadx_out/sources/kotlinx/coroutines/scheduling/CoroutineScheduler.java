package kotlinx.coroutines.scheduling;

import H1.g;
import H1.i;
import H1.k;
import androidx.core.location.LocationRequestCompat;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.AbstractC1629c;
import kotlinx.coroutines.O;
import kotlinx.coroutines.internal.B;
import kotlinx.coroutines.internal.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes5.dex */
public final class CoroutineScheduler implements Executor, Closeable {

    /* renamed from: i, reason: collision with root package name */
    public static final a f51832i = new a(null);

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f51833j = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f51834k = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51835l = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");

    /* renamed from: m, reason: collision with root package name */
    public static final B f51836m = new B("NOT_IN_STACK");
    private volatile /* synthetic */ int _isTerminated$volatile;

    /* renamed from: b, reason: collision with root package name */
    public final int f51837b;

    /* renamed from: c, reason: collision with root package name */
    public final int f51838c;
    private volatile /* synthetic */ long controlState$volatile;

    /* renamed from: d, reason: collision with root package name */
    public final long f51839d;

    /* renamed from: e, reason: collision with root package name */
    public final String f51840e;

    /* renamed from: f, reason: collision with root package name */
    public final H1.c f51841f;

    /* renamed from: g, reason: collision with root package name */
    public final H1.c f51842g;

    /* renamed from: h, reason: collision with root package name */
    public final w f51843h;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "<init>", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class WorkerState {
        private static final /* synthetic */ kotlin.enums.a $ENTRIES;
        private static final /* synthetic */ WorkerState[] $VALUES;
        public static final WorkerState CPU_ACQUIRED = new WorkerState("CPU_ACQUIRED", 0);
        public static final WorkerState BLOCKING = new WorkerState("BLOCKING", 1);
        public static final WorkerState PARKING = new WorkerState("PARKING", 2);
        public static final WorkerState DORMANT = new WorkerState("DORMANT", 3);
        public static final WorkerState TERMINATED = new WorkerState("TERMINATED", 4);

        private static final /* synthetic */ WorkerState[] $values() {
            return new WorkerState[]{CPU_ACQUIRED, BLOCKING, PARKING, DORMANT, TERMINATED};
        }

        static {
            WorkerState[] workerStateArr$values = $values();
            $VALUES = workerStateArr$values;
            $ENTRIES = kotlin.enums.b.a(workerStateArr$values);
        }

        private WorkerState(String str, int i2) {
        }

        @NotNull
        public static kotlin.enums.a getEntries() {
            return $ENTRIES;
        }

        public static WorkerState valueOf(String str) {
            return (WorkerState) Enum.valueOf(WorkerState.class, str);
        }

        public static WorkerState[] values() {
            return (WorkerState[]) $VALUES.clone();
        }
    }

    public static final class a {
        public /* synthetic */ a(f fVar) {
            this();
        }

        public a() {
        }
    }

    public /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51844a;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f51844a = iArr;
        }
    }

    public CoroutineScheduler(int i2, int i3, long j2, String str) {
        this.f51837b = i2;
        this.f51838c = i3;
        this.f51839d = j2;
        this.f51840e = str;
        if (i2 < 1) {
            throw new IllegalArgumentException(("Core pool size " + i2 + " should be at least 1").toString());
        }
        if (i3 < i2) {
            throw new IllegalArgumentException(("Max pool size " + i3 + " should be greater than or equals to core pool size " + i2).toString());
        }
        if (i3 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i3 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j2 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j2 + " must be positive").toString());
        }
        this.f51841f = new H1.c();
        this.f51842g = new H1.c();
        this.f51843h = new w((i2 + 1) * 2);
        this.controlState$volatile = i2 << 42;
        this._isTerminated$volatile = 0;
    }

    public static /* synthetic */ void D(CoroutineScheduler coroutineScheduler, Runnable runnable, boolean z2, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        if ((i2 & 4) != 0) {
            z3 = false;
        }
        coroutineScheduler.C(runnable, z2, z3);
    }

    public static final /* synthetic */ AtomicLongFieldUpdater E() {
        return f51834k;
    }

    public static /* synthetic */ boolean R(CoroutineScheduler coroutineScheduler, long j2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j2 = f51834k.get(coroutineScheduler);
        }
        return coroutineScheduler.Q(j2);
    }

    public final g A(Runnable runnable, boolean z2) {
        long jA = i.f141f.a();
        if (!(runnable instanceof g)) {
            return i.b(runnable, jA, z2);
        }
        g gVar = (g) runnable;
        gVar.f133b = jA;
        gVar.f134c = z2;
        return gVar;
    }

    public final c B() {
        Thread threadCurrentThread = Thread.currentThread();
        c cVar = threadCurrentThread instanceof c ? (c) threadCurrentThread : null;
        if (cVar == null || !j.a(CoroutineScheduler.this, this)) {
            return null;
        }
        return cVar;
    }

    public final void C(Runnable runnable, boolean z2, boolean z3) {
        AbstractC1629c.a();
        g gVarA = A(runnable, z2);
        boolean z4 = gVarA.f134c;
        long jAddAndGet = z4 ? f51834k.addAndGet(this, 2097152L) : 0L;
        c cVarB = B();
        g gVarP = P(cVarB, gVarA, z3);
        if (gVarP != null && !c(gVarP)) {
            throw new RejectedExecutionException(this.f51840e + " was terminated");
        }
        boolean z5 = z3 && cVarB != null;
        if (z4) {
            N(jAddAndGet, z5);
        } else {
            if (z5) {
                return;
            }
            O();
        }
    }

    public final int H(c cVar) {
        Object objG = cVar.g();
        while (objG != f51836m) {
            if (objG == null) {
                return 0;
            }
            c cVar2 = (c) objG;
            int iF = cVar2.f();
            if (iF != 0) {
                return iF;
            }
            objG = cVar2.g();
        }
        return -1;
    }

    public final c I() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51833j;
        while (true) {
            long j2 = atomicLongFieldUpdater.get(this);
            c cVar = (c) this.f51843h.b((int) (2097151 & j2));
            if (cVar == null) {
                return null;
            }
            long j3 = (2097152 + j2) & (-2097152);
            int iH = H(cVar);
            if (iH >= 0 && f51833j.compareAndSet(this, j2, iH | j3)) {
                cVar.o(f51836m);
                return cVar;
            }
        }
    }

    public final boolean J(c cVar) {
        long j2;
        int iF;
        if (cVar.g() != f51836m) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51833j;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            iF = cVar.f();
            cVar.o(this.f51843h.b((int) (2097151 & j2)));
        } while (!f51833j.compareAndSet(this, j2, ((2097152 + j2) & (-2097152)) | iF));
        return true;
    }

    public final void K(c cVar, int i2, int i3) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51833j;
        while (true) {
            long j2 = atomicLongFieldUpdater.get(this);
            int iH = (int) (2097151 & j2);
            long j3 = (2097152 + j2) & (-2097152);
            if (iH == i2) {
                iH = i3 == 0 ? H(cVar) : i3;
            }
            if (iH >= 0) {
                if (f51833j.compareAndSet(this, j2, j3 | iH)) {
                    return;
                }
            }
        }
    }

    public final void L(g gVar) {
        try {
            gVar.run();
        } catch (Throwable th) {
            try {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
            } finally {
                AbstractC1629c.a();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M(long r8) throws java.lang.InterruptedException {
        /*
            r7 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = G()
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r7, r1, r2)
            if (r0 != 0) goto Ld
            return
        Ld:
            kotlinx.coroutines.scheduling.CoroutineScheduler$c r0 = r7.B()
            kotlinx.coroutines.internal.w r1 = r7.f51843h
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = b()     // Catch: java.lang.Throwable -> L8f
            long r3 = r3.get(r7)     // Catch: java.lang.Throwable -> L8f
            r5 = 2097151(0x1fffff, double:1.0361303E-317)
            long r3 = r3 & r5
            int r3 = (int) r3
            monitor-exit(r1)
            if (r2 > r3) goto L4d
            r1 = r2
        L25:
            kotlinx.coroutines.internal.w r4 = r7.f51843h
            java.lang.Object r4 = r4.b(r1)
            kotlin.jvm.internal.j.b(r4)
            kotlinx.coroutines.scheduling.CoroutineScheduler$c r4 = (kotlinx.coroutines.scheduling.CoroutineScheduler.c) r4
            if (r4 == r0) goto L48
        L32:
            java.lang.Thread$State r5 = r4.getState()
            java.lang.Thread$State r6 = java.lang.Thread.State.TERMINATED
            if (r5 == r6) goto L41
            java.util.concurrent.locks.LockSupport.unpark(r4)
            r4.join(r8)
            goto L32
        L41:
            H1.k r4 = r4.f51846b
            H1.c r5 = r7.f51842g
            r4.j(r5)
        L48:
            if (r1 == r3) goto L4d
            int r1 = r1 + 1
            goto L25
        L4d:
            H1.c r8 = r7.f51842g
            r8.b()
            H1.c r8 = r7.f51841f
            r8.b()
        L57:
            if (r0 == 0) goto L5f
            H1.g r8 = r0.e(r2)
            if (r8 != 0) goto L8b
        L5f:
            H1.c r8 = r7.f51841f
            java.lang.Object r8 = r8.e()
            H1.g r8 = (H1.g) r8
            if (r8 != 0) goto L8b
            H1.c r8 = r7.f51842g
            java.lang.Object r8 = r8.e()
            H1.g r8 = (H1.g) r8
            if (r8 != 0) goto L8b
            if (r0 == 0) goto L7a
            kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState r8 = kotlinx.coroutines.scheduling.CoroutineScheduler.WorkerState.TERMINATED
            r0.r(r8)
        L7a:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r8 = F()
            r0 = 0
            r8.set(r7, r0)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r8 = E()
            r8.set(r7, r0)
            return
        L8b:
            r7.L(r8)
            goto L57
        L8f:
            r8 = move-exception
            monitor-exit(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.M(long):void");
    }

    public final void N(long j2, boolean z2) {
        if (z2 || S() || Q(j2)) {
            return;
        }
        S();
    }

    public final void O() {
        if (S() || R(this, 0L, 1, null)) {
            return;
        }
        S();
    }

    public final g P(c cVar, g gVar, boolean z2) {
        WorkerState workerState;
        if (cVar == null || (workerState = cVar.f51848d) == WorkerState.TERMINATED) {
            return gVar;
        }
        if (!gVar.f134c && workerState == WorkerState.BLOCKING) {
            return gVar;
        }
        cVar.f51852h = true;
        return cVar.f51846b.a(gVar, z2);
    }

    public final boolean Q(long j2) {
        if (E1.f.b(((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21)), 0) < this.f51837b) {
            int iZ = z();
            if (iZ == 1 && this.f51837b > 1) {
                z();
            }
            if (iZ > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean S() {
        c cVarI;
        do {
            cVarI = I();
            if (cVarI == null) {
                return false;
            }
        } while (!c.f51845j.compareAndSet(cVarI, -1, 0));
        LockSupport.unpark(cVarI);
        return true;
    }

    public final boolean c(g gVar) {
        return gVar.f134c ? this.f51842g.a(gVar) : this.f51841f.a(gVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        M(10000L);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        D(this, runnable, false, false, 6, null);
    }

    public final boolean isTerminated() {
        return f51835l.get(this) != 0;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.f51843h.a();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 1; i7 < iA; i7++) {
            c cVar = (c) this.f51843h.b(i7);
            if (cVar != null) {
                int i8 = cVar.f51846b.i();
                int i9 = b.f51844a[cVar.f51848d.ordinal()];
                if (i9 == 1) {
                    i4++;
                } else if (i9 == 2) {
                    i3++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i8);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i9 == 3) {
                    i2++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i8);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i9 == 4) {
                    i5++;
                    if (i8 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i8);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    if (i9 != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    i6++;
                }
            }
        }
        long j2 = f51834k.get(this);
        return this.f51840e + '@' + O.b(this) + "[Pool Size {core = " + this.f51837b + ", max = " + this.f51838c + "}, Worker States {CPU = " + i2 + ", blocking = " + i3 + ", parked = " + i4 + ", dormant = " + i5 + ", terminated = " + i6 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f51841f.c() + ", global blocking queue size = " + this.f51842g.c() + ", Control State {created workers= " + ((int) (2097151 & j2)) + ", blocking tasks = " + ((int) ((4398044413952L & j2) >> 21)) + ", CPUs acquired = " + (this.f51837b - ((int) ((9223367638808264704L & j2) >> 42))) + "}]";
    }

    public final int z() {
        synchronized (this.f51843h) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                long j2 = f51834k.get(this);
                int i2 = (int) (j2 & 2097151);
                int iB = E1.f.b(i2 - ((int) ((j2 & 4398044413952L) >> 21)), 0);
                if (iB >= this.f51837b) {
                    return 0;
                }
                if (i2 >= this.f51838c) {
                    return 0;
                }
                int i3 = ((int) (E().get(this) & 2097151)) + 1;
                if (i3 <= 0 || this.f51843h.b(i3) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                c cVar = new c(this, i3);
                this.f51843h.c(i3, cVar);
                if (i3 != ((int) (2097151 & f51834k.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i4 = iB + 1;
                cVar.start();
                return i4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final class c extends Thread {

        /* renamed from: j, reason: collision with root package name */
        public static final /* synthetic */ AtomicIntegerFieldUpdater f51845j = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl$volatile");

        /* renamed from: b, reason: collision with root package name */
        public final k f51846b;

        /* renamed from: c, reason: collision with root package name */
        public final Ref$ObjectRef f51847c;

        /* renamed from: d, reason: collision with root package name */
        public WorkerState f51848d;

        /* renamed from: e, reason: collision with root package name */
        public long f51849e;

        /* renamed from: f, reason: collision with root package name */
        public long f51850f;

        /* renamed from: g, reason: collision with root package name */
        public int f51851g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f51852h;
        private volatile int indexInArray;

        @Nullable
        private volatile Object nextParkedWorker;
        private volatile /* synthetic */ int workerCtl$volatile;

        public c() {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.this.getClass().getClassLoader());
            this.f51846b = new k();
            this.f51847c = new Ref$ObjectRef();
            this.f51848d = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.f51836m;
            int iNanoTime = (int) System.nanoTime();
            this.f51851g = iNanoTime == 0 ? 42 : iNanoTime;
        }

        public final void b(g gVar) {
            this.f51849e = 0L;
            if (this.f51848d == WorkerState.PARKING) {
                this.f51848d = WorkerState.BLOCKING;
            }
            if (!gVar.f134c) {
                CoroutineScheduler.this.L(gVar);
                return;
            }
            if (r(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.O();
            }
            CoroutineScheduler.this.L(gVar);
            CoroutineScheduler.E().addAndGet(CoroutineScheduler.this, -2097152L);
            if (this.f51848d != WorkerState.TERMINATED) {
                this.f51848d = WorkerState.DORMANT;
            }
        }

        public final g c(boolean z2) {
            g gVarL;
            g gVarL2;
            if (z2) {
                boolean z3 = j(CoroutineScheduler.this.f51837b * 2) == 0;
                if (z3 && (gVarL2 = l()) != null) {
                    return gVarL2;
                }
                g gVarK = this.f51846b.k();
                if (gVarK != null) {
                    return gVarK;
                }
                if (!z3 && (gVarL = l()) != null) {
                    return gVarL;
                }
            } else {
                g gVarL3 = l();
                if (gVarL3 != null) {
                    return gVarL3;
                }
            }
            return s(3);
        }

        public final g d() {
            g gVarL = this.f51846b.l();
            if (gVarL != null) {
                return gVarL;
            }
            g gVar = (g) CoroutineScheduler.this.f51842g.e();
            return gVar == null ? s(1) : gVar;
        }

        public final g e(boolean z2) {
            return p() ? c(z2) : d();
        }

        public final int f() {
            return this.indexInArray;
        }

        public final Object g() {
            return this.nextParkedWorker;
        }

        public final boolean i() {
            return this.nextParkedWorker != CoroutineScheduler.f51836m;
        }

        public final int j(int i2) {
            int i3 = this.f51851g;
            int i4 = i3 ^ (i3 << 13);
            int i5 = i4 ^ (i4 >> 17);
            int i6 = i5 ^ (i5 << 5);
            this.f51851g = i6;
            int i7 = i2 - 1;
            return (i7 & i2) == 0 ? i6 & i7 : (i6 & Integer.MAX_VALUE) % i2;
        }

        public final void k() {
            if (this.f51849e == 0) {
                this.f51849e = System.nanoTime() + CoroutineScheduler.this.f51839d;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.f51839d);
            if (System.nanoTime() - this.f51849e >= 0) {
                this.f51849e = 0L;
                t();
            }
        }

        public final g l() {
            if (j(2) == 0) {
                g gVar = (g) CoroutineScheduler.this.f51841f.e();
                return gVar != null ? gVar : (g) CoroutineScheduler.this.f51842g.e();
            }
            g gVar2 = (g) CoroutineScheduler.this.f51842g.e();
            return gVar2 != null ? gVar2 : (g) CoroutineScheduler.this.f51841f.e();
        }

        public final void m() {
            loop0: while (true) {
                boolean z2 = false;
                while (!CoroutineScheduler.this.isTerminated() && this.f51848d != WorkerState.TERMINATED) {
                    g gVarE = e(this.f51852h);
                    if (gVarE != null) {
                        this.f51850f = 0L;
                        b(gVarE);
                    } else {
                        this.f51852h = false;
                        if (this.f51850f == 0) {
                            q();
                        } else if (z2) {
                            r(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f51850f);
                            this.f51850f = 0L;
                        } else {
                            z2 = true;
                        }
                    }
                }
                break loop0;
            }
            r(WorkerState.TERMINATED);
        }

        public final void n(int i2) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.f51840e);
            sb.append("-worker-");
            sb.append(i2 == 0 ? "TERMINATED" : String.valueOf(i2));
            setName(sb.toString());
            this.indexInArray = i2;
        }

        public final void o(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean p() {
            long j2;
            if (this.f51848d == WorkerState.CPU_ACQUIRED) {
                return true;
            }
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            AtomicLongFieldUpdater atomicLongFieldUpdaterE = CoroutineScheduler.E();
            do {
                j2 = atomicLongFieldUpdaterE.get(coroutineScheduler);
                if (((int) ((9223367638808264704L & j2) >> 42)) == 0) {
                    return false;
                }
            } while (!CoroutineScheduler.E().compareAndSet(coroutineScheduler, j2, j2 - 4398046511104L));
            this.f51848d = WorkerState.CPU_ACQUIRED;
            return true;
        }

        public final void q() {
            if (!i()) {
                CoroutineScheduler.this.J(this);
                return;
            }
            f51845j.set(this, -1);
            while (i() && f51845j.get(this) == -1 && !CoroutineScheduler.this.isTerminated() && this.f51848d != WorkerState.TERMINATED) {
                r(WorkerState.PARKING);
                Thread.interrupted();
                k();
            }
        }

        public final boolean r(WorkerState workerState) {
            WorkerState workerState2 = this.f51848d;
            boolean z2 = workerState2 == WorkerState.CPU_ACQUIRED;
            if (z2) {
                CoroutineScheduler.E().addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.f51848d = workerState;
            }
            return z2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            m();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final g s(int i2) {
            int i3 = (int) (CoroutineScheduler.E().get(CoroutineScheduler.this) & 2097151);
            if (i3 < 2) {
                return null;
            }
            int iJ = j(i3);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long jMin = Long.MAX_VALUE;
            for (int i4 = 0; i4 < i3; i4++) {
                iJ++;
                if (iJ > i3) {
                    iJ = 1;
                }
                c cVar = (c) coroutineScheduler.f51843h.b(iJ);
                if (cVar != null && cVar != this) {
                    long jR = cVar.f51846b.r(i2, this.f51847c);
                    if (jR == -1) {
                        Ref$ObjectRef ref$ObjectRef = this.f51847c;
                        g gVar = (g) ref$ObjectRef.element;
                        ref$ObjectRef.element = null;
                        return gVar;
                    }
                    if (jR > 0) {
                        jMin = Math.min(jMin, jR);
                    }
                }
            }
            if (jMin == LocationRequestCompat.PASSIVE_INTERVAL) {
                jMin = 0;
            }
            this.f51850f = jMin;
            return null;
        }

        public final void t() {
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (coroutineScheduler.f51843h) {
                try {
                    if (coroutineScheduler.isTerminated()) {
                        return;
                    }
                    if (((int) (CoroutineScheduler.E().get(coroutineScheduler) & 2097151)) <= coroutineScheduler.f51837b) {
                        return;
                    }
                    if (f51845j.compareAndSet(this, -1, 1)) {
                        int i2 = this.indexInArray;
                        n(0);
                        coroutineScheduler.K(this, i2, 0);
                        int andDecrement = (int) (CoroutineScheduler.E().getAndDecrement(coroutineScheduler) & 2097151);
                        if (andDecrement != i2) {
                            Object objB = coroutineScheduler.f51843h.b(andDecrement);
                            j.b(objB);
                            c cVar = (c) objB;
                            coroutineScheduler.f51843h.c(i2, cVar);
                            cVar.n(i2);
                            coroutineScheduler.K(cVar, andDecrement, i2);
                        }
                        coroutineScheduler.f51843h.c(andDecrement, null);
                        kotlin.j jVar = kotlin.j.f51397a;
                        this.f51848d = WorkerState.TERMINATED;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public c(CoroutineScheduler coroutineScheduler, int i2) {
            this();
            n(i2);
        }
    }
}
