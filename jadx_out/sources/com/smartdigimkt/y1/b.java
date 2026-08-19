package com.smartdigimkt.y1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView;

/* loaded from: classes5.dex */
public final class b implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseAnimPlayerView f45168a;

    public b(BaseAnimPlayerView baseAnimPlayerView) {
        this.f45168a = baseAnimPlayerView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        k kVar = this.f45168a.f43704o;
        if (kVar != null) {
            kVar.g();
        }
    }
}
