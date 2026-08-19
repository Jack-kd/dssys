package kotlinx.coroutines;

import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.internal.AbstractC1675h;
import kotlinx.coroutines.internal.C1674g;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public abstract class W0 {
    public static final Object a(kotlin.coroutines.e eVar) {
        Object objE;
        kotlin.coroutines.i context = eVar.getContext();
        AbstractC1709w0.f(context);
        kotlin.coroutines.e eVarC = IntrinsicsKt__IntrinsicsJvmKt.c(eVar);
        C1674g c1674g = eVarC instanceof C1674g ? (C1674g) eVarC : null;
        if (c1674g == null) {
            objE = kotlin.j.f51397a;
        } else {
            if (c1674g.f51779e.isDispatchNeeded(context)) {
                c1674g.l(context, kotlin.j.f51397a);
            } else {
                V0 v02 = new V0();
                kotlin.coroutines.i iVarPlus = context.plus(v02);
                kotlin.j jVar = kotlin.j.f51397a;
                c1674g.l(iVarPlus, jVar);
                objE = (!v02.f51539b || AbstractC1675h.c(c1674g)) ? kotlin.coroutines.intrinsics.a.e() : jVar;
            }
            objE = kotlin.coroutines.intrinsics.a.e();
        }
        if (objE == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objE == kotlin.coroutines.intrinsics.a.e() ? objE : kotlin.j.f51397a;
    }
}
