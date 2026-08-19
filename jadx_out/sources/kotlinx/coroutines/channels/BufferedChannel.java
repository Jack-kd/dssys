package kotlinx.coroutines.channels;

import androidx.core.location.LocationRequestCompat;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.AbstractC1695p;
import kotlinx.coroutines.C1691n;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.U0;
import kotlinx.coroutines.internal.A;
import kotlinx.coroutines.internal.AbstractC1668a;
import kotlinx.coroutines.internal.AbstractC1669b;
import kotlinx.coroutines.internal.AbstractC1676i;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.u;
import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.internal.z;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import w1.AbstractC1791a;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public class BufferedChannel implements g {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f51548e = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f51549f = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f51550g = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f51551h = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51552i = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51553j = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51554k = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51555l = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51556m = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
    private volatile /* synthetic */ Object _closeCause$volatile;

    /* renamed from: b, reason: collision with root package name */
    public final int f51557b;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;

    /* renamed from: c, reason: collision with root package name */
    public final Function1 f51558c;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;

    /* renamed from: d, reason: collision with root package name */
    public final Function3 f51559d;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    public final class a implements ChannelIterator, U0 {

        /* renamed from: b, reason: collision with root package name */
        public Object f51560b = BufferedChannelKt.f51578p;

        /* renamed from: c, reason: collision with root package name */
        public C1691n f51561c;

        public a() {
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public Object a(kotlin.coroutines.e eVar) throws Throwable {
            l lVarE0;
            boolean zG = true;
            if (this.f51560b == BufferedChannelKt.f51578p || this.f51560b == BufferedChannelKt.z()) {
                BufferedChannel bufferedChannel = BufferedChannel.this;
                l lVar = (l) BufferedChannel.n0().get(bufferedChannel);
                while (!bufferedChannel.B0()) {
                    long andIncrement = BufferedChannel.o0().getAndIncrement(bufferedChannel);
                    int i2 = BufferedChannelKt.f51564b;
                    long j2 = andIncrement / i2;
                    int i3 = (int) (andIncrement % i2);
                    if (lVar.f51813d != j2) {
                        lVarE0 = bufferedChannel.e0(j2, lVar);
                        if (lVarE0 == null) {
                            continue;
                        }
                    } else {
                        lVarE0 = lVar;
                    }
                    Object objW1 = bufferedChannel.w1(lVarE0, i3, andIncrement, null);
                    if (objW1 == BufferedChannelKt.f51575m) {
                        throw new IllegalStateException("unreachable");
                    }
                    if (objW1 == BufferedChannelKt.f51577o) {
                        if (andIncrement < bufferedChannel.t0()) {
                            lVarE0.b();
                        }
                        lVar = lVarE0;
                    } else {
                        if (objW1 == BufferedChannelKt.f51576n) {
                            return f(lVarE0, i3, andIncrement, eVar);
                        }
                        lVarE0.b();
                        this.f51560b = objW1;
                    }
                }
                zG = g();
            }
            return AbstractC1791a.a(zG);
        }

        @Override // kotlinx.coroutines.U0
        public void b(y yVar, int i2) {
            C1691n c1691n = this.f51561c;
            if (c1691n != null) {
                c1691n.b(yVar, i2);
            }
        }

        public final Object f(l lVar, int i2, long j2, kotlin.coroutines.e eVar) throws Throwable {
            Boolean boolA;
            l lVarE0;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            C1691n c1691nB = AbstractC1695p.b(IntrinsicsKt__IntrinsicsJvmKt.c(eVar));
            try {
                this.f51561c = c1691nB;
                try {
                    Object objW1 = bufferedChannel.w1(lVar, i2, j2, this);
                    if (objW1 == BufferedChannelKt.f51575m) {
                        bufferedChannel.Y0(this, lVar, i2);
                    } else {
                        Function3 function3P = null;
                        if (objW1 == BufferedChannelKt.f51577o) {
                            if (j2 < bufferedChannel.t0()) {
                                lVar.b();
                            }
                            l lVar2 = (l) BufferedChannel.n0().get(bufferedChannel);
                            while (true) {
                                if (bufferedChannel.B0()) {
                                    h();
                                    break;
                                }
                                long andIncrement = BufferedChannel.o0().getAndIncrement(bufferedChannel);
                                int i3 = BufferedChannelKt.f51564b;
                                long j3 = andIncrement / i3;
                                int i4 = (int) (andIncrement % i3);
                                if (lVar2.f51813d != j3) {
                                    lVarE0 = bufferedChannel.e0(j3, lVar2);
                                    if (lVarE0 == null) {
                                    }
                                } else {
                                    lVarE0 = lVar2;
                                }
                                Object objW12 = bufferedChannel.w1(lVarE0, i4, andIncrement, this);
                                if (objW12 == BufferedChannelKt.f51575m) {
                                    bufferedChannel.Y0(this, lVarE0, i4);
                                    break;
                                }
                                if (objW12 == BufferedChannelKt.f51577o) {
                                    if (andIncrement < bufferedChannel.t0()) {
                                        lVarE0.b();
                                    }
                                    lVar2 = lVarE0;
                                } else {
                                    if (objW12 == BufferedChannelKt.f51576n) {
                                        throw new IllegalStateException("unexpected");
                                    }
                                    lVarE0.b();
                                    this.f51560b = objW12;
                                    this.f51561c = null;
                                    boolA = AbstractC1791a.a(true);
                                    Function1 function1 = bufferedChannel.f51558c;
                                    if (function1 != null) {
                                        function3P = bufferedChannel.P(function1, objW12);
                                    }
                                }
                            }
                        } else {
                            lVar.b();
                            this.f51560b = objW1;
                            this.f51561c = null;
                            boolA = AbstractC1791a.a(true);
                            Function1 function12 = bufferedChannel.f51558c;
                            if (function12 != null) {
                                function3P = bufferedChannel.P(function12, objW1);
                            }
                        }
                        c1691nB.q(boolA, function3P);
                    }
                    Object objY = c1691nB.y();
                    if (objY == kotlin.coroutines.intrinsics.a.e()) {
                        AbstractC1795e.c(eVar);
                    }
                    return objY;
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    c1691nB.O();
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        public final boolean g() throws Throwable {
            this.f51560b = BufferedChannelKt.z();
            Throwable thJ0 = BufferedChannel.this.j0();
            if (thJ0 == null) {
                return false;
            }
            throw A.a(thJ0);
        }

        public final void h() {
            C1691n c1691n = this.f51561c;
            kotlin.jvm.internal.j.b(c1691n);
            this.f51561c = null;
            this.f51560b = BufferedChannelKt.z();
            Throwable thJ0 = BufferedChannel.this.j0();
            if (thJ0 == null) {
                Result.Companion companion = Result.INSTANCE;
                c1691n.resumeWith(Result.m66constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                c1691n.resumeWith(Result.m66constructorimpl(kotlin.e.a(thJ0)));
            }
        }

        public final boolean i(Object obj) {
            C1691n c1691n = this.f51561c;
            kotlin.jvm.internal.j.b(c1691n);
            this.f51561c = null;
            this.f51560b = obj;
            Boolean bool = Boolean.TRUE;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            Function1 function1 = bufferedChannel.f51558c;
            return BufferedChannelKt.B(c1691n, bool, function1 != null ? bufferedChannel.P(function1, obj) : null);
        }

        public final void j() {
            C1691n c1691n = this.f51561c;
            kotlin.jvm.internal.j.b(c1691n);
            this.f51561c = null;
            this.f51560b = BufferedChannelKt.z();
            Throwable thJ0 = BufferedChannel.this.j0();
            if (thJ0 == null) {
                Result.Companion companion = Result.INSTANCE;
                c1691n.resumeWith(Result.m66constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                c1691n.resumeWith(Result.m66constructorimpl(kotlin.e.a(thJ0)));
            }
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public Object next() throws Throwable {
            Object obj = this.f51560b;
            if (obj == BufferedChannelKt.f51578p) {
                throw new IllegalStateException("`hasNext()` has not been invoked");
            }
            this.f51560b = BufferedChannelKt.f51578p;
            if (obj != BufferedChannelKt.z()) {
                return obj;
            }
            throw A.a(BufferedChannel.this.m0());
        }
    }

    public BufferedChannel(int i2, Function1 function1) {
        this.f51557b = i2;
        this.f51558c = function1;
        if (i2 < 0) {
            throw new IllegalArgumentException(("Invalid channel capacity: " + i2 + ", should be >=0").toString());
        }
        this.bufferEnd$volatile = BufferedChannelKt.A(i2);
        this.completedExpandBuffersAndPauseFlag$volatile = h0();
        l lVar = new l(0L, null, this, 3);
        this.sendSegment$volatile = lVar;
        this.receiveSegment$volatile = lVar;
        if (F0()) {
            lVar = BufferedChannelKt.f51563a;
            kotlin.jvm.internal.j.c(lVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment$volatile = lVar;
        this.f51559d = function1 != null ? new Function3() { // from class: kotlinx.coroutines.channels.d
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return BufferedChannel.W0(this.f51584b, (kotlinx.coroutines.selects.i) obj, obj2, obj3);
            }
        } : null;
        this._closeCause$volatile = BufferedChannelKt.f51581s;
    }

    public static final kotlin.j R(Function1 function1, Object obj, Throwable th, Object obj2, kotlin.coroutines.i iVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        u.a(function1, obj, iVar);
        return kotlin.j.f51397a;
    }

    public static final Function3 W0(final BufferedChannel bufferedChannel, final kotlinx.coroutines.selects.i iVar, Object obj, final Object obj2) {
        return new Function3() { // from class: kotlinx.coroutines.channels.f
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                return BufferedChannel.X0(obj2, bufferedChannel, iVar, (Throwable) obj3, obj4, (kotlin.coroutines.i) obj5);
            }
        };
    }

    public static final kotlin.j X0(Object obj, BufferedChannel bufferedChannel, kotlinx.coroutines.selects.i iVar, Throwable th, Object obj2, kotlin.coroutines.i iVar2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (obj != BufferedChannelKt.z()) {
            u.a(bufferedChannel.f51558c, obj, iVar.getContext());
        }
        return kotlin.j.f51397a;
    }

    public static /* synthetic */ Object e1(BufferedChannel bufferedChannel, kotlin.coroutines.e eVar) throws Throwable {
        l lVar;
        l lVar2 = (l) n0().get(bufferedChannel);
        while (!bufferedChannel.B0()) {
            long andIncrement = o0().getAndIncrement(bufferedChannel);
            int i2 = BufferedChannelKt.f51564b;
            long j2 = andIncrement / i2;
            int i3 = (int) (andIncrement % i2);
            if (lVar2.f51813d != j2) {
                l lVarE0 = bufferedChannel.e0(j2, lVar2);
                if (lVarE0 == null) {
                    continue;
                } else {
                    lVar = lVarE0;
                }
            } else {
                lVar = lVar2;
            }
            BufferedChannel bufferedChannel2 = bufferedChannel;
            Object objW1 = bufferedChannel2.w1(lVar, i3, andIncrement, null);
            if (objW1 == BufferedChannelKt.f51575m) {
                throw new IllegalStateException("unexpected");
            }
            if (objW1 != BufferedChannelKt.f51577o) {
                if (objW1 == BufferedChannelKt.f51576n) {
                    return bufferedChannel2.h1(lVar, i3, andIncrement, eVar);
                }
                lVar.b();
                return objW1;
            }
            if (andIncrement < bufferedChannel2.t0()) {
                lVar.b();
            }
            bufferedChannel = bufferedChannel2;
            lVar2 = lVar;
        }
        throw A.a(bufferedChannel.m0());
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object f1(kotlinx.coroutines.channels.BufferedChannel r13, kotlin.coroutines.e r14) throws java.lang.Throwable {
        /*
            boolean r0 = r14 instanceof kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            if (r0 == 0) goto L14
            r0 = r14
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = (kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = new kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            r0.<init>(r13, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.e()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.e.b(r14)
            kotlinx.coroutines.channels.j r14 = (kotlinx.coroutines.channels.j) r14
            java.lang.Object r13 = r14.k()
            return r13
        L31:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L39:
            kotlin.e.b(r14)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r14 = q()
            java.lang.Object r14 = r14.get(r13)
            kotlinx.coroutines.channels.l r14 = (kotlinx.coroutines.channels.l) r14
        L46:
            boolean r1 = r13.B0()
            if (r1 == 0) goto L57
            kotlinx.coroutines.channels.j$b r14 = kotlinx.coroutines.channels.j.f51593b
            java.lang.Throwable r13 = r13.j0()
            java.lang.Object r13 = r14.a(r13)
            return r13
        L57:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = s()
            long r4 = r1.getAndIncrement(r13)
            int r1 = kotlinx.coroutines.channels.BufferedChannelKt.f51564b
            long r7 = (long) r1
            long r7 = r4 / r7
            long r9 = (long) r1
            long r9 = r4 % r9
            int r3 = (int) r9
            long r9 = r14.f51813d
            int r1 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r1 == 0) goto L77
            kotlinx.coroutines.channels.l r1 = i(r13, r7, r14)
            if (r1 != 0) goto L75
            goto L46
        L75:
            r8 = r1
            goto L78
        L77:
            r8 = r14
        L78:
            r12 = 0
            r7 = r13
            r9 = r3
            r10 = r4
            java.lang.Object r13 = N(r7, r8, r9, r10, r12)
            r1 = r7
            kotlinx.coroutines.internal.B r14 = kotlinx.coroutines.channels.BufferedChannelKt.r()
            if (r13 == r14) goto Lb6
            kotlinx.coroutines.internal.B r14 = kotlinx.coroutines.channels.BufferedChannelKt.h()
            if (r13 != r14) goto L9b
            long r13 = r1.t0()
            int r13 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
            if (r13 >= 0) goto L98
            r8.b()
        L98:
            r13 = r1
            r14 = r8
            goto L46
        L9b:
            kotlinx.coroutines.internal.B r14 = kotlinx.coroutines.channels.BufferedChannelKt.s()
            if (r13 != r14) goto Lac
            r6.label = r2
            r2 = r8
            java.lang.Object r13 = r1.g1(r2, r3, r4, r6)
            if (r13 != r0) goto Lab
            return r0
        Lab:
            return r13
        Lac:
            r8.b()
            kotlinx.coroutines.channels.j$b r14 = kotlinx.coroutines.channels.j.f51593b
            java.lang.Object r13 = r14.c(r13)
            return r13
        Lb6:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "unexpected"
            r13.<init>(r14)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.f1(kotlinx.coroutines.channels.BufferedChannel, kotlin.coroutines.e):java.lang.Object");
    }

    public static final /* synthetic */ AtomicReferenceFieldUpdater n0() {
        return f51553j;
    }

    public static final /* synthetic */ AtomicLongFieldUpdater o0() {
        return f51549f;
    }

    public static /* synthetic */ Object o1(BufferedChannel bufferedChannel, Object obj, kotlin.coroutines.e eVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        l lVar;
        l lVar2 = (l) r0().get(bufferedChannel);
        while (true) {
            long andIncrement = s0().getAndIncrement(bufferedChannel);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zD0 = bufferedChannel.D0(andIncrement);
            int i2 = BufferedChannelKt.f51564b;
            long j3 = j2 / i2;
            int i3 = (int) (j2 % i2);
            if (lVar2.f51813d != j3) {
                l lVarF0 = bufferedChannel.f0(j3, lVar2);
                if (lVarF0 != null) {
                    lVar = lVarF0;
                } else if (zD0) {
                    Object objS0 = bufferedChannel.S0(obj, eVar);
                    if (objS0 == kotlin.coroutines.intrinsics.a.e()) {
                        return objS0;
                    }
                }
            } else {
                lVar = lVar2;
            }
            BufferedChannel bufferedChannel2 = bufferedChannel;
            Object obj2 = obj;
            int iY1 = bufferedChannel2.y1(lVar, i3, obj2, j2, null, zD0);
            if (iY1 == 0) {
                lVar.b();
                break;
            }
            if (iY1 == 1) {
                break;
            }
            if (iY1 != 2) {
                if (iY1 == 3) {
                    Object objP1 = bufferedChannel2.p1(lVar, i3, obj2, j2, eVar);
                    if (objP1 == kotlin.coroutines.intrinsics.a.e()) {
                        return objP1;
                    }
                } else if (iY1 != 4) {
                    if (iY1 == 5) {
                        lVar.b();
                    }
                    bufferedChannel = bufferedChannel2;
                    lVar2 = lVar;
                    obj = obj2;
                } else {
                    if (j2 < bufferedChannel2.p0()) {
                        lVar.b();
                    }
                    Object objS02 = bufferedChannel2.S0(obj2, eVar);
                    if (objS02 == kotlin.coroutines.intrinsics.a.e()) {
                        return objS02;
                    }
                }
            } else if (zD0) {
                lVar.t();
                Object objS03 = bufferedChannel2.S0(obj2, eVar);
                if (objS03 == kotlin.coroutines.intrinsics.a.e()) {
                    return objS03;
                }
            }
        }
        return kotlin.j.f51397a;
    }

    public static final /* synthetic */ AtomicReferenceFieldUpdater r0() {
        return f51552i;
    }

    public static final /* synthetic */ AtomicLongFieldUpdater s0() {
        return f51548e;
    }

    public static /* synthetic */ void x0(BufferedChannel bufferedChannel, long j2, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i2 & 1) != 0) {
            j2 = 1;
        }
        bufferedChannel.w0(j2);
    }

    public final boolean A0(long j2, boolean z2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i2 = (int) (j2 >> 60);
        if (i2 == 0 || i2 == 1) {
            return false;
        }
        if (i2 == 2) {
            Z(j2 & 1152921504606846975L);
            return (z2 && v0()) ? false : true;
        }
        if (i2 == 3) {
            Y(j2 & 1152921504606846975L);
            return true;
        }
        throw new IllegalStateException(("unexpected close status: " + i2).toString());
    }

    public final void A1(long j2) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51549f;
        while (true) {
            long j3 = atomicLongFieldUpdater.get(this);
            if (j3 >= j2) {
                return;
            }
            long j4 = j2;
            if (f51549f.compareAndSet(this, j3, j4)) {
                return;
            } else {
                j2 = j4;
            }
        }
    }

    public boolean B0() {
        return C0(f51548e.get(this));
    }

    public final void B1(long j2) {
        long j3;
        long j4;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51548e;
        do {
            j3 = atomicLongFieldUpdater.get(this);
            j4 = 1152921504606846975L & j3;
            if (j4 >= j2) {
                return;
            }
        } while (!f51548e.compareAndSet(this, j3, BufferedChannelKt.w(j4, (int) (j3 >> 60))));
    }

    @Override // kotlinx.coroutines.channels.s
    public boolean C(Throwable th) {
        return X(th, false);
    }

    public final boolean C0(long j2) {
        return A0(j2, true);
    }

    public final void C1(long j2) {
        BufferedChannel bufferedChannel = this;
        if (bufferedChannel.F0()) {
            return;
        }
        while (bufferedChannel.h0() <= j2) {
            bufferedChannel = this;
        }
        int i2 = BufferedChannelKt.f51565c;
        for (int i3 = 0; i3 < i2; i3++) {
            long jH0 = bufferedChannel.h0();
            if (jH0 == (4611686018427387903L & f51551h.get(bufferedChannel)) && jH0 == bufferedChannel.h0()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51551h;
        while (true) {
            long j3 = atomicLongFieldUpdater.get(bufferedChannel);
            if (atomicLongFieldUpdater.compareAndSet(bufferedChannel, j3, BufferedChannelKt.v(j3 & 4611686018427387903L, true))) {
                break;
            } else {
                bufferedChannel = this;
            }
        }
        while (true) {
            long jH02 = bufferedChannel.h0();
            long j4 = f51551h.get(bufferedChannel);
            long j5 = j4 & 4611686018427387903L;
            boolean z2 = (4611686018427387904L & j4) != 0;
            if (jH02 == j5 && jH02 == bufferedChannel.h0()) {
                break;
            }
            if (z2) {
                bufferedChannel = this;
            } else {
                bufferedChannel = this;
                f51551h.compareAndSet(bufferedChannel, j4, BufferedChannelKt.v(j5, true));
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f51551h;
        while (true) {
            long j6 = atomicLongFieldUpdater2.get(bufferedChannel);
            boolean zCompareAndSet = atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j6, BufferedChannelKt.v(j6 & 4611686018427387903L, false));
            AtomicLongFieldUpdater atomicLongFieldUpdater3 = atomicLongFieldUpdater2;
            if (zCompareAndSet) {
                return;
            }
            atomicLongFieldUpdater2 = atomicLongFieldUpdater3;
            bufferedChannel = this;
        }
    }

    public final boolean D0(long j2) {
        return A0(j2, false);
    }

    @Override // kotlinx.coroutines.channels.s
    public Object E(Object obj, kotlin.coroutines.e eVar) {
        return o1(this, obj, eVar);
    }

    public boolean E0() {
        return false;
    }

    public final boolean F0() {
        long jH0 = h0();
        return jH0 == 0 || jH0 == LocationRequestCompat.PASSIVE_INTERVAL;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003c, code lost:
    
        r8 = (kotlinx.coroutines.channels.l) r8.h();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long G0(kotlinx.coroutines.channels.l r8) {
        /*
            r7 = this;
        L0:
            int r0 = kotlinx.coroutines.channels.BufferedChannelKt.f51564b
            int r0 = r0 + (-1)
        L4:
            r1 = -1
            r3 = -1
            if (r3 >= r0) goto L3c
            long r3 = r8.f51813d
            int r5 = kotlinx.coroutines.channels.BufferedChannelKt.f51564b
            long r5 = (long) r5
            long r3 = r3 * r5
            long r5 = (long) r0
            long r3 = r3 + r5
            long r5 = r7.p0()
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 >= 0) goto L1a
            return r1
        L1a:
            java.lang.Object r1 = r8.B(r0)
            if (r1 == 0) goto L2c
            kotlinx.coroutines.internal.B r2 = kotlinx.coroutines.channels.BufferedChannelKt.k()
            if (r1 != r2) goto L27
            goto L2c
        L27:
            kotlinx.coroutines.internal.B r2 = kotlinx.coroutines.channels.BufferedChannelKt.f51566d
            if (r1 != r2) goto L39
            return r3
        L2c:
            kotlinx.coroutines.internal.B r2 = kotlinx.coroutines.channels.BufferedChannelKt.z()
            boolean r1 = r8.v(r0, r1, r2)
            if (r1 == 0) goto L1a
            r8.t()
        L39:
            int r0 = r0 + (-1)
            goto L4
        L3c:
            kotlinx.coroutines.internal.b r8 = r8.h()
            kotlinx.coroutines.channels.l r8 = (kotlinx.coroutines.channels.l) r8
            if (r8 != 0) goto L0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.G0(kotlinx.coroutines.channels.l):long");
    }

    public final void H0() {
        long j2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51548e;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            if (((int) (j2 >> 60)) != 0) {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, BufferedChannelKt.w(1152921504606846975L & j2, 1)));
    }

    public final void I0() {
        long j2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51548e;
        do {
            j2 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, BufferedChannelKt.w(1152921504606846975L & j2, 3)));
    }

    public final void J0() {
        long j2;
        long jW;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f51548e;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            int i2 = (int) (j2 >> 60);
            if (i2 == 0) {
                jW = BufferedChannelKt.w(1152921504606846975L & j2, 2);
            } else if (i2 != 1) {
                return;
            } else {
                jW = BufferedChannelKt.w(1152921504606846975L & j2, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, jW));
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0011, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void K0(long r5, kotlinx.coroutines.channels.l r7) {
        /*
            r4 = this;
        L0:
            long r0 = r7.f51813d
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 >= 0) goto L11
            kotlinx.coroutines.internal.b r0 = r7.f()
            kotlinx.coroutines.channels.l r0 = (kotlinx.coroutines.channels.l) r0
            if (r0 != 0) goto Lf
            goto L11
        Lf:
            r7 = r0
            goto L0
        L11:
            boolean r5 = r7.k()
            if (r5 == 0) goto L22
            kotlinx.coroutines.internal.b r5 = r7.f()
            kotlinx.coroutines.channels.l r5 = (kotlinx.coroutines.channels.l) r5
            if (r5 != 0) goto L20
            goto L22
        L20:
            r7 = r5
            goto L11
        L22:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = i0()
        L26:
            java.lang.Object r6 = r5.get(r4)
            kotlinx.coroutines.internal.y r6 = (kotlinx.coroutines.internal.y) r6
            long r0 = r6.f51813d
            long r2 = r7.f51813d
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L35
            return
        L35:
            boolean r0 = r7.u()
            if (r0 != 0) goto L3c
            goto L11
        L3c:
            boolean r0 = androidx.concurrent.futures.a.a(r5, r4, r6, r7)
            if (r0 == 0) goto L4c
            boolean r5 = r6.p()
            if (r5 == 0) goto L4b
            r6.n()
        L4b:
            return
        L4c:
            boolean r6 = r7.p()
            if (r6 == 0) goto L26
            r7.n()
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.K0(long, kotlinx.coroutines.channels.l):void");
    }

    public final void L0(Throwable th, Object obj, kotlin.coroutines.i iVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Function1 function1 = this.f51558c;
        kotlin.jvm.internal.j.b(function1);
        Object objF = j.f(obj);
        kotlin.jvm.internal.j.b(objF);
        u.a(function1, objF, iVar);
    }

    public final void M0(Throwable th, Object obj, kotlin.coroutines.i iVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Function1 function1 = this.f51558c;
        kotlin.jvm.internal.j.b(function1);
        u.a(function1, obj, iVar);
    }

    public void N0() {
    }

    public final void O0(InterfaceC1687l interfaceC1687l) {
        Result.Companion companion = Result.INSTANCE;
        interfaceC1687l.resumeWith(Result.m66constructorimpl(j.b(j.f51593b.a(j0()))));
    }

    public final Function3 P(final Function1 function1, final Object obj) {
        return new Function3() { // from class: kotlinx.coroutines.channels.e
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                return BufferedChannel.R(function1, obj, (Throwable) obj2, obj3, (kotlin.coroutines.i) obj4);
            }
        };
    }

    public final void P0(InterfaceC1687l interfaceC1687l) {
        Result.Companion companion = Result.INSTANCE;
        interfaceC1687l.resumeWith(Result.m66constructorimpl(kotlin.e.a(m0())));
    }

    public final kotlin.reflect.f Q(Function1 function1) {
        return new BufferedChannel$bindCancellationFun$2(this);
    }

    public final void Q0(kotlinx.coroutines.selects.i iVar) {
        iVar.d(BufferedChannelKt.z());
    }

    public final void R0(Object obj, kotlinx.coroutines.selects.i iVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Function1 function1 = this.f51558c;
        if (function1 != null) {
            u.a(function1, obj, iVar.getContext());
        }
        iVar.d(BufferedChannelKt.z());
    }

    public final kotlin.reflect.f S(Function1 function1) {
        return new BufferedChannel$bindCancellationFunResult$1(this);
    }

    public final Object S0(Object obj, kotlin.coroutines.e eVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        UndeliveredElementException undeliveredElementExceptionC;
        C1691n c1691n = new C1691n(IntrinsicsKt__IntrinsicsJvmKt.c(eVar), 1);
        c1691n.F();
        Function1 function1 = this.f51558c;
        if (function1 == null || (undeliveredElementExceptionC = u.c(function1, obj, null, 2, null)) == null) {
            Throwable thQ0 = q0();
            Result.Companion companion = Result.INSTANCE;
            c1691n.resumeWith(Result.m66constructorimpl(kotlin.e.a(thQ0)));
        } else {
            kotlin.a.a(undeliveredElementExceptionC, q0());
            Result.Companion companion2 = Result.INSTANCE;
            c1691n.resumeWith(Result.m66constructorimpl(kotlin.e.a(undeliveredElementExceptionC)));
        }
        Object objY = c1691n.y();
        if (objY == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objY == kotlin.coroutines.intrinsics.a.e() ? objY : kotlin.j.f51397a;
    }

    public final boolean T(long j2) {
        return j2 < h0() || j2 < p0() + ((long) this.f51557b);
    }

    public final void T0(Object obj, InterfaceC1687l interfaceC1687l) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Function1 function1 = this.f51558c;
        if (function1 != null) {
            u.a(function1, obj, interfaceC1687l.getContext());
        }
        Throwable thQ0 = q0();
        Result.Companion companion = Result.INSTANCE;
        interfaceC1687l.resumeWith(Result.m66constructorimpl(kotlin.e.a(thQ0)));
    }

    public boolean U(Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel was cancelled");
        }
        return X(th, true);
    }

    public void U0() {
    }

    public final void V(l lVar, long j2) {
        Object objB = AbstractC1676i.b(null, 1, null);
        loop0: while (lVar != null) {
            for (int i2 = BufferedChannelKt.f51564b - 1; -1 < i2; i2--) {
                if ((lVar.f51813d * BufferedChannelKt.f51564b) + i2 < j2) {
                    break loop0;
                }
                while (true) {
                    Object objB2 = lVar.B(i2);
                    if (objB2 != null && objB2 != BufferedChannelKt.f51567e) {
                        if (!(objB2 instanceof t)) {
                            if (!(objB2 instanceof U0)) {
                                break;
                            }
                            if (lVar.v(i2, objB2, BufferedChannelKt.z())) {
                                objB = AbstractC1676i.c(objB, objB2);
                                lVar.C(i2, true);
                                break;
                            }
                        } else {
                            if (lVar.v(i2, objB2, BufferedChannelKt.z())) {
                                objB = AbstractC1676i.c(objB, ((t) objB2).f51602a);
                                lVar.C(i2, true);
                                break;
                            }
                        }
                    } else {
                        if (lVar.v(i2, objB2, BufferedChannelKt.z())) {
                            lVar.t();
                            break;
                        }
                    }
                }
            }
            lVar = (l) lVar.h();
        }
        if (objB != null) {
            if (!(objB instanceof ArrayList)) {
                l1((U0) objB);
                return;
            }
            kotlin.jvm.internal.j.c(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
            ArrayList arrayList = (ArrayList) objB;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                l1((U0) arrayList.get(size));
            }
        }
    }

    public void V0() {
    }

    public final l W() {
        Object obj = f51554k.get(this);
        l lVar = (l) f51552i.get(this);
        if (lVar.f51813d > ((l) obj).f51813d) {
            obj = lVar;
        }
        l lVar2 = (l) f51553j.get(this);
        if (lVar2.f51813d > ((l) obj).f51813d) {
            obj = lVar2;
        }
        return (l) AbstractC1668a.b((AbstractC1669b) obj);
    }

    public boolean X(Throwable th, boolean z2) {
        if (z2) {
            H0();
        }
        boolean zA = androidx.concurrent.futures.a.a(f51555l, this, BufferedChannelKt.f51581s, th);
        if (z2) {
            I0();
        } else {
            J0();
        }
        a0();
        N0();
        if (zA) {
            y0();
        }
        return zA;
    }

    public final void Y(long j2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        k1(Z(j2));
    }

    public final void Y0(U0 u02, l lVar, int i2) {
        V0();
        u02.b(lVar, i2);
    }

    public final l Z(long j2) {
        l lVarW = W();
        if (E0()) {
            long jG0 = G0(lVarW);
            if (jG0 != -1) {
                b0(jG0);
            }
        }
        V(lVarW, j2);
        return lVarW;
    }

    public final void Z0(U0 u02, l lVar, int i2) {
        u02.b(lVar, i2 + BufferedChannelKt.f51564b);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void a(CancellationException cancellationException) {
        U(cancellationException);
    }

    public final void a0() {
        r();
    }

    public final Object a1(Object obj, Object obj2) throws Throwable {
        if (obj2 != BufferedChannelKt.z()) {
            return obj2;
        }
        throw m0();
    }

    public final void b0(long j2) {
        l lVarE0;
        UndeliveredElementException undeliveredElementExceptionC;
        l lVar = (l) f51553j.get(this);
        while (true) {
            long j3 = f51549f.get(this);
            if (j2 < Math.max(this.f51557b + j3, h0())) {
                return;
            }
            if (f51549f.compareAndSet(this, j3, 1 + j3)) {
                int i2 = BufferedChannelKt.f51564b;
                long j4 = j3 / i2;
                int i3 = (int) (j3 % i2);
                if (lVar.f51813d != j4) {
                    lVarE0 = e0(j4, lVar);
                    if (lVarE0 == null) {
                        continue;
                    }
                } else {
                    lVarE0 = lVar;
                }
                Object objW1 = w1(lVarE0, i3, j3, null);
                if (objW1 != BufferedChannelKt.f51577o) {
                    lVarE0.b();
                    Function1 function1 = this.f51558c;
                    if (function1 != null && (undeliveredElementExceptionC = u.c(function1, objW1, null, 2, null)) != null) {
                        throw undeliveredElementExceptionC;
                    }
                } else if (j3 < t0()) {
                    lVarE0.b();
                }
                lVar = lVarE0;
            }
        }
    }

    public final Object b1(Object obj, Object obj2) {
        return j.b(obj2 == BufferedChannelKt.z() ? j.f51593b.a(j0()) : j.f51593b.c(obj2));
    }

    public final void c0() {
        if (F0()) {
            return;
        }
        l lVar = (l) f51554k.get(this);
        while (true) {
            long andIncrement = f51550g.getAndIncrement(this);
            int i2 = BufferedChannelKt.f51564b;
            long j2 = andIncrement / i2;
            if (t0() <= andIncrement) {
                if (lVar.f51813d < j2 && lVar.f() != null) {
                    K0(j2, lVar);
                }
                x0(this, 0L, 1, null);
                return;
            }
            if (lVar.f51813d != j2) {
                l lVarD0 = d0(j2, lVar, andIncrement);
                if (lVarD0 == null) {
                    continue;
                } else {
                    lVar = lVarD0;
                }
            }
            if (u1(lVar, (int) (andIncrement % i2), andIncrement)) {
                x0(this, 0L, 1, null);
                return;
            }
            x0(this, 0L, 1, null);
        }
    }

    public final Object c1(Object obj, Object obj2) throws Throwable {
        if (obj2 != BufferedChannelKt.z()) {
            return obj2;
        }
        if (j0() == null) {
            return null;
        }
        throw m0();
    }

    public final l d0(long j2, l lVar, long j3) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51554k;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            objC = AbstractC1668a.c(lVar, j2, function2);
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
        if (z.c(objC)) {
            a0();
            K0(j2, lVar);
            x0(this, 0L, 1, null);
            return null;
        }
        l lVar2 = (l) z.b(objC);
        if (lVar2.f51813d <= j2) {
            return lVar2;
        }
        long j4 = lVar2.f51813d;
        int i2 = BufferedChannelKt.f51564b;
        if (f51550g.compareAndSet(this, j3 + 1, j4 * i2)) {
            w0((lVar2.f51813d * i2) - j3);
        } else {
            x0(this, 0L, 1, null);
        }
        return null;
    }

    public final Object d1(Object obj, Object obj2) throws Throwable {
        if (obj2 != BufferedChannelKt.z()) {
            return this;
        }
        throw q0();
    }

    public final l e0(long j2, l lVar) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51553j;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            objC = AbstractC1668a.c(lVar, j2, function2);
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
        if (z.c(objC)) {
            a0();
            if (lVar.f51813d * BufferedChannelKt.f51564b < t0()) {
                lVar.b();
            }
            return null;
        }
        l lVar2 = (l) z.b(objC);
        if (!F0() && j2 <= h0() / BufferedChannelKt.f51564b) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f51554k;
            while (true) {
                y yVar2 = (y) atomicReferenceFieldUpdater2.get(this);
                if (yVar2.f51813d >= lVar2.f51813d || !lVar2.u()) {
                    break;
                }
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater2, this, yVar2, lVar2)) {
                    if (yVar2.p()) {
                        yVar2.n();
                    }
                } else if (lVar2.p()) {
                    lVar2.n();
                }
            }
        }
        long j3 = lVar2.f51813d;
        if (j3 <= j2) {
            return lVar2;
        }
        int i2 = BufferedChannelKt.f51564b;
        A1(j3 * i2);
        if (lVar2.f51813d * i2 < t0()) {
            lVar2.b();
        }
        return null;
    }

    public final l f0(long j2, l lVar) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51552i;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            objC = AbstractC1668a.c(lVar, j2, function2);
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
        if (z.c(objC)) {
            a0();
            if (lVar.f51813d * BufferedChannelKt.f51564b < p0()) {
                lVar.b();
            }
            return null;
        }
        l lVar2 = (l) z.b(objC);
        long j3 = lVar2.f51813d;
        if (j3 <= j2) {
            return lVar2;
        }
        int i2 = BufferedChannelKt.f51564b;
        B1(j3 * i2);
        if (lVar2.f51813d * i2 < p0()) {
            lVar2.b();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g1(kotlinx.coroutines.channels.l r11, int r12, long r13, kotlin.coroutines.e r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.g1(kotlinx.coroutines.channels.l, int, long, kotlin.coroutines.e):java.lang.Object");
    }

    public final long h0() {
        return f51550g.get(this);
    }

    public final Object h1(l lVar, int i2, long j2, kotlin.coroutines.e eVar) {
        Function3 function3;
        l lVar2;
        C1691n c1691nB = AbstractC1695p.b(IntrinsicsKt__IntrinsicsJvmKt.c(eVar));
        try {
            Object objW1 = w1(lVar, i2, j2, c1691nB);
            if (objW1 == BufferedChannelKt.f51575m) {
                Y0(c1691nB, lVar, i2);
            } else {
                if (objW1 == BufferedChannelKt.f51577o) {
                    if (j2 < t0()) {
                        lVar.b();
                    }
                    l lVar3 = (l) n0().get(this);
                    while (true) {
                        if (B0()) {
                            P0(c1691nB);
                            break;
                        }
                        long andIncrement = o0().getAndIncrement(this);
                        int i3 = BufferedChannelKt.f51564b;
                        long j3 = andIncrement / i3;
                        int i4 = (int) (andIncrement % i3);
                        if (lVar3.f51813d != j3) {
                            l lVarE0 = e0(j3, lVar3);
                            if (lVarE0 != null) {
                                lVar2 = lVarE0;
                            }
                        } else {
                            lVar2 = lVar3;
                        }
                        objW1 = w1(lVar2, i4, andIncrement, c1691nB);
                        l lVar4 = lVar2;
                        if (objW1 == BufferedChannelKt.f51575m) {
                            C1691n c1691n = c1691nB != null ? c1691nB : null;
                            if (c1691n != null) {
                                Y0(c1691n, lVar4, i4);
                            }
                        } else if (objW1 == BufferedChannelKt.f51577o) {
                            if (andIncrement < t0()) {
                                lVar4.b();
                            }
                            lVar3 = lVar4;
                        } else {
                            if (objW1 == BufferedChannelKt.f51576n) {
                                throw new IllegalStateException("unexpected");
                            }
                            lVar4.b();
                            Function1 function1 = this.f51558c;
                            function3 = (Function3) (function1 != null ? Q(function1) : null);
                        }
                    }
                } else {
                    lVar.b();
                    Function1 function12 = this.f51558c;
                    function3 = (Function3) (function12 != null ? Q(function12) : null);
                }
                c1691nB.q(objW1, function3);
            }
            Object objY = c1691nB.y();
            if (objY == kotlin.coroutines.intrinsics.a.e()) {
                AbstractC1795e.c(eVar);
            }
            return objY;
        } catch (Throwable th) {
            c1691nB.O();
            throw th;
        }
    }

    public final void i1(kotlinx.coroutines.selects.i iVar, Object obj) {
        l lVar;
        l lVar2 = (l) n0().get(this);
        while (!B0()) {
            long andIncrement = o0().getAndIncrement(this);
            int i2 = BufferedChannelKt.f51564b;
            long j2 = andIncrement / i2;
            int i3 = (int) (andIncrement % i2);
            if (lVar2.f51813d != j2) {
                l lVarE0 = e0(j2, lVar2);
                if (lVarE0 == null) {
                    continue;
                } else {
                    lVar = lVarE0;
                }
            } else {
                lVar = lVar2;
            }
            kotlinx.coroutines.selects.i iVar2 = iVar;
            Object objW1 = w1(lVar, i3, andIncrement, iVar2);
            lVar2 = lVar;
            if (objW1 == BufferedChannelKt.f51575m) {
                U0 u02 = iVar2 instanceof U0 ? (U0) iVar2 : null;
                if (u02 != null) {
                    Y0(u02, lVar2, i3);
                    return;
                }
                return;
            }
            if (objW1 != BufferedChannelKt.f51577o) {
                if (objW1 == BufferedChannelKt.f51576n) {
                    throw new IllegalStateException("unexpected");
                }
                lVar2.b();
                iVar2.d(objW1);
                return;
            }
            if (andIncrement < t0()) {
                lVar2.b();
            }
            iVar = iVar2;
        }
        Q0(iVar);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public ChannelIterator iterator() {
        return new a();
    }

    public final Throwable j0() {
        return (Throwable) f51555l.get(this);
    }

    public void j1(kotlinx.coroutines.selects.i iVar, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        l lVar;
        l lVar2 = (l) r0().get(this);
        while (true) {
            long andIncrement = s0().getAndIncrement(this);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zD0 = D0(andIncrement);
            int i2 = BufferedChannelKt.f51564b;
            long j3 = j2 / i2;
            int i3 = (int) (j2 % i2);
            if (lVar2.f51813d != j3) {
                l lVarF0 = f0(j3, lVar2);
                if (lVarF0 != null) {
                    lVar = lVarF0;
                } else if (zD0) {
                    R0(obj, iVar);
                    return;
                }
            } else {
                lVar = lVar2;
            }
            kotlinx.coroutines.selects.i iVar2 = iVar;
            Object obj2 = obj;
            int iY1 = y1(lVar, i3, obj2, j2, iVar2, zD0);
            lVar2 = lVar;
            if (iY1 == 0) {
                lVar2.b();
                iVar2.d(kotlin.j.f51397a);
                return;
            }
            if (iY1 == 1) {
                iVar2.d(kotlin.j.f51397a);
                return;
            }
            if (iY1 == 2) {
                if (zD0) {
                    lVar2.t();
                    R0(obj2, iVar2);
                    return;
                } else {
                    U0 u02 = iVar2 instanceof U0 ? (U0) iVar2 : null;
                    if (u02 != null) {
                        Z0(u02, lVar2, i3);
                        return;
                    }
                    return;
                }
            }
            if (iY1 == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (iY1 == 4) {
                if (j2 < p0()) {
                    lVar2.b();
                }
                R0(obj2, iVar2);
                return;
            } else {
                if (iY1 == 5) {
                    lVar2.b();
                }
                obj = obj2;
                iVar = iVar2;
            }
        }
    }

    @Override // kotlinx.coroutines.channels.s
    public void k(Function1 function1) {
        if (androidx.concurrent.futures.a.a(f51556m, this, null, function1)) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51556m;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != BufferedChannelKt.f51579q) {
                if (obj == BufferedChannelKt.f51580r) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked");
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f51556m, this, BufferedChannelKt.f51579q, BufferedChannelKt.f51580r));
        function1.invoke(j0());
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b3, code lost:
    
        r12 = (kotlinx.coroutines.channels.l) r12.h();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k1(kotlinx.coroutines.channels.l r12) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r11 = this;
            kotlin.jvm.functions.Function1 r0 = r11.f51558c
            r1 = 0
            r2 = 1
            java.lang.Object r3 = kotlinx.coroutines.internal.AbstractC1676i.b(r1, r2, r1)
        L8:
            int r4 = kotlinx.coroutines.channels.BufferedChannelKt.f51564b
            int r4 = r4 - r2
        Lb:
            r5 = -1
            if (r5 >= r4) goto Lb3
            long r6 = r12.f51813d
            int r8 = kotlinx.coroutines.channels.BufferedChannelKt.f51564b
            long r8 = (long) r8
            long r6 = r6 * r8
            long r8 = (long) r4
            long r6 = r6 + r8
        L16:
            java.lang.Object r8 = r12.B(r4)
            kotlinx.coroutines.internal.B r9 = kotlinx.coroutines.channels.BufferedChannelKt.f()
            if (r8 == r9) goto Lbb
            kotlinx.coroutines.internal.B r9 = kotlinx.coroutines.channels.BufferedChannelKt.f51566d
            if (r8 != r9) goto L48
            long r9 = r11.p0()
            int r9 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r9 < 0) goto Lbb
            kotlinx.coroutines.internal.B r9 = kotlinx.coroutines.channels.BufferedChannelKt.z()
            boolean r8 = r12.v(r4, r8, r9)
            if (r8 == 0) goto L16
            if (r0 == 0) goto L40
            java.lang.Object r5 = r12.A(r4)
            kotlinx.coroutines.internal.UndeliveredElementException r1 = kotlinx.coroutines.internal.u.b(r0, r5, r1)
        L40:
            r12.w(r4)
            r12.t()
            goto Laf
        L48:
            kotlinx.coroutines.internal.B r9 = kotlinx.coroutines.channels.BufferedChannelKt.k()
            if (r8 == r9) goto La2
            if (r8 != 0) goto L51
            goto La2
        L51:
            boolean r9 = r8 instanceof kotlinx.coroutines.U0
            if (r9 != 0) goto L6e
            boolean r9 = r8 instanceof kotlinx.coroutines.channels.t
            if (r9 == 0) goto L5a
            goto L6e
        L5a:
            kotlinx.coroutines.internal.B r9 = kotlinx.coroutines.channels.BufferedChannelKt.p()
            if (r8 == r9) goto Lbb
            kotlinx.coroutines.internal.B r9 = kotlinx.coroutines.channels.BufferedChannelKt.q()
            if (r8 != r9) goto L67
            goto Lbb
        L67:
            kotlinx.coroutines.internal.B r9 = kotlinx.coroutines.channels.BufferedChannelKt.p()
            if (r8 == r9) goto L16
            goto Laf
        L6e:
            long r9 = r11.p0()
            int r9 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r9 < 0) goto Lbb
            boolean r9 = r8 instanceof kotlinx.coroutines.channels.t
            if (r9 == 0) goto L80
            r9 = r8
            kotlinx.coroutines.channels.t r9 = (kotlinx.coroutines.channels.t) r9
            kotlinx.coroutines.U0 r9 = r9.f51602a
            goto L83
        L80:
            r9 = r8
            kotlinx.coroutines.U0 r9 = (kotlinx.coroutines.U0) r9
        L83:
            kotlinx.coroutines.internal.B r10 = kotlinx.coroutines.channels.BufferedChannelKt.z()
            boolean r8 = r12.v(r4, r8, r10)
            if (r8 == 0) goto L16
            if (r0 == 0) goto L97
            java.lang.Object r5 = r12.A(r4)
            kotlinx.coroutines.internal.UndeliveredElementException r1 = kotlinx.coroutines.internal.u.b(r0, r5, r1)
        L97:
            java.lang.Object r3 = kotlinx.coroutines.internal.AbstractC1676i.c(r3, r9)
            r12.w(r4)
            r12.t()
            goto Laf
        La2:
            kotlinx.coroutines.internal.B r9 = kotlinx.coroutines.channels.BufferedChannelKt.z()
            boolean r8 = r12.v(r4, r8, r9)
            if (r8 == 0) goto L16
            r12.t()
        Laf:
            int r4 = r4 + (-1)
            goto Lb
        Lb3:
            kotlinx.coroutines.internal.b r12 = r12.h()
            kotlinx.coroutines.channels.l r12 = (kotlinx.coroutines.channels.l) r12
            if (r12 != 0) goto L8
        Lbb:
            if (r3 == 0) goto Le1
            boolean r12 = r3 instanceof java.util.ArrayList
            if (r12 != 0) goto Lc7
            kotlinx.coroutines.U0 r3 = (kotlinx.coroutines.U0) r3
            r11.m1(r3)
            goto Le1
        Lc7:
            java.lang.String r12 = "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>"
            kotlin.jvm.internal.j.c(r3, r12)
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r12 = r3.size()
            int r12 = r12 - r2
        Ld3:
            if (r5 >= r12) goto Le1
            java.lang.Object r0 = r3.get(r12)
            kotlinx.coroutines.U0 r0 = (kotlinx.coroutines.U0) r0
            r11.m1(r0)
            int r12 = r12 + (-1)
            goto Ld3
        Le1:
            if (r1 != 0) goto Le4
            return
        Le4:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.k1(kotlinx.coroutines.channels.l):void");
    }

    @Override // kotlinx.coroutines.channels.s
    public Object l(Object obj) {
        Object obj2;
        int i2;
        l lVar;
        BufferedChannel bufferedChannel;
        if (q1(f51548e.get(this))) {
            return j.f51593b.b();
        }
        Object obj3 = BufferedChannelKt.f51572j;
        l lVar2 = (l) r0().get(this);
        while (true) {
            long andIncrement = s0().getAndIncrement(this);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zD0 = D0(andIncrement);
            int i3 = BufferedChannelKt.f51564b;
            long j3 = j2 / i3;
            int i4 = (int) (j2 % i3);
            if (lVar2.f51813d != j3) {
                l lVarF0 = f0(j3, lVar2);
                if (lVarF0 != null) {
                    i2 = i4;
                    lVar = lVarF0;
                    bufferedChannel = this;
                    obj2 = obj;
                } else if (zD0) {
                    return j.f51593b.a(q0());
                }
            } else {
                obj2 = obj;
                i2 = i4;
                lVar = lVar2;
                bufferedChannel = this;
            }
            int iY1 = bufferedChannel.y1(lVar, i2, obj2, j2, obj3, zD0);
            lVar2 = lVar;
            if (iY1 == 0) {
                lVar2.b();
                return j.f51593b.c(kotlin.j.f51397a);
            }
            if (iY1 == 1) {
                return j.f51593b.c(kotlin.j.f51397a);
            }
            if (iY1 == 2) {
                if (zD0) {
                    lVar2.t();
                    return j.f51593b.a(q0());
                }
                U0 u02 = obj3 instanceof U0 ? (U0) obj3 : null;
                if (u02 != null) {
                    Z0(u02, lVar2, i2);
                }
                lVar2.t();
                return j.f51593b.b();
            }
            if (iY1 == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (iY1 == 4) {
                if (j2 < p0()) {
                    lVar2.b();
                }
                return j.f51593b.a(q0());
            }
            if (iY1 == 5) {
                lVar2.b();
            }
            obj = obj2;
        }
    }

    public final void l1(U0 u02) {
        n1(u02, true);
    }

    public final Throwable m0() {
        Throwable thJ0 = j0();
        return thJ0 == null ? new ClosedReceiveChannelException("Channel was closed") : thJ0;
    }

    public final void m1(U0 u02) {
        n1(u02, false);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public kotlinx.coroutines.selects.f n() {
        BufferedChannel$onReceiveCatching$1 bufferedChannel$onReceiveCatching$1 = BufferedChannel$onReceiveCatching$1.INSTANCE;
        kotlin.jvm.internal.j.c(bufferedChannel$onReceiveCatching$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) kotlin.jvm.internal.p.c(bufferedChannel$onReceiveCatching$1, 3);
        BufferedChannel$onReceiveCatching$2 bufferedChannel$onReceiveCatching$2 = BufferedChannel$onReceiveCatching$2.INSTANCE;
        kotlin.jvm.internal.j.c(bufferedChannel$onReceiveCatching$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new kotlinx.coroutines.selects.g(this, function3, (Function3) kotlin.jvm.internal.p.c(bufferedChannel$onReceiveCatching$2, 3), this.f51559d);
    }

    public final void n1(U0 u02, boolean z2) {
        if (u02 instanceof InterfaceC1687l) {
            kotlin.coroutines.e eVar = (kotlin.coroutines.e) u02;
            Result.Companion companion = Result.INSTANCE;
            eVar.resumeWith(Result.m66constructorimpl(kotlin.e.a(z2 ? m0() : q0())));
        } else if (u02 instanceof r) {
            C1691n c1691n = ((r) u02).f51601b;
            Result.Companion companion2 = Result.INSTANCE;
            c1691n.resumeWith(Result.m66constructorimpl(j.b(j.f51593b.a(j0()))));
        } else if (u02 instanceof a) {
            ((a) u02).j();
        } else {
            if (u02 instanceof kotlinx.coroutines.selects.i) {
                ((kotlinx.coroutines.selects.i) u02).f(this, BufferedChannelKt.z());
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + u02).toString());
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public Object o() {
        l lVarE0;
        long j2 = f51549f.get(this);
        long j3 = f51548e.get(this);
        if (C0(j3)) {
            return j.f51593b.a(j0());
        }
        if (j2 >= (j3 & 1152921504606846975L)) {
            return j.f51593b.b();
        }
        Object obj = BufferedChannelKt.f51573k;
        l lVar = (l) n0().get(this);
        while (!B0()) {
            long andIncrement = o0().getAndIncrement(this);
            int i2 = BufferedChannelKt.f51564b;
            long j4 = andIncrement / i2;
            int i3 = (int) (andIncrement % i2);
            if (lVar.f51813d != j4) {
                lVarE0 = e0(j4, lVar);
                if (lVarE0 == null) {
                    continue;
                }
            } else {
                lVarE0 = lVar;
            }
            Object objW1 = w1(lVarE0, i3, andIncrement, obj);
            if (objW1 == BufferedChannelKt.f51575m) {
                U0 u02 = obj instanceof U0 ? (U0) obj : null;
                if (u02 != null) {
                    Y0(u02, lVarE0, i3);
                }
                C1(andIncrement);
                lVarE0.t();
                return j.f51593b.b();
            }
            if (objW1 != BufferedChannelKt.f51577o) {
                if (objW1 == BufferedChannelKt.f51576n) {
                    throw new IllegalStateException("unexpected");
                }
                lVarE0.b();
                return j.f51593b.c(objW1);
            }
            if (andIncrement < t0()) {
                lVarE0.b();
            }
            lVar = lVarE0;
        }
        return j.f51593b.a(j0());
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public Object p(kotlin.coroutines.e eVar) {
        return f1(this, eVar);
    }

    public final long p0() {
        return f51549f.get(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0109 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object p1(kotlinx.coroutines.channels.l r17, int r18, java.lang.Object r19, long r20, kotlin.coroutines.e r22) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.p1(kotlinx.coroutines.channels.l, int, java.lang.Object, long, kotlin.coroutines.e):java.lang.Object");
    }

    public final Throwable q0() {
        Throwable thJ0 = j0();
        return thJ0 == null ? new ClosedSendChannelException("Channel was closed") : thJ0;
    }

    public final boolean q1(long j2) {
        if (D0(j2)) {
            return false;
        }
        return !T(j2 & 1152921504606846975L);
    }

    @Override // kotlinx.coroutines.channels.s
    public boolean r() {
        return D0(f51548e.get(this));
    }

    public final boolean r1(Object obj, Object obj2) {
        if (obj instanceof kotlinx.coroutines.selects.i) {
            return ((kotlinx.coroutines.selects.i) obj).f(this, obj2);
        }
        if (obj instanceof r) {
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            C1691n c1691n = ((r) obj).f51601b;
            j jVarB = j.b(j.f51593b.c(obj2));
            Function1 function1 = this.f51558c;
            return BufferedChannelKt.B(c1691n, jVarB, (Function3) (function1 != null ? S(function1) : null));
        }
        if (obj instanceof a) {
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).i(obj2);
        }
        if (obj instanceof InterfaceC1687l) {
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            InterfaceC1687l interfaceC1687l = (InterfaceC1687l) obj;
            Function1 function12 = this.f51558c;
            return BufferedChannelKt.B(interfaceC1687l, obj2, (Function3) (function12 != null ? Q(function12) : null));
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    public final boolean s1(Object obj, l lVar, int i2) {
        if (obj instanceof InterfaceC1687l) {
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return BufferedChannelKt.C((InterfaceC1687l) obj, kotlin.j.f51397a, null, 2, null);
        }
        if (!(obj instanceof kotlinx.coroutines.selects.i)) {
            throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
        }
        kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
        TrySelectDetailedResult trySelectDetailedResultZ = ((SelectImplementation) obj).z(this, kotlin.j.f51397a);
        if (trySelectDetailedResultZ == TrySelectDetailedResult.REREGISTER) {
            lVar.w(i2);
        }
        return trySelectDetailedResultZ == TrySelectDetailedResult.SUCCESSFUL;
    }

    public final long t0() {
        return f51548e.get(this) & 1152921504606846975L;
    }

    public final Object t1(Object obj) {
        l lVarF0;
        int i2;
        BufferedChannel bufferedChannel;
        Object obj2 = BufferedChannelKt.f51566d;
        l lVar = (l) r0().get(this);
        while (true) {
            long andIncrement = s0().getAndIncrement(this);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zD0 = D0(andIncrement);
            int i3 = BufferedChannelKt.f51564b;
            long j3 = j2 / i3;
            int i4 = (int) (j2 % i3);
            if (lVar.f51813d != j3) {
                lVarF0 = f0(j3, lVar);
                if (lVarF0 != null) {
                    bufferedChannel = this;
                    i2 = i4;
                } else if (zD0) {
                    return j.f51593b.a(q0());
                }
            } else {
                lVarF0 = lVar;
                i2 = i4;
                bufferedChannel = this;
            }
            Object obj3 = obj;
            int iY1 = bufferedChannel.y1(lVarF0, i2, obj3, j2, obj2, zD0);
            lVar = lVarF0;
            if (iY1 == 0) {
                lVar.b();
                return j.f51593b.c(kotlin.j.f51397a);
            }
            if (iY1 == 1) {
                return j.f51593b.c(kotlin.j.f51397a);
            }
            if (iY1 == 2) {
                if (zD0) {
                    lVar.t();
                    return j.f51593b.a(q0());
                }
                U0 u02 = obj2 instanceof U0 ? (U0) obj2 : null;
                if (u02 != null) {
                    Z0(u02, lVar, i2);
                }
                b0((lVar.f51813d * i3) + i2);
                return j.f51593b.c(kotlin.j.f51397a);
            }
            if (iY1 == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (iY1 == 4) {
                if (j2 < p0()) {
                    lVar.b();
                }
                return j.f51593b.a(q0());
            }
            if (iY1 == 5) {
                lVar.b();
            }
            obj = obj3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x01d7, code lost:
    
        r16 = r7;
        r3 = (kotlinx.coroutines.channels.l) r3.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01e0, code lost:
    
        if (r3 != null) goto L92;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toString():java.lang.String");
    }

    public final boolean u1(l lVar, int i2, long j2) {
        Object objB = lVar.B(i2);
        if (!(objB instanceof U0) || j2 < f51549f.get(this) || !lVar.v(i2, objB, BufferedChannelKt.f51569g)) {
            return v1(lVar, i2, j2);
        }
        if (s1(objB, lVar, i2)) {
            lVar.F(i2, BufferedChannelKt.f51566d);
            return true;
        }
        lVar.F(i2, BufferedChannelKt.f51572j);
        lVar.C(i2, false);
        return false;
    }

    public final boolean v0() {
        while (true) {
            l lVarE0 = (l) f51553j.get(this);
            long jP0 = p0();
            if (t0() <= jP0) {
                return false;
            }
            int i2 = BufferedChannelKt.f51564b;
            long j2 = jP0 / i2;
            if (lVarE0.f51813d == j2 || (lVarE0 = e0(j2, lVarE0)) != null) {
                lVarE0.b();
                if (z0(lVarE0, (int) (jP0 % i2), jP0)) {
                    return true;
                }
                f51549f.compareAndSet(this, jP0, 1 + jP0);
            } else if (((l) f51553j.get(this)).f51813d < j2) {
                return false;
            }
        }
    }

    public final boolean v1(l lVar, int i2, long j2) {
        while (true) {
            Object objB = lVar.B(i2);
            if (objB instanceof U0) {
                if (j2 < f51549f.get(this)) {
                    if (lVar.v(i2, objB, new t((U0) objB))) {
                        return true;
                    }
                } else if (lVar.v(i2, objB, BufferedChannelKt.f51569g)) {
                    if (s1(objB, lVar, i2)) {
                        lVar.F(i2, BufferedChannelKt.f51566d);
                        return true;
                    }
                    lVar.F(i2, BufferedChannelKt.f51572j);
                    lVar.C(i2, false);
                    return false;
                }
            } else {
                if (objB == BufferedChannelKt.f51572j) {
                    return false;
                }
                if (objB == null) {
                    if (lVar.v(i2, objB, BufferedChannelKt.f51567e)) {
                        return true;
                    }
                } else {
                    if (objB == BufferedChannelKt.f51566d || objB == BufferedChannelKt.f51570h || objB == BufferedChannelKt.f51571i || objB == BufferedChannelKt.f51573k || objB == BufferedChannelKt.z()) {
                        return true;
                    }
                    if (objB != BufferedChannelKt.f51568f) {
                        throw new IllegalStateException(("Unexpected cell state: " + objB).toString());
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public kotlinx.coroutines.selects.f w() {
        BufferedChannel$onReceive$1 bufferedChannel$onReceive$1 = BufferedChannel$onReceive$1.INSTANCE;
        kotlin.jvm.internal.j.c(bufferedChannel$onReceive$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) kotlin.jvm.internal.p.c(bufferedChannel$onReceive$1, 3);
        BufferedChannel$onReceive$2 bufferedChannel$onReceive$2 = BufferedChannel$onReceive$2.INSTANCE;
        kotlin.jvm.internal.j.c(bufferedChannel$onReceive$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new kotlinx.coroutines.selects.g(this, function3, (Function3) kotlin.jvm.internal.p.c(bufferedChannel$onReceive$2, 3), this.f51559d);
    }

    public final void w0(long j2) {
        if ((f51551h.addAndGet(this, j2) & 4611686018427387904L) != 0) {
            while ((f51551h.get(this) & 4611686018427387904L) != 0) {
            }
        }
    }

    public final Object w1(l lVar, int i2, long j2, Object obj) {
        Object objB = lVar.B(i2);
        if (objB == null) {
            if (j2 >= (f51548e.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.f51576n;
                }
                if (lVar.v(i2, objB, obj)) {
                    c0();
                    return BufferedChannelKt.f51575m;
                }
            }
        } else if (objB == BufferedChannelKt.f51566d && lVar.v(i2, objB, BufferedChannelKt.f51571i)) {
            c0();
            return lVar.D(i2);
        }
        return x1(lVar, i2, j2, obj);
    }

    public final Object x1(l lVar, int i2, long j2, Object obj) {
        while (true) {
            Object objB = lVar.B(i2);
            if (objB == null || objB == BufferedChannelKt.f51567e) {
                if (j2 < (f51548e.get(this) & 1152921504606846975L)) {
                    if (lVar.v(i2, objB, BufferedChannelKt.f51570h)) {
                        c0();
                        return BufferedChannelKt.f51577o;
                    }
                } else {
                    if (obj == null) {
                        return BufferedChannelKt.f51576n;
                    }
                    if (lVar.v(i2, objB, obj)) {
                        c0();
                        return BufferedChannelKt.f51575m;
                    }
                }
            } else {
                if (objB != BufferedChannelKt.f51566d) {
                    if (objB != BufferedChannelKt.f51572j && objB != BufferedChannelKt.f51570h) {
                        if (objB == BufferedChannelKt.z()) {
                            c0();
                            return BufferedChannelKt.f51577o;
                        }
                        if (objB != BufferedChannelKt.f51569g && lVar.v(i2, objB, BufferedChannelKt.f51568f)) {
                            boolean z2 = objB instanceof t;
                            if (z2) {
                                objB = ((t) objB).f51602a;
                            }
                            if (s1(objB, lVar, i2)) {
                                lVar.F(i2, BufferedChannelKt.f51571i);
                                c0();
                                return lVar.D(i2);
                            }
                            lVar.F(i2, BufferedChannelKt.f51572j);
                            lVar.C(i2, false);
                            if (z2) {
                                c0();
                            }
                            return BufferedChannelKt.f51577o;
                        }
                    }
                    return BufferedChannelKt.f51577o;
                }
                if (lVar.v(i2, objB, BufferedChannelKt.f51571i)) {
                    c0();
                    return lVar.D(i2);
                }
            }
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public Object y(kotlin.coroutines.e eVar) {
        return e1(this, eVar);
    }

    public final void y0() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51556m;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, obj == null ? BufferedChannelKt.f51579q : BufferedChannelKt.f51580r));
        if (obj == null) {
            return;
        }
        ((Function1) obj).invoke(j0());
    }

    public final int y1(l lVar, int i2, Object obj, long j2, Object obj2, boolean z2) {
        lVar.G(i2, obj);
        if (z2) {
            return z1(lVar, i2, obj, j2, obj2, z2);
        }
        Object objB = lVar.B(i2);
        if (objB == null) {
            if (T(j2)) {
                if (lVar.v(i2, null, BufferedChannelKt.f51566d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (lVar.v(i2, null, obj2)) {
                    return 2;
                }
            }
        } else if (objB instanceof U0) {
            lVar.w(i2);
            if (r1(objB, obj)) {
                lVar.F(i2, BufferedChannelKt.f51571i);
                U0();
                return 0;
            }
            if (lVar.x(i2, BufferedChannelKt.f51573k) == BufferedChannelKt.f51573k) {
                return 5;
            }
            lVar.C(i2, true);
            return 5;
        }
        return z1(lVar, i2, obj, j2, obj2, z2);
    }

    public final boolean z0(l lVar, int i2, long j2) {
        Object objB;
        do {
            objB = lVar.B(i2);
            if (objB != null && objB != BufferedChannelKt.f51567e) {
                if (objB == BufferedChannelKt.f51566d) {
                    return true;
                }
                if (objB == BufferedChannelKt.f51572j || objB == BufferedChannelKt.z() || objB == BufferedChannelKt.f51571i || objB == BufferedChannelKt.f51570h) {
                    return false;
                }
                if (objB == BufferedChannelKt.f51569g) {
                    return true;
                }
                return objB != BufferedChannelKt.f51568f && j2 == p0();
            }
        } while (!lVar.v(i2, objB, BufferedChannelKt.f51570h));
        c0();
        return false;
    }

    public final int z1(l lVar, int i2, Object obj, long j2, Object obj2, boolean z2) {
        while (true) {
            Object objB = lVar.B(i2);
            if (objB == null) {
                if (!T(j2) || z2) {
                    if (z2) {
                        if (lVar.v(i2, null, BufferedChannelKt.f51572j)) {
                            lVar.C(i2, false);
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (lVar.v(i2, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (lVar.v(i2, null, BufferedChannelKt.f51566d)) {
                    return 1;
                }
            } else {
                if (objB != BufferedChannelKt.f51567e) {
                    if (objB == BufferedChannelKt.f51573k) {
                        lVar.w(i2);
                        return 5;
                    }
                    if (objB == BufferedChannelKt.f51570h) {
                        lVar.w(i2);
                        return 5;
                    }
                    if (objB == BufferedChannelKt.z()) {
                        lVar.w(i2);
                        a0();
                        return 4;
                    }
                    lVar.w(i2);
                    if (objB instanceof t) {
                        objB = ((t) objB).f51602a;
                    }
                    if (r1(objB, obj)) {
                        lVar.F(i2, BufferedChannelKt.f51571i);
                        U0();
                        return 0;
                    }
                    if (lVar.x(i2, BufferedChannelKt.f51573k) != BufferedChannelKt.f51573k) {
                        lVar.C(i2, true);
                    }
                    return 5;
                }
                if (lVar.v(i2, objB, BufferedChannelKt.f51566d)) {
                    return 1;
                }
            }
        }
    }
}
