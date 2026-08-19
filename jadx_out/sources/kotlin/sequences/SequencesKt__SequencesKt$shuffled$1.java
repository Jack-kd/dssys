package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.v;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.random.Random;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/i;", "Lkotlin/j;", "<anonymous>", "(Lkotlin/sequences/i;)V"}, k = 3, mv = {2, 2, 0})
@DebugMetadata(c = "kotlin.sequences.SequencesKt__SequencesKt$shuffled$1", f = "Sequences.kt", i = {0, 0, 0, 0, 0}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HIGH_THRESHOLD}, m = "invokeSuspend", n = {"$this$sequence", "buffer", "last", f.a.f3244d, "j"}, nl = {180}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"}, v = 2)
/* loaded from: classes5.dex */
final class SequencesKt__SequencesKt$shuffled$1 extends RestrictedSuspendLambda implements Function2<i, kotlin.coroutines.e, Object> {
    final /* synthetic */ Random $random;
    final /* synthetic */ g $this_shuffled;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt__SequencesKt$shuffled$1(g gVar, Random random, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$this_shuffled = gVar;
        this.$random = random;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        SequencesKt__SequencesKt$shuffled$1 sequencesKt__SequencesKt$shuffled$1 = new SequencesKt__SequencesKt$shuffled$1(this.$this_shuffled, this.$random, eVar);
        sequencesKt__SequencesKt$shuffled$1.L$0 = obj;
        return sequencesKt__SequencesKt$shuffled$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List listD;
        i iVar = (i) this.L$0;
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            listD = q.D(this.$this_shuffled);
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            listD = (List) this.L$1;
            kotlin.e.b(obj);
        }
        while (!listD.isEmpty()) {
            int iNextInt = this.$random.nextInt(listD.size());
            Object objC = v.C(listD);
            Object obj2 = iNextInt < listD.size() ? listD.set(iNextInt, objC) : objC;
            this.L$0 = iVar;
            this.L$1 = listD;
            this.L$2 = w1.g.a(objC);
            this.L$3 = w1.g.a(obj2);
            this.I$0 = iNextInt;
            this.label = 1;
            if (iVar.a(obj2, this) == objE) {
                return objE;
            }
        }
        return kotlin.j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i iVar, kotlin.coroutines.e eVar) {
        return ((SequencesKt__SequencesKt$shuffled$1) create(iVar, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
