package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.f;
import kotlinx.coroutines.F;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;

/* loaded from: classes5.dex */
public abstract class ChannelFlowOperator extends ChannelFlow {

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1639c f51695e;

    public ChannelFlowOperator(InterfaceC1639c interfaceC1639c, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        super(iVar, i2, bufferOverflow);
        this.f51695e = interfaceC1639c;
    }

    public static /* synthetic */ Object m(ChannelFlowOperator channelFlowOperator, InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        if (channelFlowOperator.f51693c == -3) {
            kotlin.coroutines.i context = eVar.getContext();
            kotlin.coroutines.i iVarJ = F.j(context, channelFlowOperator.f51692b);
            if (kotlin.jvm.internal.j.a(iVarJ, context)) {
                Object objP = channelFlowOperator.p(interfaceC1640d, eVar);
                return objP == kotlin.coroutines.intrinsics.a.e() ? objP : kotlin.j.f51397a;
            }
            f.b bVar = kotlin.coroutines.f.R2;
            if (kotlin.jvm.internal.j.a(iVarJ.get(bVar), context.get(bVar))) {
                Object objO = channelFlowOperator.o(interfaceC1640d, iVarJ, eVar);
                return objO == kotlin.coroutines.intrinsics.a.e() ? objO : kotlin.j.f51397a;
            }
        }
        Object objCollect = super.collect(interfaceC1640d, eVar);
        return objCollect == kotlin.coroutines.intrinsics.a.e() ? objCollect : kotlin.j.f51397a;
    }

    public static /* synthetic */ Object n(ChannelFlowOperator channelFlowOperator, kotlinx.coroutines.channels.q qVar, kotlin.coroutines.e eVar) {
        Object objP = channelFlowOperator.p(new s(qVar), eVar);
        return objP == kotlin.coroutines.intrinsics.a.e() ? objP : kotlin.j.f51397a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.InterfaceC1639c
    public Object collect(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        return m(this, interfaceC1640d, eVar);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Object h(kotlinx.coroutines.channels.q qVar, kotlin.coroutines.e eVar) {
        return n(this, qVar, eVar);
    }

    public final Object o(InterfaceC1640d interfaceC1640d, kotlin.coroutines.i iVar, kotlin.coroutines.e eVar) {
        return d.d(iVar, d.e(interfaceC1640d, eVar.getContext()), null, new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), eVar, 4, null);
    }

    public abstract Object p(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar);

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public String toString() {
        return this.f51695e + " -> " + super.toString();
    }
}
