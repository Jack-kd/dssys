package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/channels/q;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/channels/q;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.TickerChannelsKt$ticker$3", f = "TickerChannels.kt", i = {}, l = {68, 69}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class TickerChannelsKt$ticker$3 extends SuspendLambda implements Function2<q, kotlin.coroutines.e, Object> {
    final /* synthetic */ long $delayMillis;
    final /* synthetic */ long $initialDelayMillis;
    final /* synthetic */ TickerMode $mode;
    private /* synthetic */ Object L$0;
    int label;

    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51583a;

        static {
            int[] iArr = new int[TickerMode.values().length];
            try {
                iArr[TickerMode.FIXED_PERIOD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TickerMode.FIXED_DELAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f51583a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TickerChannelsKt$ticker$3(TickerMode tickerMode, long j2, long j3, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$mode = tickerMode;
        this.$delayMillis = j2;
        this.$initialDelayMillis = j3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        TickerChannelsKt$ticker$3 tickerChannelsKt$ticker$3 = new TickerChannelsKt$ticker$3(this.$mode, this.$delayMillis, this.$initialDelayMillis, eVar);
        tickerChannelsKt$ticker$3.L$0 = obj;
        return tickerChannelsKt$ticker$3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
    
        if (kotlinx.coroutines.channels.TickerChannelsKt.c(r4, r6, r8, r10) == r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
    
        if (kotlinx.coroutines.channels.TickerChannelsKt.d(r1, r3, r11, r10) == r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
    
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) throws java.lang.Throwable {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.e()
            int r1 = r10.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1f
            if (r1 == r3) goto L1b
            if (r1 != r2) goto L13
            kotlin.e.b(r11)
            r6 = r10
            goto L62
        L13:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L1b:
            kotlin.e.b(r11)
            goto L62
        L1f:
            kotlin.e.b(r11)
            java.lang.Object r11 = r10.L$0
            kotlinx.coroutines.channels.q r11 = (kotlinx.coroutines.channels.q) r11
            kotlinx.coroutines.channels.TickerMode r1 = r10.$mode
            int[] r4 = kotlinx.coroutines.channels.TickerChannelsKt$ticker$3.a.f51583a
            int r1 = r1.ordinal()
            r1 = r4[r1]
            if (r1 == r3) goto L4e
            if (r1 != r2) goto L47
            long r4 = r10.$delayMillis
            long r6 = r10.$initialDelayMillis
            kotlinx.coroutines.channels.s r8 = r11.getChannel()
            r10.label = r2
            r9 = r10
            java.lang.Object r11 = kotlinx.coroutines.channels.TickerChannelsKt.a(r4, r6, r8, r9)
            r6 = r9
            if (r11 != r0) goto L62
            goto L61
        L47:
            r6 = r10
            kotlin.NoWhenBranchMatchedException r11 = new kotlin.NoWhenBranchMatchedException
            r11.<init>()
            throw r11
        L4e:
            r6 = r10
            long r1 = r6.$delayMillis
            r5 = r3
            long r3 = r6.$initialDelayMillis
            kotlinx.coroutines.channels.s r11 = r11.getChannel()
            r6.label = r5
            r5 = r11
            java.lang.Object r11 = kotlinx.coroutines.channels.TickerChannelsKt.b(r1, r3, r5, r6)
            if (r11 != r0) goto L62
        L61:
            return r0
        L62:
            kotlin.j r11 = kotlin.j.f51397a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.TickerChannelsKt$ticker$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(q qVar, kotlin.coroutines.e eVar) {
        return ((TickerChannelsKt$ticker$3) create(qVar, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
