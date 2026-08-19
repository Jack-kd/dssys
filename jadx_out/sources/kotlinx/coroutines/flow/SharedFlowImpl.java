package kotlinx.coroutines.flow;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.AbstractC1695p;
import kotlinx.coroutines.C1691n;
import kotlinx.coroutines.channels.BufferOverflow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public abstract class SharedFlowImpl extends kotlinx.coroutines.flow.internal.a implements i0, InterfaceC1639c, kotlinx.coroutines.flow.internal.k {

    /* renamed from: f, reason: collision with root package name */
    public final int f51673f;

    /* renamed from: g, reason: collision with root package name */
    public final int f51674g;

    /* renamed from: h, reason: collision with root package name */
    public final BufferOverflow f51675h;

    /* renamed from: i, reason: collision with root package name */
    public Object[] f51676i;

    /* renamed from: j, reason: collision with root package name */
    public long f51677j;

    /* renamed from: k, reason: collision with root package name */
    public long f51678k;

    /* renamed from: l, reason: collision with root package name */
    public int f51679l;

    /* renamed from: m, reason: collision with root package name */
    public int f51680m;

    public static final class a implements kotlinx.coroutines.Z {

        /* renamed from: b, reason: collision with root package name */
        public final SharedFlowImpl f51681b;

        /* renamed from: c, reason: collision with root package name */
        public long f51682c;

        /* renamed from: d, reason: collision with root package name */
        public final Object f51683d;

        /* renamed from: e, reason: collision with root package name */
        public final kotlin.coroutines.e f51684e;

        public a(SharedFlowImpl sharedFlowImpl, long j2, Object obj, kotlin.coroutines.e eVar) {
            this.f51681b = sharedFlowImpl;
            this.f51682c = j2;
            this.f51683d = obj;
            this.f51684e = eVar;
        }

        @Override // kotlinx.coroutines.Z
        public void dispose() {
            this.f51681b.y(this);
        }
    }

    public /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51685a;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f51685a = iArr;
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MIN_RECEIVED_BEFORE_ACK_DECIMATION, MediaPlayer.MEDIA_PLAYER_OPTION_HURRY_MILLISECOND}, m = "collect$suspendImpl", n = {"$this", "collector", "slot", "$this", "collector", "slot", "collectorJob", "$this", "collector", "slot", "collectorJob"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
    /* renamed from: kotlinx.coroutines.flow.SharedFlowImpl$collect$1, reason: invalid class name */
    public static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(kotlin.coroutines.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SharedFlowImpl.A(SharedFlowImpl.this, null, this);
        }
    }

    public SharedFlowImpl(int i2, int i3, BufferOverflow bufferOverflow) {
        this.f51673f = i2;
        this.f51674g = i3;
        this.f51675h = bufferOverflow;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ab, code lost:
    
        if (r8 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ad, code lost:
    
        kotlinx.coroutines.AbstractC1709w0.g(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b0, code lost:
    
        r0.L$0 = r5;
        r0.L$1 = r2;
        r0.L$2 = r9;
        r0.L$3 = r8;
        r0.label = 3;
        r5 = r5;
        r9 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00be, code lost:
    
        if (r2.emit(r10, r0) != r1) goto L16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009a A[Catch: all -> 0x0042, TryCatch #1 {all -> 0x0042, blocks: (B:15:0x003b, B:32:0x0092, B:34:0x009a, B:38:0x00ad, B:39:0x00b0, B:22:0x005d), top: B:48:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ab A[EDGE_INSN: B:52:0x00ab->B:37:0x00ab BREAK  A[LOOP:0: B:32:0x0092->B:55:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r5v1, types: [kotlinx.coroutines.flow.internal.a] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, kotlinx.coroutines.flow.SharedFlowImpl] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r9v0, types: [kotlinx.coroutines.flow.d] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v2, types: [kotlinx.coroutines.flow.internal.c] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Object, kotlinx.coroutines.flow.o0] */
    /* JADX WARN: Type inference failed for: r9v9, types: [kotlinx.coroutines.flow.o0] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00be -> B:16:0x003e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object A(kotlinx.coroutines.flow.SharedFlowImpl r8, kotlinx.coroutines.flow.InterfaceC1640d r9, kotlin.coroutines.e r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.A(kotlinx.coroutines.flow.SharedFlowImpl, kotlinx.coroutines.flow.d, kotlin.coroutines.e):java.lang.Object");
    }

    public static /* synthetic */ Object F(SharedFlowImpl sharedFlowImpl, Object obj, kotlin.coroutines.e eVar) throws Throwable {
        if (sharedFlowImpl.c(obj)) {
            return kotlin.j.f51397a;
        }
        Object objG = sharedFlowImpl.G(obj, eVar);
        return objG == kotlin.coroutines.intrinsics.a.e() ? objG : kotlin.j.f51397a;
    }

    public final void B(long j2) {
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        if (this.f51716c != 0 && (cVarArr = this.f51715b) != null) {
            for (kotlinx.coroutines.flow.internal.c cVar : cVarArr) {
                if (cVar != null) {
                    o0 o0Var = (o0) cVar;
                    long j3 = o0Var.f51736a;
                    if (j3 >= 0 && j3 < j2) {
                        o0Var.f51736a = j2;
                    }
                }
            }
        }
        this.f51678k = j2;
    }

    @Override // kotlinx.coroutines.flow.internal.a
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public o0 i() {
        return new o0();
    }

    @Override // kotlinx.coroutines.flow.internal.a
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public o0[] j(int i2) {
        return new o0[i2];
    }

    public final void E() {
        Object[] objArr = this.f51676i;
        kotlin.jvm.internal.j.b(objArr);
        n0.e(objArr, K(), null);
        this.f51679l--;
        long jK = K() + 1;
        if (this.f51677j < jK) {
            this.f51677j = jK;
        }
        if (this.f51678k < jK) {
            B(jK);
        }
    }

    public final Object G(Object obj, kotlin.coroutines.e eVar) throws Throwable {
        Throwable th;
        kotlin.coroutines.e[] eVarArrI;
        a aVar;
        C1691n c1691n = new C1691n(IntrinsicsKt__IntrinsicsJvmKt.c(eVar), 1);
        c1691n.F();
        kotlin.coroutines.e[] eVarArrI2 = kotlinx.coroutines.flow.internal.b.f51719a;
        synchronized (this) {
            try {
                if (R(obj)) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        c1691n.resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
                        eVarArrI = I(eVarArrI2);
                        aVar = null;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } else {
                    try {
                        aVar = new a(this, K() + P(), obj, c1691n);
                        H(aVar);
                        this.f51680m++;
                        if (this.f51674g == 0) {
                            eVarArrI2 = I(eVarArrI2);
                        }
                        eVarArrI = eVarArrI2;
                    } catch (Throwable th3) {
                        th = th3;
                        th = th;
                        throw th;
                    }
                }
                if (aVar != null) {
                    AbstractC1695p.a(c1691n, aVar);
                }
                for (kotlin.coroutines.e eVar2 : eVarArrI) {
                    if (eVar2 != null) {
                        Result.Companion companion2 = Result.INSTANCE;
                        eVar2.resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
                    }
                }
                Object objY = c1691n.y();
                if (objY == kotlin.coroutines.intrinsics.a.e()) {
                    AbstractC1795e.c(eVar);
                }
                return objY == kotlin.coroutines.intrinsics.a.e() ? objY : kotlin.j.f51397a;
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    public final void H(Object obj) {
        int iP = P();
        Object[] objArrQ = this.f51676i;
        if (objArrQ == null) {
            objArrQ = Q(null, 0, 2);
        } else if (iP >= objArrQ.length) {
            objArrQ = Q(objArrQ, iP, objArrQ.length * 2);
        }
        n0.e(objArrQ, K() + iP, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object, java.lang.Object[]] */
    public final kotlin.coroutines.e[] I(kotlin.coroutines.e[] eVarArr) {
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        o0 o0Var;
        kotlin.coroutines.e eVar;
        int length = eVarArr.length;
        if (this.f51716c != 0 && (cVarArr = this.f51715b) != null) {
            int length2 = cVarArr.length;
            int i2 = 0;
            eVarArr = eVarArr;
            while (i2 < length2) {
                kotlinx.coroutines.flow.internal.c cVar = cVarArr[i2];
                if (cVar != null && (eVar = (o0Var = (o0) cVar).f51737b) != null && T(o0Var) >= 0) {
                    int length3 = eVarArr.length;
                    eVarArr = eVarArr;
                    if (length >= length3) {
                        ?? CopyOf = Arrays.copyOf(eVarArr, Math.max(2, eVarArr.length * 2));
                        kotlin.jvm.internal.j.d(CopyOf, "copyOf(...)");
                        eVarArr = CopyOf;
                    }
                    eVarArr[length] = eVar;
                    o0Var.f51737b = null;
                    length++;
                }
                i2++;
                eVarArr = eVarArr;
            }
        }
        return eVarArr;
    }

    public final long J() {
        return K() + this.f51679l;
    }

    public final long K() {
        return Math.min(this.f51678k, this.f51677j);
    }

    public final Object L() {
        Object[] objArr = this.f51676i;
        kotlin.jvm.internal.j.b(objArr);
        return n0.d(objArr, (this.f51677j + O()) - 1);
    }

    public final Object M(long j2) {
        Object[] objArr = this.f51676i;
        kotlin.jvm.internal.j.b(objArr);
        Object objD = n0.d(objArr, j2);
        return objD instanceof a ? ((a) objD).f51683d : objD;
    }

    public final long N() {
        return K() + this.f51679l + this.f51680m;
    }

    public final int O() {
        return (int) ((K() + this.f51679l) - this.f51677j);
    }

    public final int P() {
        return this.f51679l + this.f51680m;
    }

    public final Object[] Q(Object[] objArr, int i2, int i3) {
        if (i3 <= 0) {
            throw new IllegalStateException("Buffer size overflow");
        }
        Object[] objArr2 = new Object[i3];
        this.f51676i = objArr2;
        if (objArr != null) {
            long jK = K();
            for (int i4 = 0; i4 < i2; i4++) {
                long j2 = i4 + jK;
                n0.e(objArr2, j2, n0.d(objArr, j2));
            }
        }
        return objArr2;
    }

    public final boolean R(Object obj) {
        if (l() == 0) {
            return S(obj);
        }
        if (this.f51679l >= this.f51674g && this.f51678k <= this.f51677j) {
            int i2 = b.f51685a[this.f51675h.ordinal()];
            if (i2 == 1) {
                return false;
            }
            if (i2 == 2) {
                return true;
            }
            if (i2 != 3) {
                throw new NoWhenBranchMatchedException();
            }
        }
        H(obj);
        int i3 = this.f51679l + 1;
        this.f51679l = i3;
        if (i3 > this.f51674g) {
            E();
        }
        if (O() > this.f51673f) {
            V(this.f51677j + 1, this.f51678k, J(), N());
        }
        return true;
    }

    public final boolean S(Object obj) {
        if (this.f51673f == 0) {
            return true;
        }
        H(obj);
        int i2 = this.f51679l + 1;
        this.f51679l = i2;
        if (i2 > this.f51673f) {
            E();
        }
        this.f51678k = K() + this.f51679l;
        return true;
    }

    public final long T(o0 o0Var) {
        long j2 = o0Var.f51736a;
        if (j2 >= J() && (this.f51674g > 0 || j2 > K() || this.f51680m == 0)) {
            return -1L;
        }
        return j2;
    }

    public final Object U(o0 o0Var) {
        Object obj;
        kotlin.coroutines.e[] eVarArrW = kotlinx.coroutines.flow.internal.b.f51719a;
        synchronized (this) {
            try {
                long jT = T(o0Var);
                if (jT < 0) {
                    obj = n0.f51735a;
                } else {
                    long j2 = o0Var.f51736a;
                    Object objM = M(jT);
                    o0Var.f51736a = jT + 1;
                    eVarArrW = W(j2);
                    obj = objM;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (kotlin.coroutines.e eVar : eVarArrW) {
            if (eVar != null) {
                Result.Companion companion = Result.INSTANCE;
                eVar.resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
            }
        }
        return obj;
    }

    public final void V(long j2, long j3, long j4, long j5) {
        long jMin = Math.min(j3, j2);
        for (long jK = K(); jK < jMin; jK++) {
            Object[] objArr = this.f51676i;
            kotlin.jvm.internal.j.b(objArr);
            n0.e(objArr, jK, null);
        }
        this.f51677j = j2;
        this.f51678k = j3;
        this.f51679l = (int) (j4 - jMin);
        this.f51680m = (int) (j5 - j4);
    }

    public final kotlin.coroutines.e[] W(long j2) {
        long j3;
        long j4;
        long j5;
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        if (j2 > this.f51678k) {
            return kotlinx.coroutines.flow.internal.b.f51719a;
        }
        long jK = K();
        long j6 = this.f51679l + jK;
        if (this.f51674g == 0 && this.f51680m > 0) {
            j6++;
        }
        if (this.f51716c != 0 && (cVarArr = this.f51715b) != null) {
            for (kotlinx.coroutines.flow.internal.c cVar : cVarArr) {
                if (cVar != null) {
                    long j7 = ((o0) cVar).f51736a;
                    if (j7 >= 0 && j7 < j6) {
                        j6 = j7;
                    }
                }
            }
        }
        if (j6 <= this.f51678k) {
            return kotlinx.coroutines.flow.internal.b.f51719a;
        }
        long J2 = J();
        int iMin = l() > 0 ? Math.min(this.f51680m, this.f51674g - ((int) (J2 - j6))) : this.f51680m;
        kotlin.coroutines.e[] eVarArr = kotlinx.coroutines.flow.internal.b.f51719a;
        long j8 = this.f51680m + J2;
        if (iMin > 0) {
            eVarArr = new kotlin.coroutines.e[iMin];
            Object[] objArr = this.f51676i;
            kotlin.jvm.internal.j.b(objArr);
            j5 = 1;
            long j9 = J2;
            int i2 = 0;
            while (true) {
                if (J2 >= j8) {
                    j3 = jK;
                    j4 = j6;
                    J2 = j9;
                    break;
                }
                Object objD = n0.d(objArr, J2);
                j3 = jK;
                kotlinx.coroutines.internal.B b3 = n0.f51735a;
                if (objD != b3) {
                    kotlin.jvm.internal.j.c(objD, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    a aVar = (a) objD;
                    int i3 = i2 + 1;
                    j4 = j6;
                    eVarArr[i2] = aVar.f51684e;
                    n0.e(objArr, J2, b3);
                    n0.e(objArr, j9, aVar.f51683d);
                    long j10 = j9 + 1;
                    if (i3 >= iMin) {
                        J2 = j10;
                        break;
                    }
                    i2 = i3;
                    j9 = j10;
                } else {
                    j4 = j6;
                }
                J2++;
                jK = j3;
                j6 = j4;
            }
        } else {
            j3 = jK;
            j4 = j6;
            j5 = 1;
        }
        kotlin.coroutines.e[] eVarArr2 = eVarArr;
        int i4 = (int) (J2 - j3);
        long j11 = l() == 0 ? J2 : j4;
        long jMax = Math.max(this.f51677j, J2 - Math.min(this.f51673f, i4));
        if (this.f51674g == 0 && jMax < j8) {
            Object[] objArr2 = this.f51676i;
            kotlin.jvm.internal.j.b(objArr2);
            if (kotlin.jvm.internal.j.a(n0.d(objArr2, jMax), n0.f51735a)) {
                J2 += j5;
                jMax += j5;
            }
        }
        V(jMax, j11, J2, j8);
        z();
        return !(eVarArr2.length == 0) ? I(eVarArr2) : eVarArr2;
    }

    public final long X() {
        long j2 = this.f51677j;
        if (j2 < this.f51678k) {
            this.f51678k = j2;
        }
        return j2;
    }

    @Override // kotlinx.coroutines.flow.i0
    public void b() throws Throwable {
        synchronized (this) {
            try {
                try {
                    V(J(), this.f51678k, J(), N());
                    kotlin.j jVar = kotlin.j.f51397a;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.i0
    public boolean c(Object obj) {
        int i2;
        boolean z2;
        kotlin.coroutines.e[] eVarArrI = kotlinx.coroutines.flow.internal.b.f51719a;
        synchronized (this) {
            if (R(obj)) {
                eVarArrI = I(eVarArrI);
                z2 = true;
            } else {
                z2 = false;
            }
        }
        for (kotlin.coroutines.e eVar : eVarArrI) {
            if (eVar != null) {
                Result.Companion companion = Result.INSTANCE;
                eVar.resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
            }
        }
        return z2;
    }

    @Override // kotlinx.coroutines.flow.m0, kotlinx.coroutines.flow.InterfaceC1639c
    public Object collect(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        return A(this, interfaceC1640d, eVar);
    }

    @Override // kotlinx.coroutines.flow.internal.k
    public InterfaceC1639c d(kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        return n0.c(this, iVar, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.InterfaceC1640d
    public Object emit(Object obj, kotlin.coroutines.e eVar) {
        return F(this, obj, eVar);
    }

    public final Object x(o0 o0Var, kotlin.coroutines.e eVar) {
        C1691n c1691n = new C1691n(IntrinsicsKt__IntrinsicsJvmKt.c(eVar), 1);
        c1691n.F();
        synchronized (this) {
            try {
                if (T(o0Var) < 0) {
                    o0Var.f51737b = c1691n;
                } else {
                    Result.Companion companion = Result.INSTANCE;
                    c1691n.resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
                }
                kotlin.j jVar = kotlin.j.f51397a;
            } catch (Throwable th) {
                throw th;
            }
        }
        Object objY = c1691n.y();
        if (objY == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objY == kotlin.coroutines.intrinsics.a.e() ? objY : kotlin.j.f51397a;
    }

    public final void y(a aVar) {
        synchronized (this) {
            if (aVar.f51682c < K()) {
                return;
            }
            Object[] objArr = this.f51676i;
            kotlin.jvm.internal.j.b(objArr);
            if (n0.d(objArr, aVar.f51682c) != aVar) {
                return;
            }
            n0.e(objArr, aVar.f51682c, n0.f51735a);
            z();
            kotlin.j jVar = kotlin.j.f51397a;
        }
    }

    public final void z() {
        if (this.f51674g != 0 || this.f51680m > 1) {
            Object[] objArr = this.f51676i;
            kotlin.jvm.internal.j.b(objArr);
            while (this.f51680m > 0 && n0.d(objArr, (K() + P()) - 1) == n0.f51735a) {
                this.f51680m--;
                n0.e(objArr, K() + P(), null);
            }
        }
    }
}
