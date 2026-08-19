package androidx.view;

import androidx.view.Lifecycle;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AbstractC1662g;
import kotlinx.coroutines.B0;
import kotlinx.coroutines.M;
import kotlinx.coroutines.N;
import kotlinx.coroutines.X;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aE\u0010\n\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003¢\u0006\u0002\b\bH\u0086@¢\u0006\u0004\b\n\u0010\u000b\u001aE\u0010\n\u001a\u00020\u0006*\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003¢\u0006\u0002\b\bH\u0086@¢\u0006\u0004\b\n\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/Lifecycle$State;", "state", "Lkotlin/Function2;", "Lkotlinx/coroutines/M;", "Lkotlin/coroutines/e;", "Lkotlin/j;", "", "Lkotlin/ExtensionFunctionType;", "block", "repeatOnLifecycle", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/e;)Ljava/lang/Object;", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/e;)Ljava/lang/Object;", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RepeatOnLifecycleKt {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", f = "RepeatOnLifecycle.kt", i = {}, l = {84}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3, reason: invalid class name */
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<M, e, Object> {
        final /* synthetic */ Function2<M, e, Object> $block;
        final /* synthetic */ Lifecycle.State $state;
        final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
        private /* synthetic */ Object L$0;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", i = {0, 0}, l = {166}, m = "invokeSuspend", n = {"launchedJob", "observer"}, s = {"L$0", "L$1"})
        @SourceDebugExtension({"SMAP\nRepeatOnLifecycle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,165:1\n314#2,11:166\n*S KotlinDebug\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1\n*L\n97#1:166,11\n*E\n"})
        /* renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1, reason: invalid class name */
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<M, e, Object> {
            final /* synthetic */ M $$this$coroutineScope;
            final /* synthetic */ Function2<M, e, Object> $block;
            final /* synthetic */ Lifecycle.State $state;
            final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
            Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            Object L$4;
            Object L$5;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, M m2, Function2<? super M, ? super e, ? extends Object> function2, e eVar) {
                super(2, eVar);
                this.$this_repeatOnLifecycle = lifecycle;
                this.$state = state;
                this.$$this$coroutineScope = m2;
                this.$block = function2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final e create(@Nullable Object obj, @NotNull e eVar) {
                return new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, eVar);
            }

            /* JADX WARN: Removed duplicated region for block: B:28:0x00af  */
            /* JADX WARN: Removed duplicated region for block: B:31:0x00b8  */
            /* JADX WARN: Removed duplicated region for block: B:36:0x00c6  */
            /* JADX WARN: Removed duplicated region for block: B:39:0x00cf  */
            /* JADX WARN: Removed duplicated region for block: B:45:? A[SYNTHETIC] */
            /* JADX WARN: Type inference failed for: r4v3, types: [T, androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1, java.lang.Object] */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @org.jetbrains.annotations.Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r14) throws java.lang.Throwable {
                /*
                    r13 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.e()
                    int r1 = r13.label
                    r2 = 0
                    r3 = 1
                    if (r1 == 0) goto L37
                    if (r1 != r3) goto L2f
                    java.lang.Object r0 = r13.L$5
                    kotlin.jvm.functions.Function2 r0 = (kotlin.jvm.functions.Function2) r0
                    java.lang.Object r0 = r13.L$4
                    kotlinx.coroutines.M r0 = (kotlinx.coroutines.M) r0
                    java.lang.Object r0 = r13.L$3
                    androidx.lifecycle.Lifecycle r0 = (androidx.view.Lifecycle) r0
                    java.lang.Object r0 = r13.L$2
                    androidx.lifecycle.Lifecycle$State r0 = (androidx.lifecycle.Lifecycle.State) r0
                    java.lang.Object r0 = r13.L$1
                    r1 = r0
                    kotlin.jvm.internal.Ref$ObjectRef r1 = (kotlin.jvm.internal.Ref$ObjectRef) r1
                    java.lang.Object r0 = r13.L$0
                    r4 = r0
                    kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref$ObjectRef) r4
                    kotlin.e.b(r14)     // Catch: java.lang.Throwable -> L2b
                    goto La9
                L2b:
                    r0 = move-exception
                    r14 = r0
                    goto Lc0
                L2f:
                    java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r14.<init>(r0)
                    throw r14
                L37:
                    kotlin.e.b(r14)
                    androidx.lifecycle.Lifecycle r14 = r13.$this_repeatOnLifecycle
                    androidx.lifecycle.Lifecycle$State r14 = r14.getState()
                    androidx.lifecycle.Lifecycle$State r1 = androidx.lifecycle.Lifecycle.State.DESTROYED
                    if (r14 != r1) goto L47
                    kotlin.j r14 = kotlin.j.f51397a
                    return r14
                L47:
                    kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
                    r6.<init>()
                    kotlin.jvm.internal.Ref$ObjectRef r1 = new kotlin.jvm.internal.Ref$ObjectRef
                    r1.<init>()
                    androidx.lifecycle.Lifecycle$State r14 = r13.$state     // Catch: java.lang.Throwable -> La1
                    androidx.lifecycle.Lifecycle r12 = r13.$this_repeatOnLifecycle     // Catch: java.lang.Throwable -> La1
                    kotlinx.coroutines.M r7 = r13.$$this$coroutineScope     // Catch: java.lang.Throwable -> La1
                    kotlin.jvm.functions.Function2<kotlinx.coroutines.M, kotlin.coroutines.e, java.lang.Object> r11 = r13.$block     // Catch: java.lang.Throwable -> La1
                    r13.L$0 = r6     // Catch: java.lang.Throwable -> La1
                    r13.L$1 = r1     // Catch: java.lang.Throwable -> La1
                    r13.L$2 = r14     // Catch: java.lang.Throwable -> La1
                    r13.L$3 = r12     // Catch: java.lang.Throwable -> La1
                    r13.L$4 = r7     // Catch: java.lang.Throwable -> La1
                    r13.L$5 = r11     // Catch: java.lang.Throwable -> La1
                    r13.label = r3     // Catch: java.lang.Throwable -> La1
                    kotlinx.coroutines.n r9 = new kotlinx.coroutines.n     // Catch: java.lang.Throwable -> La1
                    kotlin.coroutines.e r4 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.c(r13)     // Catch: java.lang.Throwable -> La1
                    r9.<init>(r4, r3)     // Catch: java.lang.Throwable -> La1
                    r9.F()     // Catch: java.lang.Throwable -> La1
                    androidx.lifecycle.Lifecycle$Event$Companion r4 = androidx.lifecycle.Lifecycle.Event.INSTANCE     // Catch: java.lang.Throwable -> La1
                    androidx.lifecycle.Lifecycle$Event r5 = r4.upTo(r14)     // Catch: java.lang.Throwable -> La1
                    androidx.lifecycle.Lifecycle$Event r8 = r4.downFrom(r14)     // Catch: java.lang.Throwable -> La1
                    r14 = 0
                    kotlinx.coroutines.sync.a r10 = kotlinx.coroutines.sync.MutexKt.b(r14, r3, r2)     // Catch: java.lang.Throwable -> La1
                    androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1 r4 = new androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1     // Catch: java.lang.Throwable -> La1
                    r4.<init>()     // Catch: java.lang.Throwable -> La1
                    r1.element = r4     // Catch: java.lang.Throwable -> La1
                    java.lang.String r14 = "null cannot be cast to non-null type androidx.lifecycle.LifecycleEventObserver"
                    kotlin.jvm.internal.j.c(r4, r14)     // Catch: java.lang.Throwable -> La1
                    androidx.lifecycle.LifecycleEventObserver r4 = (androidx.view.LifecycleEventObserver) r4     // Catch: java.lang.Throwable -> La1
                    r12.addObserver(r4)     // Catch: java.lang.Throwable -> La1
                    java.lang.Object r14 = r9.y()     // Catch: java.lang.Throwable -> La1
                    java.lang.Object r4 = kotlin.coroutines.intrinsics.a.e()     // Catch: java.lang.Throwable -> La1
                    if (r14 != r4) goto La5
                    w1.AbstractC1795e.c(r13)     // Catch: java.lang.Throwable -> La1
                    goto La5
                La1:
                    r0 = move-exception
                    r14 = r0
                    r4 = r6
                    goto Lc0
                La5:
                    if (r14 != r0) goto La8
                    return r0
                La8:
                    r4 = r6
                La9:
                    T r14 = r4.element
                    kotlinx.coroutines.u0 r14 = (kotlinx.coroutines.InterfaceC1705u0) r14
                    if (r14 == 0) goto Lb2
                    kotlinx.coroutines.InterfaceC1705u0.a.a(r14, r2, r3, r2)
                Lb2:
                    T r14 = r1.element
                    androidx.lifecycle.LifecycleEventObserver r14 = (androidx.view.LifecycleEventObserver) r14
                    if (r14 == 0) goto Lbd
                    androidx.lifecycle.Lifecycle r0 = r13.$this_repeatOnLifecycle
                    r0.removeObserver(r14)
                Lbd:
                    kotlin.j r14 = kotlin.j.f51397a
                    return r14
                Lc0:
                    T r0 = r4.element
                    kotlinx.coroutines.u0 r0 = (kotlinx.coroutines.InterfaceC1705u0) r0
                    if (r0 == 0) goto Lc9
                    kotlinx.coroutines.InterfaceC1705u0.a.a(r0, r2, r3, r2)
                Lc9:
                    T r0 = r1.element
                    androidx.lifecycle.LifecycleEventObserver r0 = (androidx.view.LifecycleEventObserver) r0
                    if (r0 == 0) goto Ld4
                    androidx.lifecycle.Lifecycle r1 = r13.$this_repeatOnLifecycle
                    r1.removeObserver(r0)
                Ld4:
                    throw r14
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.view.RepeatOnLifecycleKt.AnonymousClass3.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            public final Object invoke(@NotNull M m2, @Nullable e eVar) {
                return ((AnonymousClass1) create(m2, eVar)).invokeSuspend(j.f51397a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(Lifecycle lifecycle, Lifecycle.State state, Function2<? super M, ? super e, ? extends Object> function2, e eVar) {
            super(2, eVar);
            this.$this_repeatOnLifecycle = lifecycle;
            this.$state = state;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$this_repeatOnLifecycle, this.$state, this.$block, eVar);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Object objE = a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                M m2 = (M) this.L$0;
                B0 b0C = X.c().C();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, m2, this.$block, null);
                this.label = 1;
                if (AbstractC1662g.e(b0C, anonymousClass1, this) == objE) {
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
            return ((AnonymousClass3) create(m2, eVar)).invokeSuspend(j.f51397a);
        }
    }

    @Nullable
    public static final Object repeatOnLifecycle(@NotNull Lifecycle lifecycle, @NotNull Lifecycle.State state, @NotNull Function2<? super M, ? super e, ? extends Object> function2, @NotNull e eVar) {
        if (state == Lifecycle.State.INITIALIZED) {
            throw new IllegalArgumentException("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
        }
        if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
            return j.f51397a;
        }
        Object objB = N.b(new AnonymousClass3(lifecycle, state, function2, null), eVar);
        return objB == a.e() ? objB : j.f51397a;
    }

    @Nullable
    public static final Object repeatOnLifecycle(@NotNull LifecycleOwner lifecycleOwner, @NotNull Lifecycle.State state, @NotNull Function2<? super M, ? super e, ? extends Object> function2, @NotNull e eVar) {
        Object objRepeatOnLifecycle = repeatOnLifecycle(lifecycleOwner.getLifecycle(), state, function2, eVar);
        return objRepeatOnLifecycle == a.e() ? objRepeatOnLifecycle : j.f51397a;
    }
}
