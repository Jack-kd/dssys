package androidx.core.content;

import android.content.BroadcastReceiver;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.M;
import kotlinx.coroutines.N;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "androidx.core.content.ContextKt$receiveBroadcastsAsync$2$1$1", f = "Context.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_LOOPER_TIMEOUT}, m = "invokeSuspend", n = {}, s = {}, v = 1)
/* loaded from: classes.dex */
public final class ContextKt$receiveBroadcastsAsync$2$1$1 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
    final /* synthetic */ Intent $intent;
    final /* synthetic */ Function3<BroadcastReceiver.PendingResult, Intent, kotlin.coroutines.e, Object> $onReceive;
    final /* synthetic */ BroadcastReceiver.PendingResult $pendingResult;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ContextKt$receiveBroadcastsAsync$2$1$1(Function3<? super BroadcastReceiver.PendingResult, ? super Intent, ? super kotlin.coroutines.e, ? extends Object> function3, BroadcastReceiver.PendingResult pendingResult, Intent intent, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$onReceive = function3;
        this.$pendingResult = pendingResult;
        this.$intent = intent;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        ContextKt$receiveBroadcastsAsync$2$1$1 contextKt$receiveBroadcastsAsync$2$1$1 = new ContextKt$receiveBroadcastsAsync$2$1$1(this.$onReceive, this.$pendingResult, this.$intent, eVar);
        contextKt$receiveBroadcastsAsync$2$1$1.L$0 = obj;
        return contextKt$receiveBroadcastsAsync$2$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        try {
            if (i2 == 0) {
                kotlin.e.b(obj);
                N.c((M) this.L$0);
                Function3<BroadcastReceiver.PendingResult, Intent, kotlin.coroutines.e, Object> function3 = this.$onReceive;
                BroadcastReceiver.PendingResult pendingResult = this.$pendingResult;
                Intent intent = this.$intent;
                this.label = 1;
                if (function3.invoke(pendingResult, intent, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            this.$pendingResult.finish();
            return kotlin.j.f51397a;
        } catch (Throwable th) {
            this.$pendingResult.finish();
            throw th;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(M m2, kotlin.coroutines.e eVar) {
        return ((ContextKt$receiveBroadcastsAsync$2$1$1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
