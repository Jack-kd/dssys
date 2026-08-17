package androidx.view;

import androidx.exifinterface.media.ExifInterface;
import androidx.view.Lifecycle;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.M;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.channels.s;
import kotlinx.coroutines.flow.AbstractC1641e;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a5\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/c;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Landroidx/lifecycle/Lifecycle$State;", "minActiveState", "flowWithLifecycle", "(Lkotlinx/coroutines/flow/c;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Lkotlinx/coroutines/flow/c;", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FlowExtKt {

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/q;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/channels/q;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1", f = "FlowExt.kt", i = {0}, l = {91}, m = "invokeSuspend", n = {"$this$callbackFlow"}, s = {"L$0"})
    /* renamed from: androidx.lifecycle.FlowExtKt$flowWithLifecycle$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<q, e, Object> {
        final /* synthetic */ Lifecycle $lifecycle;
        final /* synthetic */ Lifecycle.State $minActiveState;
        final /* synthetic */ InterfaceC1639c $this_flowWithLifecycle;
        private /* synthetic */ Object L$0;
        int label;

        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1", f = "FlowExt.kt", i = {}, l = {92}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C00221 extends SuspendLambda implements Function2<M, e, Object> {
            final /* synthetic */ q $$this$callbackFlow;
            final /* synthetic */ InterfaceC1639c $this_flowWithLifecycle;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00221(InterfaceC1639c interfaceC1639c, q qVar, e eVar) {
                super(2, eVar);
                this.$this_flowWithLifecycle = interfaceC1639c;
                this.$$this$callbackFlow = qVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final e create(@Nullable Object obj, @NotNull e eVar) {
                return new C00221(this.$this_flowWithLifecycle, this.$$this$callbackFlow, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
                Object objE = a.e();
                int i2 = this.label;
                if (i2 == 0) {
                    kotlin.e.b(obj);
                    InterfaceC1639c interfaceC1639c = this.$this_flowWithLifecycle;
                    final q qVar = this.$$this$callbackFlow;
                    InterfaceC1640d interfaceC1640d = new InterfaceC1640d() { // from class: androidx.lifecycle.FlowExtKt.flowWithLifecycle.1.1.1
                        @Override // kotlinx.coroutines.flow.InterfaceC1640d
                        @Nullable
                        public final Object emit(T t2, @NotNull e eVar) {
                            Object objE2 = qVar.E(t2, eVar);
                            return objE2 == a.e() ? objE2 : j.f51397a;
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

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            public final Object invoke(@NotNull M m2, @Nullable e eVar) {
                return ((C00221) create(m2, eVar)).invokeSuspend(j.f51397a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, InterfaceC1639c interfaceC1639c, e eVar) {
            super(2, eVar);
            this.$lifecycle = lifecycle;
            this.$minActiveState = state;
            this.$this_flowWithLifecycle = interfaceC1639c;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$lifecycle, this.$minActiveState, this.$this_flowWithLifecycle, eVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            q qVar;
            Object objE = a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                q qVar2 = (q) this.L$0;
                Lifecycle lifecycle = this.$lifecycle;
                Lifecycle.State state = this.$minActiveState;
                C00221 c00221 = new C00221(this.$this_flowWithLifecycle, qVar2, null);
                this.L$0 = qVar2;
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycle, state, c00221, this) == objE) {
                    return objE;
                }
                qVar = qVar2;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                qVar = (q) this.L$0;
                kotlin.e.b(obj);
            }
            s.a.a(qVar, null, 1, null);
            return j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull q qVar, @Nullable e eVar) {
            return ((AnonymousClass1) create(qVar, eVar)).invokeSuspend(j.f51397a);
        }
    }

    @NotNull
    public static final <T> InterfaceC1639c flowWithLifecycle(@NotNull InterfaceC1639c interfaceC1639c, @NotNull Lifecycle lifecycle, @NotNull Lifecycle.State state) {
        return AbstractC1641e.d(new AnonymousClass1(lifecycle, state, interfaceC1639c, null));
    }

    public static /* synthetic */ InterfaceC1639c flowWithLifecycle$default(InterfaceC1639c interfaceC1639c, Lifecycle lifecycle, Lifecycle.State state, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        return flowWithLifecycle(interfaceC1639c, lifecycle, state);
    }
}
