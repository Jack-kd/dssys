package androidx.browser.customtabs;

import android.os.Bundle;
import androidx.annotation.IntRange;
import com.beizi.fusion.widget.TwistView;

/* loaded from: classes.dex */
public interface EngagementSignalsCallback {
    default void onGreatestScrollPercentageIncreased(@IntRange(from = 1, to = TwistView.DELAY_TIME_TWIST) int i2, Bundle bundle) {
    }

    default void onSessionEnded(boolean z2, Bundle bundle) {
    }

    default void onVerticalScrollEvent(boolean z2, Bundle bundle) {
    }
}
