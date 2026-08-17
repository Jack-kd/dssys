package kotlinx.coroutines.flow.internal;

import com.bykv.vk.component.ttvideo.ILivePlayer;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.M;
import kotlinx.coroutines.channels.s;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {ILivePlayer.LIVE_DATALOADER_RW_TIMEOUT, 73, 76}, m = "invokeSuspend", n = {"latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1"})
/* loaded from: classes5.dex */
public final class CombineKt$combineInternal$2 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
    final /* synthetic */ Function0<Object[]> $arrayFactory;
    final /* synthetic */ InterfaceC1639c[] $flows;
    final /* synthetic */ InterfaceC1640d $this_combineInternal;
    final /* synthetic */ Function3<InterfaceC1640d, Object[], kotlin.coroutines.e, Object> $transform;
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ InterfaceC1639c[] $flows;
        final /* synthetic */ int $i;
        final /* synthetic */ AtomicInteger $nonClosed;
        final /* synthetic */ kotlinx.coroutines.channels.g $resultChannel;
        int label;

        /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C08751 implements InterfaceC1640d {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ kotlinx.coroutines.channels.g f51701b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ int f51702c;

            public C08751(kotlinx.coroutines.channels.g gVar, int i2) {
                this.f51701b = gVar;
                this.f51702c = i2;
            }

            /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
            
                if (kotlinx.coroutines.W0.a(r0) == r1) goto L21;
             */
            /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.InterfaceC1640d
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.e r8) throws java.lang.Throwable {
                /*
                    r6 = this;
                    boolean r0 = r8 instanceof kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1
                    if (r0 == 0) goto L13
                    r0 = r8
                    kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1 r0 = (kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1 r0 = new kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1
                    r0.<init>(r6, r8)
                L18:
                    java.lang.Object r8 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                    int r2 = r0.label
                    r3 = 2
                    r4 = 1
                    if (r2 == 0) goto L38
                    if (r2 == r4) goto L34
                    if (r2 != r3) goto L2c
                    kotlin.e.b(r8)
                    goto L56
                L2c:
                    java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                    java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                    r7.<init>(r8)
                    throw r7
                L34:
                    kotlin.e.b(r8)
                    goto L4d
                L38:
                    kotlin.e.b(r8)
                    kotlinx.coroutines.channels.g r8 = r6.f51701b
                    kotlin.collections.A r2 = new kotlin.collections.A
                    int r5 = r6.f51702c
                    r2.<init>(r5, r7)
                    r0.label = r4
                    java.lang.Object r7 = r8.E(r2, r0)
                    if (r7 != r1) goto L4d
                    goto L55
                L4d:
                    r0.label = r3
                    java.lang.Object r7 = kotlinx.coroutines.W0.a(r0)
                    if (r7 != r1) goto L56
                L55:
                    return r1
                L56:
                    kotlin.j r7 = kotlin.j.f51397a
                    return r7
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.AnonymousClass1.C08751.emit(java.lang.Object, kotlin.coroutines.e):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(InterfaceC1639c[] interfaceC1639cArr, int i2, AtomicInteger atomicInteger, kotlinx.coroutines.channels.g gVar, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$flows = interfaceC1639cArr;
            this.$i = i2;
            this.$nonClosed = atomicInteger;
            this.$resultChannel = gVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            return new AnonymousClass1(this.$flows, this.$i, this.$nonClosed, this.$resultChannel, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            AtomicInteger atomicInteger;
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            try {
                if (i2 == 0) {
                    kotlin.e.b(obj);
                    InterfaceC1639c[] interfaceC1639cArr = this.$flows;
                    int i3 = this.$i;
                    InterfaceC1639c interfaceC1639c = interfaceC1639cArr[i3];
                    C08751 c08751 = new C08751(this.$resultChannel, i3);
                    this.label = 1;
                    if (interfaceC1639c.collect(c08751, this) == objE) {
                        return objE;
                    }
                } else {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.e.b(obj);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    s.a.a(this.$resultChannel, null, 1, null);
                }
                return kotlin.j.f51397a;
            } finally {
                if (this.$nonClosed.decrementAndGet() == 0) {
                    s.a.a(this.$resultChannel, null, 1, null);
                }
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(M m2, kotlin.coroutines.e eVar) {
            return ((AnonymousClass1) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CombineKt$combineInternal$2(InterfaceC1639c[] interfaceC1639cArr, Function0<Object[]> function0, Function3<? super InterfaceC1640d, ? super Object[], ? super kotlin.coroutines.e, ? extends Object> function3, InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        super(2, eVar);
        this.$flows = interfaceC1639cArr;
        this.$arrayFactory = function0;
        this.$transform = function3;
        this.$this_combineInternal = interfaceC1640d;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(this.$flows, this.$arrayFactory, this.$transform, this.$this_combineInternal, eVar);
        combineKt$combineInternal$2.L$0 = obj;
        return combineKt$combineInternal$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0106, code lost:
    
        if (r10.invoke(r11, r9, r21) == r1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0126, code lost:
    
        if (r11.invoke(r12, r10, r21) == r1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0129, code lost:
    
        if (r6 != 0) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c1 A[LOOP:0: B:28:0x00c1->B:47:?, LOOP_START, PHI: r6 r10
      0x00c1: PHI (r6v4 int) = (r6v3 int), (r6v5 int) binds: [B:25:0x00bc, B:47:?] A[DONT_GENERATE, DONT_INLINE]
      0x00c1: PHI (r10v5 kotlin.collections.A) = (r10v4 kotlin.collections.A), (r10v12 kotlin.collections.A) binds: [B:25:0x00bc, B:47:?] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e8  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0106 -> B:44:0x0129). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0126 -> B:44:0x0129). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(M m2, kotlin.coroutines.e eVar) {
        return ((CombineKt$combineInternal$2) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
    }
}
