package com.kwad.components.ad.c.d;

import com.kwad.sdk.mvp.Presenter;

/* loaded from: classes4.dex */
public class a extends Presenter {
    public com.kwad.components.ad.c.b cS;

    @Override // com.kwad.sdk.mvp.Presenter
    public void ay() {
        super.ay();
        Object objSB = SB();
        if (objSB instanceof com.kwad.components.ad.c.b) {
            this.cS = (com.kwad.components.ad.c.b) objSB;
        }
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public void onCreate() {
        super.onCreate();
    }
}
