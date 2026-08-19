package kotlin.sequences;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lkotlin/sequences/i;", "Lkotlin/j;", "<anonymous>", "(Lkotlin/sequences/i;)V"}, k = 3, mv = {2, 2, 0})
@DebugMetadata(c = "kotlin.sequences.SequencesKt___SequencesKt$runningFoldIndexed$1", f = "_Sequences.kt", i = {0, 1, 1, 1, 1}, l = {2451, 2456}, m = "invokeSuspend", n = {"$this$sequence", "$this$sequence", "accumulator", "element", com.umeng.ccg.a.f49746H}, nl = {2452, 2458}, s = {"L$0", "L$0", "L$1", "L$3", "I$0"}, v = 2)
/* loaded from: classes5.dex */
final class SequencesKt___SequencesKt$runningFoldIndexed$1 extends RestrictedSuspendLambda implements Function2<i, kotlin.coroutines.e, Object> {
    final /* synthetic */ Object $initial;
    final /* synthetic */ Function3<Integer, Object, Object, Object> $operation;
    final /* synthetic */ g $this_runningFoldIndexed;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SequencesKt___SequencesKt$runningFoldIndexed$1(Object obj, g gVar, Function3<? super Integer, Object, Object, Object> function3, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$initial = obj;
        this.$this_runningFoldIndexed = gVar;
        this.$operation = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        SequencesKt___SequencesKt$runningFoldIndexed$1 sequencesKt___SequencesKt$runningFoldIndexed$1 = new SequencesKt___SequencesKt$runningFoldIndexed$1(this.$initial, this.$this_runningFoldIndexed, this.$operation, eVar);
        sequencesKt___SequencesKt$runningFoldIndexed$1.L$0 = obj;
        return sequencesKt___SequencesKt$runningFoldIndexed$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
    
        if (r0.a(r10, r9) == r1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
        /*
            r9 = this;
            java.lang.Object r0 = r9.L$0
            kotlin.sequences.i r0 = (kotlin.sequences.i) r0
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r9.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L2b
            if (r2 == r4) goto L27
            if (r2 != r3) goto L1f
            int r2 = r9.I$0
            java.lang.Object r4 = r9.L$2
            java.util.Iterator r4 = (java.util.Iterator) r4
            java.lang.Object r5 = r9.L$1
            kotlin.e.b(r10)
            r10 = r5
            goto L47
        L1f:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L27:
            kotlin.e.b(r10)
            goto L3b
        L2b:
            kotlin.e.b(r10)
            java.lang.Object r10 = r9.$initial
            r9.L$0 = r0
            r9.label = r4
            java.lang.Object r10 = r0.a(r10, r9)
            if (r10 != r1) goto L3b
            goto L78
        L3b:
            java.lang.Object r10 = r9.$initial
            kotlin.sequences.g r2 = r9.$this_runningFoldIndexed
            java.util.Iterator r2 = r2.iterator()
            r4 = 0
            r8 = r4
            r4 = r2
            r2 = r8
        L47:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L7b
            java.lang.Object r5 = r4.next()
            kotlin.jvm.functions.Function3<java.lang.Integer, java.lang.Object, java.lang.Object, java.lang.Object> r6 = r9.$operation
            int r7 = r2 + 1
            if (r2 >= 0) goto L5a
            kotlin.collections.q.u()
        L5a:
            java.lang.Integer r2 = w1.AbstractC1791a.c(r2)
            java.lang.Object r10 = r6.invoke(r2, r10, r5)
            r9.L$0 = r0
            r9.L$1 = r10
            r9.L$2 = r4
            java.lang.Object r2 = w1.g.a(r5)
            r9.L$3 = r2
            r9.I$0 = r7
            r9.label = r3
            java.lang.Object r2 = r0.a(r10, r9)
            if (r2 != r1) goto L79
        L78:
            return r1
        L79:
            r2 = r7
            goto L47
        L7b:
            kotlin.j r10 = kotlin.j.f51397a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.SequencesKt___SequencesKt$runningFoldIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i iVar, kotlin.coroutines.e eVar) {
        return ((SequencesKt___SequencesKt$runningFoldIndexed$1) create(iVar, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
