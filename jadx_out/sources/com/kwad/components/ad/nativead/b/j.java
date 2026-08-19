package com.kwad.components.ad.nativead.b;

import android.view.View;
import com.kwad.components.core.video.l;
import com.kwad.components.core.video.m;
import com.kwad.sdk.R;

/* loaded from: classes4.dex */
public final class j extends com.kwad.components.ad.nativead.a.a {
    private View qy;

    /* JADX INFO: Access modifiers changed from: private */
    public void fO() {
        if (this.qy.getVisibility() == 0) {
            return;
        }
        this.qy.setVisibility(0);
    }

    @Override // com.kwad.components.ad.nativead.a.a, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        this.qy.setVisibility(8);
        m mVar = new m() { // from class: com.kwad.components.ad.nativead.b.j.1
            @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
            public final void onMediaPlayError(int i2, int i3) {
                j.this.fO();
            }
        };
        this.mVideoPlayStateListener = mVar;
        this.pW.pX.b((l) mVar);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
        this.qy = findViewById(R.id.ksad_video_error_container);
    }
}
