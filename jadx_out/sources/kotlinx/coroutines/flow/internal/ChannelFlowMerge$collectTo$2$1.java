package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.M;
import kotlinx.coroutines.flow.InterfaceC1639c;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1", f = "Merge.kt", i = {}, l = {65}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class ChannelFlowMerge$collectTo$2$1 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
    final /* synthetic */ s $collector;
    final /* synthetic */ InterfaceC1639c $inner;
    final /* synthetic */ kotlinx.coroutines.sync.g $semaphore;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlowMerge$collectTo$2$1(InterfaceC1639c interfaceC1639c, s sVar, kotlinx.coroutines.sync.g gVar, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$inner = interfaceC1639c;
        this.$collector = sVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        return new ChannelFlowMerge$collectTo$2$1(this.$inner, this.$collector, null, eVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        throw null;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) throws java.lang.Throwable {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.e()
            int r1 = r4.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L18
            if (r1 == r3) goto L14
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L14:
            kotlin.e.b(r5)     // Catch: java.lang.Throwable -> L29
            goto L28
        L18:
            kotlin.e.b(r5)
            kotlinx.coroutines.flow.c r5 = r4.$inner     // Catch: java.lang.Throwable -> L29
            kotlinx.coroutines.flow.internal.s r1 = r4.$collector     // Catch: java.lang.Throwable -> L29
            r4.label = r3     // Catch: java.lang.Throwable -> L29
            java.lang.Object r5 = r5.collect(r1, r4)     // Catch: java.lang.Throwable -> L29
            if (r5 != r0) goto L28
            return r0
        L28:
            throw r2
        L29:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(M m2, kotlin.coroutines.e eVar) {
        return ((ChannelFlowMerge$collectTo$2$1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
