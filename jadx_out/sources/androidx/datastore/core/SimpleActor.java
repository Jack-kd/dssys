package androidx.datastore.core;

import androidx.exifinterface.media.ExifInterface;
import com.umeng.commonsdk.statistics.UMErrorCode;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AbstractC1666i;
import kotlinx.coroutines.InterfaceC1705u0;
import kotlinx.coroutines.M;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import kotlinx.coroutines.channels.g;
import kotlinx.coroutines.channels.i;
import kotlinx.coroutines.channels.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002Be\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0014\u0010\b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\t\u0012\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00028\u0000¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0012R0\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0013R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroidx/datastore/core/SimpleActor;", ExifInterface.GPS_DIRECTION_TRUE, "", "Lkotlinx/coroutines/M;", "scope", "Lkotlin/Function1;", "", "Lkotlin/j;", "onComplete", "Lkotlin/Function2;", "onUndeliveredElement", "Lkotlin/coroutines/e;", "consumeMessage", "<init>", "(Lkotlinx/coroutines/M;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V", "msg", "offer", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/M;", "Lkotlin/jvm/functions/Function2;", "Lkotlinx/coroutines/channels/g;", "messageQueue", "Lkotlinx/coroutines/channels/g;", "Landroidx/datastore/core/AtomicInt;", "remainingMessages", "Landroidx/datastore/core/AtomicInt;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSimpleActor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleActor.kt\nandroidx/datastore/core/SimpleActor\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,127:1\n548#2,5:128\n*S KotlinDebug\n*F\n+ 1 SimpleActor.kt\nandroidx/datastore/core/SimpleActor\n*L\n104#1:128,5\n*E\n"})
/* loaded from: classes.dex */
public final class SimpleActor<T> {

    @NotNull
    private final Function2<T, e, Object> consumeMessage;

    @NotNull
    private final g messageQueue;

    @NotNull
    private final AtomicInt remainingMessages;

    @NotNull
    private final M scope;

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", i = {}, l = {UMErrorCode.E_UM_BE_EMPTY_URL_PATH, UMErrorCode.E_UM_BE_EMPTY_URL_PATH}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.datastore.core.SimpleActor$offer$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<M, e, Object> {
        Object L$0;
        int label;
        final /* synthetic */ SimpleActor<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(SimpleActor<T> simpleActor, e eVar) {
            super(2, eVar);
            this.this$0 = simpleActor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            return new AnonymousClass2(this.this$0, eVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
        
            if (r1.invoke(r6, r5) != r0) goto L18;
         */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0051 A[PHI: r1 r6
          0x0051: PHI (r1v1 kotlin.jvm.functions.Function2) = (r1v2 kotlin.jvm.functions.Function2), (r1v4 kotlin.jvm.functions.Function2) binds: [B:13:0x004e, B:9:0x001a] A[DONT_GENERATE, DONT_INLINE]
          0x0051: PHI (r6v5 java.lang.Object) = (r6v12 java.lang.Object), (r6v0 java.lang.Object) binds: [B:13:0x004e, B:9:0x001a] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005a -> B:18:0x005d). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) throws java.lang.Throwable {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.e()
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.e.b(r6)
                goto L5d
            L12:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1a:
                java.lang.Object r1 = r5.L$0
                kotlin.jvm.functions.Function2 r1 = (kotlin.jvm.functions.Function2) r1
                kotlin.e.b(r6)
                goto L51
            L22:
                kotlin.e.b(r6)
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                androidx.datastore.core.AtomicInt r6 = androidx.datastore.core.SimpleActor.access$getRemainingMessages$p(r6)
                int r6 = r6.get()
                if (r6 <= 0) goto L6c
            L31:
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                kotlinx.coroutines.M r6 = androidx.datastore.core.SimpleActor.access$getScope$p(r6)
                kotlinx.coroutines.N.c(r6)
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                kotlin.jvm.functions.Function2 r1 = androidx.datastore.core.SimpleActor.access$getConsumeMessage$p(r6)
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                kotlinx.coroutines.channels.g r6 = androidx.datastore.core.SimpleActor.access$getMessageQueue$p(r6)
                r5.L$0 = r1
                r5.label = r3
                java.lang.Object r6 = r6.y(r5)
                if (r6 != r0) goto L51
                goto L5c
            L51:
                r4 = 0
                r5.L$0 = r4
                r5.label = r2
                java.lang.Object r6 = r1.invoke(r6, r5)
                if (r6 != r0) goto L5d
            L5c:
                return r0
            L5d:
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                androidx.datastore.core.AtomicInt r6 = androidx.datastore.core.SimpleActor.access$getRemainingMessages$p(r6)
                int r6 = r6.decrementAndGet()
                if (r6 != 0) goto L31
                kotlin.j r6 = kotlin.j.f51397a
                return r6
            L6c:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "Check failed."
                r6.<init>(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SimpleActor.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull M m2, @Nullable e eVar) {
            return ((AnonymousClass2) create(m2, eVar)).invokeSuspend(j.f51397a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleActor(@NotNull M scope, @NotNull final Function1<? super Throwable, j> onComplete, @NotNull final Function2<? super T, ? super Throwable, j> onUndeliveredElement, @NotNull Function2<? super T, ? super e, ? extends Object> consumeMessage) {
        kotlin.jvm.internal.j.e(scope, "scope");
        kotlin.jvm.internal.j.e(onComplete, "onComplete");
        kotlin.jvm.internal.j.e(onUndeliveredElement, "onUndeliveredElement");
        kotlin.jvm.internal.j.e(consumeMessage, "consumeMessage");
        this.scope = scope;
        this.consumeMessage = consumeMessage;
        this.messageQueue = i.b(Integer.MAX_VALUE, null, null, 6, null);
        this.remainingMessages = new AtomicInt(0);
        InterfaceC1705u0 interfaceC1705u0 = (InterfaceC1705u0) scope.getCoroutineContext().get(InterfaceC1705u0.T2);
        if (interfaceC1705u0 != null) {
            interfaceC1705u0.e(new Function1<Throwable, j>() { // from class: androidx.datastore.core.SimpleActor.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ j invoke(Throwable th) {
                    invoke2(th);
                    return j.f51397a;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th) {
                    j jVar;
                    onComplete.invoke(th);
                    ((SimpleActor) this).messageQueue.C(th);
                    do {
                        Object objF = kotlinx.coroutines.channels.j.f(((SimpleActor) this).messageQueue.o());
                        if (objF != null) {
                            onUndeliveredElement.invoke(objF, th);
                            jVar = j.f51397a;
                        } else {
                            jVar = null;
                        }
                    } while (jVar != null);
                }
            });
        }
    }

    public final void offer(T msg) {
        Object objL = this.messageQueue.l(msg);
        if (objL instanceof j.a) {
            Throwable thE = kotlinx.coroutines.channels.j.e(objL);
            if (thE != null) {
                throw thE;
            }
            throw new ClosedSendChannelException("Channel was closed normally");
        }
        if (!kotlinx.coroutines.channels.j.i(objL)) {
            throw new IllegalStateException("Check failed.");
        }
        if (this.remainingMessages.getAndIncrement() == 0) {
            AbstractC1666i.b(this.scope, null, null, new AnonymousClass2(this, null), 3, null);
        }
    }
}
