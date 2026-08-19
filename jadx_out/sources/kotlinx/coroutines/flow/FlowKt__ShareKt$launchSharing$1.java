package kotlinx.coroutines.flow;

import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import w1.AbstractC1791a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", i = {}, l = {210, 214, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_QCOM_LOW_LATENCY, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements Function2<kotlinx.coroutines.M, kotlin.coroutines.e, Object> {
    final /* synthetic */ Object $initialValue;
    final /* synthetic */ i0 $shared;
    final /* synthetic */ p0 $started;
    final /* synthetic */ InterfaceC1639c $upstream;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, kotlin.coroutines.e, Object> {
        /* synthetic */ int I$0;
        int label;

        public AnonymousClass1(kotlin.coroutines.e eVar) {
            super(2, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(eVar);
            anonymousClass1.I$0 = ((Number) obj).intValue();
            return anonymousClass1;
        }

        public final Object invoke(int i2, kotlin.coroutines.e eVar) {
            return ((AnonymousClass1) create(Integer.valueOf(i2), eVar)).invokeSuspend(kotlin.j.f51397a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.a.e();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.e.b(obj);
            return AbstractC1791a.a(this.I$0 > 0);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Integer num, kotlin.coroutines.e eVar) {
            return invoke(num.intValue(), eVar);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0015\u0010\u0004\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/SharingCommand;", "Lkotlin/ParameterName;", "name", f.a.f3244d, "it", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/flow/SharingCommand;)V"}, k = 3, mv = {2, 0, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_OUTPUT_LOG}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<SharingCommand, kotlin.coroutines.e, Object> {
        final /* synthetic */ Object $initialValue;
        final /* synthetic */ i0 $shared;
        final /* synthetic */ InterfaceC1639c $upstream;
        /* synthetic */ Object L$0;
        int label;

        /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2$a */
        public /* synthetic */ class a {

            /* renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f51667a;

            static {
                int[] iArr = new int[SharingCommand.values().length];
                try {
                    iArr[SharingCommand.START.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SharingCommand.STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SharingCommand.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f51667a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(InterfaceC1639c interfaceC1639c, i0 i0Var, Object obj, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$upstream = interfaceC1639c;
            this.$shared = i0Var;
            this.$initialValue = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$upstream, this.$shared, this.$initialValue, eVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                int i3 = a.f51667a[((SharingCommand) this.L$0).ordinal()];
                if (i3 == 1) {
                    InterfaceC1639c interfaceC1639c = this.$upstream;
                    i0 i0Var = this.$shared;
                    this.label = 1;
                    if (interfaceC1639c.collect(i0Var, this) == objE) {
                        return objE;
                    }
                } else if (i3 != 2) {
                    if (i3 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Object obj2 = this.$initialValue;
                    if (obj2 == n0.f51735a) {
                        this.$shared.b();
                    } else {
                        AbstractC1791a.a(this.$shared.c(obj2));
                    }
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
        public final Object invoke(SharingCommand sharingCommand, kotlin.coroutines.e eVar) {
            return ((AnonymousClass2) create(sharingCommand, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ShareKt$launchSharing$1(p0 p0Var, InterfaceC1639c interfaceC1639c, i0 i0Var, Object obj, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$started = p0Var;
        this.$upstream = interfaceC1639c;
        this.$shared = i0Var;
        this.$initialValue = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        return new FlowKt__ShareKt$launchSharing$1(this.$started, this.$upstream, this.$shared, this.$initialValue, eVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003c, code lost:
    
        if (r8.collect(r1, r7) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
    
        if (r8.collect(r1, r7) != r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008a, code lost:
    
        if (kotlinx.coroutines.flow.AbstractC1641e.h(r8, r1, r7) == r0) goto L28;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) throws java.lang.Throwable {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.e()
            int r1 = r7.label
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L25
            if (r1 == r5) goto L21
            if (r1 == r4) goto L1d
            if (r1 == r3) goto L21
            if (r1 != r2) goto L15
            goto L21
        L15:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1d:
            kotlin.e.b(r8)
            goto L5c
        L21:
            kotlin.e.b(r8)
            goto L8d
        L25:
            kotlin.e.b(r8)
            kotlinx.coroutines.flow.p0 r8 = r7.$started
            kotlinx.coroutines.flow.p0$a r1 = kotlinx.coroutines.flow.p0.f51739a
            kotlinx.coroutines.flow.p0 r6 = r1.a()
            if (r8 != r6) goto L3f
            kotlinx.coroutines.flow.c r8 = r7.$upstream
            kotlinx.coroutines.flow.i0 r1 = r7.$shared
            r7.label = r5
            java.lang.Object r8 = r8.collect(r1, r7)
            if (r8 != r0) goto L8d
            goto L8c
        L3f:
            kotlinx.coroutines.flow.p0 r8 = r7.$started
            kotlinx.coroutines.flow.p0 r1 = r1.b()
            r5 = 0
            if (r8 != r1) goto L69
            kotlinx.coroutines.flow.i0 r8 = r7.$shared
            kotlinx.coroutines.flow.s0 r8 = r8.e()
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1 r1 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1
            r1.<init>(r5)
            r7.label = r4
            java.lang.Object r8 = kotlinx.coroutines.flow.AbstractC1641e.r(r8, r1, r7)
            if (r8 != r0) goto L5c
            goto L8c
        L5c:
            kotlinx.coroutines.flow.c r8 = r7.$upstream
            kotlinx.coroutines.flow.i0 r1 = r7.$shared
            r7.label = r3
            java.lang.Object r8 = r8.collect(r1, r7)
            if (r8 != r0) goto L8d
            goto L8c
        L69:
            kotlinx.coroutines.flow.p0 r8 = r7.$started
            kotlinx.coroutines.flow.i0 r1 = r7.$shared
            kotlinx.coroutines.flow.s0 r1 = r1.e()
            kotlinx.coroutines.flow.c r8 = r8.a(r1)
            kotlinx.coroutines.flow.c r8 = kotlinx.coroutines.flow.AbstractC1641e.l(r8)
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2 r1 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2
            kotlinx.coroutines.flow.c r3 = r7.$upstream
            kotlinx.coroutines.flow.i0 r4 = r7.$shared
            java.lang.Object r6 = r7.$initialValue
            r1.<init>(r3, r4, r6, r5)
            r7.label = r2
            java.lang.Object r8 = kotlinx.coroutines.flow.AbstractC1641e.h(r8, r1, r7)
            if (r8 != r0) goto L8d
        L8c:
            return r0
        L8d:
            kotlin.j r8 = kotlin.j.f51397a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.M m2, kotlin.coroutines.e eVar) {
        return ((FlowKt__ShareKt$launchSharing$1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
