package com.kwad.components.ad.reward.presenter;

import com.kwad.components.core.widget.ComplianceTextView;
import com.kwad.sdk.R;

/* loaded from: classes4.dex */
public final class d extends b {
    private ComplianceTextView dZ;

    @Override // com.kwad.components.ad.reward.presenter.b, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        this.dZ.setVisibility(0);
        this.dZ.setAdTemplate(this.uj.mAdTemplate);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
        this.dZ = (ComplianceTextView) findViewById(R.id.ksad_compliance_view);
    }
}
