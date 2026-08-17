package kotlinx.coroutines.flow;

import java.util.Collection;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ReceiveChannel;

/* renamed from: kotlinx.coroutines.flow.e, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1641e {
    public static final InterfaceC1639c A(InterfaceC1639c interfaceC1639c, Function2 function2) {
        return FlowKt__MergeKt.a(interfaceC1639c, function2);
    }

    public static final InterfaceC1639c B(InterfaceC1639c interfaceC1639c, Function3 function3) {
        return FlowKt__EmittersKt.d(interfaceC1639c, function3);
    }

    public static final InterfaceC1639c C(InterfaceC1639c interfaceC1639c, Function2 function2) {
        return FlowKt__EmittersKt.e(interfaceC1639c, function2);
    }

    public static final ReceiveChannel D(InterfaceC1639c interfaceC1639c, kotlinx.coroutines.M m2) {
        return FlowKt__ChannelsKt.d(interfaceC1639c, m2);
    }

    public static final Object E(InterfaceC1639c interfaceC1639c, Function3 function3, kotlin.coroutines.e eVar) {
        return FlowKt__ReduceKt.h(interfaceC1639c, function3, eVar);
    }

    public static final Object F(InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        return FlowKt__ReduceKt.i(interfaceC1639c, eVar);
    }

    public static final Object G(InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        return FlowKt__ReduceKt.j(interfaceC1639c, eVar);
    }

    public static final InterfaceC1639c H(InterfaceC1639c interfaceC1639c, Function2 function2) {
        return FlowKt__LimitKt.e(interfaceC1639c, function2);
    }

    public static final Object I(InterfaceC1639c interfaceC1639c, Collection collection, kotlin.coroutines.e eVar) {
        return FlowKt__CollectionKt.a(interfaceC1639c, collection, eVar);
    }

    public static final InterfaceC1639c J(InterfaceC1639c interfaceC1639c, Function3 function3) {
        return FlowKt__MergeKt.b(interfaceC1639c, function3);
    }

    public static final s0 a(j0 j0Var) {
        return J.a(j0Var);
    }

    public static final InterfaceC1639c b(InterfaceC1639c interfaceC1639c, int i2, BufferOverflow bufferOverflow) {
        return AbstractC1655t.a(interfaceC1639c, i2, bufferOverflow);
    }

    public static final InterfaceC1639c d(Function2 function2) {
        return AbstractC1652p.a(function2);
    }

    public static final Object e(InterfaceC1639c interfaceC1639c, InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        return FlowKt__ErrorsKt.a(interfaceC1639c, interfaceC1640d, eVar);
    }

    public static final InterfaceC1639c f(Function2 function2) {
        return AbstractC1652p.b(function2);
    }

    public static final Object g(InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        return AbstractC1654s.a(interfaceC1639c, eVar);
    }

    public static final Object h(InterfaceC1639c interfaceC1639c, Function2 function2, kotlin.coroutines.e eVar) {
        return AbstractC1654s.b(interfaceC1639c, function2, eVar);
    }

    public static final InterfaceC1639c i(InterfaceC1639c interfaceC1639c) {
        return AbstractC1655t.d(interfaceC1639c);
    }

    public static final Object j(InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        return FlowKt__CountKt.a(interfaceC1639c, eVar);
    }

    public static final Object k(InterfaceC1639c interfaceC1639c, Function2 function2, kotlin.coroutines.e eVar) {
        return FlowKt__CountKt.b(interfaceC1639c, function2, eVar);
    }

    public static final InterfaceC1639c l(InterfaceC1639c interfaceC1639c) {
        return AbstractC1658w.e(interfaceC1639c);
    }

    public static final InterfaceC1639c m(InterfaceC1639c interfaceC1639c, Function2 function2) {
        return FlowKt__LimitKt.c(interfaceC1639c, function2);
    }

    public static final Object n(InterfaceC1640d interfaceC1640d, ReceiveChannel receiveChannel, kotlin.coroutines.e eVar) {
        return FlowKt__ChannelsKt.b(interfaceC1640d, receiveChannel, eVar);
    }

    public static final Object o(InterfaceC1640d interfaceC1640d, InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        return AbstractC1654s.c(interfaceC1640d, interfaceC1639c, eVar);
    }

    public static final void p(InterfaceC1640d interfaceC1640d) {
        FlowKt__EmittersKt.b(interfaceC1640d);
    }

    public static final Object q(InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        return FlowKt__ReduceKt.a(interfaceC1639c, eVar);
    }

    public static final Object r(InterfaceC1639c interfaceC1639c, Function2 function2, kotlin.coroutines.e eVar) {
        return FlowKt__ReduceKt.b(interfaceC1639c, function2, eVar);
    }

    public static final Object s(InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        return FlowKt__ReduceKt.c(interfaceC1639c, eVar);
    }

    public static final Object t(InterfaceC1639c interfaceC1639c, Function2 function2, kotlin.coroutines.e eVar) {
        return FlowKt__ReduceKt.d(interfaceC1639c, function2, eVar);
    }

    public static final ReceiveChannel u(kotlinx.coroutines.M m2, long j2) {
        return FlowKt__DelayKt.a(m2, j2);
    }

    public static final InterfaceC1639c v(Function2 function2) {
        return AbstractC1652p.c(function2);
    }

    public static final InterfaceC1639c w(Object obj) {
        return AbstractC1652p.d(obj);
    }

    public static final InterfaceC1639c x(InterfaceC1639c interfaceC1639c, kotlin.coroutines.i iVar) {
        return AbstractC1655t.e(interfaceC1639c, iVar);
    }

    public static final Object y(InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        return FlowKt__ReduceKt.f(interfaceC1639c, eVar);
    }

    public static final Object z(InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        return FlowKt__ReduceKt.g(interfaceC1639c, eVar);
    }
}
