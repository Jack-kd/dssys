package com.kwad.components.core.t;

import android.view.View;

/* loaded from: classes4.dex */
public abstract class i implements View.OnClickListener {
    private j aly;

    public i() {
        this(false);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.aly.a(view, this);
    }

    private i(boolean z2) {
        this.aly = new j(false);
    }
}
