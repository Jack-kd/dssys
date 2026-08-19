package kotlinx.coroutines;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.f;
import kotlin.jvm.functions.Function2;
import w1.AbstractC1795e;

/* renamed from: kotlinx.coroutines.i, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract /* synthetic */ class AbstractC1666i {
    public static final InterfaceC1705u0 a(M m2, kotlin.coroutines.i iVar, CoroutineStart coroutineStart, Function2 function2) {
        kotlin.coroutines.i iVarK = F.k(m2, iVar);
        J0 a02 = coroutineStart.isLazy() ? new A0(iVarK, function2) : new J0(iVarK, true);
        a02.V0(coroutineStart, a02, function2);
        return a02;
    }

    public static /* synthetic */ InterfaceC1705u0 b(M m2, kotlin.coroutines.i iVar, CoroutineStart coroutineStart, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            iVar = EmptyCoroutineContext.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return AbstractC1662g.a(m2, iVar, coroutineStart, function2);
    }

    public static final Object c(kotlin.coroutines.i iVar, Function2 function2, kotlin.coroutines.e eVar) {
        Object objW0;
        kotlin.coroutines.i context = eVar.getContext();
        kotlin.coroutines.i iVarJ = F.j(context, iVar);
        AbstractC1709w0.f(iVarJ);
        if (iVarJ == context) {
            kotlinx.coroutines.internal.x xVar = new kotlinx.coroutines.internal.x(iVarJ, eVar);
            objW0 = G1.b.b(xVar, xVar, function2);
        } else {
            f.b bVar = kotlin.coroutines.f.R2;
            if (kotlin.jvm.internal.j.a(iVarJ.get(bVar), context.get(bVar))) {
                S0 s02 = new S0(iVarJ, eVar);
                kotlin.coroutines.i context2 = s02.getContext();
                Object objI = kotlinx.coroutines.internal.I.i(context2, null);
                try {
                    Object objB = G1.b.b(s02, s02, function2);
                    kotlinx.coroutines.internal.I.f(context2, objI);
                    objW0 = objB;
                } catch (Throwable th) {
                    kotlinx.coroutines.internal.I.f(context2, objI);
                    throw th;
                }
            } else {
                U u2 = new U(iVarJ, eVar);
                G1.a.c(function2, u2, u2);
                objW0 = u2.W0();
            }
        }
        if (objW0 == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objW0;
    }
}
