package com.meishu.sdk.core.ad.paster;

/* loaded from: classes4.dex */
public class d extends com.meishu.sdk.core.loader.b<PasterAd, b> implements b {
    public d(com.meishu.sdk.core.loader.d dVar, b bVar) {
        super(dVar, bVar);
    }

    @Override // com.meishu.sdk.core.ad.paster.b
    public void onVideoComplete() {
        ((b) this.f31586b).onVideoComplete();
    }

    @Override // com.meishu.sdk.core.ad.paster.b
    public void onVideoError() {
        ((b) this.f31586b).onVideoError();
    }

    @Override // com.meishu.sdk.core.ad.paster.b
    public void onVideoLoaded() {
        ((b) this.f31586b).onVideoLoaded();
    }
}
