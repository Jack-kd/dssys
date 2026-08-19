package kotlinx.coroutines.flow;

import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\b\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00010\u00002\u0015\u0010\u0006\u001a\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"Lkotlinx/coroutines/flow/d;", "Lkotlinx/coroutines/flow/SharingCommand;", "", "Lkotlin/ParameterName;", "name", f.a.f3244d, "count", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/flow/d;I)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", i = {1, 2, 3}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HURRY_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HIGH_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_PROBE_COUNT, MediaPlayer.MEDIA_PLAYER_OPTION_ASYNC_INIT_CODEC}, m = "invokeSuspend", n = {"$this$transformLatest", "$this$transformLatest", "$this$transformLatest"}, s = {"L$0", "L$0", "L$0"})
/* loaded from: classes5.dex */
final class StartedWhileSubscribed$command$1 extends SuspendLambda implements Function3<InterfaceC1640d, Integer, kotlin.coroutines.e, Object> {
    /* synthetic */ int I$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ r0 this$0;

    public StartedWhileSubscribed$command$1(r0 r0Var, kotlin.coroutines.e eVar) {
        super(3, eVar);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(InterfaceC1640d interfaceC1640d, Integer num, kotlin.coroutines.e eVar) {
        return invoke(interfaceC1640d, num.intValue(), eVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0051, code lost:
    
        if (r1.emit(r11, r10) == r0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0093, code lost:
    
        if (r1.emit(r11, r10) != r0) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0089 A[PHI: r1
      0x0089: PHI (r1v5 kotlinx.coroutines.flow.d) = (r1v3 kotlinx.coroutines.flow.d), (r1v4 kotlinx.coroutines.flow.d), (r1v11 kotlinx.coroutines.flow.d) binds: [B:25:0x006b, B:30:0x0086, B:12:0x0021] A[DONT_GENERATE, DONT_INLINE]] */
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
            r2 = 5
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r1 == 0) goto L3d
            if (r1 == r6) goto L39
            if (r1 == r5) goto L31
            if (r1 == r4) goto L29
            if (r1 == r3) goto L21
            if (r1 != r2) goto L19
            goto L39
        L19:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L21:
            java.lang.Object r1 = r10.L$0
            kotlinx.coroutines.flow.d r1 = (kotlinx.coroutines.flow.InterfaceC1640d) r1
            kotlin.e.b(r11)
            goto L89
        L29:
            java.lang.Object r1 = r10.L$0
            kotlinx.coroutines.flow.d r1 = (kotlinx.coroutines.flow.InterfaceC1640d) r1
            kotlin.e.b(r11)
            goto L7a
        L31:
            java.lang.Object r1 = r10.L$0
            kotlinx.coroutines.flow.d r1 = (kotlinx.coroutines.flow.InterfaceC1640d) r1
            kotlin.e.b(r11)
            goto L63
        L39:
            kotlin.e.b(r11)
            goto L96
        L3d:
            kotlin.e.b(r11)
            java.lang.Object r11 = r10.L$0
            r1 = r11
            kotlinx.coroutines.flow.d r1 = (kotlinx.coroutines.flow.InterfaceC1640d) r1
            int r11 = r10.I$0
            if (r11 <= 0) goto L54
            kotlinx.coroutines.flow.SharingCommand r11 = kotlinx.coroutines.flow.SharingCommand.START
            r10.label = r6
            java.lang.Object r11 = r1.emit(r11, r10)
            if (r11 != r0) goto L96
            goto L95
        L54:
            long r8 = kotlinx.coroutines.flow.r0.c(r7)
            r10.L$0 = r1
            r10.label = r5
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.b(r8, r10)
            if (r11 != r0) goto L63
            goto L95
        L63:
            long r5 = kotlinx.coroutines.flow.r0.b(r7)
            r8 = 0
            int r11 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
            if (r11 <= 0) goto L89
            kotlinx.coroutines.flow.SharingCommand r11 = kotlinx.coroutines.flow.SharingCommand.STOP
            r10.L$0 = r1
            r10.label = r4
            java.lang.Object r11 = r1.emit(r11, r10)
            if (r11 != r0) goto L7a
            goto L95
        L7a:
            long r4 = kotlinx.coroutines.flow.r0.b(r7)
            r10.L$0 = r1
            r10.label = r3
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.b(r4, r10)
            if (r11 != r0) goto L89
            goto L95
        L89:
            kotlinx.coroutines.flow.SharingCommand r11 = kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE
            r10.L$0 = r7
            r10.label = r2
            java.lang.Object r11 = r1.emit(r11, r10)
            if (r11 != r0) goto L96
        L95:
            return r0
        L96:
            kotlin.j r11 = kotlin.j.f51397a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedWhileSubscribed$command$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    public final Object invoke(InterfaceC1640d interfaceC1640d, int i2, kotlin.coroutines.e eVar) {
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(null, eVar);
        startedWhileSubscribed$command$1.L$0 = interfaceC1640d;
        startedWhileSubscribed$command$1.I$0 = i2;
        return startedWhileSubscribed$command$1.invokeSuspend(kotlin.j.f51397a);
    }
}
