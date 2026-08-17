package com.kwad.components.core.j;

import androidx.annotation.NonNull;
import com.kwad.sdk.api.KsInnerAd;
import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
final class b implements KsInnerAd {
    private final int aaV;

    @NonNull
    private final AdTemplate mAdTemplate;

    public b(@NonNull AdTemplate adTemplate, int i2) {
        this.mAdTemplate = adTemplate;
        this.aaV = i2;
    }

    @NonNull
    public final AdTemplate getAdTemplate() {
        return this.mAdTemplate;
    }

    @Override // com.kwad.sdk.api.KsInnerAd
    public final int getType() {
        return this.aaV;
    }
}
