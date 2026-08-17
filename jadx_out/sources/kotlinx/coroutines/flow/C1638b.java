package kotlinx.coroutines.flow;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* renamed from: kotlinx.coroutines.flow.b, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1638b extends ChannelFlow {

    /* renamed from: e, reason: collision with root package name */
    public final Function2 f51690e;

    public /* synthetic */ C1638b(Function2 function2, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow, int i3, kotlin.jvm.internal.f fVar) {
        this(function2, (i3 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : iVar, (i3 & 4) != 0 ? -2 : i2, (i3 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    public static /* synthetic */ Object m(C1638b c1638b, kotlinx.coroutines.channels.q qVar, kotlin.coroutines.e eVar) {
        Object objInvoke = c1638b.f51690e.invoke(qVar, eVar);
        return objInvoke == kotlin.coroutines.intrinsics.a.e() ? objInvoke : kotlin.j.f51397a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Object h(kotlinx.coroutines.channels.q qVar, kotlin.coroutines.e eVar) {
        return m(this, qVar, eVar);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow i(kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        return new C1638b(this.f51690e, iVar, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public String toString() {
        return "block[" + this.f51690e + "] -> " + super.toString();
    }

    public C1638b(Function2 function2, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        super(iVar, i2, bufferOverflow);
        this.f51690e = function2;
    }
}
