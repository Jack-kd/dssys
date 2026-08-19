package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/i;", "Lkotlin/j;", "<anonymous>", "(Lkotlin/sequences/i;)V"}, k = 3, mv = {2, 2, 0})
@DebugMetadata(c = "kotlin.sequences.SequencesKt__SequencesKt$ifEmpty$1", f = "Sequences.kt", i = {0, 0, 1, 1}, l = {102, 104}, m = "invokeSuspend", n = {"$this$sequence", "iterator", "$this$sequence", "iterator"}, nl = {104, 106}, s = {"L$0", "L$1", "L$0", "L$1"}, v = 2)
/* loaded from: classes5.dex */
final class SequencesKt__SequencesKt$ifEmpty$1 extends RestrictedSuspendLambda implements Function2<i, kotlin.coroutines.e, Object> {
    final /* synthetic */ Function0<g> $defaultValue;
    final /* synthetic */ g $this_ifEmpty;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SequencesKt__SequencesKt$ifEmpty$1(g gVar, Function0<? extends g> function0, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$this_ifEmpty = gVar;
        this.$defaultValue = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        SequencesKt__SequencesKt$ifEmpty$1 sequencesKt__SequencesKt$ifEmpty$1 = new SequencesKt__SequencesKt$ifEmpty$1(this.$this_ifEmpty, this.$defaultValue, eVar);
        sequencesKt__SequencesKt$ifEmpty$1.L$0 = obj;
        return sequencesKt__SequencesKt$ifEmpty$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
    
        if (r0.b(r6, r5) == r1) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0061, code lost:
    
        if (r0.e(r2, r5) == r1) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0063, code lost:
    
        return r1;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) throws java.lang.Throwable {
        /*
            r5 = this;
            java.lang.Object r0 = r5.L$0
            kotlin.sequences.i r0 = (kotlin.sequences.i) r0
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r5.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L23
            if (r2 == r4) goto L1b
            if (r2 != r3) goto L13
            goto L1b
        L13:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1b:
            java.lang.Object r0 = r5.L$1
            java.util.Iterator r0 = (java.util.Iterator) r0
            kotlin.e.b(r6)
            goto L64
        L23:
            kotlin.e.b(r6)
            kotlin.sequences.g r6 = r5.$this_ifEmpty
            java.util.Iterator r6 = r6.iterator()
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L47
            java.lang.Object r2 = w1.g.a(r0)
            r5.L$0 = r2
            java.lang.Object r2 = w1.g.a(r6)
            r5.L$1 = r2
            r5.label = r4
            java.lang.Object r6 = r0.b(r6, r5)
            if (r6 != r1) goto L64
            goto L63
        L47:
            kotlin.jvm.functions.Function0<kotlin.sequences.g> r2 = r5.$defaultValue
            java.lang.Object r2 = r2.invoke()
            kotlin.sequences.g r2 = (kotlin.sequences.g) r2
            java.lang.Object r4 = w1.g.a(r0)
            r5.L$0 = r4
            java.lang.Object r6 = w1.g.a(r6)
            r5.L$1 = r6
            r5.label = r3
            java.lang.Object r6 = r0.e(r2, r5)
            if (r6 != r1) goto L64
        L63:
            return r1
        L64:
            kotlin.j r6 = kotlin.j.f51397a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.SequencesKt__SequencesKt$ifEmpty$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i iVar, kotlin.coroutines.e eVar) {
        return ((SequencesKt__SequencesKt$ifEmpty$1) create(iVar, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
