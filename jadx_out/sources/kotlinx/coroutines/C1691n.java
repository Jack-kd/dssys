package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.InterfaceC1685k;
import kotlinx.coroutines.internal.C1674g;
import org.jetbrains.annotations.NotNull;
import w1.InterfaceC1793c;

/* renamed from: kotlinx.coroutines.n, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1691n extends V implements InterfaceC1687l, InterfaceC1793c, U0 {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51819g = AtomicIntegerFieldUpdater.newUpdater(C1691n.class, "_decisionAndIndex$volatile");

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51820h = AtomicReferenceFieldUpdater.newUpdater(C1691n.class, Object.class, "_state$volatile");

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51821i = AtomicReferenceFieldUpdater.newUpdater(C1691n.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* renamed from: e, reason: collision with root package name */
    public final kotlin.coroutines.e f51822e;

    /* renamed from: f, reason: collision with root package name */
    public final kotlin.coroutines.i f51823f;

    public C1691n(kotlin.coroutines.e eVar, int i2) {
        super(i2);
        this.f51822e = eVar;
        this.f51823f = eVar.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = C1631d.f51603b;
    }

    public static final kotlin.j R(Function1 function1, Throwable th, Object obj, kotlin.coroutines.i iVar) {
        function1.invoke(th);
        return kotlin.j.f51397a;
    }

    public static /* synthetic */ void T(C1691n c1691n, Object obj, int i2, Function3 function3, int i3, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i3 & 4) != 0) {
            function3 = null;
        }
        c1691n.S(obj, i2, function3);
    }

    public final String A() {
        Object objZ = z();
        return objZ instanceof E0 ? "Active" : objZ instanceof C1697q ? "Cancelled" : "Completed";
    }

    @Override // kotlinx.coroutines.InterfaceC1687l
    public Object D(Object obj, Object obj2, Function3 function3) {
        return W(obj, obj2, function3);
    }

    public void F() {
        Z zG = G();
        if (zG != null && J()) {
            zG.dispose();
            f51821i.set(this, D0.f51515b);
        }
    }

    public final Z G() {
        InterfaceC1705u0 interfaceC1705u0 = (InterfaceC1705u0) getContext().get(InterfaceC1705u0.T2);
        if (interfaceC1705u0 == null) {
            return null;
        }
        Z zJ = JobKt__JobKt.j(interfaceC1705u0, false, new r(this), 1, null);
        androidx.concurrent.futures.a.a(f51821i, this, null, zJ);
        return zJ;
    }

    public final void H(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51820h;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof C1631d) {
                if (androidx.concurrent.futures.a.a(f51820h, this, obj2, obj)) {
                    return;
                }
            } else if ((obj2 instanceof InterfaceC1685k) || (obj2 instanceof kotlinx.coroutines.internal.y)) {
                L(obj, obj2);
            } else {
                if (obj2 instanceof A) {
                    A a3 = (A) obj2;
                    if (!a3.c()) {
                        L(obj, obj2);
                    }
                    if (obj2 instanceof C1697q) {
                        if (obj2 == null) {
                            a3 = null;
                        }
                        Throwable th = a3 != null ? a3.f51510a : null;
                        if (obj instanceof InterfaceC1685k) {
                            l((InterfaceC1685k) obj, th);
                            return;
                        } else {
                            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                            n((kotlinx.coroutines.internal.y) obj, th);
                            return;
                        }
                    }
                    return;
                }
                if (obj2 instanceof C1712z) {
                    C1712z c1712z = (C1712z) obj2;
                    if (c1712z.f51940b != null) {
                        L(obj, obj2);
                    }
                    if (obj instanceof kotlinx.coroutines.internal.y) {
                        return;
                    }
                    kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    InterfaceC1685k interfaceC1685k = (InterfaceC1685k) obj;
                    if (c1712z.c()) {
                        l(interfaceC1685k, c1712z.f51943e);
                        return;
                    } else {
                        if (androidx.concurrent.futures.a.a(f51820h, this, obj2, C1712z.b(c1712z, null, interfaceC1685k, null, null, null, 29, null))) {
                            return;
                        }
                    }
                } else {
                    if (obj instanceof kotlinx.coroutines.internal.y) {
                        return;
                    }
                    kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    if (androidx.concurrent.futures.a.a(f51820h, this, obj2, new C1712z(obj2, (InterfaceC1685k) obj, null, null, null, 28, null))) {
                        return;
                    }
                }
            }
        }
    }

    public final void I(InterfaceC1685k interfaceC1685k) {
        H(interfaceC1685k);
    }

    public boolean J() {
        return !(z() instanceof E0);
    }

    public final boolean K() {
        if (!W.c(this.f51537d)) {
            return false;
        }
        kotlin.coroutines.e eVar = this.f51822e;
        kotlin.jvm.internal.j.c(eVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((C1674g) eVar).o();
    }

    public final void L(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    public String M() {
        return "CancellableContinuation";
    }

    public final void N(Throwable th) {
        if (o(th)) {
            return;
        }
        j(th);
        r();
    }

    public final void O() {
        Throwable thS;
        kotlin.coroutines.e eVar = this.f51822e;
        C1674g c1674g = eVar instanceof C1674g ? (C1674g) eVar : null;
        if (c1674g == null || (thS = c1674g.s(this)) == null) {
            return;
        }
        p();
        j(thS);
    }

    public final boolean P() {
        Object obj = f51820h.get(this);
        if ((obj instanceof C1712z) && ((C1712z) obj).f51942d != null) {
            p();
            return false;
        }
        f51819g.set(this, 536870911);
        f51820h.set(this, C1631d.f51603b);
        return true;
    }

    public void Q(Object obj, final Function1 function1) {
        S(obj, this.f51537d, function1 != null ? new Function3() { // from class: kotlinx.coroutines.m
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                return C1691n.R(function1, (Throwable) obj2, obj3, (kotlin.coroutines.i) obj4);
            }
        } : null);
    }

    public final void S(Object obj, int i2, Function3 function3) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51820h;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof E0)) {
                Object obj3 = obj;
                Function3 function32 = function3;
                if (obj2 instanceof C1697q) {
                    C1697q c1697q = (C1697q) obj2;
                    if (c1697q.e()) {
                        if (function32 != null) {
                            m(function32, c1697q.f51510a, obj3);
                            return;
                        }
                        return;
                    }
                }
                k(obj3);
                throw new KotlinNothingValueException();
            }
            Object obj4 = obj;
            int i3 = i2;
            Function3 function33 = function3;
            if (androidx.concurrent.futures.a.a(f51820h, this, obj2, U((E0) obj2, obj4, i3, function33, null))) {
                r();
                s(i3);
                return;
            } else {
                obj = obj4;
                i2 = i3;
                function3 = function33;
            }
        }
    }

    public final Object U(E0 e02, Object obj, int i2, Function3 function3, Object obj2) {
        if (obj instanceof A) {
            return obj;
        }
        if ((W.b(i2) || obj2 != null) && !(function3 == null && !(e02 instanceof InterfaceC1685k) && obj2 == null)) {
            return new C1712z(obj, e02 instanceof InterfaceC1685k ? (InterfaceC1685k) e02 : null, function3, obj2, null, 16, null);
        }
        return obj;
    }

    public final boolean V() {
        int i2;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f51819g;
        do {
            i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = i2 >> 29;
            if (i3 != 0) {
                if (i3 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f51819g.compareAndSet(this, i2, com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_32BIT + (536870911 & i2)));
        return true;
    }

    public final kotlinx.coroutines.internal.B W(Object obj, Object obj2, Function3 function3) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51820h;
        while (true) {
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (!(obj3 instanceof E0)) {
                Object obj4 = obj2;
                if ((obj3 instanceof C1712z) && obj4 != null && ((C1712z) obj3).f51942d == obj4) {
                    return AbstractC1693o.f51825a;
                }
                return null;
            }
            Object obj5 = obj;
            Object obj6 = obj2;
            Function3 function32 = function3;
            if (androidx.concurrent.futures.a.a(f51820h, this, obj3, U((E0) obj3, obj5, this.f51537d, function32, obj6))) {
                r();
                return AbstractC1693o.f51825a;
            }
            obj = obj5;
            function3 = function32;
            obj2 = obj6;
        }
    }

    public final boolean X() {
        int i2;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f51819g;
        do {
            i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = i2 >> 29;
            if (i3 != 0) {
                if (i3 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f51819g.compareAndSet(this, i2, com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_A_LAW + (536870911 & i2)));
        return true;
    }

    @Override // kotlinx.coroutines.V
    public void a(Object obj, Throwable th) {
        Throwable th2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51820h;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof E0) {
                throw new IllegalStateException("Not completed");
            }
            if (obj2 instanceof A) {
                return;
            }
            if (obj2 instanceof C1712z) {
                C1712z c1712z = (C1712z) obj2;
                if (c1712z.c()) {
                    throw new IllegalStateException("Must be called at most once");
                }
                Throwable th3 = th;
                th2 = th3;
                if (androidx.concurrent.futures.a.a(f51820h, this, obj2, C1712z.b(c1712z, null, null, null, null, th3, 15, null))) {
                    c1712z.d(this, th2);
                    return;
                }
            } else {
                th2 = th;
                if (androidx.concurrent.futures.a.a(f51820h, this, obj2, new C1712z(obj2, null, null, null, th2, 14, null))) {
                    return;
                }
            }
            th = th2;
        }
    }

    @Override // kotlinx.coroutines.U0
    public void b(kotlinx.coroutines.internal.y yVar, int i2) {
        int i3;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f51819g;
        do {
            i3 = atomicIntegerFieldUpdater.get(this);
            if ((i3 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i3, ((i3 >> 29) << 29) + i2));
        H(yVar);
    }

    @Override // kotlinx.coroutines.V
    public final kotlin.coroutines.e c() {
        return this.f51822e;
    }

    @Override // kotlinx.coroutines.InterfaceC1687l
    public void d(H h2, Throwable th) {
        kotlin.coroutines.e eVar = this.f51822e;
        C1674g c1674g = eVar instanceof C1674g ? (C1674g) eVar : null;
        T(this, new A(th, false, 2, null), (c1674g != null ? c1674g.f51779e : null) == h2 ? 4 : this.f51537d, null, 4, null);
    }

    @Override // kotlinx.coroutines.V
    public Throwable e(Object obj) {
        Throwable thE = super.e(obj);
        if (thE != null) {
            return thE;
        }
        return null;
    }

    @Override // kotlinx.coroutines.V
    public Object f(Object obj) {
        return obj instanceof C1712z ? ((C1712z) obj).f51939a : obj;
    }

    @Override // w1.InterfaceC1793c
    public InterfaceC1793c getCallerFrame() {
        kotlin.coroutines.e eVar = this.f51822e;
        if (eVar instanceof InterfaceC1793c) {
            return (InterfaceC1793c) eVar;
        }
        return null;
    }

    @Override // kotlinx.coroutines.InterfaceC1687l, kotlin.coroutines.e
    @NotNull
    public kotlin.coroutines.i getContext() {
        return this.f51823f;
    }

    @Override // kotlinx.coroutines.V
    public Object h() {
        return z();
    }

    @Override // kotlinx.coroutines.InterfaceC1687l
    public boolean j(Throwable th) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51820h;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof E0)) {
                return false;
            }
        } while (!androidx.concurrent.futures.a.a(f51820h, this, obj, new C1697q(this, th, (obj instanceof InterfaceC1685k) || (obj instanceof kotlinx.coroutines.internal.y))));
        E0 e02 = (E0) obj;
        if (e02 instanceof InterfaceC1685k) {
            l((InterfaceC1685k) obj, th);
        } else if (e02 instanceof kotlinx.coroutines.internal.y) {
            n((kotlinx.coroutines.internal.y) obj, th);
        }
        r();
        s(this.f51537d);
        return true;
    }

    public final Void k(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    public final void l(InterfaceC1685k interfaceC1685k, Throwable th) {
        try {
            interfaceC1685k.c(th);
        } catch (Throwable th2) {
            J.a(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void m(Function3 function3, Throwable th, Object obj) {
        try {
            function3.invoke(th, obj, getContext());
        } catch (Throwable th2) {
            J.a(getContext(), new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    public final void n(kotlinx.coroutines.internal.y yVar, Throwable th) {
        int i2 = f51819g.get(this) & 536870911;
        if (i2 == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
        }
        try {
            yVar.s(i2, th, getContext());
        } catch (Throwable th2) {
            J.a(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final boolean o(Throwable th) {
        if (!K()) {
            return false;
        }
        kotlin.coroutines.e eVar = this.f51822e;
        kotlin.jvm.internal.j.c(eVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((C1674g) eVar).p(th);
    }

    public final void p() {
        Z zW = w();
        if (zW == null) {
            return;
        }
        zW.dispose();
        f51821i.set(this, D0.f51515b);
    }

    @Override // kotlinx.coroutines.InterfaceC1687l
    public void q(Object obj, Function3 function3) {
        S(obj, this.f51537d, function3);
    }

    public final void r() {
        if (K()) {
            return;
        }
        p();
    }

    @Override // kotlin.coroutines.e
    public void resumeWith(Object obj) {
        T(this, B.c(obj, this), this.f51537d, null, 4, null);
    }

    public final void s(int i2) {
        if (V()) {
            return;
        }
        W.a(this, i2);
    }

    @Override // kotlinx.coroutines.InterfaceC1687l
    public void t(Object obj) {
        s(this.f51537d);
    }

    public String toString() {
        return M() + '(' + O.c(this.f51822e) + "){" + A() + "}@" + O.b(this);
    }

    public Throwable u(InterfaceC1705u0 interfaceC1705u0) {
        return interfaceC1705u0.z();
    }

    @Override // kotlinx.coroutines.InterfaceC1687l
    public void v(Function1 function1) {
        AbstractC1695p.c(this, new InterfaceC1685k.a(function1));
    }

    public final Z w() {
        return (Z) f51821i.get(this);
    }

    @Override // kotlinx.coroutines.InterfaceC1687l
    public void x(H h2, Object obj) {
        kotlin.coroutines.e eVar = this.f51822e;
        C1674g c1674g = eVar instanceof C1674g ? (C1674g) eVar : null;
        T(this, obj, (c1674g != null ? c1674g.f51779e : null) == h2 ? 4 : this.f51537d, null, 4, null);
    }

    public final Object y() {
        InterfaceC1705u0 interfaceC1705u0;
        boolean zK = K();
        if (X()) {
            if (w() == null) {
                G();
            }
            if (zK) {
                O();
            }
            return kotlin.coroutines.intrinsics.a.e();
        }
        if (zK) {
            O();
        }
        Object objZ = z();
        if (objZ instanceof A) {
            throw ((A) objZ).f51510a;
        }
        if (!W.b(this.f51537d) || (interfaceC1705u0 = (InterfaceC1705u0) getContext().get(InterfaceC1705u0.T2)) == null || interfaceC1705u0.isActive()) {
            return f(objZ);
        }
        CancellationException cancellationExceptionZ = interfaceC1705u0.z();
        a(objZ, cancellationExceptionZ);
        throw cancellationExceptionZ;
    }

    public final Object z() {
        return f51820h.get(this);
    }
}
