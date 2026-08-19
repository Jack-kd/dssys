package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.selects.SelectImplementation;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/M;", "Lkotlinx/coroutines/flow/d;", "downstream", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;Lkotlinx/coroutines/flow/d;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", f = "Delay.kt", i = {0, 0, 0, 0}, l = {TTAdConstant.IMAGE_URL_CODE}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "ticker"}, s = {"L$0", "L$1", "L$2", "L$3"})
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,407:1\n54#2,5:408\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n*L\n278#1:408,5\n*E\n"})
/* loaded from: classes5.dex */
final class FlowKt__DelayKt$sample$2 extends SuspendLambda implements Function3<kotlinx.coroutines.M, InterfaceC1640d, kotlin.coroutines.e, Object> {
    final /* synthetic */ long $periodMillis;
    final /* synthetic */ InterfaceC1639c $this_sample;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$sample$2(long j2, InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        super(3, eVar);
        this.$periodMillis = j2;
        this.$this_sample = interfaceC1639c;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ReceiveChannel receiveChannel;
        ReceiveChannel receiveChannelU;
        Ref$ObjectRef ref$ObjectRef;
        InterfaceC1640d interfaceC1640d;
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            kotlinx.coroutines.M m2 = (kotlinx.coroutines.M) this.L$0;
            InterfaceC1640d interfaceC1640d2 = (InterfaceC1640d) this.L$1;
            ReceiveChannel receiveChannelD = ProduceKt.d(m2, null, -1, new FlowKt__DelayKt$sample$2$values$1(this.$this_sample, null), 1, null);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            receiveChannel = receiveChannelD;
            receiveChannelU = AbstractC1641e.u(m2, this.$periodMillis);
            ref$ObjectRef = ref$ObjectRef2;
            interfaceC1640d = interfaceC1640d2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            receiveChannelU = (ReceiveChannel) this.L$3;
            ref$ObjectRef = (Ref$ObjectRef) this.L$2;
            receiveChannel = (ReceiveChannel) this.L$1;
            interfaceC1640d = (InterfaceC1640d) this.L$0;
            kotlin.e.b(obj);
        }
        while (ref$ObjectRef.element != kotlinx.coroutines.flow.internal.n.f51727c) {
            SelectImplementation selectImplementation = new SelectImplementation(getContext());
            selectImplementation.g(receiveChannel.n(), new FlowKt__DelayKt$sample$2$1$1(ref$ObjectRef, receiveChannelU, null));
            selectImplementation.g(receiveChannelU.w(), new FlowKt__DelayKt$sample$2$1$2(ref$ObjectRef, interfaceC1640d, null));
            this.L$0 = interfaceC1640d;
            this.L$1 = receiveChannel;
            this.L$2 = ref$ObjectRef;
            this.L$3 = receiveChannelU;
            this.label = 1;
            if (selectImplementation.p(this) == objE) {
                return objE;
            }
        }
        return kotlin.j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(kotlinx.coroutines.M m2, InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        FlowKt__DelayKt$sample$2 flowKt__DelayKt$sample$2 = new FlowKt__DelayKt$sample$2(this.$periodMillis, this.$this_sample, eVar);
        flowKt__DelayKt$sample$2.L$0 = m2;
        flowKt__DelayKt$sample$2.L$1 = interfaceC1640d;
        return flowKt__DelayKt$sample$2.invokeSuspend(kotlin.j.f51397a);
    }
}
