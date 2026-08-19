package kotlinx.coroutines;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.i;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.InterfaceC1705u0;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public class y0 implements InterfaceC1705u0, InterfaceC1704u, F0 {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51924b = AtomicReferenceFieldUpdater.newUpdater(y0.class, Object.class, "_state$volatile");

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51925c = AtomicReferenceFieldUpdater.newUpdater(y0.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    public static final class a extends C1691n {

        /* renamed from: j, reason: collision with root package name */
        public final y0 f51926j;

        public a(kotlin.coroutines.e eVar, y0 y0Var) {
            super(eVar, 1);
            this.f51926j = y0Var;
        }

        @Override // kotlinx.coroutines.C1691n
        public String M() {
            return "AwaitContinuation";
        }

        @Override // kotlinx.coroutines.C1691n
        public Throwable u(InterfaceC1705u0 interfaceC1705u0) {
            Throwable thE;
            Object objH0 = this.f51926j.h0();
            return (!(objH0 instanceof c) || (thE = ((c) objH0).e()) == null) ? objH0 instanceof A ? ((A) objH0).f51510a : interfaceC1705u0.z() : thE;
        }
    }

    public static final class b extends x0 {

        /* renamed from: f, reason: collision with root package name */
        public final y0 f51927f;

        /* renamed from: g, reason: collision with root package name */
        public final c f51928g;

        /* renamed from: h, reason: collision with root package name */
        public final C1702t f51929h;

        /* renamed from: i, reason: collision with root package name */
        public final Object f51930i;

        public b(y0 y0Var, c cVar, C1702t c1702t, Object obj) {
            this.f51927f = y0Var;
            this.f51928g = cVar;
            this.f51929h = c1702t;
            this.f51930i = obj;
        }

        @Override // kotlinx.coroutines.x0
        public boolean u() {
            return false;
        }

        @Override // kotlinx.coroutines.x0
        public void v(Throwable th) {
            this.f51927f.X(this.f51928g, this.f51929h, this.f51930i);
        }
    }

    public static final class c implements InterfaceC1696p0 {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ AtomicIntegerFieldUpdater f51931c = AtomicIntegerFieldUpdater.newUpdater(c.class, "_isCompleting$volatile");

        /* renamed from: d, reason: collision with root package name */
        public static final /* synthetic */ AtomicReferenceFieldUpdater f51932d = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_rootCause$volatile");

        /* renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ AtomicReferenceFieldUpdater f51933e = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_exceptionsHolder$volatile");
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile;
        private volatile /* synthetic */ Object _rootCause$volatile;

        /* renamed from: b, reason: collision with root package name */
        public final C0 f51934b;

        public c(C0 c02, boolean z2, Throwable th) {
            this.f51934b = c02;
            this._isCompleting$volatile = z2 ? 1 : 0;
            this._rootCause$volatile = th;
        }

        @Override // kotlinx.coroutines.InterfaceC1696p0
        public C0 a() {
            return this.f51934b;
        }

        public final void b(Throwable th) {
            Throwable thE = e();
            if (thE == null) {
                o(th);
                return;
            }
            if (th == thE) {
                return;
            }
            Object objD = d();
            if (objD == null) {
                n(th);
                return;
            }
            if (objD instanceof Throwable) {
                if (th == objD) {
                    return;
                }
                ArrayList arrayListC = c();
                arrayListC.add(objD);
                arrayListC.add(th);
                n(arrayListC);
                return;
            }
            if (objD instanceof ArrayList) {
                ((ArrayList) objD).add(th);
                return;
            }
            throw new IllegalStateException(("State is " + objD).toString());
        }

        public final ArrayList c() {
            return new ArrayList(4);
        }

        public final Object d() {
            return f51933e.get(this);
        }

        public final Throwable e() {
            return (Throwable) f51932d.get(this);
        }

        public final boolean i() {
            return e() != null;
        }

        @Override // kotlinx.coroutines.InterfaceC1696p0
        public boolean isActive() {
            return e() == null;
        }

        public final boolean j() {
            return f51931c.get(this) != 0;
        }

        public final boolean k() {
            return d() == z0.f51948e;
        }

        public final List l(Throwable th) {
            ArrayList arrayListC;
            Object objD = d();
            if (objD == null) {
                arrayListC = c();
            } else if (objD instanceof Throwable) {
                ArrayList arrayListC2 = c();
                arrayListC2.add(objD);
                arrayListC = arrayListC2;
            } else {
                if (!(objD instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + objD).toString());
                }
                arrayListC = (ArrayList) objD;
            }
            Throwable thE = e();
            if (thE != null) {
                arrayListC.add(0, thE);
            }
            if (th != null && !kotlin.jvm.internal.j.a(th, thE)) {
                arrayListC.add(th);
            }
            n(z0.f51948e);
            return arrayListC;
        }

        public final void m(boolean z2) {
            f51931c.set(this, z2 ? 1 : 0);
        }

        public final void n(Object obj) {
            f51933e.set(this, obj);
        }

        public final void o(Throwable th) {
            f51932d.set(this, th);
        }

        public String toString() {
            return "Finishing[cancelling=" + i() + ", completing=" + j() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + a() + ']';
        }
    }

    public final class d extends x0 {

        /* renamed from: f, reason: collision with root package name */
        public final kotlinx.coroutines.selects.i f51935f;

        public d(kotlinx.coroutines.selects.i iVar) {
            this.f51935f = iVar;
        }

        @Override // kotlinx.coroutines.x0
        public boolean u() {
            return false;
        }

        @Override // kotlinx.coroutines.x0
        public void v(Throwable th) {
            Object objH0 = y0.this.h0();
            if (!(objH0 instanceof A)) {
                objH0 = z0.h(objH0);
            }
            this.f51935f.f(y0.this, objH0);
        }
    }

    public final class e extends x0 {

        /* renamed from: f, reason: collision with root package name */
        public final kotlinx.coroutines.selects.i f51937f;

        public e(kotlinx.coroutines.selects.i iVar) {
            this.f51937f = iVar;
        }

        @Override // kotlinx.coroutines.x0
        public boolean u() {
            return false;
        }

        @Override // kotlinx.coroutines.x0
        public void v(Throwable th) {
            this.f51937f.f(y0.this, kotlin.j.f51397a);
        }
    }

    public y0(boolean z2) {
        this._state$volatile = z2 ? z0.f51950g : z0.f51949f;
    }

    public static /* synthetic */ CancellationException L0(y0 y0Var, Throwable th, String str, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i2 & 1) != 0) {
            str = null;
        }
        return y0Var.K0(th, str);
    }

    @Override // kotlinx.coroutines.InterfaceC1705u0
    public final Object A(kotlin.coroutines.e eVar) {
        if (p0()) {
            Object objQ0 = q0(eVar);
            return objQ0 == kotlin.coroutines.intrinsics.a.e() ? objQ0 : kotlin.j.f51397a;
        }
        AbstractC1709w0.f(eVar.getContext());
        return kotlin.j.f51397a;
    }

    public void A0(Throwable th) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    @Override // kotlinx.coroutines.F0
    public CancellationException B() {
        CancellationException cancellationExceptionE;
        Object objH0 = h0();
        if (objH0 instanceof c) {
            cancellationExceptionE = ((c) objH0).e();
        } else if (objH0 instanceof A) {
            cancellationExceptionE = ((A) objH0).f51510a;
        } else {
            if (objH0 instanceof InterfaceC1696p0) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + objH0).toString());
            }
            cancellationExceptionE = null;
        }
        CancellationException cancellationException = cancellationExceptionE instanceof CancellationException ? cancellationExceptionE : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        return new JobCancellationException("Parent job is " + J0(objH0), cancellationExceptionE, this);
    }

    public void B0(Object obj) {
    }

    public void C0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.o0] */
    public final void D0(C1630c0 c1630c0) {
        C0 c02 = new C0();
        if (!c1630c0.isActive()) {
            c02 = new C1694o0(c02);
        }
        androidx.concurrent.futures.a.a(f51924b, this, c1630c0, c02);
    }

    public final void E0(x0 x0Var) {
        x0Var.e(new C0());
        androidx.concurrent.futures.a.a(f51924b, this, x0Var, x0Var.k());
    }

    public final void F0(kotlinx.coroutines.selects.i iVar, Object obj) {
        if (p0()) {
            iVar.e(JobKt__JobKt.j(this, false, new e(iVar), 1, null));
        } else {
            iVar.d(kotlin.j.f51397a);
        }
    }

    public final void G0(x0 x0Var) {
        Object objH0;
        do {
            objH0 = h0();
            if (!(objH0 instanceof x0)) {
                if (!(objH0 instanceof InterfaceC1696p0) || ((InterfaceC1696p0) objH0).a() == null) {
                    return;
                }
                x0Var.q();
                return;
            }
            if (objH0 != x0Var) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f51924b, this, objH0, z0.f51950g));
    }

    public final void H0(InterfaceC1700s interfaceC1700s) {
        f51925c.set(this, interfaceC1700s);
    }

    public final int I0(Object obj) {
        if (obj instanceof C1630c0) {
            if (((C1630c0) obj).isActive()) {
                return 0;
            }
            if (!androidx.concurrent.futures.a.a(f51924b, this, obj, z0.f51950g)) {
                return -1;
            }
            C0();
            return 1;
        }
        if (!(obj instanceof C1694o0)) {
            return 0;
        }
        if (!androidx.concurrent.futures.a.a(f51924b, this, obj, ((C1694o0) obj).a())) {
            return -1;
        }
        C0();
        return 1;
    }

    public final String J0(Object obj) {
        if (!(obj instanceof c)) {
            return obj instanceof InterfaceC1696p0 ? ((InterfaceC1696p0) obj).isActive() ? "Active" : "New" : obj instanceof A ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        return cVar.i() ? "Cancelling" : cVar.j() ? "Completing" : "Active";
    }

    public final CancellationException K0(Throwable th, String str) {
        CancellationException jobCancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (jobCancellationException == null) {
            if (str == null) {
                str = U();
            }
            jobCancellationException = new JobCancellationException(str, th, this);
        }
        return jobCancellationException;
    }

    public final void L(Throwable th, List list) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (list.size() <= 1) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Throwable th2 = (Throwable) it.next();
            if (th2 != th && th2 != th && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                kotlin.a.a(th, th2);
            }
        }
    }

    public void M(Object obj) {
    }

    public final String M0() {
        return u0() + '{' + J0(h0()) + '}';
    }

    public final Object N(kotlin.coroutines.e eVar) throws Throwable {
        Object objH0;
        do {
            objH0 = h0();
            if (!(objH0 instanceof InterfaceC1696p0)) {
                if (objH0 instanceof A) {
                    throw ((A) objH0).f51510a;
                }
                return z0.h(objH0);
            }
        } while (I0(objH0) < 0);
        return O(eVar);
    }

    public final boolean N0(InterfaceC1696p0 interfaceC1696p0, Object obj) throws Throwable {
        if (!androidx.concurrent.futures.a.a(f51924b, this, interfaceC1696p0, z0.g(obj))) {
            return false;
        }
        A0(null);
        B0(obj);
        W(interfaceC1696p0, obj);
        return true;
    }

    public final Object O(kotlin.coroutines.e eVar) {
        a aVar = new a(IntrinsicsKt__IntrinsicsJvmKt.c(eVar), this);
        aVar.F();
        AbstractC1695p.a(aVar, JobKt__JobKt.j(this, false, new G0(aVar), 1, null));
        Object objY = aVar.y();
        if (objY == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objY;
    }

    public final boolean O0(InterfaceC1696p0 interfaceC1696p0, Throwable th) throws Throwable {
        C0 c0E0 = e0(interfaceC1696p0);
        if (c0E0 == null) {
            return false;
        }
        if (!androidx.concurrent.futures.a.a(f51924b, this, interfaceC1696p0, new c(c0E0, false, th))) {
            return false;
        }
        w0(c0E0, th);
        return true;
    }

    public final boolean P(Throwable th) {
        return Q(th);
    }

    public final Object P0(Object obj, Object obj2) {
        return !(obj instanceof InterfaceC1696p0) ? z0.f51944a : ((!(obj instanceof C1630c0) && !(obj instanceof x0)) || (obj instanceof C1702t) || (obj2 instanceof A)) ? Q0((InterfaceC1696p0) obj, obj2) : N0((InterfaceC1696p0) obj, obj2) ? obj2 : z0.f51946c;
    }

    public final boolean Q(Object obj) throws Throwable {
        Object objR0 = z0.f51944a;
        if (d0() && (objR0 = S(obj)) == z0.f51945b) {
            return true;
        }
        if (objR0 == z0.f51944a) {
            objR0 = r0(obj);
        }
        if (objR0 == z0.f51944a || objR0 == z0.f51945b) {
            return true;
        }
        if (objR0 == z0.f51947d) {
            return false;
        }
        M(objR0);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public final Object Q0(InterfaceC1696p0 interfaceC1696p0, Object obj) throws Throwable {
        C0 c0E0 = e0(interfaceC1696p0);
        if (c0E0 == null) {
            return z0.f51946c;
        }
        c cVar = interfaceC1696p0 instanceof c ? (c) interfaceC1696p0 : null;
        if (cVar == null) {
            cVar = new c(c0E0, false, null);
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        synchronized (cVar) {
            if (cVar.j()) {
                return z0.f51944a;
            }
            cVar.m(true);
            if (cVar != interfaceC1696p0 && !androidx.concurrent.futures.a.a(f51924b, this, interfaceC1696p0, cVar)) {
                return z0.f51946c;
            }
            boolean zI = cVar.i();
            A a3 = obj instanceof A ? (A) obj : null;
            if (a3 != null) {
                cVar.b(a3.f51510a);
            }
            ?? E2 = zI ? 0 : cVar.e();
            ref$ObjectRef.element = E2;
            kotlin.j jVar = kotlin.j.f51397a;
            if (E2 != 0) {
                w0(c0E0, E2);
            }
            C1702t c1702tV0 = v0(c0E0);
            if (c1702tV0 != null && R0(cVar, c1702tV0, obj)) {
                return z0.f51945b;
            }
            c0E0.f(2);
            C1702t c1702tV02 = v0(c0E0);
            return (c1702tV02 == null || !R0(cVar, c1702tV02, obj)) ? Z(cVar, obj) : z0.f51945b;
        }
    }

    public void R(Throwable th) throws Throwable {
        Q(th);
    }

    public final boolean R0(c cVar, C1702t c1702t, Object obj) {
        while (AbstractC1709w0.i(c1702t.f51919f, false, new b(this, cVar, c1702t, obj)) == D0.f51515b) {
            c1702t = v0(c1702t);
            if (c1702t == null) {
                return false;
            }
        }
        return true;
    }

    public final Object S(Object obj) {
        Object objP0;
        do {
            Object objH0 = h0();
            if (!(objH0 instanceof InterfaceC1696p0) || ((objH0 instanceof c) && ((c) objH0).j())) {
                return z0.f51944a;
            }
            objP0 = P0(objH0, new A(Y(obj), false, 2, null));
        } while (objP0 == z0.f51946c);
        return objP0;
    }

    public final boolean T(Throwable th) {
        if (o0()) {
            return true;
        }
        boolean z2 = th instanceof CancellationException;
        InterfaceC1700s interfaceC1700sG0 = g0();
        return (interfaceC1700sG0 == null || interfaceC1700sG0 == D0.f51515b) ? z2 : interfaceC1700sG0.b(th) || z2;
    }

    public String U() {
        return "Job was cancelled";
    }

    public boolean V(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return Q(th) && c0();
    }

    public final void W(InterfaceC1696p0 interfaceC1696p0, Object obj) throws Throwable {
        InterfaceC1700s interfaceC1700sG0 = g0();
        if (interfaceC1700sG0 != null) {
            interfaceC1700sG0.dispose();
            H0(D0.f51515b);
        }
        A a3 = obj instanceof A ? (A) obj : null;
        Throwable th = a3 != null ? a3.f51510a : null;
        if (!(interfaceC1696p0 instanceof x0)) {
            C0 c0A = interfaceC1696p0.a();
            if (c0A != null) {
                x0(c0A, th);
                return;
            }
            return;
        }
        try {
            ((x0) interfaceC1696p0).v(th);
        } catch (Throwable th2) {
            l0(new CompletionHandlerException("Exception in completion handler " + interfaceC1696p0 + " for " + this, th2));
        }
    }

    public final void X(c cVar, C1702t c1702t, Object obj) {
        C1702t c1702tV0 = v0(c1702t);
        if (c1702tV0 == null || !R0(cVar, c1702tV0, obj)) {
            cVar.a().f(2);
            C1702t c1702tV02 = v0(c1702t);
            if (c1702tV02 == null || !R0(cVar, c1702tV02, obj)) {
                M(Z(cVar, obj));
            }
        }
    }

    public final Throwable Y(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(U(), null, this) : th;
        }
        kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((F0) obj).B();
    }

    public final Object Z(c cVar, Object obj) throws Throwable {
        boolean zI;
        Throwable thB0;
        A a3 = obj instanceof A ? (A) obj : null;
        Throwable th = a3 != null ? a3.f51510a : null;
        synchronized (cVar) {
            zI = cVar.i();
            List listL = cVar.l(th);
            thB0 = b0(cVar, listL);
            if (thB0 != null) {
                L(thB0, listL);
            }
        }
        if (thB0 != null && thB0 != th) {
            obj = new A(thB0, false, 2, null);
        }
        if (thB0 != null && (T(thB0) || k0(thB0))) {
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            ((A) obj).c();
        }
        if (!zI) {
            A0(thB0);
        }
        B0(obj);
        androidx.concurrent.futures.a.a(f51924b, this, cVar, z0.g(obj));
        W(cVar, obj);
        return obj;
    }

    @Override // kotlinx.coroutines.InterfaceC1705u0, kotlinx.coroutines.channels.ReceiveChannel
    public void a(CancellationException cancellationException) throws Throwable {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(U(), null, this);
        }
        R(cancellationException);
    }

    public final Throwable a0(Object obj) {
        A a3 = obj instanceof A ? (A) obj : null;
        if (a3 != null) {
            return a3.f51510a;
        }
        return null;
    }

    public final Throwable b0(c cVar, List list) {
        Object next;
        Object obj = null;
        if (list.isEmpty()) {
            if (cVar.i()) {
                return new JobCancellationException(U(), null, this);
            }
            return null;
        }
        List list2 = list;
        Iterator it = list2.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (!(((Throwable) next) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next2 = it2.next();
                Throwable th3 = (Throwable) next2;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj = next2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    @Override // kotlinx.coroutines.InterfaceC1704u
    public final void c(F0 f02) throws Throwable {
        Q(f02);
    }

    public boolean c0() {
        return true;
    }

    public boolean d0() {
        return false;
    }

    @Override // kotlinx.coroutines.InterfaceC1705u0
    public final Z e(Function1 function1) {
        return n0(true, new C1703t0(function1));
    }

    public final C0 e0(InterfaceC1696p0 interfaceC1696p0) {
        C0 c0A = interfaceC1696p0.a();
        if (c0A != null) {
            return c0A;
        }
        if (interfaceC1696p0 instanceof C1630c0) {
            return new C0();
        }
        if (interfaceC1696p0 instanceof x0) {
            E0((x0) interfaceC1696p0);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + interfaceC1696p0).toString());
    }

    public InterfaceC1705u0 f0() {
        InterfaceC1700s interfaceC1700sG0 = g0();
        if (interfaceC1700sG0 != null) {
            return interfaceC1700sG0.getParent();
        }
        return null;
    }

    @Override // kotlin.coroutines.i
    public Object fold(Object obj, Function2 function2) {
        return InterfaceC1705u0.a.b(this, obj, function2);
    }

    public final InterfaceC1700s g0() {
        return (InterfaceC1700s) f51925c.get(this);
    }

    @Override // kotlin.coroutines.i.b, kotlin.coroutines.i
    public i.b get(i.c cVar) {
        return InterfaceC1705u0.a.c(this, cVar);
    }

    @Override // kotlin.coroutines.i.b
    public final i.c getKey() {
        return InterfaceC1705u0.T2;
    }

    public final Object h0() {
        return f51924b.get(this);
    }

    @Override // kotlinx.coroutines.InterfaceC1705u0
    public boolean isActive() {
        Object objH0 = h0();
        return (objH0 instanceof InterfaceC1696p0) && ((InterfaceC1696p0) objH0).isActive();
    }

    @Override // kotlinx.coroutines.InterfaceC1705u0
    public final boolean isCancelled() {
        Object objH0 = h0();
        if (objH0 instanceof A) {
            return true;
        }
        return (objH0 instanceof c) && ((c) objH0).i();
    }

    @Override // kotlinx.coroutines.InterfaceC1705u0
    public final boolean isCompleted() {
        return !(h0() instanceof InterfaceC1696p0);
    }

    public boolean k0(Throwable th) {
        return false;
    }

    public final void m0(InterfaceC1705u0 interfaceC1705u0) {
        if (interfaceC1705u0 == null) {
            H0(D0.f51515b);
            return;
        }
        interfaceC1705u0.start();
        InterfaceC1700s interfaceC1700sS = interfaceC1705u0.s(this);
        H0(interfaceC1700sS);
        if (isCompleted()) {
            interfaceC1700sS.dispose();
            H0(D0.f51515b);
        }
    }

    @Override // kotlin.coroutines.i
    public kotlin.coroutines.i minusKey(i.c cVar) {
        return InterfaceC1705u0.a.d(this, cVar);
    }

    public final Z n0(boolean z2, x0 x0Var) {
        boolean z3;
        boolean zC;
        x0Var.w(this);
        while (true) {
            Object objH0 = h0();
            z3 = true;
            if (!(objH0 instanceof C1630c0)) {
                if (!(objH0 instanceof InterfaceC1696p0)) {
                    z3 = false;
                    break;
                }
                InterfaceC1696p0 interfaceC1696p0 = (InterfaceC1696p0) objH0;
                C0 c0A = interfaceC1696p0.a();
                if (c0A == null) {
                    kotlin.jvm.internal.j.c(objH0, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    E0((x0) objH0);
                } else {
                    if (x0Var.u()) {
                        c cVar = interfaceC1696p0 instanceof c ? (c) interfaceC1696p0 : null;
                        Throwable thE = cVar != null ? cVar.e() : null;
                        if (thE != null) {
                            if (z2) {
                                x0Var.v(thE);
                            }
                            return D0.f51515b;
                        }
                        zC = c0A.c(x0Var, 5);
                    } else {
                        zC = c0A.c(x0Var, 1);
                    }
                    if (zC) {
                        break;
                    }
                }
            } else {
                C1630c0 c1630c0 = (C1630c0) objH0;
                if (!c1630c0.isActive()) {
                    D0(c1630c0);
                } else if (androidx.concurrent.futures.a.a(f51924b, this, objH0, x0Var)) {
                    break;
                }
            }
        }
        if (z3) {
            return x0Var;
        }
        if (z2) {
            Object objH02 = h0();
            A a3 = objH02 instanceof A ? (A) objH02 : null;
            x0Var.v(a3 != null ? a3.f51510a : null);
        }
        return D0.f51515b;
    }

    public boolean o0() {
        return false;
    }

    public final boolean p0() {
        Object objH0;
        do {
            objH0 = h0();
            if (!(objH0 instanceof InterfaceC1696p0)) {
                return false;
            }
        } while (I0(objH0) < 0);
        return true;
    }

    @Override // kotlin.coroutines.i
    public kotlin.coroutines.i plus(kotlin.coroutines.i iVar) {
        return InterfaceC1705u0.a.e(this, iVar);
    }

    public final Object q0(kotlin.coroutines.e eVar) {
        C1691n c1691n = new C1691n(IntrinsicsKt__IntrinsicsJvmKt.c(eVar), 1);
        c1691n.F();
        AbstractC1695p.a(c1691n, JobKt__JobKt.j(this, false, new H0(c1691n), 1, null));
        Object objY = c1691n.y();
        if (objY == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objY == kotlin.coroutines.intrinsics.a.e() ? objY : kotlin.j.f51397a;
    }

    public final Object r0(Object obj) throws Throwable {
        Throwable thY = null;
        while (true) {
            Object objH0 = h0();
            if (objH0 instanceof c) {
                synchronized (objH0) {
                    if (((c) objH0).k()) {
                        return z0.f51947d;
                    }
                    boolean zI = ((c) objH0).i();
                    if (obj != null || !zI) {
                        if (thY == null) {
                            thY = Y(obj);
                        }
                        ((c) objH0).b(thY);
                    }
                    Throwable thE = zI ? null : ((c) objH0).e();
                    if (thE != null) {
                        w0(((c) objH0).a(), thE);
                    }
                    return z0.f51944a;
                }
            }
            if (!(objH0 instanceof InterfaceC1696p0)) {
                return z0.f51947d;
            }
            if (thY == null) {
                thY = Y(obj);
            }
            InterfaceC1696p0 interfaceC1696p0 = (InterfaceC1696p0) objH0;
            if (!interfaceC1696p0.isActive()) {
                Object objP0 = P0(objH0, new A(thY, false, 2, null));
                if (objP0 == z0.f51944a) {
                    throw new IllegalStateException(("Cannot happen in " + objH0).toString());
                }
                if (objP0 != z0.f51946c) {
                    return objP0;
                }
            } else if (O0(interfaceC1696p0, thY)) {
                return z0.f51944a;
            }
        }
    }

    @Override // kotlinx.coroutines.InterfaceC1705u0
    public final InterfaceC1700s s(InterfaceC1704u interfaceC1704u) {
        C1702t c1702t = new C1702t(interfaceC1704u);
        c1702t.w(this);
        while (true) {
            Object objH0 = h0();
            if (objH0 instanceof C1630c0) {
                C1630c0 c1630c0 = (C1630c0) objH0;
                if (!c1630c0.isActive()) {
                    D0(c1630c0);
                } else if (androidx.concurrent.futures.a.a(f51924b, this, objH0, c1702t)) {
                    return c1702t;
                }
            } else {
                if (!(objH0 instanceof InterfaceC1696p0)) {
                    Object objH02 = h0();
                    A a3 = objH02 instanceof A ? (A) objH02 : null;
                    c1702t.v(a3 != null ? a3.f51510a : null);
                    return D0.f51515b;
                }
                C0 c0A = ((InterfaceC1696p0) objH0).a();
                if (c0A != null) {
                    if (!c0A.c(c1702t, 7)) {
                        boolean zC = c0A.c(c1702t, 3);
                        Object objH03 = h0();
                        if (objH03 instanceof c) {
                            thE = ((c) objH03).e();
                        } else {
                            A a4 = objH03 instanceof A ? (A) objH03 : null;
                            if (a4 != null) {
                                thE = a4.f51510a;
                            }
                        }
                        c1702t.v(thE);
                        if (!zC) {
                            return D0.f51515b;
                        }
                    }
                    return c1702t;
                }
                kotlin.jvm.internal.j.c(objH0, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                E0((x0) objH0);
            }
        }
    }

    public final boolean s0(Object obj) {
        Object objP0;
        do {
            objP0 = P0(h0(), obj);
            if (objP0 == z0.f51944a) {
                return false;
            }
            if (objP0 == z0.f51945b) {
                return true;
            }
        } while (objP0 == z0.f51946c);
        M(objP0);
        return true;
    }

    @Override // kotlinx.coroutines.InterfaceC1705u0
    public final boolean start() {
        int iI0;
        do {
            iI0 = I0(h0());
            if (iI0 == 0) {
                return false;
            }
        } while (iI0 != 1);
        return true;
    }

    public final Object t0(Object obj) {
        Object objP0;
        do {
            objP0 = P0(h0(), obj);
            if (objP0 == z0.f51944a) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, a0(obj));
            }
        } while (objP0 == z0.f51946c);
        return objP0;
    }

    public String toString() {
        return M0() + '@' + O.b(this);
    }

    @Override // kotlinx.coroutines.InterfaceC1705u0
    public final Z u(boolean z2, boolean z3, Function1 function1) {
        return n0(z3, z2 ? new C1701s0(function1) : new C1703t0(function1));
    }

    public String u0() {
        return O.a(this);
    }

    public final C1702t v0(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.p()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.l();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.k();
            if (!lockFreeLinkedListNode.p()) {
                if (lockFreeLinkedListNode instanceof C1702t) {
                    return (C1702t) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof C0) {
                    return null;
                }
            }
        }
    }

    public final void w0(C0 c02, Throwable th) throws Throwable {
        A0(th);
        c02.f(4);
        Object objJ = c02.j();
        kotlin.jvm.internal.j.c(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeK = (LockFreeLinkedListNode) objJ; !kotlin.jvm.internal.j.a(lockFreeLinkedListNodeK, c02); lockFreeLinkedListNodeK = lockFreeLinkedListNodeK.k()) {
            if ((lockFreeLinkedListNodeK instanceof x0) && ((x0) lockFreeLinkedListNodeK).u()) {
                try {
                    ((x0) lockFreeLinkedListNodeK).v(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        kotlin.a.a(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNodeK + " for " + this, th2);
                        kotlin.j jVar = kotlin.j.f51397a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            l0(completionHandlerException);
        }
        T(th);
    }

    public final void x0(C0 c02, Throwable th) throws Throwable {
        c02.f(1);
        Object objJ = c02.j();
        kotlin.jvm.internal.j.c(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeK = (LockFreeLinkedListNode) objJ; !kotlin.jvm.internal.j.a(lockFreeLinkedListNodeK, c02); lockFreeLinkedListNodeK = lockFreeLinkedListNodeK.k()) {
            if (lockFreeLinkedListNodeK instanceof x0) {
                try {
                    ((x0) lockFreeLinkedListNodeK).v(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        kotlin.a.a(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNodeK + " for " + this, th2);
                        kotlin.j jVar = kotlin.j.f51397a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            l0(completionHandlerException);
        }
    }

    public final Object y0(Object obj, Object obj2) throws Throwable {
        if (obj2 instanceof A) {
            throw ((A) obj2).f51510a;
        }
        return obj2;
    }

    @Override // kotlinx.coroutines.InterfaceC1705u0
    public final CancellationException z() {
        Object objH0 = h0();
        if (!(objH0 instanceof c)) {
            if (objH0 instanceof InterfaceC1696p0) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (objH0 instanceof A) {
                return L0(this, ((A) objH0).f51510a, null, 1, null);
            }
            return new JobCancellationException(O.a(this) + " has completed normally", null, this);
        }
        Throwable thE = ((c) objH0).e();
        if (thE != null) {
            CancellationException cancellationExceptionK0 = K0(thE, O.a(this) + " is cancelling");
            if (cancellationExceptionK0 != null) {
                return cancellationExceptionK0;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    public final void z0(kotlinx.coroutines.selects.i iVar, Object obj) {
        Object objH0;
        do {
            objH0 = h0();
            if (!(objH0 instanceof InterfaceC1696p0)) {
                if (!(objH0 instanceof A)) {
                    objH0 = z0.h(objH0);
                }
                iVar.d(objH0);
                return;
            }
        } while (I0(objH0) < 0);
        iVar.e(JobKt__JobKt.j(this, false, new d(iVar), 1, null));
    }

    public void l0(Throwable th) throws Throwable {
        throw th;
    }
}
