package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/sequences/i;", "Lkotlinx/coroutines/u0;", "Lkotlin/j;", "<anonymous>", "(Lkotlin/sequences/i;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", i = {1, 1, 1}, l = {1003, 1005}, m = "invokeSuspend", n = {"$this$sequence", "this_$iv", "cur$iv"}, s = {"L$0", "L$1", "L$2"})
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1583:1\n275#2,6:1584\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n*L\n1005#1:1584,6\n*E\n"})
/* loaded from: classes5.dex */
final class JobSupport$children$1 extends RestrictedSuspendLambda implements Function2<kotlin.sequences.i, kotlin.coroutines.e, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ y0 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobSupport$children$1(y0 y0Var, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.this$0 = y0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.this$0, eVar);
        jobSupport$children$1.L$0 = obj;
        return jobSupport$children$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
    
        if (r6.a(r1, r5) == r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007e, code lost:
    
        if (r4.a(r6, r5) == r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0080, code lost:
    
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006b -> B:27:0x0081). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007e -> B:27:0x0081). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) throws java.lang.Throwable {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.e()
            int r1 = r5.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2a
            if (r1 == r3) goto L26
            if (r1 != r2) goto L1e
            java.lang.Object r1 = r5.L$2
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r1
            java.lang.Object r3 = r5.L$1
            kotlinx.coroutines.internal.m r3 = (kotlinx.coroutines.internal.AbstractC1680m) r3
            java.lang.Object r4 = r5.L$0
            kotlin.sequences.i r4 = (kotlin.sequences.i) r4
            kotlin.e.b(r6)
            goto L81
        L1e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L26:
            kotlin.e.b(r6)
            goto L86
        L2a:
            kotlin.e.b(r6)
            java.lang.Object r6 = r5.L$0
            kotlin.sequences.i r6 = (kotlin.sequences.i) r6
            kotlinx.coroutines.y0 r1 = r5.this$0
            java.lang.Object r1 = r1.h0()
            boolean r4 = r1 instanceof kotlinx.coroutines.C1702t
            if (r4 == 0) goto L48
            kotlinx.coroutines.t r1 = (kotlinx.coroutines.C1702t) r1
            kotlinx.coroutines.u r1 = r1.f51919f
            r5.label = r3
            java.lang.Object r6 = r6.a(r1, r5)
            if (r6 != r0) goto L86
            goto L80
        L48:
            boolean r3 = r1 instanceof kotlinx.coroutines.InterfaceC1696p0
            if (r3 == 0) goto L86
            kotlinx.coroutines.p0 r1 = (kotlinx.coroutines.InterfaceC1696p0) r1
            kotlinx.coroutines.C0 r1 = r1.a()
            if (r1 == 0) goto L86
            java.lang.Object r3 = r1.j()
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"
            kotlin.jvm.internal.j.c(r3, r4)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
            r4 = r3
            r3 = r1
            r1 = r4
            r4 = r6
        L63:
            boolean r6 = kotlin.jvm.internal.j.a(r1, r3)
            if (r6 != 0) goto L86
            boolean r6 = r1 instanceof kotlinx.coroutines.C1702t
            if (r6 == 0) goto L81
            r6 = r1
            kotlinx.coroutines.t r6 = (kotlinx.coroutines.C1702t) r6
            kotlinx.coroutines.u r6 = r6.f51919f
            r5.L$0 = r4
            r5.L$1 = r3
            r5.L$2 = r1
            r5.label = r2
            java.lang.Object r6 = r4.a(r6, r5)
            if (r6 != r0) goto L81
        L80:
            return r0
        L81:
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = r1.k()
            goto L63
        L86:
            kotlin.j r6 = kotlin.j.f51397a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport$children$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlin.sequences.i iVar, kotlin.coroutines.e eVar) {
        return ((JobSupport$children$1) create(iVar, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
