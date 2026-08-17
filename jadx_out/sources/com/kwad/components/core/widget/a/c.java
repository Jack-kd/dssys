package com.kwad.components.core.widget.a;

import android.view.View;
import androidx.annotation.NonNull;
import com.kwad.sdk.utils.cb;

/* loaded from: classes4.dex */
public class c extends a {
    private View mRootView;

    public c(@NonNull View view, int i2) {
        super(view, i2);
        this.mRootView = view;
    }

    @Override // com.kwad.components.core.widget.a.a
    public boolean ah() {
        return cb.a(this.mRootView, 70, true);
    }
}
