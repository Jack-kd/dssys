package com.kwad.components.ad.splashscreen.e;

import android.text.TextUtils;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public abstract class a extends com.kwad.sdk.core.download.a.a {
    private AdInfo mAdInfo;
    private AdTemplate mAdTemplate;

    public a(AdTemplate adTemplate) {
        this.mAdTemplate = adTemplate;
        this.mAdInfo = e.eO(adTemplate);
    }

    private void j(int i2, int i3) {
        String strA = com.kwad.components.ad.splashscreen.d.a(this.mAdTemplate, this.mAdInfo, i2, i3);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        k(i2, strA);
    }

    public abstract void k(int i2, String str);

    @Override // com.kwad.sdk.api.KsAppDownloadListener
    public void onDownloadFailed() {
        j(7, 0);
    }

    @Override // com.kwad.sdk.api.KsAppDownloadListener
    public void onDownloadFinished() {
        j(8, 0);
    }

    @Override // com.kwad.sdk.api.KsAppDownloadListener
    public void onIdle() {
        j(0, 0);
    }

    @Override // com.kwad.sdk.api.KsAppDownloadListener
    public void onInstalled() {
        j(12, 0);
    }

    @Override // com.kwad.sdk.core.download.a.a
    public final void onPaused(int i2) {
        j(4, i2);
    }

    @Override // com.kwad.sdk.api.KsAppDownloadListener
    public void onProgressUpdate(int i2) {
        j(2, i2);
    }

    public final void setAdTemplate(AdTemplate adTemplate) {
        this.mAdTemplate = adTemplate;
    }
}
