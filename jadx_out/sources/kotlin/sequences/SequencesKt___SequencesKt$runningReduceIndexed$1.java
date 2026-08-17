package kotlin.sequences;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import w1.AbstractC1791a;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"S", "Lkotlin/sequences/i;", "Lkotlin/j;", "<anonymous>", "(Lkotlin/sequences/i;)V"}, k = 3, mv = {2, 2, 0})
@DebugMetadata(c = "kotlin.sequences.SequencesKt___SequencesKt$runningReduceIndexed$1", f = "_Sequences.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {AVMDLDataLoader.KeyIsPreconnectNum, 2513}, m = "invokeSuspend", n = {"$this$sequence", "iterator", "accumulator", "$this$sequence", "iterator", "accumulator", com.umeng.ccg.a.f49746H}, nl = {AVMDLDataLoader.KeyIsEnableLoaderPreempt, 2516}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "I$0"}, v = 2)
/* loaded from: classes5.dex */
final class SequencesKt___SequencesKt$runningReduceIndexed$1 extends RestrictedSuspendLambda implements Function2<i, kotlin.coroutines.e, Object> {
    final /* synthetic */ Function3<Integer, Object, Object, Object> $operation;
    final /* synthetic */ g $this_runningReduceIndexed;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SequencesKt___SequencesKt$runningReduceIndexed$1(g gVar, Function3<? super Integer, Object, Object, Object> function3, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$this_runningReduceIndexed = gVar;
        this.$operation = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        SequencesKt___SequencesKt$runningReduceIndexed$1 sequencesKt___SequencesKt$runningReduceIndexed$1 = new SequencesKt___SequencesKt$runningReduceIndexed$1(this.$this_runningReduceIndexed, this.$operation, eVar);
        sequencesKt___SequencesKt$runningReduceIndexed$1.L$0 = obj;
        return sequencesKt___SequencesKt$runningReduceIndexed$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Iterator it;
        Object next;
        i iVar = (i) this.L$0;
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        int i3 = 1;
        if (i2 == 0) {
            kotlin.e.b(obj);
            it = this.$this_runningReduceIndexed.iterator();
            if (it.hasNext()) {
                next = it.next();
                this.L$0 = iVar;
                this.L$1 = it;
                this.L$2 = next;
                this.label = 1;
                if (iVar.a(next, this) != objE) {
                }
                return objE;
            }
            return kotlin.j.f51397a;
        }
        if (i2 == 1) {
            next = this.L$2;
            it = (Iterator) this.L$1;
            kotlin.e.b(obj);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i4 = this.I$0;
            Object obj2 = this.L$2;
            it = (Iterator) this.L$1;
            kotlin.e.b(obj);
            i3 = i4;
            next = obj2;
        }
        while (it.hasNext()) {
            Function3<Integer, Object, Object, Object> function3 = this.$operation;
            int i5 = i3 + 1;
            if (i3 < 0) {
                kotlin.collections.q.u();
            }
            Object objInvoke = function3.invoke(AbstractC1791a.c(i3), next, it.next());
            this.L$0 = iVar;
            this.L$1 = it;
            this.L$2 = objInvoke;
            this.I$0 = i5;
            this.label = 2;
            if (iVar.a(objInvoke, this) == objE) {
                return objE;
            }
            next = objInvoke;
            i3 = i5;
        }
        return kotlin.j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i iVar, kotlin.coroutines.e eVar) {
        return ((SequencesKt___SequencesKt$runningReduceIndexed$1) create(iVar, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
