package kotlinx.coroutines.flow.internal;

import kotlin.jvm.functions.Function2;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public abstract class i {
    public static final Object a(Function2 function2, kotlin.coroutines.e eVar) {
        h hVar = new h(eVar.getContext(), eVar);
        Object objB = G1.b.b(hVar, hVar, function2);
        if (objB == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objB;
    }
}
