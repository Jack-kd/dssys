package com.kwad.components.ad.draw.presenter.c;

import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.kwad.components.ad.l.b;
import com.kwad.sdk.R;

/* loaded from: classes4.dex */
public final class b extends com.kwad.components.ad.draw.b.a {

    @Nullable
    private com.kwad.components.ad.l.b dW;
    private com.kwad.sdk.core.webview.d.a.a fl = new com.kwad.sdk.core.webview.d.a.a() { // from class: com.kwad.components.ad.draw.presenter.c.b.1
        @Override // com.kwad.sdk.core.webview.d.a.a
        public final void a(com.kwad.sdk.core.webview.d.b.a aVar) {
            if (b.this.dQ.dB != null) {
                b.this.dQ.dB.onAdClicked();
            }
        }
    };
    private FrameLayout fu;

    @Override // com.kwad.components.ad.draw.b.a, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        com.kwad.components.ad.l.b bVar = this.dQ.dW;
        this.dW = bVar;
        if (bVar == null) {
            return;
        }
        bVar.a(this.fl);
        com.kwad.components.ad.l.b bVar2 = this.dW;
        FrameLayout frameLayout = this.fu;
        com.kwad.components.ad.draw.b.b bVar3 = this.dQ;
        bVar2.a(frameLayout, bVar3.mRootContainer, bVar3.mAdTemplate, bVar3.mApkDownloadHelper);
        this.dW.a((b.InterfaceC0484b) null);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
        this.fu = (FrameLayout) findViewById(R.id.ksad_play_end_web_card_container);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        com.kwad.components.ad.l.b bVar = this.dW;
        if (bVar != null) {
            bVar.oe();
        }
    }
}
