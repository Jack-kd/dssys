package com.meishu.sdk.core.webview.listener;

/* loaded from: classes4.dex */
public class e implements d {

    /* renamed from: a, reason: collision with root package name */
    public final d f32131a;

    public e(d dVar) {
        this.f32131a = dVar;
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public boolean clickAppDownloadInfo(String str) {
        d dVar = this.f32131a;
        if (dVar != null) {
            return dVar.clickAppDownloadInfo(str);
        }
        return false;
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public void dismissAd() {
        d dVar = this.f32131a;
        if (dVar != null) {
            dVar.dismissAd();
        }
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public String getActivityState() {
        d dVar = this.f32131a;
        return dVar != null ? dVar.getActivityState() : "";
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public String getDeviceInfo() {
        d dVar = this.f32131a;
        return dVar != null ? dVar.getDeviceInfo() : "";
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public boolean isAppBackground() {
        d dVar = this.f32131a;
        if (dVar != null) {
            return dVar.isAppBackground();
        }
        return false;
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public boolean isSoundsOpen() {
        d dVar = this.f32131a;
        if (dVar != null) {
            return dVar.isSoundsOpen();
        }
        return false;
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public void notifyRewarded() {
        d dVar = this.f32131a;
        if (dVar != null) {
            dVar.notifyRewarded();
        }
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public boolean setShakeOrTurnState(boolean z2) {
        d dVar = this.f32131a;
        return dVar != null ? dVar.setShakeOrTurnState(z2) : z2;
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public void setSoundsOpen(boolean z2) {
        d dVar = this.f32131a;
        if (dVar != null) {
            dVar.setSoundsOpen(z2);
        }
    }

    @Override // com.meishu.sdk.core.webview.listener.d
    public void setVideoPlayState(boolean z2) {
        d dVar = this.f32131a;
        if (dVar != null) {
            dVar.setVideoPlayState(z2);
        }
    }
}
