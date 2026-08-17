package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InterfaceC1711y;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.M;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;
import kotlinx.coroutines.internal.I;
import okhttp3.internal.ws.WebSocketProtocol;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1", f = "Combine.kt", i = {0, 0}, l = {123}, m = "invokeSuspend", n = {"second", "collectJob"}, s = {"L$0", "L$1"})
/* loaded from: classes5.dex */
final class CombineKt$zipImpl$1$1 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
    final /* synthetic */ InterfaceC1639c $flow;
    final /* synthetic */ InterfaceC1639c $flow2;
    final /* synthetic */ InterfaceC1640d $this_unsafeFlow;
    final /* synthetic */ Function3<Object, Object, kotlin.coroutines.e, Object> $transform;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlin/j;", "it", "<anonymous>", "(V)V"}, k = 3, mv = {2, 0, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2", f = "Combine.kt", i = {}, l = {124}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlin.j, kotlin.coroutines.e, Object> {
        final /* synthetic */ Object $cnt;
        final /* synthetic */ InterfaceC1711y $collectJob;
        final /* synthetic */ InterfaceC1639c $flow;
        final /* synthetic */ kotlin.coroutines.i $scopeContext;
        final /* synthetic */ ReceiveChannel $second;
        final /* synthetic */ InterfaceC1640d $this_unsafeFlow;
        final /* synthetic */ Function3<Object, Object, kotlin.coroutines.e, Object> $transform;
        int label;

        /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1, reason: invalid class name */
        public static final class AnonymousClass1 implements InterfaceC1640d {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ kotlin.coroutines.i f51703b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Object f51704c;

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ ReceiveChannel f51705d;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ InterfaceC1640d f51706e;

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ Function3 f51707f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ InterfaceC1711y f51708g;

            @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlin/j;", "it", "<anonymous>", "(V)V"}, k = 3, mv = {2, 0, 0})
            @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1", f = "Combine.kt", i = {}, l = {WebSocketProtocol.PAYLOAD_SHORT, 129, 129}, m = "invokeSuspend", n = {}, s = {})
            @SourceDebugExtension({"SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,140:1\n516#2:141\n14#3:142\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n*L\n126#1:141\n129#1:142\n*E\n"})
            /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1, reason: invalid class name and collision with other inner class name */
            public static final class C08761 extends SuspendLambda implements Function2<kotlin.j, kotlin.coroutines.e, Object> {
                final /* synthetic */ InterfaceC1711y $collectJob;
                final /* synthetic */ ReceiveChannel $second;
                final /* synthetic */ InterfaceC1640d $this_unsafeFlow;
                final /* synthetic */ Function3<Object, Object, kotlin.coroutines.e, Object> $transform;
                final /* synthetic */ Object $value;
                Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C08761(ReceiveChannel receiveChannel, InterfaceC1640d interfaceC1640d, Function3<Object, Object, ? super kotlin.coroutines.e, ? extends Object> function3, Object obj, InterfaceC1711y interfaceC1711y, kotlin.coroutines.e eVar) {
                    super(2, eVar);
                    this.$second = receiveChannel;
                    this.$this_unsafeFlow = interfaceC1640d;
                    this.$transform = function3;
                    this.$value = obj;
                    this.$collectJob = interfaceC1711y;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
                    return new C08761(this.$second, this.$this_unsafeFlow, this.$transform, this.$value, this.$collectJob, eVar);
                }

                /* JADX WARN: Code restructure failed: missing block: B:28:0x006e, code lost:
                
                    if (r1.emit(r9, r8) != r0) goto L30;
                 */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.lang.Throwable {
                    /*
                        r8 = this;
                        java.lang.Object r0 = kotlin.coroutines.intrinsics.a.e()
                        int r1 = r8.label
                        r2 = 0
                        r3 = 3
                        r4 = 2
                        r5 = 1
                        if (r1 == 0) goto L30
                        if (r1 == r5) goto L26
                        if (r1 == r4) goto L1e
                        if (r1 != r3) goto L16
                        kotlin.e.b(r9)
                        goto L71
                    L16:
                        java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                        java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                        r9.<init>(r0)
                        throw r9
                    L1e:
                        java.lang.Object r1 = r8.L$0
                        kotlinx.coroutines.flow.d r1 = (kotlinx.coroutines.flow.InterfaceC1640d) r1
                        kotlin.e.b(r9)
                        goto L66
                    L26:
                        kotlin.e.b(r9)
                        kotlinx.coroutines.channels.j r9 = (kotlinx.coroutines.channels.j) r9
                        java.lang.Object r9 = r9.k()
                        goto L3e
                    L30:
                        kotlin.e.b(r9)
                        kotlinx.coroutines.channels.ReceiveChannel r9 = r8.$second
                        r8.label = r5
                        java.lang.Object r9 = r9.p(r8)
                        if (r9 != r0) goto L3e
                        goto L70
                    L3e:
                        kotlinx.coroutines.y r1 = r8.$collectJob
                        boolean r5 = r9 instanceof kotlinx.coroutines.channels.j.c
                        if (r5 == 0) goto L50
                        java.lang.Throwable r9 = kotlinx.coroutines.channels.j.e(r9)
                        if (r9 != 0) goto L4f
                        kotlinx.coroutines.flow.internal.AbortFlowException r9 = new kotlinx.coroutines.flow.internal.AbortFlowException
                        r9.<init>(r1)
                    L4f:
                        throw r9
                    L50:
                        kotlinx.coroutines.flow.d r1 = r8.$this_unsafeFlow
                        kotlin.jvm.functions.Function3<java.lang.Object, java.lang.Object, kotlin.coroutines.e, java.lang.Object> r5 = r8.$transform
                        java.lang.Object r6 = r8.$value
                        kotlinx.coroutines.internal.B r7 = kotlinx.coroutines.flow.internal.n.f51725a
                        if (r9 != r7) goto L5b
                        r9 = r2
                    L5b:
                        r8.L$0 = r1
                        r8.label = r4
                        java.lang.Object r9 = r5.invoke(r6, r9, r8)
                        if (r9 != r0) goto L66
                        goto L70
                    L66:
                        r8.L$0 = r2
                        r8.label = r3
                        java.lang.Object r9 = r1.emit(r9, r8)
                        if (r9 != r0) goto L71
                    L70:
                        return r0
                    L71:
                        kotlin.j r9 = kotlin.j.f51397a
                        return r9
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1.AnonymousClass2.AnonymousClass1.C08761.invokeSuspend(java.lang.Object):java.lang.Object");
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(kotlin.j jVar, kotlin.coroutines.e eVar) {
                    return ((C08761) create(jVar, eVar)).invokeSuspend(kotlin.j.f51397a);
                }
            }

            public AnonymousClass1(kotlin.coroutines.i iVar, Object obj, ReceiveChannel receiveChannel, InterfaceC1640d interfaceC1640d, Function3 function3, InterfaceC1711y interfaceC1711y) {
                this.f51703b = iVar;
                this.f51704c = obj;
                this.f51705d = receiveChannel;
                this.f51706e = interfaceC1640d;
                this.f51707f = function3;
                this.f51708g = interfaceC1711y;
            }

            /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.InterfaceC1640d
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(java.lang.Object r13, kotlin.coroutines.e r14) throws java.lang.Throwable {
                /*
                    r12 = this;
                    boolean r0 = r14 instanceof kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$emit$1
                    if (r0 == 0) goto L13
                    r0 = r14
                    kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$emit$1 r0 = (kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$emit$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$emit$1 r0 = new kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$emit$1
                    r0.<init>(r12, r14)
                L18:
                    java.lang.Object r14 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                    int r2 = r0.label
                    r3 = 1
                    if (r2 == 0) goto L31
                    if (r2 != r3) goto L29
                    kotlin.e.b(r14)
                    goto L52
                L29:
                    java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                    java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
                    r13.<init>(r14)
                    throw r13
                L31:
                    kotlin.e.b(r14)
                    kotlin.coroutines.i r14 = r12.f51703b
                    kotlin.j r2 = kotlin.j.f51397a
                    java.lang.Object r4 = r12.f51704c
                    kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1 r5 = new kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1
                    kotlinx.coroutines.channels.ReceiveChannel r6 = r12.f51705d
                    kotlinx.coroutines.flow.d r7 = r12.f51706e
                    kotlin.jvm.functions.Function3 r8 = r12.f51707f
                    kotlinx.coroutines.y r10 = r12.f51708g
                    r11 = 0
                    r9 = r13
                    r5.<init>(r6, r7, r8, r9, r10, r11)
                    r0.label = r3
                    java.lang.Object r13 = kotlinx.coroutines.flow.internal.d.c(r14, r2, r4, r5, r0)
                    if (r13 != r1) goto L52
                    return r1
                L52:
                    kotlin.j r13 = kotlin.j.f51397a
                    return r13
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1.AnonymousClass2.AnonymousClass1.emit(java.lang.Object, kotlin.coroutines.e):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(InterfaceC1639c interfaceC1639c, kotlin.coroutines.i iVar, Object obj, ReceiveChannel receiveChannel, InterfaceC1640d interfaceC1640d, Function3<Object, Object, ? super kotlin.coroutines.e, ? extends Object> function3, InterfaceC1711y interfaceC1711y, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$flow = interfaceC1639c;
            this.$scopeContext = iVar;
            this.$cnt = obj;
            this.$second = receiveChannel;
            this.$this_unsafeFlow = interfaceC1640d;
            this.$transform = function3;
            this.$collectJob = interfaceC1711y;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return new AnonymousClass2(this.$flow, this.$scopeContext, this.$cnt, this.$second, this.$this_unsafeFlow, this.$transform, this.$collectJob, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                InterfaceC1639c interfaceC1639c = this.$flow;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scopeContext, this.$cnt, this.$second, this.$this_unsafeFlow, this.$transform, this.$collectJob);
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
        public final Object invoke(kotlin.j jVar, kotlin.coroutines.e eVar) {
            return ((AnonymousClass2) create(jVar, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    public static final class a implements Function1 {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InterfaceC1711y f51709b;

        public a(InterfaceC1711y interfaceC1711y) {
            this.f51709b = interfaceC1711y;
        }

        public final void a(Throwable th) {
            if (this.f51709b.isActive()) {
                this.f51709b.a(new AbortFlowException(this.f51709b));
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Throwable) obj);
            return kotlin.j.f51397a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CombineKt$zipImpl$1$1(InterfaceC1639c interfaceC1639c, InterfaceC1639c interfaceC1639c2, InterfaceC1640d interfaceC1640d, Function3<Object, Object, ? super kotlin.coroutines.e, ? extends Object> function3, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$flow2 = interfaceC1639c;
        this.$flow = interfaceC1639c2;
        this.$this_unsafeFlow = interfaceC1640d;
        this.$transform = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        CombineKt$zipImpl$1$1 combineKt$zipImpl$1$1 = new CombineKt$zipImpl$1$1(this.$flow2, this.$flow, this.$this_unsafeFlow, this.$transform, eVar);
        combineKt$zipImpl$1$1.L$0 = obj;
        return combineKt$zipImpl$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ReceiveChannel receiveChannel;
        InterfaceC1711y interfaceC1711y;
        ReceiveChannel receiveChannel2;
        InterfaceC1711y interfaceC1711y2;
        kotlin.j jVar;
        AnonymousClass2 anonymousClass2;
        Object objE = kotlin.coroutines.intrinsics.a.e();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.e.b(obj);
            M m2 = (M) this.L$0;
            ReceiveChannel receiveChannelD = ProduceKt.d(m2, null, 0, new CombineKt$zipImpl$1$1$second$1(this.$flow2, null), 3, null);
            InterfaceC1711y interfaceC1711yB = JobKt__JobKt.b(null, 1, null);
            kotlin.jvm.internal.j.c(receiveChannelD, "null cannot be cast to non-null type kotlinx.coroutines.channels.SendChannel<*>");
            ((kotlinx.coroutines.channels.s) receiveChannelD).k(new a(interfaceC1711yB));
            try {
                kotlin.coroutines.i coroutineContext = m2.getCoroutineContext();
                Object objG = I.g(coroutineContext);
                kotlin.coroutines.i iVarPlus = m2.getCoroutineContext().plus(interfaceC1711yB);
                try {
                    try {
                        jVar = kotlin.j.f51397a;
                        try {
                            anonymousClass2 = new AnonymousClass2(this.$flow, coroutineContext, objG, receiveChannelD, this.$this_unsafeFlow, this.$transform, interfaceC1711yB, null);
                            receiveChannel = receiveChannelD;
                            interfaceC1711y = interfaceC1711yB;
                        } catch (AbortFlowException e2) {
                            e = e2;
                            receiveChannel = receiveChannelD;
                            interfaceC1711y = interfaceC1711yB;
                        }
                    } catch (Throwable th) {
                        th = th;
                        receiveChannel = receiveChannelD;
                    }
                } catch (AbortFlowException e3) {
                    e = e3;
                    interfaceC1711y = interfaceC1711yB;
                    receiveChannel = receiveChannelD;
                }
                try {
                    this.L$0 = receiveChannel;
                    this.L$1 = interfaceC1711y;
                    this.label = 1;
                    if (d.d(iVarPlus, jVar, null, anonymousClass2, this, 4, null) == objE) {
                        return objE;
                    }
                    receiveChannel2 = receiveChannel;
                } catch (AbortFlowException e4) {
                    e = e4;
                    interfaceC1711y2 = interfaceC1711y;
                    receiveChannel2 = receiveChannel;
                    j.a(e, interfaceC1711y2);
                    ReceiveChannel.DefaultImpls.a(receiveChannel2, null, 1, null);
                    return kotlin.j.f51397a;
                } catch (Throwable th2) {
                    th = th2;
                    receiveChannel2 = receiveChannel;
                    ReceiveChannel.DefaultImpls.a(receiveChannel2, null, 1, null);
                    throw th;
                }
            } catch (AbortFlowException e5) {
                e = e5;
                receiveChannel = receiveChannelD;
                interfaceC1711y = interfaceC1711yB;
            } catch (Throwable th3) {
                th = th3;
                receiveChannel = receiveChannelD;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            interfaceC1711y2 = (InterfaceC1711y) this.L$1;
            receiveChannel2 = (ReceiveChannel) this.L$0;
            try {
                try {
                    kotlin.e.b(obj);
                } catch (AbortFlowException e6) {
                    e = e6;
                    j.a(e, interfaceC1711y2);
                    ReceiveChannel.DefaultImpls.a(receiveChannel2, null, 1, null);
                    return kotlin.j.f51397a;
                }
            } catch (Throwable th4) {
                th = th4;
                ReceiveChannel.DefaultImpls.a(receiveChannel2, null, 1, null);
                throw th;
            }
        }
        ReceiveChannel.DefaultImpls.a(receiveChannel2, null, 1, null);
        return kotlin.j.f51397a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(M m2, kotlin.coroutines.e eVar) {
        return ((CombineKt$zipImpl$1$1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
