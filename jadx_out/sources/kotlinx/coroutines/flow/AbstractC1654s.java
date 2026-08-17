package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function2;

/* renamed from: kotlinx.coroutines.flow.s, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract /* synthetic */ class AbstractC1654s {
    public static final Object a(InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        Object objCollect = interfaceC1639c.collect(kotlinx.coroutines.flow.internal.m.f51724b, eVar);
        return objCollect == kotlin.coroutines.intrinsics.a.e() ? objCollect : kotlin.j.f51397a;
    }

    public static final Object b(InterfaceC1639c interfaceC1639c, Function2 function2, kotlin.coroutines.e eVar) {
        Object objG = AbstractC1641e.g(AbstractC1655t.b(AbstractC1641e.A(interfaceC1639c, function2), 0, null, 2, null), eVar);
        return objG == kotlin.coroutines.intrinsics.a.e() ? objG : kotlin.j.f51397a;
    }

    public static final Object c(InterfaceC1640d interfaceC1640d, InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        AbstractC1641e.p(interfaceC1640d);
        Object objCollect = interfaceC1639c.collect(interfaceC1640d, eVar);
        return objCollect == kotlin.coroutines.intrinsics.a.e() ? objCollect : kotlin.j.f51397a;
    }
}
