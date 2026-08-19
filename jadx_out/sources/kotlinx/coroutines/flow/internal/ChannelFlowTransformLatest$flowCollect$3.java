package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.M;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", i = {}, l = {23}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class ChannelFlowTransformLatest$flowCollect$3 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
    final /* synthetic */ InterfaceC1640d $collector;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ChannelFlowTransformLatest this$0;

    /* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1, reason: invalid class name */
    public static final class AnonymousClass1 implements InterfaceC1640d {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Ref$ObjectRef f51697b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ M f51698c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ ChannelFlowTransformLatest f51699d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ InterfaceC1640d f51700e;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", i = {}, l = {30}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2, reason: invalid class name */
        public static final class AnonymousClass2 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
            final /* synthetic */ InterfaceC1640d $collector;
            final /* synthetic */ Object $value;
            int label;
            final /* synthetic */ ChannelFlowTransformLatest this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(ChannelFlowTransformLatest channelFlowTransformLatest, InterfaceC1640d interfaceC1640d, Object obj, kotlin.coroutines.e eVar) {
                super(2, eVar);
                this.this$0 = channelFlowTransformLatest;
                this.$collector = interfaceC1640d;
                this.$value = obj;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
                return new AnonymousClass2(this.this$0, this.$collector, this.$value, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objE = kotlin.coroutines.intrinsics.a.e();
                int i2 = this.label;
                if (i2 == 0) {
                    kotlin.e.b(obj);
                    Function3 function3 = this.this$0.f51696f;
                    InterfaceC1640d interfaceC1640d = this.$collector;
                    Object obj2 = this.$value;
                    this.label = 1;
                    if (function3.invoke(interfaceC1640d, obj2, this) == objE) {
                        return objE;
                    }
                } else {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.e.b(obj);
                }
                return kotlin.j.f51397a;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(M m2, kotlin.coroutines.e eVar) {
                return ((AnonymousClass2) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
            }
        }

        public AnonymousClass1(Ref$ObjectRef ref$ObjectRef, M m2, ChannelFlowTransformLatest channelFlowTransformLatest, InterfaceC1640d interfaceC1640d) {
            this.f51697b = ref$ObjectRef;
            this.f51698c = m2;
            this.f51699d = channelFlowTransformLatest;
            this.f51700e = interfaceC1640d;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /* JADX WARN: Type inference failed for: r8v2, types: [T, kotlinx.coroutines.u0] */
        @Override // kotlinx.coroutines.flow.InterfaceC1640d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.e r9) throws java.lang.Throwable {
            /*
                r7 = this;
                boolean r0 = r9 instanceof kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1
                if (r0 == 0) goto L13
                r0 = r9
                kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1 r0 = (kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1 r0 = new kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1
                r0.<init>(r7, r9)
            L18:
                java.lang.Object r9 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L3b
                if (r2 != r3) goto L33
                java.lang.Object r8 = r0.L$2
                kotlinx.coroutines.u0 r8 = (kotlinx.coroutines.InterfaceC1705u0) r8
                java.lang.Object r8 = r0.L$1
                java.lang.Object r0 = r0.L$0
                kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1 r0 = (kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3.AnonymousClass1) r0
                kotlin.e.b(r9)
                goto L5e
            L33:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L3b:
                kotlin.e.b(r9)
                kotlin.jvm.internal.Ref$ObjectRef r9 = r7.f51697b
                T r9 = r9.element
                kotlinx.coroutines.u0 r9 = (kotlinx.coroutines.InterfaceC1705u0) r9
                if (r9 == 0) goto L5d
                kotlinx.coroutines.flow.internal.ChildCancelledException r2 = new kotlinx.coroutines.flow.internal.ChildCancelledException
                r2.<init>()
                r9.a(r2)
                r0.L$0 = r7
                r0.L$1 = r8
                r0.L$2 = r9
                r0.label = r3
                java.lang.Object r9 = r9.A(r0)
                if (r9 != r1) goto L5d
                return r1
            L5d:
                r0 = r7
            L5e:
                kotlin.jvm.internal.Ref$ObjectRef r9 = r0.f51697b
                kotlinx.coroutines.M r1 = r0.f51698c
                kotlinx.coroutines.CoroutineStart r3 = kotlinx.coroutines.CoroutineStart.UNDISPATCHED
                kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2 r4 = new kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2
                kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest r2 = r0.f51699d
                kotlinx.coroutines.flow.d r0 = r0.f51700e
                r5 = 0
                r4.<init>(r2, r0, r8, r5)
                r5 = 1
                r6 = 0
                r2 = 0
                kotlinx.coroutines.u0 r8 = kotlinx.coroutines.AbstractC1662g.b(r1, r2, r3, r4, r5, r6)
                r9.element = r8
                kotlin.j r8 = kotlin.j.f51397a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3.AnonymousClass1.emit(java.lang.Object, kotlin.coroutines.e):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlowTransformLatest$flowCollect$3(ChannelFlowTransformLatest channelFlowTransformLatest, InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.this$0 = channelFlowTransformLatest;
        this.$collector = interfaceC1640d;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        ChannelFlowTransformLatest$flowCollect$3 channelFlowTransformLatest$flowCollect$3 = new ChannelFlowTransformLatest$flowCollect$3(this.this$0, this.$collector, eVar);
        channelFlowTransformLatest$flowCollect$3.L$0 = obj;
        return channelFlowTransformLatest$flowCollect$3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            M m2 = (M) this.L$0;
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ChannelFlowTransformLatest channelFlowTransformLatest = this.this$0;
            InterfaceC1639c interfaceC1639c = channelFlowTransformLatest.f51695e;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$ObjectRef, m2, channelFlowTransformLatest, this.$collector);
            this.label = 1;
            if (interfaceC1639c.collect(anonymousClass1, this) == objE) {
                return objE;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
        }
        return kotlin.j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(M m2, kotlin.coroutines.e eVar) {
        return ((ChannelFlowTransformLatest$flowCollect$3) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
