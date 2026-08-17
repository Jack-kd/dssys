package com.kwad.components.ad.interstitial.g;

import android.view.View;
import androidx.annotation.NonNull;
import com.kwad.sdk.utils.cb;

/* loaded from: classes4.dex */
public final class b extends com.kwad.components.core.widget.a.a {
    private View mRootView;

    public b(@NonNull View view, int i2) {
        super(view, i2);
        this.mRootView = view;
    }

    @Override // com.kwad.components.core.widget.a.a
    public final boolean ah() {
        return cb.r(this.mRootView, 100);
    }
}
