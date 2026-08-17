package com.sigmob.sdk.newInterstitial;

import com.czhj.sdk.common.models.AdStatus;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.mraid.C1317i;
import com.sigmob.windad.WindAdError;

/* loaded from: classes4.dex */
public class a extends com.sigmob.sdk.manager.f implements e {
    @Override // com.sigmob.sdk.newInterstitial.e
    public void c(BaseAdUnit baseAdUnit, String str) {
        com.sigmob.sdk.base.utils.k.f(this.f37773a, "onAdShowFail: msg = " + str, new Object[0]);
        if (com.sigmob.sdk.manager.b.n(baseAdUnit)) {
            C1258h.g().e(baseAdUnit);
        }
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_AD_PLAY;
        windAdError.setMessage(str);
        a(windAdError, this.f37816r);
        a(baseAdUnit, PointCategory.PLAY, this.f37811m.getAdType(), this.f37807i, this.f37811m.getLoadId(), windAdError);
    }

    @Override // com.sigmob.sdk.manager.b
    public void g() {
        if (com.sigmob.sdk.base.utils.f.a(this.f37813o)) {
            this.f37813o = null;
            return;
        }
        BaseAdUnit baseAdUnitE = e();
        if (com.sigmob.sdk.manager.b.n(baseAdUnitE)) {
            C1258h.g().e(baseAdUnitE);
        }
        this.f37813o = null;
    }

    @Override // com.sigmob.sdk.manager.f
    public C1317i o() {
        return new f(this);
    }

    @Override // com.sigmob.sdk.newInterstitial.e
    public void p(BaseAdUnit baseAdUnit) {
        if (this.f37774b == AdStatus.AdStatusClose) {
            return;
        }
        o(baseAdUnit);
    }

    @Override // com.sigmob.sdk.newInterstitial.e
    public void q(BaseAdUnit baseAdUnit) {
        com.sigmob.sdk.base.utils.k.c(this.f37773a, "onAdSkip", new Object[0]);
    }

    @Override // com.sigmob.sdk.newInterstitial.e
    public void r(BaseAdUnit baseAdUnit) {
        com.sigmob.sdk.base.utils.k.c(this.f37773a, "onAdShow", new Object[0]);
    }
}
