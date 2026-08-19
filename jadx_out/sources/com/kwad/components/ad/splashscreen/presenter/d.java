package com.kwad.components.ad.splashscreen.presenter;

import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class d extends e {
    private List<Integer> cv;
    private final com.kwad.components.core.video.l mVideoPlayStateListener = new com.kwad.components.core.video.m() { // from class: com.kwad.components.ad.splashscreen.presenter.d.1
        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayCompleted() {
            d.this.mD();
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayProgress(long j2, long j3) {
            d.this.c(j3);
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayStart() {
            d.this.mC();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j2) {
        int iCeil = (int) Math.ceil(j2 / 1000.0f);
        List<Integer> list = this.cv;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<Integer> it = this.cv.iterator();
        while (it.hasNext()) {
            if (iCeil >= it.next().intValue()) {
                com.kwad.sdk.core.adlog.c.a(this.HC.mAdTemplate, iCeil, (JSONObject) null);
                it.remove();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mC() {
        com.kwad.sdk.core.adlog.c.ct(this.HC.mAdTemplate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mD() {
        com.kwad.sdk.core.adlog.c.cu(this.HC.mAdTemplate);
    }

    @Override // com.kwad.components.ad.splashscreen.presenter.e, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        this.cv = com.kwad.sdk.core.response.helper.a.bv(com.kwad.sdk.core.response.helper.e.eO(this.HC.mAdTemplate));
        com.kwad.components.ad.splashscreen.d.a aVar = this.HC.GN;
        if (aVar != null) {
            aVar.b(this.mVideoPlayStateListener);
        }
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        com.kwad.components.ad.splashscreen.d.a aVar = this.HC.GN;
        if (aVar != null) {
            aVar.a(this.mVideoPlayStateListener);
        }
    }
}
