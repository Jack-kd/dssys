package org.chromium.support_lib_boundary;

import org.jspecify.annotations.NullMarked;

@NullMarked
/* loaded from: classes5.dex */
public interface SafeBrowsingResponseBoundaryInterface {
    void backToSafety(boolean z2);

    void proceed(boolean z2);

    void showInterstitial(boolean z2);
}
