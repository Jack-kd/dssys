package kotlin.sequences;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import w1.AbstractC1791a;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lkotlin/sequences/i;", "Lkotlin/j;", "<anonymous>", "(Lkotlin/sequences/i;)V"}, k = 3, mv = {2, 2, 0})
@DebugMetadata(c = "kotlin.sequences.SequencesKt__SequencesKt$flatMapIndexed$1", f = "Sequences.kt", i = {0, 0, 0, 0}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_400}, m = "invokeSuspend", n = {"$this$sequence", "element", "result", com.umeng.ccg.a.f49746H}, nl = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DEMUXER_STALL_500}, s = {"L$0", "L$2", "L$3", "I$0"}, v = 2)
/* loaded from: classes5.dex */
final class SequencesKt__SequencesKt$flatMapIndexed$1 extends RestrictedSuspendLambda implements Function2<i, kotlin.coroutines.e, Object> {
    final /* synthetic */ Function1<Object, Iterator<Object>> $iterator;
    final /* synthetic */ g $source;
    final /* synthetic */ Function2<Integer, Object, Object> $transform;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SequencesKt__SequencesKt$flatMapIndexed$1(g gVar, Function2<? super Integer, Object, Object> function2, Function1<Object, ? extends Iterator<Object>> function1, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$source = gVar;
        this.$transform = function2;
        this.$iterator = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        SequencesKt__SequencesKt$flatMapIndexed$1 sequencesKt__SequencesKt$flatMapIndexed$1 = new SequencesKt__SequencesKt$flatMapIndexed$1(this.$source, this.$transform, this.$iterator, eVar);
        sequencesKt__SequencesKt$flatMapIndexed$1.L$0 = obj;
        return sequencesKt__SequencesKt$flatMapIndexed$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i2;
        Iterator it;
        i iVar = (i) this.L$0;
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i3 = this.label;
        if (i3 == 0) {
            kotlin.e.b(obj);
            i2 = 0;
            it = this.$source.iterator();
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i2 = this.I$0;
            it = (Iterator) this.L$1;
            kotlin.e.b(obj);
        }
        while (it.hasNext()) {
            Object next = it.next();
            Function2<Integer, Object, Object> function2 = this.$transform;
            int i4 = i2 + 1;
            if (i2 < 0) {
                kotlin.collections.q.u();
            }
            Object objInvoke = function2.invoke(AbstractC1791a.c(i2), next);
            Iterator<Object> itInvoke = this.$iterator.invoke(objInvoke);
            this.L$0 = iVar;
            this.L$1 = it;
            this.L$2 = w1.g.a(next);
            this.L$3 = w1.g.a(objInvoke);
            this.I$0 = i4;
            this.label = 1;
            if (iVar.b(itInvoke, this) == objE) {
                return objE;
            }
            i2 = i4;
        }
        return kotlin.j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i iVar, kotlin.coroutines.e eVar) {
        return ((SequencesKt__SequencesKt$flatMapIndexed$1) create(iVar, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
