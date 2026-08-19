package androidx.view.result;

import androidx.view.result.contract.ActivityResultContract;
import kotlin.Metadata;
import kotlin.j;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000,\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a`\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\f\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0017\u0010\u000b\u001a\u0013\u0012\t\u0012\u00078\u0001¢\u0006\u0002\b\t\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0004\b\r\u0010\u000e\u001aX\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\f\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0005\u001a\u00028\u00002\u0017\u0010\u000b\u001a\u0013\u0012\t\u0012\u00078\u0001¢\u0006\u0002\b\t\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0004\b\r\u0010\u000f¨\u0006\u0010"}, d2 = {"I", "O", "Landroidx/activity/result/ActivityResultCaller;", "Landroidx/activity/result/contract/ActivityResultContract;", "contract", "input", "Landroidx/activity/result/ActivityResultRegistry;", "registry", "Lkotlin/Function1;", "Lkotlin/jvm/JvmSuppressWildcards;", "Lkotlin/j;", "callback", "Landroidx/activity/result/ActivityResultLauncher;", "registerForActivityResult", "(Landroidx/activity/result/ActivityResultCaller;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/activity/result/ActivityResultRegistry;Lkotlin/jvm/functions/Function1;)Landroidx/activity/result/ActivityResultLauncher;", "(Landroidx/activity/result/ActivityResultCaller;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Landroidx/activity/result/ActivityResultLauncher;", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ActivityResultCallerKt {
    @NotNull
    public static final <I, O> ActivityResultLauncher<j> registerForActivityResult(@NotNull ActivityResultCaller activityResultCaller, @NotNull ActivityResultContract<I, O> contract, I i2, @NotNull ActivityResultRegistry registry, @NotNull final Function1<O, j> callback) {
        kotlin.jvm.internal.j.e(activityResultCaller, "<this>");
        kotlin.jvm.internal.j.e(contract, "contract");
        kotlin.jvm.internal.j.e(registry, "registry");
        kotlin.jvm.internal.j.e(callback, "callback");
        return new ActivityResultCallerLauncher(activityResultCaller.registerForActivityResult(contract, registry, new ActivityResultCallback() { // from class: androidx.activity.result.a
            @Override // androidx.view.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ActivityResultCallerKt.registerForActivityResult$lambda$0(callback, obj);
            }
        }), contract, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerForActivityResult$lambda$0(Function1 callback, Object obj) {
        kotlin.jvm.internal.j.e(callback, "$callback");
        callback.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerForActivityResult$lambda$1(Function1 callback, Object obj) {
        kotlin.jvm.internal.j.e(callback, "$callback");
        callback.invoke(obj);
    }

    @NotNull
    public static final <I, O> ActivityResultLauncher<j> registerForActivityResult(@NotNull ActivityResultCaller activityResultCaller, @NotNull ActivityResultContract<I, O> contract, I i2, @NotNull final Function1<O, j> callback) {
        kotlin.jvm.internal.j.e(activityResultCaller, "<this>");
        kotlin.jvm.internal.j.e(contract, "contract");
        kotlin.jvm.internal.j.e(callback, "callback");
        return new ActivityResultCallerLauncher(activityResultCaller.registerForActivityResult(contract, new ActivityResultCallback() { // from class: androidx.activity.result.b
            @Override // androidx.view.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ActivityResultCallerKt.registerForActivityResult$lambda$1(callback, obj);
            }
        }), contract, i2);
    }
}
