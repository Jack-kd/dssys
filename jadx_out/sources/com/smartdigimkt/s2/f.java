package com.smartdigimkt.s2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.web.BaseWebView;
import com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity;

/* loaded from: classes5.dex */
public final class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLandPageActivity f43121a;

    public f(WebLandPageActivity webLandPageActivity) {
        this.f43121a = webLandPageActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.z3.d.a(this.f43121a.f44048n);
        BaseWebView baseWebView = this.f43121a.f44036b;
        if (baseWebView != null) {
            baseWebView.reload();
        }
    }
}
