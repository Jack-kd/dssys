package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.M;
import kotlinx.coroutines.flow.InterfaceC1639c;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge$collectTo$2$1", f = "Merge.kt", i = {}, l = {92}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class ChannelLimitedFlowMerge$collectTo$2$1 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
    final /* synthetic */ s $collector;
    final /* synthetic */ InterfaceC1639c $flow;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelLimitedFlowMerge$collectTo$2$1(InterfaceC1639c interfaceC1639c, s sVar, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$flow = interfaceC1639c;
        this.$collector = sVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        return new ChannelLimitedFlowMerge$collectTo$2$1(this.$flow, this.$collector, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            InterfaceC1639c interfaceC1639c = this.$flow;
            s sVar = this.$collector;
            this.label = 1;
            if (interfaceC1639c.collect(sVar, this) == objE) {
                return objE;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
        }
        return kotlin.j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(M m2, kotlin.coroutines.e eVar) {
        return ((ChannelLimitedFlowMerge$collectTo$2$1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
