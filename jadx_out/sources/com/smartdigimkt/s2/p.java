package com.smartdigimkt.s2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.web.WebLoadFailRefrshView;

/* loaded from: classes5.dex */
public final class p implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLoadFailRefrshView f43134a;

    public p(WebLoadFailRefrshView webLoadFailRefrshView) {
        this.f43134a = webLoadFailRefrshView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f43134a.f44061a;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
