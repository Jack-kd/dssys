package com.kwad.components.core.j;

import androidx.annotation.Nullable;
import com.kwad.sdk.api.KsInnerAd;

/* loaded from: classes4.dex */
public final class d {

    @Nullable
    private Object aaW;

    public d(Object obj) {
        this.aaW = obj;
    }

    public final void c(c cVar) {
        if (this.aaW == null || cVar == null || cVar.getHost() == null) {
            return;
        }
        try {
            ((KsInnerAd.KsInnerAdInteractionListener) this.aaW).onAdClicked((KsInnerAd) cVar.getHost());
        } catch (Exception unused) {
        }
    }

    public final void d(c cVar) {
        if (this.aaW == null || cVar == null || cVar.getHost() == null) {
            return;
        }
        try {
            ((KsInnerAd.KsInnerAdInteractionListener) this.aaW).onAdShow((KsInnerAd) cVar.getHost());
        } catch (Exception unused) {
        }
    }

    public final void destroy() {
        this.aaW = null;
    }
}
