package com.kwad.components.offline.e.a;

import com.kwad.components.offline.api.tk.IOfflineTKRenderListener;
import com.kwad.sdk.components.s;

/* loaded from: classes4.dex */
public final class h implements IOfflineTKRenderListener {
    private final s ayw;

    public h(s sVar) {
        this.ayw = sVar;
    }

    @Override // com.kwad.components.offline.api.tk.IOfflineTKRenderListener
    public final void onFailed(Throwable th) {
        s sVar = this.ayw;
        if (sVar != null) {
            sVar.onFailed(th);
        }
    }

    @Override // com.kwad.components.offline.api.tk.IOfflineTKRenderListener
    public final void onSuccess() {
        s sVar = this.ayw;
        if (sVar != null) {
            sVar.onSuccess();
        }
    }
}
