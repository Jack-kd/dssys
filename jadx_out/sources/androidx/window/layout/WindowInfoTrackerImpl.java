package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.layout.adapter.WindowBackend;
import com.byazt.pu.TTDownloadField;
import com.umeng.analytics.pro.g;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.X;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.flow.AbstractC1641e;
import kotlinx.coroutines.flow.InterfaceC1639c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/window/layout/WindowInfoTrackerImpl;", "Landroidx/window/layout/WindowInfoTracker;", "Landroidx/window/layout/WindowMetricsCalculator;", "windowMetricsCalculator", "Landroidx/window/layout/adapter/WindowBackend;", "windowBackend", "<init>", "(Landroidx/window/layout/WindowMetricsCalculator;Landroidx/window/layout/adapter/WindowBackend;)V", "Landroid/content/Context;", g.f49337X, "Lkotlinx/coroutines/flow/c;", "Landroidx/window/layout/WindowLayoutInfo;", "windowLayoutInfo", "(Landroid/content/Context;)Lkotlinx/coroutines/flow/c;", "Landroid/app/Activity;", TTDownloadField.TT_ACTIVITY, "(Landroid/app/Activity;)Lkotlinx/coroutines/flow/c;", "Landroidx/window/layout/WindowMetricsCalculator;", "Landroidx/window/layout/adapter/WindowBackend;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WindowInfoTrackerImpl implements WindowInfoTracker {

    @NotNull
    private final WindowBackend windowBackend;

    @NotNull
    private final WindowMetricsCalculator windowMetricsCalculator;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/channels/q;", "Landroidx/window/layout/WindowLayoutInfo;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/channels/q;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1", f = "WindowInfoTrackerImpl.kt", i = {}, l = {50}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<q, kotlin.coroutines.e, Object> {
        final /* synthetic */ Context $context;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$context = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final kotlin.coroutines.e create(@Nullable Object obj, @NotNull kotlin.coroutines.e eVar) {
            AnonymousClass1 anonymousClass1 = WindowInfoTrackerImpl.this.new AnonymousClass1(this.$context, eVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                final q qVar = (q) this.L$0;
                final Consumer<WindowLayoutInfo> consumer = new Consumer() { // from class: androidx.window.layout.a
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj2) {
                        qVar.l((WindowLayoutInfo) obj2);
                    }
                };
                WindowInfoTrackerImpl.this.windowBackend.registerLayoutChangeCallback(this.$context, new androidx.profileinstaller.b(), consumer);
                final WindowInfoTrackerImpl windowInfoTrackerImpl = WindowInfoTrackerImpl.this;
                Function0<j> function0 = new Function0<j>() { // from class: androidx.window.layout.WindowInfoTrackerImpl.windowLayoutInfo.1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ j invoke() {
                        invoke2();
                        return j.f51397a;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        windowInfoTrackerImpl.windowBackend.unregisterLayoutChangeCallback(consumer);
                    }
                };
                this.label = 1;
                if (ProduceKt.a(qVar, function0, this) == objE) {
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
        public final Object invoke(@NotNull q qVar, @Nullable kotlin.coroutines.e eVar) {
            return ((AnonymousClass1) create(qVar, eVar)).invokeSuspend(j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/channels/q;", "Landroidx/window/layout/WindowLayoutInfo;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/channels/q;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$2", f = "WindowInfoTrackerImpl.kt", i = {}, l = {63}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<q, kotlin.coroutines.e, Object> {
        final /* synthetic */ Activity $activity;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Activity activity, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$activity = activity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final kotlin.coroutines.e create(@Nullable Object obj, @NotNull kotlin.coroutines.e eVar) {
            AnonymousClass2 anonymousClass2 = WindowInfoTrackerImpl.this.new AnonymousClass2(this.$activity, eVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                final q qVar = (q) this.L$0;
                final Consumer<WindowLayoutInfo> consumer = new Consumer() { // from class: androidx.window.layout.b
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj2) {
                        qVar.l((WindowLayoutInfo) obj2);
                    }
                };
                WindowInfoTrackerImpl.this.windowBackend.registerLayoutChangeCallback(this.$activity, new androidx.profileinstaller.b(), consumer);
                final WindowInfoTrackerImpl windowInfoTrackerImpl = WindowInfoTrackerImpl.this;
                Function0<j> function0 = new Function0<j>() { // from class: androidx.window.layout.WindowInfoTrackerImpl.windowLayoutInfo.2.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ j invoke() {
                        invoke2();
                        return j.f51397a;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        windowInfoTrackerImpl.windowBackend.unregisterLayoutChangeCallback(consumer);
                    }
                };
                this.label = 1;
                if (ProduceKt.a(qVar, function0, this) == objE) {
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
        public final Object invoke(@NotNull q qVar, @Nullable kotlin.coroutines.e eVar) {
            return ((AnonymousClass2) create(qVar, eVar)).invokeSuspend(j.f51397a);
        }
    }

    public WindowInfoTrackerImpl(@NotNull WindowMetricsCalculator windowMetricsCalculator, @NotNull WindowBackend windowBackend) {
        kotlin.jvm.internal.j.e(windowMetricsCalculator, "windowMetricsCalculator");
        kotlin.jvm.internal.j.e(windowBackend, "windowBackend");
        this.windowMetricsCalculator = windowMetricsCalculator;
        this.windowBackend = windowBackend;
    }

    @Override // androidx.window.layout.WindowInfoTracker
    @NotNull
    public InterfaceC1639c windowLayoutInfo(@NotNull Context context) {
        kotlin.jvm.internal.j.e(context, "context");
        return AbstractC1641e.x(AbstractC1641e.d(new AnonymousClass1(context, null)), X.c());
    }

    @Override // androidx.window.layout.WindowInfoTracker
    @NotNull
    public InterfaceC1639c windowLayoutInfo(@NotNull Activity activity) {
        kotlin.jvm.internal.j.e(activity, "activity");
        return AbstractC1641e.x(AbstractC1641e.d(new AnonymousClass2(activity, null)), X.c());
    }
}
