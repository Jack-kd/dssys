package com.kwad.components.ad.reward.presenter.b;

import com.kwad.components.offline.api.core.adlive.IAdLiveOfflineView;
import com.kwad.components.offline.api.core.adlive.listener.AdLiveHandleClickListener;

/* loaded from: classes4.dex */
public final class a extends com.kwad.components.ad.reward.presenter.b {
    private AdLiveHandleClickListener er = new AdLiveHandleClickListener() { // from class: com.kwad.components.ad.reward.presenter.b.a.1
        @Override // com.kwad.components.offline.api.core.adlive.listener.AdLiveHandleClickListener
        public final void handleAdLiveClick(int i2) {
            if (i2 == 1) {
                a.this.uj.a(1, a.this.getContext(), 115, 1);
            } else if (i2 == 2) {
                a.this.uj.a(1, a.this.getContext(), 117, 1);
            }
        }
    };

    @Override // com.kwad.components.ad.reward.presenter.b, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        IAdLiveOfflineView iAdLiveOfflineView = this.uj.dU;
        if (iAdLiveOfflineView != null) {
            iAdLiveOfflineView.registerClickListener(this.er);
        }
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        IAdLiveOfflineView iAdLiveOfflineView = this.uj.dU;
        if (iAdLiveOfflineView != null) {
            iAdLiveOfflineView.unRegisterClickListener(this.er);
        }
    }
}
