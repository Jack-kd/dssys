package kotlinx.coroutines;

import kotlin.Result;
import kotlinx.coroutines.internal.C1674g;

/* loaded from: classes5.dex */
public abstract class W {
    public static final void a(V v2, int i2) {
        kotlin.coroutines.e eVarC = v2.c();
        boolean z2 = i2 == 4;
        if (z2 || !(eVarC instanceof C1674g) || b(i2) != b(v2.f51537d)) {
            d(v2, eVarC, z2);
            return;
        }
        C1674g c1674g = (C1674g) eVarC;
        H h2 = c1674g.f51779e;
        kotlin.coroutines.i context = c1674g.getContext();
        if (h2.isDispatchNeeded(context)) {
            h2.dispatch(context, v2);
        } else {
            e(v2);
        }
    }

    public static final boolean b(int i2) {
        return i2 == 1 || i2 == 2;
    }

    public static final boolean c(int i2) {
        return i2 == 2;
    }

    public static final void d(V v2, kotlin.coroutines.e eVar, boolean z2) {
        Object objF;
        Object objH = v2.h();
        Throwable thE = v2.e(objH);
        if (thE != null) {
            Result.Companion companion = Result.INSTANCE;
            objF = kotlin.e.a(thE);
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            objF = v2.f(objH);
        }
        Object objM66constructorimpl = Result.m66constructorimpl(objF);
        if (!z2) {
            eVar.resumeWith(objM66constructorimpl);
            return;
        }
        kotlin.jvm.internal.j.c(eVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        C1674g c1674g = (C1674g) eVar;
        kotlin.coroutines.e eVar2 = c1674g.f51780f;
        Object obj = c1674g.f51782h;
        kotlin.coroutines.i context = eVar2.getContext();
        Object objI = kotlinx.coroutines.internal.I.i(context, obj);
        S0 s0M = objI != kotlinx.coroutines.internal.I.f51756a ? F.m(eVar2, context, objI) : null;
        try {
            c1674g.f51780f.resumeWith(objM66constructorimpl);
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

    public static final void e(V v2) {
        AbstractC1632d0 abstractC1632d0B = O0.f51523a.b();
        if (abstractC1632d0B.G()) {
            abstractC1632d0B.n(v2);
            return;
        }
        abstractC1632d0B.D(true);
        try {
            d(v2, v2.c(), true);
            do {
            } while (abstractC1632d0B.J());
        } finally {
            try {
            } finally {
            }
        }
    }
}
