package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* renamed from: kotlinx.coroutines.flow.w, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract /* synthetic */ class AbstractC1658w {

    /* renamed from: a, reason: collision with root package name */
    public static final Function1 f51746a = new Function1() { // from class: kotlinx.coroutines.flow.u
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return AbstractC1658w.d(obj);
        }
    };

    /* renamed from: b, reason: collision with root package name */
    public static final Function2 f51747b = new Function2() { // from class: kotlinx.coroutines.flow.v
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return Boolean.valueOf(AbstractC1658w.c(obj, obj2));
        }
    };

    public static final boolean c(Object obj, Object obj2) {
        return kotlin.jvm.internal.j.a(obj, obj2);
    }

    public static final Object d(Object obj) {
        return obj;
    }

    public static final InterfaceC1639c e(InterfaceC1639c interfaceC1639c) {
        return interfaceC1639c instanceof s0 ? interfaceC1639c : f(interfaceC1639c, f51746a, f51747b);
    }

    public static final InterfaceC1639c f(InterfaceC1639c interfaceC1639c, Function1 function1, Function2 function2) {
        if (interfaceC1639c instanceof DistinctFlowImpl) {
            DistinctFlowImpl distinctFlowImpl = (DistinctFlowImpl) interfaceC1639c;
            if (distinctFlowImpl.f51621c == function1 && distinctFlowImpl.f51622d == function2) {
                return interfaceC1639c;
            }
        }
        return new DistinctFlowImpl(interfaceC1639c, function1, function2);
    }
}
