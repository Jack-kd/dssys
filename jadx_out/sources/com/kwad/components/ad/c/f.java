package com.kwad.components.ad.c;

import android.view.View;
import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public final class f extends com.kwad.components.core.widget.a.c {
    public f(@NonNull View view, int i2) {
        super(view, i2);
    }

    @Override // com.kwad.components.core.widget.a.c, com.kwad.components.core.widget.a.a
    public final boolean ah() {
        com.kwad.sdk.core.c.b.LW();
        if (!com.kwad.sdk.core.c.b.isEnable()) {
            return super.ah();
        }
        com.kwad.sdk.core.c.b.LW();
        return com.kwad.sdk.core.c.b.isAppOnForeground() && super.ah();
    }
}
