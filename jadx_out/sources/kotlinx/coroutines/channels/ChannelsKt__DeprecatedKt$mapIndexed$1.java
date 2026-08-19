package kotlinx.coroutines.channels;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lkotlinx/coroutines/channels/q;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/channels/q;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_DECODE_MS_GAPS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS}, m = "invokeSuspend", n = {"$this$produce", com.umeng.ccg.a.f49746H, "$this$produce", com.umeng.ccg.a.f49746H, "$this$produce", com.umeng.ccg.a.f49746H}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0"})
/* loaded from: classes5.dex */
final class ChannelsKt__DeprecatedKt$mapIndexed$1 extends SuspendLambda implements Function2<q, kotlin.coroutines.e, Object> {
    final /* synthetic */ ReceiveChannel $this_mapIndexed;
    final /* synthetic */ Function3<Integer, Object, kotlin.coroutines.e, Object> $transform;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$mapIndexed$1(ReceiveChannel receiveChannel, Function3<? super Integer, Object, ? super kotlin.coroutines.e, ? extends Object> function3, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$this_mapIndexed = receiveChannel;
        this.$transform = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        ChannelsKt__DeprecatedKt$mapIndexed$1 channelsKt__DeprecatedKt$mapIndexed$1 = new ChannelsKt__DeprecatedKt$mapIndexed$1(this.$this_mapIndexed, this.$transform, eVar);
        channelsKt__DeprecatedKt$mapIndexed$1.L$0 = obj;
        return channelsKt__DeprecatedKt$mapIndexed$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00a6 -> B:13:0x0059). Please report as a decompilation issue!!! */
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
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L48
            if (r1 == r4) goto L3a
            if (r1 == r3) goto L28
            if (r1 != r2) goto L20
            int r1 = r10.I$0
            java.lang.Object r5 = r10.L$1
            kotlinx.coroutines.channels.ChannelIterator r5 = (kotlinx.coroutines.channels.ChannelIterator) r5
            java.lang.Object r6 = r10.L$0
            kotlinx.coroutines.channels.q r6 = (kotlinx.coroutines.channels.q) r6
            kotlin.e.b(r11)
            r11 = r6
            goto L59
        L20:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L28:
            int r1 = r10.I$0
            java.lang.Object r5 = r10.L$2
            kotlinx.coroutines.channels.q r5 = (kotlinx.coroutines.channels.q) r5
            java.lang.Object r6 = r10.L$1
            kotlinx.coroutines.channels.ChannelIterator r6 = (kotlinx.coroutines.channels.ChannelIterator) r6
            java.lang.Object r7 = r10.L$0
            kotlinx.coroutines.channels.q r7 = (kotlinx.coroutines.channels.q) r7
            kotlin.e.b(r11)
            goto L94
        L3a:
            int r1 = r10.I$0
            java.lang.Object r5 = r10.L$1
            kotlinx.coroutines.channels.ChannelIterator r5 = (kotlinx.coroutines.channels.ChannelIterator) r5
            java.lang.Object r6 = r10.L$0
            kotlinx.coroutines.channels.q r6 = (kotlinx.coroutines.channels.q) r6
            kotlin.e.b(r11)
            goto L6b
        L48:
            kotlin.e.b(r11)
            java.lang.Object r11 = r10.L$0
            kotlinx.coroutines.channels.q r11 = (kotlinx.coroutines.channels.q) r11
            kotlinx.coroutines.channels.ReceiveChannel r1 = r10.$this_mapIndexed
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
            r5 = 0
            r9 = r5
            r5 = r1
            r1 = r9
        L59:
            r10.L$0 = r11
            r10.L$1 = r5
            r10.I$0 = r1
            r10.label = r4
            java.lang.Object r6 = r5.a(r10)
            if (r6 != r0) goto L68
            goto La5
        L68:
            r9 = r6
            r6 = r11
            r11 = r9
        L6b:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto La9
            java.lang.Object r11 = r5.next()
            kotlin.jvm.functions.Function3<java.lang.Integer, java.lang.Object, kotlin.coroutines.e, java.lang.Object> r7 = r10.$transform
            int r8 = r1 + 1
            java.lang.Integer r1 = w1.AbstractC1791a.c(r1)
            r10.L$0 = r6
            r10.L$1 = r5
            r10.L$2 = r6
            r10.I$0 = r8
            r10.label = r3
            java.lang.Object r11 = r7.invoke(r1, r11, r10)
            if (r11 != r0) goto L90
            goto La5
        L90:
            r7 = r6
            r1 = r8
            r6 = r5
            r5 = r7
        L94:
            r10.L$0 = r7
            r10.L$1 = r6
            r8 = 0
            r10.L$2 = r8
            r10.I$0 = r1
            r10.label = r2
            java.lang.Object r11 = r5.E(r11, r10)
            if (r11 != r0) goto La6
        La5:
            return r0
        La6:
            r5 = r6
            r11 = r7
            goto L59
        La9:
            kotlin.j r11 = kotlin.j.f51397a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(q qVar, kotlin.coroutines.e eVar) {
        return ((ChannelsKt__DeprecatedKt$mapIndexed$1) create(qVar, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
