package kotlinx.coroutines.flow.internal;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.y;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.M;
import kotlinx.coroutines.N;
import kotlinx.coroutines.O;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.AbstractC1641e;
import kotlinx.coroutines.flow.InterfaceC1640d;

/* loaded from: classes5.dex */
public abstract class ChannelFlow implements k {

    /* renamed from: b, reason: collision with root package name */
    public final kotlin.coroutines.i f51692b;

    /* renamed from: c, reason: collision with root package name */
    public final int f51693c;

    /* renamed from: d, reason: collision with root package name */
    public final BufferOverflow f51694d;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {2, 0, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", i = {}, l = {119}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.internal.ChannelFlow$collect$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ InterfaceC1640d $collector;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ ChannelFlow this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(InterfaceC1640d interfaceC1640d, ChannelFlow channelFlow, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$collector = interfaceC1640d;
            this.this$0 = channelFlow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$collector, this.this$0, eVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                M m2 = (M) this.L$0;
                InterfaceC1640d interfaceC1640d = this.$collector;
                ReceiveChannel receiveChannelL = this.this$0.l(m2);
                this.label = 1;
                if (AbstractC1641e.n(interfaceC1640d, receiveChannelL, this) == objE) {
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

    public ChannelFlow(kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        this.f51692b = iVar;
        this.f51693c = i2;
        this.f51694d = bufferOverflow;
    }

    public static /* synthetic */ Object g(ChannelFlow channelFlow, InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        Object objB = N.b(new AnonymousClass2(interfaceC1640d, channelFlow, null), eVar);
        return objB == kotlin.coroutines.intrinsics.a.e() ? objB : kotlin.j.f51397a;
    }

    @Override // kotlinx.coroutines.flow.InterfaceC1639c
    public Object collect(InterfaceC1640d interfaceC1640d, kotlin.coroutines.e eVar) {
        return g(this, interfaceC1640d, eVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0013  */
    @Override // kotlinx.coroutines.flow.internal.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public kotlinx.coroutines.flow.InterfaceC1639c d(kotlin.coroutines.i r2, int r3, kotlinx.coroutines.channels.BufferOverflow r4) {
        /*
            r1 = this;
            kotlin.coroutines.i r0 = r1.f51692b
            kotlin.coroutines.i r2 = r2.plus(r0)
            kotlinx.coroutines.channels.BufferOverflow r0 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            if (r4 == r0) goto Lb
            goto L25
        Lb:
            int r4 = r1.f51693c
            r0 = -3
            if (r4 != r0) goto L11
            goto L23
        L11:
            if (r3 != r0) goto L15
        L13:
            r3 = r4
            goto L23
        L15:
            r0 = -2
            if (r4 != r0) goto L19
            goto L23
        L19:
            if (r3 != r0) goto L1c
            goto L13
        L1c:
            int r3 = r3 + r4
            if (r3 < 0) goto L20
            goto L23
        L20:
            r3 = 2147483647(0x7fffffff, float:NaN)
        L23:
            kotlinx.coroutines.channels.BufferOverflow r4 = r1.f51694d
        L25:
            kotlin.coroutines.i r0 = r1.f51692b
            boolean r0 = kotlin.jvm.internal.j.a(r2, r0)
            if (r0 == 0) goto L36
            int r0 = r1.f51693c
            if (r3 != r0) goto L36
            kotlinx.coroutines.channels.BufferOverflow r0 = r1.f51694d
            if (r4 != r0) goto L36
            return r1
        L36:
            kotlinx.coroutines.flow.internal.ChannelFlow r2 = r1.i(r2, r3, r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.ChannelFlow.d(kotlin.coroutines.i, int, kotlinx.coroutines.channels.BufferOverflow):kotlinx.coroutines.flow.c");
    }

    public String f() {
        return null;
    }

    public abstract Object h(kotlinx.coroutines.channels.q qVar, kotlin.coroutines.e eVar);

    public abstract ChannelFlow i(kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow);

    public final Function2 j() {
        return new ChannelFlow$collectToFun$1(this, null);
    }

    public final int k() {
        int i2 = this.f51693c;
        if (i2 == -3) {
            return -2;
        }
        return i2;
    }

    public ReceiveChannel l(M m2) {
        return ProduceKt.e(m2, this.f51692b, k(), this.f51694d, CoroutineStart.ATOMIC, null, j(), 16, null);
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String strF = f();
        if (strF != null) {
            arrayList.add(strF);
        }
        if (this.f51692b != EmptyCoroutineContext.INSTANCE) {
            arrayList.add("context=" + this.f51692b);
        }
        if (this.f51693c != -3) {
            arrayList.add("capacity=" + this.f51693c);
        }
        if (this.f51694d != BufferOverflow.SUSPEND) {
            arrayList.add("onBufferOverflow=" + this.f51694d);
        }
        return O.a(this) + '[' + y.Q(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
