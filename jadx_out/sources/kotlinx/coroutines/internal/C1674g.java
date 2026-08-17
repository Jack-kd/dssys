package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.AbstractC1632d0;
import kotlinx.coroutines.C1691n;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.O0;
import kotlinx.coroutines.V;
import org.jetbrains.annotations.NotNull;
import w1.InterfaceC1793c;

/* renamed from: kotlinx.coroutines.internal.g, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1674g extends V implements InterfaceC1793c, kotlin.coroutines.e {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51778i = AtomicReferenceFieldUpdater.newUpdater(C1674g.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;

    /* renamed from: e, reason: collision with root package name */
    public final kotlinx.coroutines.H f51779e;

    /* renamed from: f, reason: collision with root package name */
    public final kotlin.coroutines.e f51780f;

    /* renamed from: g, reason: collision with root package name */
    public Object f51781g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f51782h;

    public C1674g(kotlinx.coroutines.H h2, kotlin.coroutines.e eVar) {
        super(-1);
        this.f51779e = h2;
        this.f51780f = eVar;
        this.f51781g = AbstractC1675h.f51783a;
        this.f51782h = I.g(getContext());
    }

    @Override // kotlinx.coroutines.V
    public kotlin.coroutines.e c() {
        return this;
    }

    @Override // w1.InterfaceC1793c
    public InterfaceC1793c getCallerFrame() {
        kotlin.coroutines.e eVar = this.f51780f;
        if (eVar instanceof InterfaceC1793c) {
            return (InterfaceC1793c) eVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.e
    @NotNull
    public kotlin.coroutines.i getContext() {
        return this.f51780f.getContext();
    }

    @Override // kotlinx.coroutines.V
    public Object h() {
        Object obj = this.f51781g;
        this.f51781g = AbstractC1675h.f51783a;
        return obj;
    }

    public final void i() {
        while (f51778i.get(this) == AbstractC1675h.f51784b) {
        }
    }

    public final C1691n k() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51778i;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                f51778i.set(this, AbstractC1675h.f51784b);
                return null;
            }
            if (obj instanceof C1691n) {
                if (androidx.concurrent.futures.a.a(f51778i, this, obj, AbstractC1675h.f51784b)) {
                    return (C1691n) obj;
                }
            } else if (obj != AbstractC1675h.f51784b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final void l(kotlin.coroutines.i iVar, Object obj) {
        this.f51781g = obj;
        this.f51537d = 1;
        this.f51779e.dispatchYield(iVar, this);
    }

    public final C1691n m() {
        Object obj = f51778i.get(this);
        if (obj instanceof C1691n) {
            return (C1691n) obj;
        }
        return null;
    }

    public final boolean o() {
        return f51778i.get(this) != null;
    }

    public final boolean p(Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51778i;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            B b3 = AbstractC1675h.f51784b;
            if (kotlin.jvm.internal.j.a(obj, b3)) {
                if (androidx.concurrent.futures.a.a(f51778i, this, b3, th)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (androidx.concurrent.futures.a.a(f51778i, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    public final void r() {
        i();
        C1691n c1691nM = m();
        if (c1691nM != null) {
            c1691nM.p();
        }
    }

    @Override // kotlin.coroutines.e
    public void resumeWith(Object obj) {
        Object objB = kotlinx.coroutines.B.b(obj);
        if (this.f51779e.isDispatchNeeded(getContext())) {
            this.f51781g = objB;
            this.f51537d = 0;
            this.f51779e.dispatch(getContext(), this);
            return;
        }
        AbstractC1632d0 abstractC1632d0B = O0.f51523a.b();
        if (abstractC1632d0B.G()) {
            this.f51781g = objB;
            this.f51537d = 0;
            abstractC1632d0B.n(this);
            return;
        }
        abstractC1632d0B.D(true);
        try {
            kotlin.coroutines.i context = getContext();
            Object objI = I.i(context, this.f51782h);
            try {
                this.f51780f.resumeWith(obj);
                kotlin.j jVar = kotlin.j.f51397a;
                while (abstractC1632d0B.J()) {
                }
            } finally {
                I.f(context, objI);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public final Throwable s(InterfaceC1687l interfaceC1687l) {
        B b3;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51778i;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            b3 = AbstractC1675h.f51784b;
            if (obj != b3) {
                if (obj instanceof Throwable) {
                    if (androidx.concurrent.futures.a.a(f51778i, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f51778i, this, b3, interfaceC1687l));
        return null;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.f51779e + ", " + kotlinx.coroutines.O.c(this.f51780f) + ']';
    }
}
