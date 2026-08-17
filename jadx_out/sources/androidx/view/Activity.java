package androidx.view;

import android.view.View;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.coroutines.intrinsics.a;
import kotlin.j;
import kotlinx.coroutines.flow.AbstractC1641e;
import kotlinx.coroutines.flow.InterfaceC1640d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001c\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroid/app/Activity;", "Landroid/view/View;", "view", "Lkotlin/j;", "trackPipAnimationHintView", "(Landroid/app/Activity;Landroid/view/View;Lkotlin/coroutines/e;)Ljava/lang/Object;", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* renamed from: androidx.activity.PipHintTrackerKt, reason: from Kotlin metadata */
/* loaded from: classes.dex */
public final class Activity {
    @RequiresApi(26)
    @Nullable
    public static final Object trackPipAnimationHintView(@NotNull final android.app.Activity activity, @NotNull View view, @NotNull e eVar) {
        Object objCollect = AbstractC1641e.d(new PipHintTrackerKt$trackPipAnimationHintView$flow$1(view, null)).collect(new InterfaceC1640d() { // from class: androidx.activity.PipHintTrackerKt.trackPipAnimationHintView.2
            @Override // kotlinx.coroutines.flow.InterfaceC1640d
            @Nullable
            public final Object emit(@NotNull android.graphics.Rect rect, @NotNull e eVar2) {
                Api26Impl.INSTANCE.setPipParamsSourceRectHint(activity, rect);
                return j.f51397a;
            }
        }, eVar);
        return objCollect == a.e() ? objCollect : j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final android.graphics.Rect trackPipAnimationHintView$positionInWindow(View view) {
        android.graphics.Rect rect = new android.graphics.Rect();
        view.getGlobalVisibleRect(rect);
        return rect;
    }
}
