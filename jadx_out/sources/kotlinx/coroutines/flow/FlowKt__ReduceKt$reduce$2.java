package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;

/* loaded from: classes5.dex */
public final class FlowKt__ReduceKt$reduce$2 implements InterfaceC1640d {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f51665b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function3 f51666c;

    public FlowKt__ReduceKt$reduce$2(Ref$ObjectRef ref$ObjectRef, Function3 function3) {
        this.f51665b = ref$ObjectRef;
        this.f51666c = function3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.InterfaceC1640d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.e r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$2$emit$1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$2$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$2$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$2$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$2$emit$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref$ObjectRef) r7
            kotlin.e.b(r8)
            goto L50
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            kotlin.e.b(r8)
            kotlin.jvm.internal.Ref$ObjectRef r8 = r6.f51665b
            T r2 = r8.element
            kotlinx.coroutines.internal.B r4 = kotlinx.coroutines.flow.internal.n.f51725a
            if (r2 == r4) goto L53
            kotlin.jvm.functions.Function3 r4 = r6.f51666c
            r0.L$0 = r8
            r0.label = r3
            java.lang.Object r7 = r4.invoke(r2, r7, r0)
            if (r7 != r1) goto L4d
            return r1
        L4d:
            r5 = r8
            r8 = r7
            r7 = r5
        L50:
            r5 = r8
            r8 = r7
            r7 = r5
        L53:
            r8.element = r7
            kotlin.j r7 = kotlin.j.f51397a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$2.emit(java.lang.Object, kotlin.coroutines.e):java.lang.Object");
    }
}
