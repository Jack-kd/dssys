package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function2;

/* loaded from: classes5.dex */
public final class l0 extends AbstractFlow {

    /* renamed from: b, reason: collision with root package name */
    public final Function2 f51734b;

    public l0(Function2 function2) {
        this.f51734b = function2;
    }

    @Override // kotlinx.coroutines.flow.AbstractFlow
    public Object f(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        Object objInvoke = this.f51734b.invoke(interfaceC1640d, eVar);
        return objInvoke == kotlin.coroutines.intrinsics.a.e() ? objInvoke : kotlin.j.f51397a;
    }
}
