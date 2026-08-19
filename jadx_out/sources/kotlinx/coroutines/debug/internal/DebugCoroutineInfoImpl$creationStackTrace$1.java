package kotlinx.coroutines.debug.internal;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.j;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.i;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/sequences/i;", "Ljava/lang/StackTraceElement;", "Lkotlin/j;", "<anonymous>", "(Lkotlin/sequences/i;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$creationStackTrace$1", f = "DebugCoroutineInfoImpl.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_REAL_TIME}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class DebugCoroutineInfoImpl$creationStackTrace$1 extends RestrictedSuspendLambda implements Function2<i, e, Object> {
    final /* synthetic */ b $bottom;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ a this$0;

    public DebugCoroutineInfoImpl$creationStackTrace$1(a aVar, b bVar, e eVar) {
        super(2, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final e create(Object obj, e eVar) {
        DebugCoroutineInfoImpl$creationStackTrace$1 debugCoroutineInfoImpl$creationStackTrace$1 = new DebugCoroutineInfoImpl$creationStackTrace$1(null, null, eVar);
        debugCoroutineInfoImpl$creationStackTrace$1.L$0 = obj;
        return debugCoroutineInfoImpl$creationStackTrace$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            throw null;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.e.b(obj);
        return j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i iVar, e eVar) {
        return ((DebugCoroutineInfoImpl$creationStackTrace$1) create(iVar, eVar)).invokeSuspend(j.f51397a);
    }
}
