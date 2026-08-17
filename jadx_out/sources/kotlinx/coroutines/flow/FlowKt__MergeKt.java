package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class FlowKt__MergeKt {

    /* renamed from: a, reason: collision with root package name */
    public static final int f51652a = kotlinx.coroutines.internal.C.b("kotlinx.coroutines.flow.defaultConcurrency", 16, 1, Integer.MAX_VALUE);

    public static final InterfaceC1639c a(InterfaceC1639c interfaceC1639c, Function2 function2) {
        return AbstractC1641e.J(interfaceC1639c, new FlowKt__MergeKt$mapLatest$1(function2, null));
    }

    public static final InterfaceC1639c b(InterfaceC1639c interfaceC1639c, Function3 function3) {
        return new ChannelFlowTransformLatest(function3, interfaceC1639c, null, 0, null, 28, null);
    }
}
