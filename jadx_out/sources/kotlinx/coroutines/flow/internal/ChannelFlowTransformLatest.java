package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.N;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;

/* loaded from: classes5.dex */
public final class ChannelFlowTransformLatest extends ChannelFlowOperator {

    /* renamed from: f, reason: collision with root package name */
    public final Function3 f51696f;

    public /* synthetic */ ChannelFlowTransformLatest(Function3 function3, InterfaceC1639c interfaceC1639c, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow, int i3, kotlin.jvm.internal.f fVar) {
        this(function3, interfaceC1639c, (i3 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : iVar, (i3 & 8) != 0 ? -2 : i2, (i3 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow i(kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        return new ChannelFlowTransformLatest(this.f51696f, this.f51695e, iVar, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    public Object p(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        Object objB = N.b(new ChannelFlowTransformLatest$flowCollect$3(this, interfaceC1640d, null), eVar);
        return objB == kotlin.coroutines.intrinsics.a.e() ? objB : kotlin.j.f51397a;
    }

    public ChannelFlowTransformLatest(Function3 function3, InterfaceC1639c interfaceC1639c, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        super(interfaceC1639c, iVar, i2, bufferOverflow);
        this.f51696f = function3;
    }
}
