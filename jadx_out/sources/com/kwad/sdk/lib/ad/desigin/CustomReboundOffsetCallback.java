package com.kwad.sdk.lib.ad.desigin;

import androidx.annotation.FloatRange;
import androidx.annotation.Keep;

@Keep
/* loaded from: classes4.dex */
public interface CustomReboundOffsetCallback {
    public static final int REBOUND_TYPE_FLING = 2;
    public static final int REBOUND_TYPE_TOUCH = 1;

    void rebound(int i2, @FloatRange(from = 0.0d, to = 1.0d) float f2, int i3);
}
