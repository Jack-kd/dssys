package com.kwad.components.ad.splashscreen.presenter;

import android.content.Context;
import android.content.res.Resources;
import com.kwad.sdk.utils.ae;

/* loaded from: classes4.dex */
public final class s extends e {
    private com.kwad.sdk.core.download.a.a Jh;

    @Override // com.kwad.components.ad.splashscreen.presenter.e, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        com.kwad.sdk.core.download.a.a aVar = new com.kwad.sdk.core.download.a.a() { // from class: com.kwad.components.ad.splashscreen.presenter.s.1
            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFailed() {
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFinished() {
            }

            @Override // com.kwad.sdk.core.download.a.a, com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadStarted() throws Resources.NotFoundException {
                String str;
                super.onDownloadStarted();
                Context context = s.this.getContext();
                if (context != null) {
                    String strDa = com.kwad.sdk.utils.n.da(context);
                    if (strDa != null) {
                        str = strDa + ":已开始下载";
                    } else {
                        str = "已开始下载";
                    }
                    ae.V(context, str);
                }
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onIdle() {
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onInstalled() {
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onProgressUpdate(int i2) {
            }
        };
        this.Jh = aVar;
        this.HC.mApkDownloadHelper.b(aVar);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        com.kwad.sdk.core.download.a.a aVar = this.Jh;
        if (aVar != null) {
            this.HC.mApkDownloadHelper.c(aVar);
        }
    }
}
