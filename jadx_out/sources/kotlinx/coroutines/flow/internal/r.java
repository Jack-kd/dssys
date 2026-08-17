package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.i;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.InterfaceC1705u0;
import kotlinx.coroutines.internal.x;

/* loaded from: classes5.dex */
public abstract class r {
    public static final void b(final SafeCollector safeCollector, kotlin.coroutines.i iVar) {
        if (((Number) iVar.fold(0, new Function2() { // from class: kotlinx.coroutines.flow.internal.p
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Integer.valueOf(r.c(safeCollector, ((Integer) obj).intValue(), (i.b) obj2));
            }
        })).intValue() == safeCollector.collectContextSize) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.collectContext + ",\n\t\tbut emission happened in " + iVar + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    public static final int c(SafeCollector safeCollector, int i2, i.b bVar) {
        i.c key = bVar.getKey();
        i.b bVar2 = safeCollector.collectContext.get(key);
        if (key != InterfaceC1705u0.T2) {
            if (bVar != bVar2) {
                return Integer.MIN_VALUE;
            }
            return i2 + 1;
        }
        InterfaceC1705u0 interfaceC1705u0 = (InterfaceC1705u0) bVar2;
        kotlin.jvm.internal.j.c(bVar, "null cannot be cast to non-null type kotlinx.coroutines.Job");
        InterfaceC1705u0 interfaceC1705u0D = d((InterfaceC1705u0) bVar, interfaceC1705u0);
        if (interfaceC1705u0D == interfaceC1705u0) {
            return interfaceC1705u0 == null ? i2 : i2 + 1;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + interfaceC1705u0D + ", expected child of " + interfaceC1705u0 + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
    }

    public static final InterfaceC1705u0 d(InterfaceC1705u0 interfaceC1705u0, InterfaceC1705u0 interfaceC1705u02) {
        while (interfaceC1705u0 != null) {
            if (interfaceC1705u0 == interfaceC1705u02 || !(interfaceC1705u0 instanceof x)) {
                return interfaceC1705u0;
            }
            interfaceC1705u0 = ((x) interfaceC1705u0).f0();
        }
        return null;
    }
}
