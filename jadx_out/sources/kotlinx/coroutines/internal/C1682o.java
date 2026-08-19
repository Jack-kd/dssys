package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: kotlinx.coroutines.internal.o, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1682o {

    /* renamed from: e, reason: collision with root package name */
    public static final a f51796e = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51797f = AtomicReferenceFieldUpdater.newUpdater(C1682o.class, Object.class, "_next$volatile");

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f51798g = AtomicLongFieldUpdater.newUpdater(C1682o.class, "_state$volatile");

    /* renamed from: h, reason: collision with root package name */
    public static final B f51799h = new B("REMOVE_FROZEN");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;

    /* renamed from: a, reason: collision with root package name */
    public final int f51800a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f51801b;

    /* renamed from: c, reason: collision with root package name */
    public final int f51802c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AtomicReferenceArray f51803d;

    /* renamed from: kotlinx.coroutines.internal.o$a */
    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.f fVar) {
            this();
        }

        public final int a(long j2) {
            return (j2 & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long b(long j2, int i2) {
            return d(j2, 1073741823L) | i2;
        }

        public final long c(long j2, int i2) {
            return d(j2, 1152921503533105152L) | (i2 << 30);
        }

        public final long d(long j2, long j3) {
            return j2 & (~j3);
        }

        public a() {
        }
    }

    /* renamed from: kotlinx.coroutines.internal.o$b */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f51804a;

        public b(int i2) {
            this.f51804a = i2;
        }
    }

    public C1682o(int i2, boolean z2) {
        this.f51800a = i2;
        this.f51801b = z2;
        int i3 = i2 - 1;
        this.f51802c = i3;
        this.f51803d = new AtomicReferenceArray(i2);
        if (i3 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i2 & i3) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(java.lang.Object r13) {
        /*
            r12 = this;
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = i()
        L4:
            long r3 = r0.get(r12)
            r1 = 3458764513820540928(0x3000000000000000, double:1.727233711018889E-77)
            long r1 = r1 & r3
            r7 = 0
            int r1 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r1 == 0) goto L18
            kotlinx.coroutines.internal.o$a r13 = kotlinx.coroutines.internal.C1682o.f51796e
            int r13 = r13.a(r3)
            return r13
        L18:
            r1 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r1 = r1 & r3
            int r1 = (int) r1
            r5 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r5 = r5 & r3
            r2 = 30
            long r5 = r5 >> r2
            int r9 = (int) r5
            int r10 = r12.f51802c
            int r2 = r9 + 2
            r2 = r2 & r10
            r5 = r1 & r10
            r6 = 1
            if (r2 != r5) goto L32
            return r6
        L32:
            boolean r2 = r12.f51801b
            r5 = 1073741823(0x3fffffff, float:1.9999999)
            if (r2 != 0) goto L53
            java.util.concurrent.atomic.AtomicReferenceArray r2 = r12.f()
            r11 = r9 & r10
            java.lang.Object r2 = r2.get(r11)
            if (r2 == 0) goto L53
            int r2 = r12.f51800a
            r3 = 1024(0x400, float:1.435E-42)
            if (r2 < r3) goto L52
            int r9 = r9 - r1
            r1 = r9 & r5
            int r2 = r2 >> 1
            if (r1 <= r2) goto L4
        L52:
            return r6
        L53:
            int r1 = r9 + 1
            r1 = r1 & r5
            r2 = r1
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = i()
            kotlinx.coroutines.internal.o$a r5 = kotlinx.coroutines.internal.C1682o.f51796e
            long r5 = r5.c(r3, r2)
            r2 = r12
            boolean r1 = r1.compareAndSet(r2, r3, r5)
            if (r1 == 0) goto L4
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r12.f()
            r1 = r9 & r10
            r0.set(r1, r13)
            r0 = r12
        L72:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = i()
            long r1 = r1.get(r0)
            r3 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r1 = r1 & r3
            int r1 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r1 == 0) goto L8b
            kotlinx.coroutines.internal.o r0 = r0.l()
            kotlinx.coroutines.internal.o r0 = r0.e(r9, r13)
            if (r0 != 0) goto L72
        L8b:
            r13 = 0
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.C1682o.a(java.lang.Object):int");
    }

    public final C1682o b(long j2) {
        C1682o c1682o = new C1682o(this.f51800a * 2, this.f51801b);
        int i2 = (int) (1073741823 & j2);
        int i3 = (int) ((1152921503533105152L & j2) >> 30);
        while (true) {
            int i4 = this.f51802c;
            if ((i2 & i4) == (i4 & i3)) {
                f51798g.set(c1682o, f51796e.d(j2, 1152921504606846976L));
                return c1682o;
            }
            Object bVar = f().get(this.f51802c & i2);
            if (bVar == null) {
                bVar = new b(i2);
            }
            c1682o.f().set(c1682o.f51802c & i2, bVar);
            i2++;
        }
    }

    public final C1682o c(long j2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51797f;
        while (true) {
            C1682o c1682o = (C1682o) atomicReferenceFieldUpdater.get(this);
            if (c1682o != null) {
                return c1682o;
            }
            androidx.concurrent.futures.a.a(f51797f, this, null, b(j2));
        }
    }

    public final boolean d() {
        long j2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51798g;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            if ((j2 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j2) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, 2305843009213693952L | j2));
        return true;
    }

    public final C1682o e(int i2, Object obj) {
        Object obj2 = f().get(this.f51802c & i2);
        if (!(obj2 instanceof b) || ((b) obj2).f51804a != i2) {
            return null;
        }
        f().set(i2 & this.f51802c, obj);
        return this;
    }

    public final /* synthetic */ AtomicReferenceArray f() {
        return this.f51803d;
    }

    public final int g() {
        long j2 = f51798g.get(this);
        return (((int) ((j2 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j2))) & 1073741823;
    }

    public final boolean j() {
        long j2 = f51798g.get(this);
        return ((int) (1073741823 & j2)) == ((int) ((j2 & 1152921503533105152L) >> 30));
    }

    public final long k() {
        long j2;
        long j3;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51798g;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            if ((j2 & 1152921504606846976L) != 0) {
                return j2;
            }
            j3 = 1152921504606846976L | j2;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, j3));
        return j3;
    }

    public final C1682o l() {
        return c(k());
    }

    public final Object m() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51798g;
        while (true) {
            long j2 = atomicLongFieldUpdater.get(this);
            if ((1152921504606846976L & j2) != 0) {
                return f51799h;
            }
            int i2 = (int) (1073741823 & j2);
            int i3 = this.f51802c;
            if ((((int) ((1152921503533105152L & j2) >> 30)) & i3) == (i3 & i2)) {
                return null;
            }
            Object obj = f().get(this.f51802c & i2);
            if (obj == null) {
                if (this.f51801b) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                int i4 = (i2 + 1) & 1073741823;
                if (f51798g.compareAndSet(this, j2, f51796e.b(j2, i4))) {
                    f().set(this.f51802c & i2, null);
                    return obj;
                }
                if (this.f51801b) {
                    C1682o c1682oN = this;
                    do {
                        c1682oN = c1682oN.n(i2, i4);
                    } while (c1682oN != null);
                    return obj;
                }
            }
        }
    }

    public final C1682o n(int i2, int i3) {
        long j2;
        int i4;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51798g;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            i4 = (int) (1073741823 & j2);
            if ((1152921504606846976L & j2) != 0) {
                return l();
            }
        } while (!f51798g.compareAndSet(this, j2, f51796e.b(j2, i3)));
        f().set(this.f51802c & i4, null);
        return null;
    }
}
