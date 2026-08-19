package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;

/* loaded from: classes5.dex */
public final class f extends ChannelFlowOperator {
    public /* synthetic */ f(InterfaceC1639c interfaceC1639c, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow, int i3, kotlin.jvm.internal.f fVar) {
        this(interfaceC1639c, (i3 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : iVar, (i3 & 4) != 0 ? -3 : i2, (i3 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow i(kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        return new f(this.f51695e, iVar, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    public Object p(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        Object objCollect = this.f51695e.collect(interfaceC1640d, eVar);
        return objCollect == kotlin.coroutines.intrinsics.a.e() ? objCollect : kotlin.j.f51397a;
    }

    public f(InterfaceC1639c interfaceC1639c, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        super(interfaceC1639c, iVar, i2, bufferOverflow);
    }
}
