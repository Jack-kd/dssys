package kotlin.sequences;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lkotlin/sequences/i;", "Lkotlin/j;", "<anonymous>", "(Lkotlin/sequences/i;)V"}, k = 3, mv = {2, 2, 0})
@DebugMetadata(c = "kotlin.sequences.SequencesKt___SequencesKt$runningFold$1", f = "_Sequences.kt", i = {0, 1, 1, 1}, l = {2423, 2427}, m = "invokeSuspend", n = {"$this$sequence", "$this$sequence", "accumulator", "element"}, nl = {2424, 2429}, s = {"L$0", "L$0", "L$1", "L$3"}, v = 2)
/* loaded from: classes5.dex */
final class SequencesKt___SequencesKt$runningFold$1 extends RestrictedSuspendLambda implements Function2<i, kotlin.coroutines.e, Object> {
    final /* synthetic */ Object $initial;
    final /* synthetic */ Function2<Object, Object, Object> $operation;
    final /* synthetic */ g $this_runningFold;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$runningFold$1(Object obj, g gVar, Function2<Object, Object, Object> function2, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$initial = obj;
        this.$this_runningFold = gVar;
        this.$operation = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        SequencesKt___SequencesKt$runningFold$1 sequencesKt___SequencesKt$runningFold$1 = new SequencesKt___SequencesKt$runningFold$1(this.$initial, this.$this_runningFold, this.$operation, eVar);
        sequencesKt___SequencesKt$runningFold$1.L$0 = obj;
        return sequencesKt___SequencesKt$runningFold$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
    
        if (r0.a(r7, r6) == r1) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) throws java.lang.Throwable {
        /*
            r6 = this;
            java.lang.Object r0 = r6.L$0
            kotlin.sequences.i r0 = (kotlin.sequences.i) r0
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r6.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L29
            if (r2 == r4) goto L25
            if (r2 != r3) goto L1d
            java.lang.Object r2 = r6.L$2
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r4 = r6.L$1
            kotlin.e.b(r7)
            r7 = r4
            goto L41
        L1d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L25:
            kotlin.e.b(r7)
            goto L39
        L29:
            kotlin.e.b(r7)
            java.lang.Object r7 = r6.$initial
            r6.L$0 = r0
            r6.label = r4
            java.lang.Object r7 = r0.a(r7, r6)
            if (r7 != r1) goto L39
            goto L65
        L39:
            java.lang.Object r7 = r6.$initial
            kotlin.sequences.g r2 = r6.$this_runningFold
            java.util.Iterator r2 = r2.iterator()
        L41:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L66
            java.lang.Object r4 = r2.next()
            kotlin.jvm.functions.Function2<java.lang.Object, java.lang.Object, java.lang.Object> r5 = r6.$operation
            java.lang.Object r7 = r5.invoke(r7, r4)
            r6.L$0 = r0
            r6.L$1 = r7
            r6.L$2 = r2
            java.lang.Object r4 = w1.g.a(r4)
            r6.L$3 = r4
            r6.label = r3
            java.lang.Object r4 = r0.a(r7, r6)
            if (r4 != r1) goto L41
        L65:
            return r1
        L66:
            kotlin.j r7 = kotlin.j.f51397a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.SequencesKt___SequencesKt$runningFold$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i iVar, kotlin.coroutines.e eVar) {
        return ((SequencesKt___SequencesKt$runningFold$1) create(iVar, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
