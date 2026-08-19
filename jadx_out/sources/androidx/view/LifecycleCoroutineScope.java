package androidx.view;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.coroutines.i;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AbstractC1666i;
import kotlinx.coroutines.InterfaceC1705u0;
import kotlinx.coroutines.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J8\u0010\u000b\u001a\u00020\n2'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ8\u0010\r\u001a\u00020\n2'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0007¢\u0006\u0004\b\r\u0010\fJ8\u0010\u000e\u001a\u00020\n2'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0007¢\u0006\u0004\b\u000e\u0010\fR\u0014\u0010\u0012\u001a\u00020\u000f8 X \u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Landroidx/lifecycle/LifecycleCoroutineScope;", "Lkotlinx/coroutines/M;", "<init>", "()V", "Lkotlin/Function2;", "Lkotlin/coroutines/e;", "Lkotlin/j;", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/u0;", "launchWhenCreated", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/u0;", "launchWhenStarted", "launchWhenResumed", "Landroidx/lifecycle/Lifecycle;", "getLifecycle$lifecycle_common", "()Landroidx/lifecycle/Lifecycle;", "lifecycle", "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class LifecycleCoroutineScope implements M {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenCreated$1", f = "Lifecycle.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_STALL_THRESHOLD}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.lifecycle.LifecycleCoroutineScope$launchWhenCreated$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<M, e, Object> {
        final /* synthetic */ Function2<M, e, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Function2<? super M, ? super e, ? extends Object> function2, e eVar) {
            super(2, eVar);
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            return LifecycleCoroutineScope.this.new AnonymousClass1(this.$block, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Object objE = a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                Lifecycle lifecycle$lifecycle_common = LifecycleCoroutineScope.this.getLifecycle$lifecycle_common();
                Function2<M, e, Object> function2 = this.$block;
                this.label = 1;
                if (PausingDispatcherKt.whenCreated(lifecycle$lifecycle_common, function2, this) == objE) {
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
            return ((AnonymousClass1) create(m2, eVar)).invokeSuspend(j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenResumed$1", f = "Lifecycle.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.lifecycle.LifecycleCoroutineScope$launchWhenResumed$1, reason: invalid class name and case insensitive filesystem */
    public static final class C10471 extends SuspendLambda implements Function2<M, e, Object> {
        final /* synthetic */ Function2<M, e, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C10471(Function2<? super M, ? super e, ? extends Object> function2, e eVar) {
            super(2, eVar);
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            return LifecycleCoroutineScope.this.new C10471(this.$block, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Object objE = a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                Lifecycle lifecycle$lifecycle_common = LifecycleCoroutineScope.this.getLifecycle$lifecycle_common();
                Function2<M, e, Object> function2 = this.$block;
                this.label = 1;
                if (PausingDispatcherKt.whenResumed(lifecycle$lifecycle_common, function2, this) == objE) {
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
            return ((C10471) create(m2, eVar)).invokeSuspend(j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenStarted$1", f = "Lifecycle.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_200}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.lifecycle.LifecycleCoroutineScope$launchWhenStarted$1, reason: invalid class name and case insensitive filesystem */
    public static final class C10481 extends SuspendLambda implements Function2<M, e, Object> {
        final /* synthetic */ Function2<M, e, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C10481(Function2<? super M, ? super e, ? extends Object> function2, e eVar) {
            super(2, eVar);
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            return LifecycleCoroutineScope.this.new C10481(this.$block, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Object objE = a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                Lifecycle lifecycle$lifecycle_common = LifecycleCoroutineScope.this.getLifecycle$lifecycle_common();
                Function2<M, e, Object> function2 = this.$block;
                this.label = 1;
                if (PausingDispatcherKt.whenStarted(lifecycle$lifecycle_common, function2, this) == objE) {
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
            return ((C10481) create(m2, eVar)).invokeSuspend(j.f51397a);
        }
    }

    @Override // kotlinx.coroutines.M
    @NotNull
    public abstract /* synthetic */ i getCoroutineContext();

    @NotNull
    public abstract Lifecycle getLifecycle$lifecycle_common();

    @Deprecated(message = "launchWhenCreated is deprecated as it can lead to wasted resources in some cases. Replace with suspending repeatOnLifecycle to run the block whenever the Lifecycle state is at least Lifecycle.State.CREATED.")
    @NotNull
    public final InterfaceC1705u0 launchWhenCreated(@NotNull Function2<? super M, ? super e, ? extends Object> block) {
        kotlin.jvm.internal.j.e(block, "block");
        return AbstractC1666i.b(this, null, null, new AnonymousClass1(block, null), 3, null);
    }

    @Deprecated(message = "launchWhenResumed is deprecated as it can lead to wasted resources in some cases. Replace with suspending repeatOnLifecycle to run the block whenever the Lifecycle state is at least Lifecycle.State.RESUMED.")
    @NotNull
    public final InterfaceC1705u0 launchWhenResumed(@NotNull Function2<? super M, ? super e, ? extends Object> block) {
        kotlin.jvm.internal.j.e(block, "block");
        return AbstractC1666i.b(this, null, null, new C10471(block, null), 3, null);
    }

    @Deprecated(message = "launchWhenStarted is deprecated as it can lead to wasted resources in some cases. Replace with suspending repeatOnLifecycle to run the block whenever the Lifecycle state is at least Lifecycle.State.STARTED.")
    @NotNull
    public final InterfaceC1705u0 launchWhenStarted(@NotNull Function2<? super M, ? super e, ? extends Object> block) {
        kotlin.jvm.internal.j.e(block, "block");
        return AbstractC1666i.b(this, null, null, new C10481(block, null), 3, null);
    }
}
