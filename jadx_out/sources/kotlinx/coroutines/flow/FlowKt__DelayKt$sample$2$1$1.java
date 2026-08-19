package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.j;
import kotlinx.coroutines.flow.internal.ChildCancelledException;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/channels/j;", "", "result", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/channels/j;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$1", f = "Delay.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,407:1\n529#2,2:408\n544#2:410\n545#2:412\n1#3:411\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1\n*L\n281#1:408,2\n282#1:410\n282#1:412\n*E\n"})
/* loaded from: classes5.dex */
public final class FlowKt__DelayKt$sample$2$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.j, kotlin.coroutines.e, Object> {
    final /* synthetic */ Ref$ObjectRef<Object> $lastValue;
    final /* synthetic */ ReceiveChannel $ticker;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$sample$2$1$1(Ref$ObjectRef<Object> ref$ObjectRef, ReceiveChannel receiveChannel, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$lastValue = ref$ObjectRef;
        this.$ticker = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        FlowKt__DelayKt$sample$2$1$1 flowKt__DelayKt$sample$2$1$1 = new FlowKt__DelayKt$sample$2$1$1(this.$lastValue, this.$ticker, eVar);
        flowKt__DelayKt$sample$2$1$1.L$0 = obj;
        return flowKt__DelayKt$sample$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.channels.j jVar, kotlin.coroutines.e eVar) {
        return m85invokeWpGqRn0(jVar.k(), eVar);
    }

    /* renamed from: invoke-WpGqRn0, reason: not valid java name */
    public final Object m85invokeWpGqRn0(Object obj, kotlin.coroutines.e eVar) {
        return ((FlowKt__DelayKt$sample$2$1$1) create(kotlinx.coroutines.channels.j.b(obj), eVar)).invokeSuspend(kotlin.j.f51397a);
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v8, types: [T, kotlinx.coroutines.internal.B] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.a.e();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.e.b(obj);
        ?? K2 = ((kotlinx.coroutines.channels.j) this.L$0).k();
        Ref$ObjectRef<Object> ref$ObjectRef = this.$lastValue;
        boolean z2 = K2 instanceof j.c;
        if (!z2) {
            ref$ObjectRef.element = K2;
        }
        ReceiveChannel receiveChannel = this.$ticker;
        if (z2) {
            Throwable thE = kotlinx.coroutines.channels.j.e(K2);
            if (thE != null) {
                throw thE;
            }
            receiveChannel.a(new ChildCancelledException());
            ref$ObjectRef.element = kotlinx.coroutines.flow.internal.n.f51727c;
        }
        return kotlin.j.f51397a;
    }
}
