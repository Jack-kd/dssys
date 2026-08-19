package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* loaded from: classes5.dex */
public final class DistinctFlowImpl implements InterfaceC1639c {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1639c f51620b;

    /* renamed from: c, reason: collision with root package name */
    public final Function1 f51621c;

    /* renamed from: d, reason: collision with root package name */
    public final Function2 f51622d;

    /* renamed from: kotlinx.coroutines.flow.DistinctFlowImpl$collect$2, reason: invalid class name */
    public static final class AnonymousClass2 implements InterfaceC1640d {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Ref$ObjectRef f51624c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ InterfaceC1640d f51625d;

        public AnonymousClass2(Ref$ObjectRef ref$ObjectRef, InterfaceC1640d interfaceC1640d) {
            this.f51624c = ref$ObjectRef;
            this.f51625d = interfaceC1640d;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /* JADX WARN: Type inference failed for: r7v4, types: [T, java.lang.Object] */
        @Override // kotlinx.coroutines.flow.InterfaceC1640d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.e r7) throws java.lang.Throwable {
            /*
                r5 = this;
                boolean r0 = r7 instanceof kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1
                if (r0 == 0) goto L13
                r0 = r7
                kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1 r0 = (kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1 r0 = new kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1
                r0.<init>(r5, r7)
            L18:
                java.lang.Object r7 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L31
                if (r2 != r3) goto L29
                kotlin.e.b(r7)
                goto L67
            L29:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L31:
                kotlin.e.b(r7)
                kotlinx.coroutines.flow.DistinctFlowImpl r7 = kotlinx.coroutines.flow.DistinctFlowImpl.this
                kotlin.jvm.functions.Function1 r7 = r7.f51621c
                java.lang.Object r7 = r7.invoke(r6)
                kotlin.jvm.internal.Ref$ObjectRef r2 = r5.f51624c
                T r2 = r2.element
                kotlinx.coroutines.internal.B r4 = kotlinx.coroutines.flow.internal.n.f51725a
                if (r2 == r4) goto L58
                kotlinx.coroutines.flow.DistinctFlowImpl r4 = kotlinx.coroutines.flow.DistinctFlowImpl.this
                kotlin.jvm.functions.Function2 r4 = r4.f51622d
                java.lang.Object r2 = r4.invoke(r2, r7)
                java.lang.Boolean r2 = (java.lang.Boolean) r2
                boolean r2 = r2.booleanValue()
                if (r2 != 0) goto L55
                goto L58
            L55:
                kotlin.j r6 = kotlin.j.f51397a
                return r6
            L58:
                kotlin.jvm.internal.Ref$ObjectRef r2 = r5.f51624c
                r2.element = r7
                kotlinx.coroutines.flow.d r7 = r5.f51625d
                r0.label = r3
                java.lang.Object r6 = r7.emit(r6, r0)
                if (r6 != r1) goto L67
                return r1
            L67:
                kotlin.j r6 = kotlin.j.f51397a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.DistinctFlowImpl.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.e):java.lang.Object");
        }
    }

    public DistinctFlowImpl(InterfaceC1639c interfaceC1639c, Function1 function1, Function2 function2) {
        this.f51620b = interfaceC1639c;
        this.f51621c = function1;
        this.f51622d = function2;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, kotlinx.coroutines.internal.B] */
    @Override // kotlinx.coroutines.flow.InterfaceC1639c
    public Object collect(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = kotlinx.coroutines.flow.internal.n.f51725a;
        Object objCollect = this.f51620b.collect(new AnonymousClass2(ref$ObjectRef, interfaceC1640d), eVar);
        return objCollect == kotlin.coroutines.intrinsics.a.e() ? objCollect : kotlin.j.f51397a;
    }
}
