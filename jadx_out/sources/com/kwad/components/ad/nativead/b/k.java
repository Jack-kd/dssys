package com.kwad.components.ad.nativead.b;

import android.widget.ProgressBar;
import com.kwad.components.core.video.l;
import com.kwad.components.core.video.m;
import com.kwad.sdk.R;

/* loaded from: classes4.dex */
public final class k extends com.kwad.components.ad.nativead.a.a {
    private ProgressBar qA;

    /* JADX INFO: Access modifiers changed from: private */
    public void ae(int i2) {
        this.qA.setProgress(i2);
        if (this.qA.getVisibility() == 0) {
            return;
        }
        this.qA.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fP() {
        if (this.qA.getVisibility() != 0) {
            return;
        }
        this.qA.setVisibility(8);
    }

    @Override // com.kwad.components.ad.nativead.a.a, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        this.qA.setProgress(0);
        this.qA.setVisibility(8);
        m mVar = new m() { // from class: com.kwad.components.ad.nativead.b.k.1
            @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
            public final void onMediaPlayCompleted() {
                k.this.fP();
            }

            @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
            public final void onMediaPlayError(int i2, int i3) {
                k.this.fP();
            }

            @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
            public final void onMediaPlayProgress(long j2, long j3) {
                k.this.ae(j2 != 0 ? (int) ((j3 * 100.0f) / j2) : 0);
            }
        };
        this.mVideoPlayStateListener = mVar;
        this.pW.pX.b((l) mVar);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
        this.qA = (ProgressBar) findViewById(R.id.ksad_video_progress);
    }
}
