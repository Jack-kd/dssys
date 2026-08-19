package com.kwad.components.core.e.e;

import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.mvp.Presenter;

/* loaded from: classes4.dex */
public class b extends Presenter {
    protected c RM;
    protected AdInfo mAdInfo;

    @Override // com.kwad.sdk.mvp.Presenter
    public void ay() {
        super.ay();
        c cVar = (c) SB();
        this.RM = cVar;
        this.mAdInfo = com.kwad.sdk.core.response.helper.e.eO(cVar.RL.getAdTemplate());
    }
}
