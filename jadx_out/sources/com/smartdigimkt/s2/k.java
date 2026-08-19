package com.smartdigimkt.s2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity;

/* loaded from: classes5.dex */
public final class k implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLandPageActivity f43129a;

    public k(WebLandPageActivity webLandPageActivity) {
        this.f43129a = webLandPageActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f43129a.finish();
    }
}
