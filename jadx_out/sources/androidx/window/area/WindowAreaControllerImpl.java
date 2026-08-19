package androidx.window.area;

import android.app.Activity;
import android.os.Binder;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.window.area.WindowAreaCapability;
import androidx.window.area.WindowAreaControllerImpl;
import androidx.window.area.WindowAreaInfo;
import androidx.window.area.utils.DeviceUtils;
import androidx.window.core.BuildConfig;
import androidx.window.core.ExperimentalWindowApi;
import androidx.window.core.VerificationMode;
import androidx.window.extensions.area.ExtensionWindowAreaPresentation;
import androidx.window.extensions.area.ExtensionWindowAreaStatus;
import androidx.window.extensions.area.WindowAreaComponent;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.layout.WindowMetrics;
import androidx.window.layout.WindowMetricsCalculator;
import com.byazt.pu.TTDownloadField;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;
import java.util.HashMap;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.m;
import kotlinx.coroutines.AbstractC1666i;
import kotlinx.coroutines.AbstractC1690m0;
import kotlinx.coroutines.M;
import kotlinx.coroutines.N;
import kotlinx.coroutines.flow.AbstractC1641e;
import kotlinx.coroutines.flow.InterfaceC1639c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(29)
@ExperimentalWindowApi
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0007\b\u0001\u0018\u0000 @2\u00020\u0001:\u0003@ABB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ'\u0010\"\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0002¢\u0006\u0004\b\"\u0010#J'\u0010&\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b&\u0010'J/\u0010*\u001a\u00020\t2\u0006\u0010)\u001a\u00020(2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b*\u0010+J/\u0010,\u001a\u00020\t2\u0006\u0010)\u001a\u00020(2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b,\u0010-R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010.R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010/R\u001c\u00101\u001a\b\u0012\u0004\u0012\u00020\u0004008\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00103\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00105\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00104R0\u00109\u001a\u001e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u001706j\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u0017`88\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R \u0010?\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170<0;8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>¨\u0006C"}, d2 = {"Landroidx/window/area/WindowAreaControllerImpl;", "Landroidx/window/area/WindowAreaController;", "Landroidx/window/extensions/area/WindowAreaComponent;", "windowAreaComponent", "", "vendorApiLevel", "<init>", "(Landroidx/window/extensions/area/WindowAreaComponent;I)V", "status", "Lkotlin/j;", "updateRearDisplayAvailability", "(I)V", "Landroidx/window/extensions/area/ExtensionWindowAreaStatus;", "extensionWindowAreaStatus", "updateRearDisplayPresentationAvailability", "(Landroidx/window/extensions/area/ExtensionWindowAreaStatus;)V", "Landroidx/window/area/WindowAreaCapability$Operation;", "operation", "Landroidx/window/area/WindowAreaCapability$Status;", "Landroidx/window/layout/WindowMetrics;", "metrics", "updateRearDisplayWindowArea", "(Landroidx/window/area/WindowAreaCapability$Operation;Landroidx/window/area/WindowAreaCapability$Status;Landroidx/window/layout/WindowMetrics;)V", "Landroidx/window/area/WindowAreaInfo;", "windowAreaInfo", "", "shouldRemoveWindowAreaInfo", "(Landroidx/window/area/WindowAreaInfo;)Z", "Landroid/app/Activity;", TTDownloadField.TT_ACTIVITY, "Ljava/util/concurrent/Executor;", "executor", "Landroidx/window/area/WindowAreaSessionCallback;", "windowAreaSessionCallback", "startRearDisplayMode", "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V", "Landroidx/window/area/WindowAreaPresentationSessionCallback;", "windowAreaPresentationSessionCallback", "startRearDisplayPresentationMode", "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V", "Landroid/os/Binder;", "token", "transferActivityToWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V", "presentContentOnWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V", "Landroidx/window/extensions/area/WindowAreaComponent;", "I", "Landroidx/window/extensions/core/util/function/Consumer;", "rearDisplaySessionConsumer", "Landroidx/window/extensions/core/util/function/Consumer;", "currentRearDisplayModeStatus", "Landroidx/window/area/WindowAreaCapability$Status;", "currentRearDisplayPresentationStatus", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "currentWindowAreaInfoMap", "Ljava/util/HashMap;", "Lkotlinx/coroutines/flow/c;", "", "getWindowAreaInfos", "()Lkotlinx/coroutines/flow/c;", "windowAreaInfos", "Companion", "RearDisplayPresentationSessionConsumer", "RearDisplaySessionConsumer", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WindowAreaControllerImpl implements WindowAreaController {

    @NotNull
    private static final String REAR_DISPLAY_BINDER_DESCRIPTOR = "WINDOW_AREA_REAR_DISPLAY";

    @NotNull
    private WindowAreaCapability.Status currentRearDisplayModeStatus;

    @NotNull
    private WindowAreaCapability.Status currentRearDisplayPresentationStatus;

    @NotNull
    private final HashMap<String, WindowAreaInfo> currentWindowAreaInfoMap;
    private Consumer<Integer> rearDisplaySessionConsumer;
    private final int vendorApiLevel;

    @NotNull
    private final WindowAreaComponent windowAreaComponent;

    @Nullable
    private static final String TAG = m.b(WindowAreaControllerImpl.class).d();

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u000fR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0010R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0011R\u0016\u0010\u0012\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;", "Landroidx/window/extensions/core/util/function/Consumer;", "", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/window/area/WindowAreaPresentationSessionCallback;", "windowAreaPresentationSessionCallback", "Landroidx/window/extensions/area/WindowAreaComponent;", "windowAreaComponent", "<init>", "(Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;Landroidx/window/extensions/area/WindowAreaComponent;)V", bv.aI, "Lkotlin/j;", "accept", "(I)V", "Ljava/util/concurrent/Executor;", "Landroidx/window/area/WindowAreaPresentationSessionCallback;", "Landroidx/window/extensions/area/WindowAreaComponent;", "lastReportedSessionStatus", "I", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class RearDisplayPresentationSessionConsumer implements Consumer<Integer> {

        @NotNull
        private final Executor executor;
        private int lastReportedSessionStatus;

        @NotNull
        private final WindowAreaComponent windowAreaComponent;

        @NotNull
        private final WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback;

        public RearDisplayPresentationSessionConsumer(@NotNull Executor executor, @NotNull WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback, @NotNull WindowAreaComponent windowAreaComponent) {
            j.e(executor, "executor");
            j.e(windowAreaPresentationSessionCallback, "windowAreaPresentationSessionCallback");
            j.e(windowAreaComponent, "windowAreaComponent");
            this.executor = executor;
            this.windowAreaPresentationSessionCallback = windowAreaPresentationSessionCallback;
            this.windowAreaComponent = windowAreaComponent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void accept$lambda$0(int i2, int i3, RearDisplayPresentationSessionConsumer this$0) {
            j.e(this$0, "this$0");
            if (i2 == 0) {
                this$0.windowAreaPresentationSessionCallback.onSessionEnded(null);
                return;
            }
            if (i2 != 1) {
                if (i2 == 2) {
                    this$0.windowAreaPresentationSessionCallback.onContainerVisibilityChanged(true);
                    return;
                }
                Log.e(WindowAreaControllerImpl.TAG, "Invalid session state value received: " + i2);
                return;
            }
            if (i3 == 2) {
                this$0.windowAreaPresentationSessionCallback.onContainerVisibilityChanged(false);
                return;
            }
            WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback = this$0.windowAreaPresentationSessionCallback;
            WindowAreaComponent windowAreaComponent = this$0.windowAreaComponent;
            ExtensionWindowAreaPresentation rearDisplayPresentation = windowAreaComponent.getRearDisplayPresentation();
            j.b(rearDisplayPresentation);
            windowAreaPresentationSessionCallback.onSessionStarted(new RearDisplayPresentationSessionPresenterImpl(windowAreaComponent, rearDisplayPresentation));
        }

        @Override // androidx.window.extensions.core.util.function.Consumer
        public /* bridge */ /* synthetic */ void accept(Integer num) {
            accept(num.intValue());
        }

        public void accept(final int t2) {
            final int i2 = this.lastReportedSessionStatus;
            this.lastReportedSessionStatus = t2;
            this.executor.execute(new Runnable() { // from class: androidx.window.area.d
                @Override // java.lang.Runnable
                public final void run() {
                    WindowAreaControllerImpl.RearDisplayPresentationSessionConsumer.accept$lambda$0(t2, i2, this);
                }
            });
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0013R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0014R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;", "Landroidx/window/extensions/core/util/function/Consumer;", "", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/window/area/WindowAreaSessionCallback;", "appCallback", "Landroidx/window/extensions/area/WindowAreaComponent;", "extensionsComponent", "<init>", "(Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;Landroidx/window/extensions/area/WindowAreaComponent;)V", "Lkotlin/j;", "onSessionStarted", "()V", "onSessionFinished", bv.aI, "accept", "(I)V", "Ljava/util/concurrent/Executor;", "Landroidx/window/area/WindowAreaSessionCallback;", "Landroidx/window/extensions/area/WindowAreaComponent;", "Landroidx/window/area/WindowAreaSession;", com.umeng.analytics.pro.g.aC, "Landroidx/window/area/WindowAreaSession;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nWindowAreaControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowAreaControllerImpl.kt\nandroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,409:1\n1#2:410\n*E\n"})
    public static final class RearDisplaySessionConsumer implements Consumer<Integer> {

        @NotNull
        private final WindowAreaSessionCallback appCallback;

        @NotNull
        private final Executor executor;

        @NotNull
        private final WindowAreaComponent extensionsComponent;

        @Nullable
        private WindowAreaSession session;

        public RearDisplaySessionConsumer(@NotNull Executor executor, @NotNull WindowAreaSessionCallback appCallback, @NotNull WindowAreaComponent extensionsComponent) {
            j.e(executor, "executor");
            j.e(appCallback, "appCallback");
            j.e(extensionsComponent, "extensionsComponent");
            this.executor = executor;
            this.appCallback = appCallback;
            this.extensionsComponent = extensionsComponent;
        }

        private final void onSessionFinished() {
            this.session = null;
            this.executor.execute(new Runnable() { // from class: androidx.window.area.f
                @Override // java.lang.Runnable
                public final void run() {
                    WindowAreaControllerImpl.RearDisplaySessionConsumer.onSessionFinished$lambda$2(this.f1090b);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onSessionFinished$lambda$2(RearDisplaySessionConsumer this$0) {
            j.e(this$0, "this$0");
            this$0.appCallback.onSessionEnded(null);
        }

        private final void onSessionStarted() {
            final RearDisplaySessionImpl rearDisplaySessionImpl = new RearDisplaySessionImpl(this.extensionsComponent);
            this.session = rearDisplaySessionImpl;
            this.executor.execute(new Runnable() { // from class: androidx.window.area.e
                @Override // java.lang.Runnable
                public final void run() {
                    WindowAreaControllerImpl.RearDisplaySessionConsumer.onSessionStarted$lambda$1$lambda$0(this.f1088b, rearDisplaySessionImpl);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onSessionStarted$lambda$1$lambda$0(RearDisplaySessionConsumer this$0, WindowAreaSession it) {
            j.e(this$0, "this$0");
            j.e(it, "$it");
            this$0.appCallback.onSessionStarted(it);
        }

        @Override // androidx.window.extensions.core.util.function.Consumer
        public /* bridge */ /* synthetic */ void accept(Integer num) {
            accept(num.intValue());
        }

        public void accept(int t2) {
            if (t2 == 0) {
                onSessionFinished();
            } else {
                if (t2 == 1) {
                    onSessionStarted();
                    return;
                }
                if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.STRICT) {
                    String unused = WindowAreaControllerImpl.TAG;
                }
                onSessionFinished();
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.window.area.WindowAreaControllerImpl$presentContentOnWindowArea$2", f = "WindowAreaControllerImpl.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.window.area.WindowAreaControllerImpl$presentContentOnWindowArea$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ Executor $executor;
        final /* synthetic */ WindowAreaPresentationSessionCallback $windowAreaPresentationSessionCallback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Activity activity, Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$activity = activity;
            this.$executor = executor;
            this.$windowAreaPresentationSessionCallback = windowAreaPresentationSessionCallback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final kotlin.coroutines.e create(@Nullable Object obj, @NotNull kotlin.coroutines.e eVar) {
            return WindowAreaControllerImpl.this.new AnonymousClass2(this.$activity, this.$executor, this.$windowAreaPresentationSessionCallback, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                InterfaceC1639c windowAreaInfos = WindowAreaControllerImpl.this.getWindowAreaInfos();
                this.label = 1;
                if (AbstractC1641e.q(windowAreaInfos, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            WindowAreaControllerImpl.this.startRearDisplayPresentationMode(this.$activity, this.$executor, this.$windowAreaPresentationSessionCallback);
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull M m2, @Nullable kotlin.coroutines.e eVar) {
            return ((AnonymousClass2) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/M;", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/M;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.window.area.WindowAreaControllerImpl$transferActivityToWindowArea$2", f = "WindowAreaControllerImpl.kt", i = {}, l = {224}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.window.area.WindowAreaControllerImpl$transferActivityToWindowArea$2, reason: invalid class name and case insensitive filesystem */
    public static final class C10952 extends SuspendLambda implements Function2<M, kotlin.coroutines.e, Object> {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ Executor $executor;
        final /* synthetic */ WindowAreaSessionCallback $windowAreaSessionCallback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10952(Activity activity, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$activity = activity;
            this.$executor = executor;
            this.$windowAreaSessionCallback = windowAreaSessionCallback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final kotlin.coroutines.e create(@Nullable Object obj, @NotNull kotlin.coroutines.e eVar) {
            return WindowAreaControllerImpl.this.new C10952(this.$activity, this.$executor, this.$windowAreaSessionCallback, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Object objE = kotlin.coroutines.intrinsics.a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                InterfaceC1639c windowAreaInfos = WindowAreaControllerImpl.this.getWindowAreaInfos();
                this.label = 1;
                if (AbstractC1641e.q(windowAreaInfos, this) == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            WindowAreaControllerImpl.this.startRearDisplayMode(this.$activity, this.$executor, this.$windowAreaSessionCallback);
            return kotlin.j.f51397a;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull M m2, @Nullable kotlin.coroutines.e eVar) {
            return ((C10952) create(m2, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    public WindowAreaControllerImpl(@NotNull WindowAreaComponent windowAreaComponent, int i2) {
        j.e(windowAreaComponent, "windowAreaComponent");
        this.windowAreaComponent = windowAreaComponent;
        this.vendorApiLevel = i2;
        WindowAreaCapability.Status.Companion companion = WindowAreaCapability.Status.INSTANCE;
        this.currentRearDisplayModeStatus = companion.getWINDOW_AREA_STATUS_UNKNOWN$window_release();
        this.currentRearDisplayPresentationStatus = companion.getWINDOW_AREA_STATUS_UNKNOWN$window_release();
        this.currentWindowAreaInfoMap = new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void presentContentOnWindowArea$lambda$2(WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        j.e(windowAreaPresentationSessionCallback, "$windowAreaPresentationSessionCallback");
        windowAreaPresentationSessionCallback.onSessionEnded(new IllegalArgumentException("Invalid WindowAreaInfo token"));
    }

    private final boolean shouldRemoveWindowAreaInfo(WindowAreaInfo windowAreaInfo) {
        for (WindowAreaCapability windowAreaCapability : windowAreaInfo.getCapabilityMap$window_release().values()) {
            j.d(windowAreaCapability, "windowAreaInfo.capabilityMap.values");
            if (!j.a(windowAreaCapability.getStatus(), WindowAreaCapability.Status.WINDOW_AREA_STATUS_UNSUPPORTED)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startRearDisplayMode(Activity activity, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback) {
        if (j.a(this.currentRearDisplayModeStatus, WindowAreaCapability.Status.WINDOW_AREA_STATUS_ACTIVE)) {
            windowAreaSessionCallback.onSessionEnded(new IllegalStateException("The WindowArea feature is currently active, WindowAreaInfo#getActiveSessioncan be used to get an instance of the current active session"));
        } else {
            if (!j.a(this.currentRearDisplayModeStatus, WindowAreaCapability.Status.WINDOW_AREA_STATUS_AVAILABLE)) {
                windowAreaSessionCallback.onSessionEnded(new IllegalStateException("The WindowArea feature is currently not available to be entered"));
                return;
            }
            RearDisplaySessionConsumer rearDisplaySessionConsumer = new RearDisplaySessionConsumer(executor, windowAreaSessionCallback, this.windowAreaComponent);
            this.rearDisplaySessionConsumer = rearDisplaySessionConsumer;
            this.windowAreaComponent.startRearDisplaySession(activity, rearDisplaySessionConsumer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startRearDisplayPresentationMode(Activity activity, Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        if (!j.a(this.currentRearDisplayPresentationStatus, WindowAreaCapability.Status.WINDOW_AREA_STATUS_AVAILABLE)) {
            windowAreaPresentationSessionCallback.onSessionEnded(new IllegalStateException("The WindowArea feature is currently not available to be entered"));
        } else {
            WindowAreaComponent windowAreaComponent = this.windowAreaComponent;
            windowAreaComponent.startRearDisplayPresentationSession(activity, new RearDisplayPresentationSessionConsumer(executor, windowAreaPresentationSessionCallback, windowAreaComponent));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void transferActivityToWindowArea$lambda$1(WindowAreaSessionCallback windowAreaSessionCallback) {
        j.e(windowAreaSessionCallback, "$windowAreaSessionCallback");
        windowAreaSessionCallback.onSessionEnded(new IllegalArgumentException("Invalid WindowAreaInfo token"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRearDisplayAvailability(int status) {
        WindowMetrics windowMetricsFromDisplayMetrics$window_release;
        if (this.vendorApiLevel >= 3) {
            WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.INSTANCE;
            DisplayMetrics rearDisplayMetrics = this.windowAreaComponent.getRearDisplayMetrics();
            j.d(rearDisplayMetrics, "windowAreaComponent.rearDisplayMetrics");
            windowMetricsFromDisplayMetrics$window_release = companion.fromDisplayMetrics$window_release(rearDisplayMetrics);
        } else {
            DeviceUtils deviceUtils = DeviceUtils.INSTANCE;
            String MANUFACTURER = Build.MANUFACTURER;
            j.d(MANUFACTURER, "MANUFACTURER");
            String MODEL = Build.MODEL;
            j.d(MODEL, "MODEL");
            DisplayMetrics rearDisplayMetrics$window_release = deviceUtils.getRearDisplayMetrics$window_release(MANUFACTURER, MODEL);
            if (rearDisplayMetrics$window_release == null) {
                throw new IllegalArgumentException("DeviceUtils rear display metrics entry should not be null");
            }
            windowMetricsFromDisplayMetrics$window_release = WindowMetricsCalculator.INSTANCE.fromDisplayMetrics$window_release(rearDisplayMetrics$window_release);
        }
        WindowAreaCapability.Status statusTranslate$window_release = WindowAreaAdapter.INSTANCE.translate$window_release(status);
        this.currentRearDisplayModeStatus = statusTranslate$window_release;
        updateRearDisplayWindowArea(WindowAreaCapability.Operation.OPERATION_TRANSFER_ACTIVITY_TO_AREA, statusTranslate$window_release, windowMetricsFromDisplayMetrics$window_release);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRearDisplayPresentationAvailability(ExtensionWindowAreaStatus extensionWindowAreaStatus) {
        this.currentRearDisplayPresentationStatus = WindowAreaAdapter.INSTANCE.translate$window_release(extensionWindowAreaStatus.getWindowAreaStatus());
        WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.INSTANCE;
        DisplayMetrics windowAreaDisplayMetrics = extensionWindowAreaStatus.getWindowAreaDisplayMetrics();
        j.d(windowAreaDisplayMetrics, "extensionWindowAreaStatus.windowAreaDisplayMetrics");
        updateRearDisplayWindowArea(WindowAreaCapability.Operation.OPERATION_PRESENT_ON_AREA, this.currentRearDisplayPresentationStatus, companion.fromDisplayMetrics$window_release(windowAreaDisplayMetrics));
    }

    private final void updateRearDisplayWindowArea(WindowAreaCapability.Operation operation, WindowAreaCapability.Status status, WindowMetrics metrics) {
        WindowAreaInfo windowAreaInfo = this.currentWindowAreaInfoMap.get(REAR_DISPLAY_BINDER_DESCRIPTOR);
        if (!j.a(status, WindowAreaCapability.Status.WINDOW_AREA_STATUS_UNSUPPORTED)) {
            if (windowAreaInfo == null) {
                windowAreaInfo = new WindowAreaInfo(metrics, WindowAreaInfo.Type.TYPE_REAR_FACING, a.a(REAR_DISPLAY_BINDER_DESCRIPTOR), this.windowAreaComponent);
            }
            windowAreaInfo.getCapabilityMap$window_release().put(operation, new WindowAreaCapability(operation, status));
            windowAreaInfo.setMetrics(metrics);
            this.currentWindowAreaInfoMap.put(REAR_DISPLAY_BINDER_DESCRIPTOR, windowAreaInfo);
            return;
        }
        if (windowAreaInfo != null) {
            if (shouldRemoveWindowAreaInfo(windowAreaInfo)) {
                this.currentWindowAreaInfoMap.remove(REAR_DISPLAY_BINDER_DESCRIPTOR);
            } else {
                windowAreaInfo.getCapabilityMap$window_release().put(operation, new WindowAreaCapability(operation, status));
            }
        }
    }

    @Override // androidx.window.area.WindowAreaController
    @NotNull
    public InterfaceC1639c getWindowAreaInfos() {
        return AbstractC1641e.d(new WindowAreaControllerImpl$windowAreaInfos$1(this, null));
    }

    @Override // androidx.window.area.WindowAreaController
    public void presentContentOnWindowArea(@NotNull Binder token, @NotNull Activity activity, @NotNull Executor executor, @NotNull final WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        j.e(token, "token");
        j.e(activity, "activity");
        j.e(executor, "executor");
        j.e(windowAreaPresentationSessionCallback, "windowAreaPresentationSessionCallback");
        if (!j.a(token.getInterfaceDescriptor(), REAR_DISPLAY_BINDER_DESCRIPTOR)) {
            executor.execute(new Runnable() { // from class: androidx.window.area.b
                @Override // java.lang.Runnable
                public final void run() {
                    WindowAreaControllerImpl.presentContentOnWindowArea$lambda$2(windowAreaPresentationSessionCallback);
                }
            });
        } else if (j.a(this.currentRearDisplayPresentationStatus, WindowAreaCapability.Status.INSTANCE.getWINDOW_AREA_STATUS_UNKNOWN$window_release())) {
            AbstractC1666i.b(N.a(AbstractC1690m0.a(executor)), null, null, new AnonymousClass2(activity, executor, windowAreaPresentationSessionCallback, null), 3, null);
        } else {
            startRearDisplayPresentationMode(activity, executor, windowAreaPresentationSessionCallback);
        }
    }

    @Override // androidx.window.area.WindowAreaController
    public void transferActivityToWindowArea(@NotNull Binder token, @NotNull Activity activity, @NotNull Executor executor, @NotNull final WindowAreaSessionCallback windowAreaSessionCallback) {
        j.e(token, "token");
        j.e(activity, "activity");
        j.e(executor, "executor");
        j.e(windowAreaSessionCallback, "windowAreaSessionCallback");
        if (!j.a(token.getInterfaceDescriptor(), REAR_DISPLAY_BINDER_DESCRIPTOR)) {
            executor.execute(new Runnable() { // from class: androidx.window.area.c
                @Override // java.lang.Runnable
                public final void run() {
                    WindowAreaControllerImpl.transferActivityToWindowArea$lambda$1(windowAreaSessionCallback);
                }
            });
        } else if (j.a(this.currentRearDisplayModeStatus, WindowAreaCapability.Status.INSTANCE.getWINDOW_AREA_STATUS_UNKNOWN$window_release())) {
            AbstractC1666i.b(N.a(AbstractC1690m0.a(executor)), null, null, new C10952(activity, executor, windowAreaSessionCallback, null), 3, null);
        } else {
            startRearDisplayMode(activity, executor, windowAreaSessionCallback);
        }
    }
}
