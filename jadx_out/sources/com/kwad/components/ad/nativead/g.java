package com.kwad.components.ad.nativead;

import android.view.View;
import androidx.annotation.NonNull;
import com.kwad.sdk.utils.cb;

/* loaded from: classes4.dex */
public final class g extends com.kwad.components.core.widget.a.c {
    private final View mRootView;

    public g(@NonNull View view) {
        this(view, fD());
    }

    private static int fD() {
        int iKd;
        try {
            iKd = ((int) com.kwad.sdk.core.config.e.Kd()) * 100;
        } catch (Throwable unused) {
        }
        if (iKd < 0 || iKd > 100) {
            return 30;
        }
        return iKd;
    }

    @Override // com.kwad.components.core.widget.a.c, com.kwad.components.core.widget.a.a
    public final boolean ah() {
        return cb.a(this.mRootView, fD(), true);
    }

    private g(@NonNull View view, int i2) {
        super(view, i2);
        this.mRootView = view;
    }
}
