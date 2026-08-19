package androidx.window.area.reflectionguard;

import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface ExtensionWindowAreaStatusRequirements {
    @NonNull
    DisplayMetrics getWindowAreaDisplayMetrics();

    int getWindowAreaStatus();
}
