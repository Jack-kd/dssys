package com.kwad.components.ad.draw;

import android.view.View;
import androidx.annotation.NonNull;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.utils.cb;

/* loaded from: classes4.dex */
public final class b extends com.kwad.components.core.widget.a.c {
    private View mRootView;

    public b(@NonNull View view) {
        super(view, aL());
        this.mRootView = view;
    }

    private static int aL() {
        int iKe;
        try {
            iKe = ((int) e.Ke()) * 100;
        } catch (Throwable unused) {
        }
        if (iKe < 0 || iKe > 100) {
            return 70;
        }
        return iKe;
    }

    @Override // com.kwad.components.core.widget.a.c, com.kwad.components.core.widget.a.a
    public final boolean ah() {
        return cb.a(this.mRootView, aL(), true);
    }
}
