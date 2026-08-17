package androidx.view;

import androidx.annotation.RequiresApi;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.exifinterface.media.ExifInterface;
import androidx.room.RoomTrackingLiveData;
import com.umeng.analytics.pro.g;
import java.time.Duration;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.e;
import kotlin.coroutines.i;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.M;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.flow.AbstractC1641e;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;
import kotlinx.coroutines.flow.s0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a9\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a#\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\t\u0010\n\u001a7\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u000e"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/c;", "Lkotlin/coroutines/i;", g.f49337X, "", "timeoutInMs", "Landroidx/lifecycle/LiveData;", "asLiveData", "(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/i;J)Landroidx/lifecycle/LiveData;", "asFlow", "(Landroidx/lifecycle/LiveData;)Lkotlinx/coroutines/flow/c;", "Ljava/time/Duration;", "timeout", "(Lkotlinx/coroutines/flow/c;Ljava/time/Duration;Lkotlin/coroutines/i;)Landroidx/lifecycle/LiveData;", "lifecycle-livedata_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "FlowLiveDataConversions")
/* loaded from: classes.dex */
public final class FlowLiveDataConversions {

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/q;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/channels/q;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1", f = "FlowLiveData.kt", i = {0, 0}, l = {112, 116}, m = "invokeSuspend", n = {"$this$callbackFlow", "observer"}, s = {"L$0", "L$1"})
    /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<q, e, Object> {
        final /* synthetic */ LiveData<T> $this_asFlow;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1", f = "FlowLiveData.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C00241 extends SuspendLambda implements Function2<M, e, Object> {
            final /* synthetic */ Observer<T> $observer;
            final /* synthetic */ LiveData<T> $this_asFlow;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00241(LiveData<T> liveData, Observer<T> observer, e eVar) {
                super(2, eVar);
                this.$this_asFlow = liveData;
                this.$observer = observer;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final e create(@Nullable Object obj, @NotNull e eVar) {
                return new C00241(this.$this_asFlow, this.$observer, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
                a.e();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
                this.$this_asFlow.observeForever(this.$observer);
                return j.f51397a;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            public final Object invoke(@NotNull M m2, @Nullable e eVar) {
                return ((C00241) create(m2, eVar)).invokeSuspend(j.f51397a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LiveData<T> liveData, e eVar) {
            super(2, eVar);
            this.$this_asFlow = liveData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_asFlow, eVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0061, code lost:
        
            if (kotlinx.coroutines.channels.ProduceKt.a(r3, r9, r8) == r0) goto L16;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r9) throws java.lang.Throwable {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.e()
                int r1 = r8.label
                r2 = 2
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L27
                if (r1 == r3) goto L1b
                if (r1 != r2) goto L13
                kotlin.e.b(r9)
                goto L64
            L13:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L1b:
                java.lang.Object r1 = r8.L$1
                androidx.lifecycle.Observer r1 = (androidx.view.Observer) r1
                java.lang.Object r3 = r8.L$0
                kotlinx.coroutines.channels.q r3 = (kotlinx.coroutines.channels.q) r3
                kotlin.e.b(r9)
                goto L50
            L27:
                kotlin.e.b(r9)
                java.lang.Object r9 = r8.L$0
                kotlinx.coroutines.channels.q r9 = (kotlinx.coroutines.channels.q) r9
                androidx.lifecycle.d r1 = new androidx.lifecycle.d
                r1.<init>()
                kotlinx.coroutines.B0 r5 = kotlinx.coroutines.X.c()
                kotlinx.coroutines.B0 r5 = r5.C()
                androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1 r6 = new androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1
                androidx.lifecycle.LiveData<T> r7 = r8.$this_asFlow
                r6.<init>(r7, r1, r4)
                r8.L$0 = r9
                r8.L$1 = r1
                r8.label = r3
                java.lang.Object r3 = kotlinx.coroutines.AbstractC1662g.e(r5, r6, r8)
                if (r3 != r0) goto L4f
                goto L63
            L4f:
                r3 = r9
            L50:
                androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2 r9 = new androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2
                androidx.lifecycle.LiveData<T> r5 = r8.$this_asFlow
                r9.<init>()
                r8.L$0 = r4
                r8.L$1 = r4
                r8.label = r2
                java.lang.Object r9 = kotlinx.coroutines.channels.ProduceKt.a(r3, r9, r8)
                if (r9 != r0) goto L64
            L63:
                return r0
            L64:
                kotlin.j r9 = kotlin.j.f51397a
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.view.FlowLiveDataConversions.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull q qVar, @Nullable e eVar) {
            return ((AnonymousClass1) create(qVar, eVar)).invokeSuspend(j.f51397a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/LiveDataScope;", "Lkotlin/j;", "<anonymous>", "(Landroidx/lifecycle/LiveDataScope;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.lifecycle.FlowLiveDataConversions$asLiveData$1", f = "FlowLiveData.kt", i = {}, l = {81}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asLiveData$1, reason: invalid class name and case insensitive filesystem */
    public static final class C10461<T> extends SuspendLambda implements Function2<LiveDataScope<T>, e, Object> {
        final /* synthetic */ InterfaceC1639c $this_asLiveData;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10461(InterfaceC1639c interfaceC1639c, e eVar) {
            super(2, eVar);
            this.$this_asLiveData = interfaceC1639c;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            C10461 c10461 = new C10461(this.$this_asLiveData, eVar);
            c10461.L$0 = obj;
            return c10461;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull LiveDataScope<T> liveDataScope, @Nullable e eVar) {
            return ((C10461) create(liveDataScope, eVar)).invokeSuspend(j.f51397a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Object objE = a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                final LiveDataScope liveDataScope = (LiveDataScope) this.L$0;
                InterfaceC1639c interfaceC1639c = this.$this_asLiveData;
                InterfaceC1640d interfaceC1640d = new InterfaceC1640d() { // from class: androidx.lifecycle.FlowLiveDataConversions.asLiveData.1.1
                    @Override // kotlinx.coroutines.flow.InterfaceC1640d
                    @Nullable
                    public final Object emit(T t2, @NotNull e eVar) {
                        Object objEmit = liveDataScope.emit(t2, eVar);
                        return objEmit == a.e() ? objEmit : j.f51397a;
                    }
                };
                this.label = 1;
                if (interfaceC1639c.collect(interfaceC1640d, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            return j.f51397a;
        }
    }

    @NotNull
    public static final <T> InterfaceC1639c asFlow(@NotNull LiveData<T> liveData) {
        kotlin.jvm.internal.j.e(liveData, "<this>");
        return AbstractC1641e.i(AbstractC1641e.d(new AnonymousClass1(liveData, null)));
    }

    @JvmOverloads
    @NotNull
    public static final <T> LiveData<T> asLiveData(@NotNull InterfaceC1639c interfaceC1639c) {
        kotlin.jvm.internal.j.e(interfaceC1639c, "<this>");
        return asLiveData$default(interfaceC1639c, (i) null, 0L, 3, (Object) null);
    }

    public static /* synthetic */ LiveData asLiveData$default(InterfaceC1639c interfaceC1639c, i iVar, long j2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            iVar = EmptyCoroutineContext.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            j2 = 5000;
        }
        return asLiveData(interfaceC1639c, iVar, j2);
    }

    @JvmOverloads
    @NotNull
    public static final <T> LiveData<T> asLiveData(@NotNull InterfaceC1639c interfaceC1639c, @NotNull i context) {
        kotlin.jvm.internal.j.e(interfaceC1639c, "<this>");
        kotlin.jvm.internal.j.e(context, "context");
        return asLiveData$default(interfaceC1639c, context, 0L, 2, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    @NotNull
    public static final <T> LiveData<T> asLiveData(@NotNull InterfaceC1639c interfaceC1639c, @NotNull i context, long j2) {
        kotlin.jvm.internal.j.e(interfaceC1639c, "<this>");
        kotlin.jvm.internal.j.e(context, "context");
        RoomTrackingLiveData roomTrackingLiveData = (LiveData<T>) CoroutineLiveDataKt.liveData(context, j2, new C10461(interfaceC1639c, null));
        if (interfaceC1639c instanceof s0) {
            if (ArchTaskExecutor.getInstance().isMainThread()) {
                roomTrackingLiveData.setValue(((s0) interfaceC1639c).getValue());
                return roomTrackingLiveData;
            }
            roomTrackingLiveData.postValue(((s0) interfaceC1639c).getValue());
        }
        return roomTrackingLiveData;
    }

    public static /* synthetic */ LiveData asLiveData$default(InterfaceC1639c interfaceC1639c, Duration duration, i iVar, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            iVar = EmptyCoroutineContext.INSTANCE;
        }
        return asLiveData(interfaceC1639c, duration, iVar);
    }

    @RequiresApi(26)
    @NotNull
    public static final <T> LiveData<T> asLiveData(@NotNull InterfaceC1639c interfaceC1639c, @NotNull Duration timeout, @NotNull i context) {
        kotlin.jvm.internal.j.e(interfaceC1639c, "<this>");
        kotlin.jvm.internal.j.e(timeout, "timeout");
        kotlin.jvm.internal.j.e(context, "context");
        return asLiveData(interfaceC1639c, context, C1044Api26Impl.INSTANCE.toMillis(timeout));
    }
}
