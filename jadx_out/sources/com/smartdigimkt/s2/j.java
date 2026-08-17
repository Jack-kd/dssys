package com.smartdigimkt.s2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.web.BaseWebView;
import com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity;

/* loaded from: classes5.dex */
public final class j implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLandPageActivity f43128a;

    public j(WebLandPageActivity webLandPageActivity) {
        this.f43128a = webLandPageActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        BaseWebView baseWebView = this.f43128a.f44036b;
        if (baseWebView == null || !baseWebView.canGoBack()) {
            this.f43128a.finish();
        } else {
            this.f43128a.f44036b.goBack();
        }
    }
}
