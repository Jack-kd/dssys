package com.kwad.components.core.s.a;

import com.kwad.components.core.webview.tachikoma.k;
import com.kwad.components.offline.api.tk.model.StyleTemplate;
import com.kwad.sdk.components.n;
import com.kwad.sdk.core.response.helper.c;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.view.AdBaseFrameLayout;

/* loaded from: classes4.dex */
public final class b extends com.kwad.components.core.n.a {
    public StyleTemplate akN;
    public n akQ;
    public k akR;
    public AdResultData mAdResultData;
    public AdBaseFrameLayout mRootContainer;

    public b(a aVar) {
        super(aVar);
    }

    public final void a(AdResultData adResultData) {
        this.mAdResultData = adResultData;
        this.mAdTemplate = c.r(adResultData);
    }
}
