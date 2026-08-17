package androidx.webkit;

import androidx.webkit.Profile;
import java.lang.Throwable;

@Profile.ExperimentalUrlPrefetch
/* loaded from: classes.dex */
public interface OutcomeReceiverCompat<T, E extends Throwable> {
    default void onError(E e2) {
    }

    void onResult(T t2);
}
