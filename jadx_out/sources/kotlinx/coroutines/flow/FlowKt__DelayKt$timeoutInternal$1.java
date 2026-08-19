package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/M;", "Lkotlinx/coroutines/flow/d;", "downStream", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;Lkotlinx/coroutines/flow/d;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1", f = "Delay.kt", i = {0, 0}, l = {TTAdConstant.VIDEO_INFO_CODE}, m = "invokeSuspend", n = {"downStream", "values"}, s = {"L$0", "L$1"})
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n+ 2 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n+ 3 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,407:1\n27#2:408\n28#2:414\n54#3,5:409\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n*L\n392#1:408\n392#1:414\n392#1:409,5\n*E\n"})
/* loaded from: classes5.dex */
final class FlowKt__DelayKt$timeoutInternal$1 extends SuspendLambda implements Function3<kotlinx.coroutines.M, InterfaceC1640d, kotlin.coroutines.e, Object> {
    final /* synthetic */ InterfaceC1639c $this_timeoutInternal;
    final /* synthetic */ long $timeout;
    long J$0;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$timeoutInternal$1(long j2, InterfaceC1639c interfaceC1639c, kotlin.coroutines.e eVar) {
        super(3, eVar);
        this.$timeout = j2;
        this.$this_timeoutInternal = interfaceC1639c;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0076 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0074 -> B:14:0x0077). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.e()
            int r1 = r9.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L22
            if (r1 != r2) goto L1a
            long r4 = r9.J$0
            java.lang.Object r1 = r9.L$1
            kotlinx.coroutines.channels.ReceiveChannel r1 = (kotlinx.coroutines.channels.ReceiveChannel) r1
            java.lang.Object r6 = r9.L$0
            kotlinx.coroutines.flow.d r6 = (kotlinx.coroutines.flow.InterfaceC1640d) r6
            kotlin.e.b(r10)
            goto L77
        L1a:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L22:
            kotlin.e.b(r10)
            java.lang.Object r10 = r9.L$0
            kotlinx.coroutines.M r10 = (kotlinx.coroutines.M) r10
            java.lang.Object r1 = r9.L$1
            kotlinx.coroutines.flow.d r1 = (kotlinx.coroutines.flow.InterfaceC1640d) r1
            long r4 = r9.$timeout
            kotlin.time.b$a r6 = kotlin.time.b.f51490b
            long r6 = r6.a()
            int r4 = kotlin.time.b.d(r4, r6)
            if (r4 <= 0) goto L82
            kotlinx.coroutines.flow.c r4 = r9.$this_timeoutInternal
            r5 = 0
            r6 = 2
            kotlinx.coroutines.flow.c r4 = kotlinx.coroutines.flow.AbstractC1641e.c(r4, r5, r3, r6, r3)
            kotlinx.coroutines.channels.ReceiveChannel r10 = kotlinx.coroutines.flow.AbstractC1641e.D(r4, r10)
            long r4 = r9.$timeout
            r6 = r1
            r1 = r10
        L4b:
            kotlinx.coroutines.selects.SelectImplementation r10 = new kotlinx.coroutines.selects.SelectImplementation
            kotlin.coroutines.i r7 = r9.getContext()
            r10.<init>(r7)
            kotlinx.coroutines.selects.f r7 = r1.n()
            kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$1 r8 = new kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$1
            r8.<init>(r6, r3)
            r10.g(r7, r8)
            kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2 r7 = new kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2
            r7.<init>(r4, r3)
            kotlinx.coroutines.selects.a.b(r10, r4, r7)
            r9.L$0 = r6
            r9.L$1 = r1
            r9.J$0 = r4
            r9.label = r2
            java.lang.Object r10 = r10.p(r9)
            if (r10 != r0) goto L77
            return r0
        L77:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 != 0) goto L4b
            kotlin.j r10 = kotlin.j.f51397a
            return r10
        L82:
            kotlinx.coroutines.TimeoutCancellationException r10 = new kotlinx.coroutines.TimeoutCancellationException
            java.lang.String r0 = "Timed out immediately"
            r10.<init>(r0)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(kotlinx.coroutines.M m2, InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        FlowKt__DelayKt$timeoutInternal$1 flowKt__DelayKt$timeoutInternal$1 = new FlowKt__DelayKt$timeoutInternal$1(this.$timeout, this.$this_timeoutInternal, eVar);
        flowKt__DelayKt$timeoutInternal$1.L$0 = m2;
        flowKt__DelayKt$timeoutInternal$1.L$1 = interfaceC1640d;
        return flowKt__DelayKt$timeoutInternal$1.invokeSuspend(kotlin.j.f51397a);
    }
}
