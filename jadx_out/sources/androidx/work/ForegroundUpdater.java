package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.UUID;

/* loaded from: classes.dex */
public interface ForegroundUpdater {
    @NonNull
    M0.a setForegroundAsync(@NonNull Context context, @NonNull UUID uuid, @NonNull ForegroundInfo foregroundInfo);
}
