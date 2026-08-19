package kotlinx.coroutines;

import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.C1671d;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public abstract class N {
    public static final M a(kotlin.coroutines.i iVar) {
        if (iVar.get(InterfaceC1705u0.T2) == null) {
            iVar = iVar.plus(JobKt__JobKt.b(null, 1, null));
        }
        return new C1671d(iVar);
    }

    public static final Object b(Function2 function2, kotlin.coroutines.e eVar) {
        kotlinx.coroutines.internal.x xVar = new kotlinx.coroutines.internal.x(eVar.getContext(), eVar);
        Object objB = G1.b.b(xVar, xVar, function2);
        if (objB == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objB;
    }

    public static final void c(M m2) {
        AbstractC1709w0.f(m2.getCoroutineContext());
    }
}
