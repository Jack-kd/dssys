package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.UUID;

/* loaded from: classes.dex */
public interface ProgressUpdater {
    @NonNull
    M0.a updateProgress(@NonNull Context context, @NonNull UUID uuid, @NonNull Data data);
}
