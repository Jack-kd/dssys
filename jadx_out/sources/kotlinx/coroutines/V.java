package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlinx.coroutines.internal.C1674g;

/* loaded from: classes5.dex */
public abstract class V extends H1.g {

    /* renamed from: d, reason: collision with root package name */
    public int f51537d;

    public V(int i2) {
        this.f51537d = i2;
    }

    public void a(Object obj, Throwable th) {
    }

    public abstract kotlin.coroutines.e c();

    public Throwable e(Object obj) {
        A a3 = obj instanceof A ? (A) obj : null;
        if (a3 != null) {
            return a3.f51510a;
        }
        return null;
    }

    public Object f(Object obj) {
        return obj;
    }

    public final void g(Throwable th) {
        J.a(c().getContext(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object h();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            kotlin.coroutines.e eVarC = c();
            kotlin.jvm.internal.j.c(eVarC, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            C1674g c1674g = (C1674g) eVarC;
            kotlin.coroutines.e eVar = c1674g.f51780f;
            Object obj = c1674g.f51782h;
            kotlin.coroutines.i context = eVar.getContext();
            Object objI = kotlinx.coroutines.internal.I.i(context, obj);
            InterfaceC1705u0 interfaceC1705u0 = null;
            S0 s0M = objI != kotlinx.coroutines.internal.I.f51756a ? F.m(eVar, context, objI) : null;
            try {
                kotlin.coroutines.i context2 = eVar.getContext();
                Object objH = h();
                Throwable thE = e(objH);
                if (thE == null && W.b(this.f51537d)) {
                    interfaceC1705u0 = (InterfaceC1705u0) context2.get(InterfaceC1705u0.T2);
                }
                if (interfaceC1705u0 != null && !interfaceC1705u0.isActive()) {
                    CancellationException cancellationExceptionZ = interfaceC1705u0.z();
                    a(objH, cancellationExceptionZ);
                    Result.Companion companion = Result.INSTANCE;
                    eVar.resumeWith(Result.m66constructorimpl(kotlin.e.a(cancellationExceptionZ)));
                } else if (thE != null) {
                    Result.Companion companion2 = Result.INSTANCE;
                    eVar.resumeWith(Result.m66constructorimpl(kotlin.e.a(thE)));
                } else {
                    Result.Companion companion3 = Result.INSTANCE;
                    eVar.resumeWith(Result.m66constructorimpl(f(objH)));
                }
                kotlin.j jVar = kotlin.j.f51397a;
                if (s0M != null && !s0M.W0()) {
                    return;
                }
                kotlinx.coroutines.internal.I.f(context, objI);
            } catch (Throwable th) {
                if (s0M == null || s0M.W0()) {
                    kotlinx.coroutines.internal.I.f(context, objI);
                }
                throw th;
            }
        } catch (Throwable th2) {
            g(th2);
        }
    }
}
