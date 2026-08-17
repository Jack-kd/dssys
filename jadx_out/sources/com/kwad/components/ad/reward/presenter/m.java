package com.kwad.components.ad.reward.presenter;

import androidx.annotation.NonNull;
import com.kwad.sdk.core.response.model.AdInfo;

/* loaded from: classes4.dex */
public final class m extends b {
    private long ky;

    @NonNull
    private com.kwad.components.ad.reward.e.b sy;
    private com.kwad.components.core.video.m wO;
    private com.kwad.components.core.video.m wP = new com.kwad.components.core.video.m() { // from class: com.kwad.components.ad.reward.presenter.m.1
        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayCompleted() {
            super.onMediaPlayCompleted();
            m mVar = m.this;
            com.kwad.components.ad.reward.g gVar = mVar.uj;
            if (gVar.sO && gVar.sT) {
                mVar.sy.onVideoSkipToEnd(m.this.ky);
            } else {
                gVar.to = true;
                mVar.sy.onVideoPlayEnd();
            }
            AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(m.this.uj.mAdTemplate);
            if (com.kwad.sdk.core.response.helper.a.aU(adInfoEO) && com.kwad.sdk.core.response.helper.a.aT(adInfoEO) == 1) {
                return;
            }
            f.u(m.this.uj);
            com.kwad.components.ad.reward.g gVar2 = m.this.uj;
            if (gVar2.to) {
                com.kwad.components.ad.reward.l.j(gVar2);
            }
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayProgress(long j2, long j3) {
            super.onMediaPlayProgress(j2, j3);
            m mVar = m.this;
            com.kwad.components.ad.reward.g gVar = mVar.uj;
            gVar.tn = j3;
            if (gVar.sT) {
                return;
            }
            mVar.ky = j3;
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayStart() {
            super.onMediaPlayStart();
            m.this.sy.onVideoPlayStart();
            m.this.uj.to = false;
        }
    };
    private final com.kwad.components.core.video.m kf = new com.kwad.components.core.video.m() { // from class: com.kwad.components.ad.reward.presenter.m.2
        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayCompleted() {
            m mVar = m.this;
            if (mVar.uj.sT) {
                mVar.sy.onVideoSkipToEnd(m.this.ky);
            } else {
                mVar.sy.onVideoPlayEnd();
            }
            AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(m.this.uj.mAdTemplate);
            if (com.kwad.sdk.core.response.helper.a.aU(adInfoEO) && com.kwad.sdk.core.response.helper.a.aT(adInfoEO) == 1) {
                return;
            }
            f.u(m.this.uj);
            com.kwad.components.ad.reward.g gVar = m.this.uj;
            if (gVar.to) {
                com.kwad.components.ad.reward.l.j(gVar);
            }
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayError(int i2, int i3) {
            m.this.sy.onVideoPlayError(i2, i3);
            m.this.iM();
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayProgress(long j2, long j3) {
            m mVar = m.this;
            com.kwad.components.ad.reward.g gVar = mVar.uj;
            gVar.tn = j3;
            gVar.to = j2 - j3 < 800;
            if (gVar.sT) {
                return;
            }
            mVar.ky = j3;
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayStart() {
            m.this.sy.onVideoPlayStart();
        }
    };

    @Override // com.kwad.components.ad.reward.presenter.b, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        com.kwad.components.ad.reward.g gVar = this.uj;
        gVar.tn = 0L;
        gVar.to = false;
        this.sy = gVar.sy;
        if (gVar.sz.ls()) {
            this.wO = this.wP;
        } else {
            this.wO = this.kf;
        }
        this.uj.sz.a(this.wO);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        this.uj.sz.b(this.wO);
    }
}
