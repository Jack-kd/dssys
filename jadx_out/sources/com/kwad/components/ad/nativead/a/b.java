package com.kwad.components.ad.nativead.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.ad.nativead.d;
import com.kwad.components.core.e.d.d;
import com.kwad.sdk.api.KsNativeAd;
import com.kwad.sdk.core.view.AdBasePvFrameLayout;

/* loaded from: classes4.dex */
public final class b extends com.kwad.sdk.mvp.a {

    @Nullable
    public d mApkDownloadHelper;

    @NonNull
    public d.a pD;

    @NonNull
    public AdBasePvFrameLayout pR;

    @NonNull
    public com.kwad.components.ad.nativead.d.a pX;

    @NonNull
    public KsNativeAd.VideoPlayListener pv;
    public boolean qc = false;
    public boolean qd = false;

    @Override // com.kwad.sdk.mvp.a
    public final void release() {
        com.kwad.components.core.e.d.d dVar = this.mApkDownloadHelper;
        if (dVar != null) {
            dVar.clear();
        }
        this.pX.release();
    }
}
