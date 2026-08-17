package androidx.window.area;

import android.app.Activity;
import android.os.Binder;
import androidx.window.core.ExperimentalWindowApi;
import com.byazt.pu.TTDownloadField;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.collections.q;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.flow.AbstractC1641e;
import kotlinx.coroutines.flow.InterfaceC1639c;
import org.jetbrains.annotations.NotNull;

@ExperimentalWindowApi
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R \u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Landroidx/window/area/EmptyWindowAreaControllerImpl;", "Landroidx/window/area/WindowAreaController;", "<init>", "()V", "Landroid/os/Binder;", "token", "Landroid/app/Activity;", TTDownloadField.TT_ACTIVITY, "Ljava/util/concurrent/Executor;", "executor", "Landroidx/window/area/WindowAreaSessionCallback;", "windowAreaSessionCallback", "Lkotlin/j;", "transferActivityToWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V", "Landroidx/window/area/WindowAreaPresentationSessionCallback;", "windowAreaPresentationSessionCallback", "presentContentOnWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V", "Lkotlinx/coroutines/flow/c;", "", "Landroidx/window/area/WindowAreaInfo;", "getWindowAreaInfos", "()Lkotlinx/coroutines/flow/c;", "windowAreaInfos", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EmptyWindowAreaControllerImpl implements WindowAreaController {
    @Override // androidx.window.area.WindowAreaController
    @NotNull
    public InterfaceC1639c getWindowAreaInfos() {
        return AbstractC1641e.w(q.l());
    }

    @Override // androidx.window.area.WindowAreaController
    public void presentContentOnWindowArea(@NotNull Binder token, @NotNull Activity activity, @NotNull Executor executor, @NotNull WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        j.e(token, "token");
        j.e(activity, "activity");
        j.e(executor, "executor");
        j.e(windowAreaPresentationSessionCallback, "windowAreaPresentationSessionCallback");
        windowAreaPresentationSessionCallback.onSessionEnded(new IllegalStateException("There are no WindowAreas"));
    }

    @Override // androidx.window.area.WindowAreaController
    public void transferActivityToWindowArea(@NotNull Binder token, @NotNull Activity activity, @NotNull Executor executor, @NotNull WindowAreaSessionCallback windowAreaSessionCallback) {
        j.e(token, "token");
        j.e(activity, "activity");
        j.e(executor, "executor");
        j.e(windowAreaSessionCallback, "windowAreaSessionCallback");
        windowAreaSessionCallback.onSessionEnded(new IllegalStateException("There are no WindowAreas"));
    }
}
