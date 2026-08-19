package androidx.view;

import kotlin.Metadata;
import kotlinx.coroutines.L0;
import kotlinx.coroutines.M;
import kotlinx.coroutines.X;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u0014\u0010\u0001\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0015\u0010\u0007\u001a\u00020\u0004*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"", "JOB_KEY", "Ljava/lang/String;", "Landroidx/lifecycle/ViewModel;", "Lkotlinx/coroutines/M;", "getViewModelScope", "(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/M;", "viewModelScope", "lifecycle-viewmodel-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ViewModelKt {

    @NotNull
    private static final String JOB_KEY = "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY";

    @NotNull
    public static final M getViewModelScope(@NotNull ViewModel viewModel) {
        M m2 = (M) viewModel.getTag(JOB_KEY);
        return m2 != null ? m2 : (M) viewModel.setTagIfAbsent(JOB_KEY, new CloseableCoroutineScope(L0.b(null, 1, null).plus(X.c().C())));
    }
}
