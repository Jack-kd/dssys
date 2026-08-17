package kotlinx.coroutines;

import kotlin.Pair;

/* loaded from: classes5.dex */
public final class S0 extends kotlinx.coroutines.internal.x {

    /* renamed from: f, reason: collision with root package name */
    public final ThreadLocal f51534f;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public S0(kotlin.coroutines.i iVar, kotlin.coroutines.e eVar) {
        T0 t02 = T0.f51535b;
        super(iVar.get(t02) == null ? iVar.plus(t02) : iVar, eVar);
        this.f51534f = new ThreadLocal();
        if (eVar.getContext().get(kotlin.coroutines.f.R2) instanceof H) {
            return;
        }
        Object objI = kotlinx.coroutines.internal.I.i(iVar, null);
        kotlinx.coroutines.internal.I.f(iVar, objI);
        X0(iVar, objI);
    }

    @Override // kotlinx.coroutines.internal.x, kotlinx.coroutines.AbstractC1625a
    public void S0(Object obj) {
        if (this.threadLocalIsSet) {
            Pair pair = (Pair) this.f51534f.get();
            if (pair != null) {
                kotlinx.coroutines.internal.I.f((kotlin.coroutines.i) pair.component1(), pair.component2());
            }
            this.f51534f.remove();
        }
        Object objA = B.a(obj, this.f51811e);
        kotlin.coroutines.e eVar = this.f51811e;
        kotlin.coroutines.i context = eVar.getContext();
        Object objI = kotlinx.coroutines.internal.I.i(context, null);
        S0 s0M = objI != kotlinx.coroutines.internal.I.f51756a ? F.m(eVar, context, objI) : null;
        try {
            this.f51811e.resumeWith(objA);
            kotlin.j jVar = kotlin.j.f51397a;
            if (s0M == null || s0M.W0()) {
                kotlinx.coroutines.internal.I.f(context, objI);
            }
        } catch (Throwable th) {
            if (s0M == null || s0M.W0()) {
                kotlinx.coroutines.internal.I.f(context, objI);
            }
            throw th;
        }
    }

    public final boolean W0() {
        boolean z2 = this.threadLocalIsSet && this.f51534f.get() == null;
        this.f51534f.remove();
        return !z2;
    }

    public final void X0(kotlin.coroutines.i iVar, Object obj) {
        this.threadLocalIsSet = true;
        this.f51534f.set(kotlin.f.a(iVar, obj));
    }
}
