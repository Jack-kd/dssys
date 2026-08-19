package kotlinx.coroutines.channels;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.M;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.TrySelectDetailedResult;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.BroadcastChannelImpl$registerSelectForSend$2", f = "BroadcastChannel.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,363:1\n9#2:364\n1#3:365\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n*L\n253#1:364\n*E\n"})
/* loaded from: classes5.dex */
final class BroadcastChannelImpl$registerSelectForSend$2 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
    final /* synthetic */ Object $element;
    final /* synthetic */ kotlinx.coroutines.selects.i $select;
    int label;
    final /* synthetic */ c this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BroadcastChannelImpl$registerSelectForSend$2(c cVar, Object obj, kotlinx.coroutines.selects.i iVar, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$element = obj;
        this.$select = iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        return new BroadcastChannelImpl$registerSelectForSend$2(null, this.$element, this.$select, eVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            this.label = 1;
            throw null;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.e.b(obj);
        ReentrantLock reentrantLockD1 = c.D1(null);
        kotlinx.coroutines.selects.i iVar = this.$select;
        reentrantLockD1.lock();
        try {
            HashMap mapE1 = c.E1(null);
            kotlin.j jVar = kotlin.j.f51397a;
            mapE1.put(iVar, jVar);
            kotlin.jvm.internal.j.c(iVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            if (((SelectImplementation) iVar).z(null, jVar) != TrySelectDetailedResult.REREGISTER) {
                c.E1(null).remove(iVar);
            }
            return jVar;
        } finally {
            reentrantLockD1.unlock();
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(M m2, kotlin.coroutines.e eVar) {
        return ((BroadcastChannelImpl$registerSelectForSend$2) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
