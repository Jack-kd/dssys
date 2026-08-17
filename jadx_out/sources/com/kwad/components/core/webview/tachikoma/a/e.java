package com.kwad.components.core.webview.tachikoma.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.core.webview.jshandler.bc;
import com.kwad.sdk.api.KsAppDownloadListener;
import com.kwad.sdk.components.o;

/* loaded from: classes4.dex */
public final class e {
    private KsAppDownloadListener aph;

    @Nullable
    private KsAppDownloadListener arC;

    @NonNull
    private o asY;
    private com.kwad.sdk.core.webview.b fi;
    private com.kwad.components.core.e.d.d mApkDownloadHelper;

    public e(com.kwad.components.core.e.d.d dVar, com.kwad.sdk.core.webview.b bVar, @NonNull o oVar) {
        this.fi = bVar;
        this.mApkDownloadHelper = dVar;
        this.asY = oVar;
        if (dVar != null) {
            KsAppDownloadListener ksAppDownloadListener = this.aph;
            if (ksAppDownloadListener != null) {
                dVar.d(ksAppDownloadListener);
                return;
            }
            KsAppDownloadListener ksAppDownloadListenerYr = yr();
            this.aph = ksAppDownloadListenerYr;
            this.mApkDownloadHelper.b(ksAppDownloadListenerYr);
        }
    }

    private KsAppDownloadListener yr() {
        return new com.kwad.sdk.core.download.a.a() { // from class: com.kwad.components.core.webview.tachikoma.a.e.1
            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFailed() {
                e.this.a(1, 0.0f);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFinished() {
                e.this.a(5, 1.0f);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onIdle() {
                e.this.a(1, 0.0f);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onInstalled() {
                e.this.a(6, 1.0f);
                if (e.this.arC != null) {
                    e.this.arC.onInstalled();
                }
            }

            @Override // com.kwad.sdk.core.download.a.a
            public final void onPaused(int i2) {
                e.this.a(3, (i2 * 1.0f) / 100.0f);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onProgressUpdate(int i2) {
                e.this.a(2, (i2 * 1.0f) / 100.0f);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, float f2) {
        bc.a aVar = new bc.a();
        aVar.arE = f2;
        aVar.status = i2;
        aVar.totalBytes = com.kwad.sdk.core.response.helper.e.eO(this.fi.getAdTemplate()).totalBytes;
        long j2 = com.kwad.sdk.core.response.helper.e.eO(this.fi.getAdTemplate()).soFarBytes;
        aVar.soFarBytes = j2;
        long j3 = aVar.totalBytes;
        if (j3 > 0) {
            aVar.arF = (j2 * 1.0f) / j3;
        } else {
            aVar.arF = 0.0f;
        }
        this.asY.setDownloadProgress(aVar.toJson().toString());
    }
}
