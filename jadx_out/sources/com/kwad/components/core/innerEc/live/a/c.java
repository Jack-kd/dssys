package com.kwad.components.core.innerEc.live.a;

import androidx.annotation.NonNull;
import com.kwad.components.core.webview.tachikoma.b.w;
import com.kwad.sdk.core.response.model.LiveInfo;

/* loaded from: classes4.dex */
public final class c extends w {
    private final LiveInfo TD;

    public c(LiveInfo liveInfo) {
        this.TD = liveInfo;
    }

    @Override // com.kwad.components.core.webview.tachikoma.b.w, com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        cVar.b(this.TD);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "getLiveDetailInfo";
    }
}
