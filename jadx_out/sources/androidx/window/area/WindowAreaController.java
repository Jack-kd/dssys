package androidx.window.area;

import android.app.Activity;
import android.os.Binder;
import androidx.annotation.RestrictTo;
import androidx.window.core.ExperimentalWindowApi;
import com.byazt.pu.TTDownloadField;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.m;
import kotlinx.coroutines.flow.InterfaceC1639c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@ExperimentalWindowApi
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017J/\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\u000b\u0010\fJ/\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000f\u0010\u0010R \u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u00118&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0018À\u0006\u0001"}, d2 = {"Landroidx/window/area/WindowAreaController;", "", "Landroid/os/Binder;", "token", "Landroid/app/Activity;", TTDownloadField.TT_ACTIVITY, "Ljava/util/concurrent/Executor;", "executor", "Landroidx/window/area/WindowAreaSessionCallback;", "windowAreaSessionCallback", "Lkotlin/j;", "transferActivityToWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V", "Landroidx/window/area/WindowAreaPresentationSessionCallback;", "windowAreaPresentationSessionCallback", "presentContentOnWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V", "Lkotlinx/coroutines/flow/c;", "", "Landroidx/window/area/WindowAreaInfo;", "getWindowAreaInfos", "()Lkotlinx/coroutines/flow/c;", "windowAreaInfos", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface WindowAreaController {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\u0003R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/window/area/WindowAreaController$Companion;", "", "<init>", "()V", "Landroidx/window/area/WindowAreaController;", "getOrCreate", "()Landroidx/window/area/WindowAreaController;", "Landroidx/window/area/WindowAreaControllerDecorator;", "overridingDecorator", "Lkotlin/j;", "overrideDecorator", "(Landroidx/window/area/WindowAreaControllerDecorator;)V", "reset", "", "TAG", "Ljava/lang/String;", "decorator", "Landroidx/window/area/WindowAreaControllerDecorator;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @Nullable
        private static final String TAG = m.b(WindowAreaController.class).d();

        @NotNull
        private static WindowAreaControllerDecorator decorator = EmptyDecorator.INSTANCE;

        private Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x004e  */
        @kotlin.jvm.JvmStatic
        @kotlin.jvm.JvmName(name = "getOrCreate")
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.window.area.WindowAreaController getOrCreate() {
            /*
                r6 = this;
                r0 = 0
                java.lang.Class<androidx.window.area.WindowAreaController$Companion> r1 = androidx.window.area.WindowAreaController.Companion.class
                java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: java.lang.Throwable -> L13
                if (r1 == 0) goto L1a
                androidx.window.area.SafeWindowAreaComponentProvider r2 = new androidx.window.area.SafeWindowAreaComponentProvider     // Catch: java.lang.Throwable -> L13
                r2.<init>(r1)     // Catch: java.lang.Throwable -> L13
                androidx.window.extensions.area.WindowAreaComponent r0 = r2.getWindowAreaComponent()     // Catch: java.lang.Throwable -> L13
                goto L1a
            L13:
                androidx.window.core.BuildConfig r1 = androidx.window.core.BuildConfig.INSTANCE
                r1.getVerificationMode()
                androidx.window.core.VerificationMode r1 = androidx.window.core.VerificationMode.STRICT
            L1a:
                int r1 = android.os.Build.VERSION.SDK_INT
                r2 = 29
                if (r1 <= r2) goto L4e
                if (r0 == 0) goto L4e
                androidx.window.core.ExtensionsUtil r1 = androidx.window.core.ExtensionsUtil.INSTANCE
                int r2 = r1.getSafeVendorApiLevel()
                r3 = 3
                if (r2 >= r3) goto L41
                androidx.window.area.utils.DeviceUtils r2 = androidx.window.area.utils.DeviceUtils.INSTANCE
                java.lang.String r3 = android.os.Build.MANUFACTURER
                java.lang.String r4 = "MANUFACTURER"
                kotlin.jvm.internal.j.d(r3, r4)
                java.lang.String r4 = android.os.Build.MODEL
                java.lang.String r5 = "MODEL"
                kotlin.jvm.internal.j.d(r4, r5)
                boolean r2 = r2.hasDeviceMetrics$window_release(r3, r4)
                if (r2 == 0) goto L4e
            L41:
                androidx.window.area.WindowAreaControllerImpl r2 = new androidx.window.area.WindowAreaControllerImpl
                kotlin.jvm.internal.j.b(r0)
                int r1 = r1.getSafeVendorApiLevel()
                r2.<init>(r0, r1)
                goto L53
            L4e:
                androidx.window.area.EmptyWindowAreaControllerImpl r2 = new androidx.window.area.EmptyWindowAreaControllerImpl
                r2.<init>()
            L53:
                androidx.window.area.WindowAreaControllerDecorator r0 = androidx.window.area.WindowAreaController.Companion.decorator
                androidx.window.area.WindowAreaController r0 = r0.decorate(r2)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.window.area.WindowAreaController.Companion.getOrCreate():androidx.window.area.WindowAreaController");
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void overrideDecorator(@NotNull WindowAreaControllerDecorator overridingDecorator) {
            j.e(overridingDecorator, "overridingDecorator");
            decorator = overridingDecorator;
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void reset() {
            decorator = EmptyDecorator.INSTANCE;
        }
    }

    @JvmStatic
    @JvmName(name = "getOrCreate")
    @NotNull
    static WindowAreaController getOrCreate() {
        return INSTANCE.getOrCreate();
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    static void overrideDecorator(@NotNull WindowAreaControllerDecorator windowAreaControllerDecorator) {
        INSTANCE.overrideDecorator(windowAreaControllerDecorator);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    static void reset() {
        INSTANCE.reset();
    }

    @NotNull
    InterfaceC1639c getWindowAreaInfos();

    void presentContentOnWindowArea(@NotNull Binder token, @NotNull Activity activity, @NotNull Executor executor, @NotNull WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback);

    void transferActivityToWindowArea(@NotNull Binder token, @NotNull Activity activity, @NotNull Executor executor, @NotNull WindowAreaSessionCallback windowAreaSessionCallback);
}
