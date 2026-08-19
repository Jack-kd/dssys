package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.M;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlinx/coroutines/channels/j;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)Lkotlinx/coroutines/channels/j;"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2", f = "Channels.kt", i = {}, l = {39}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt$trySendBlocking$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"})
/* loaded from: classes5.dex */
public final class ChannelsKt__ChannelsKt$trySendBlocking$2 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
    final /* synthetic */ Object $element;
    final /* synthetic */ s $this_trySendBlocking;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__ChannelsKt$trySendBlocking$2(s sVar, Object obj, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$this_trySendBlocking = sVar;
        this.$element = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        ChannelsKt__ChannelsKt$trySendBlocking$2 channelsKt__ChannelsKt$trySendBlocking$2 = new ChannelsKt__ChannelsKt$trySendBlocking$2(this.$this_trySendBlocking, this.$element, eVar);
        channelsKt__ChannelsKt$trySendBlocking$2.L$0 = obj;
        return channelsKt__ChannelsKt$trySendBlocking$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM66constructorimpl;
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        try {
            if (i2 == 0) {
                kotlin.e.b(obj);
                s sVar = this.$this_trySendBlocking;
                Object obj2 = this.$element;
                Result.Companion companion = Result.INSTANCE;
                this.label = 1;
                if (sVar.E(obj2, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            objM66constructorimpl = Result.m66constructorimpl(kotlin.j.f51397a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM66constructorimpl = Result.m66constructorimpl(kotlin.e.a(th));
        }
        return j.b(Result.m73isSuccessimpl(objM66constructorimpl) ? j.f51593b.c(kotlin.j.f51397a) : j.f51593b.a(Result.m69exceptionOrNullimpl(objM66constructorimpl)));
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(M m2, kotlin.coroutines.e eVar) {
        return ((ChannelsKt__ChannelsKt$trySendBlocking$2) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
