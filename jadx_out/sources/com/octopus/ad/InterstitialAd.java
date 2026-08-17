package com.octopus.ad;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RequiresPermission;
import com.kuaishou.weapon.p0.g;
import com.octopus.ad.AdRequest;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.q;
import com.octopus.ad.internal.video.VideoStateListener;
import com.octopus.ad.listener.OnCpaListener;
import com.octopus.ad.model.ShakeValue;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes4.dex */
public final class InterstitialAd implements AdLifeControl, IBidding {

    /* renamed from: a, reason: collision with root package name */
    private final com.octopus.ad.internal.e.f f33212a;

    @RequiresPermission(g.f31159a)
    public InterstitialAd(Context context, String str, InterstitialAdListener interstitialAdListener) {
        this(context, str, interstitialAdListener, "");
    }

    @Override // com.octopus.ad.AdLifeControl
    public void cancel() {
        this.f33212a.cancel();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void destroy() {
        onDestroyLifeCycle();
        cancel();
    }

    public String getAdSlotId() {
        return this.f33212a.getAdSlotId();
    }

    public Map<String, Object> getMediaExtraInfo() {
        com.octopus.ad.internal.e.f fVar = this.f33212a;
        return fVar != null ? fVar.getMediaExtraInfo() : Collections.EMPTY_MAP;
    }

    public int getPrice() {
        return this.f33212a.getPrice();
    }

    public String getRequestId() {
        return this.f33212a.getRequestId();
    }

    public ShakeValue getShakeValue() {
        com.octopus.ad.internal.e.f fVar = this.f33212a;
        if (fVar != null) {
            return fVar.getShakeValue();
        }
        return null;
    }

    public String getTagId() {
        return this.f33212a.getTagId();
    }

    public boolean isLoaded() {
        return this.f33212a.f();
    }

    public boolean isLoading() {
        return this.f33212a.j();
    }

    public boolean isValid() {
        return isLoaded() && this.f33212a.g();
    }

    @RequiresPermission(g.f31159a)
    public void loadAd() {
        this.f33212a.a(new AdRequest.Builder().build().a());
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onDestroyLifeCycle() {
        this.f33212a.onDestroyLifeCycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onPauseLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onRestartLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onResumeLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStartLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStopLifeCycle() {
    }

    public void openAdInNativeBrowser(boolean z2) {
        this.f33212a.setOpensNativeBrowser(z2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i2, String str, String str2) {
        com.octopus.ad.internal.e.f fVar = this.f33212a;
        if (fVar == null) {
            return;
        }
        fVar.sendLossNotice(i2, str, str2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i2) {
        com.octopus.ad.internal.e.f fVar = this.f33212a;
        if (fVar == null) {
            return;
        }
        fVar.sendWinNotice(i2);
    }

    public void setChannel(String str) {
        this.f33212a.setChannel(str);
    }

    public void setClickBackClose(boolean z2) {
        this.f33212a.setClickBackClose(z2);
    }

    public void setOnCpaListener(OnCpaListener onCpaListener) {
        com.octopus.ad.internal.e.f fVar = this.f33212a;
        if (fVar == null) {
            return;
        }
        fVar.setOnCpaListener(onCpaListener);
    }

    public void setOnSensorListener(OnSensorListener onSensorListener) {
        com.octopus.ad.internal.e.f fVar = this.f33212a;
        if (fVar == null) {
            return;
        }
        fVar.setOnSensorListener(onSensorListener);
    }

    public void setRequestId(String str) {
        this.f33212a.setRequestId(str);
    }

    public void setVideoStateListener(VideoStateListener videoStateListener) {
        com.octopus.ad.internal.e.f fVar = this.f33212a;
        if (fVar == null) {
            return;
        }
        fVar.setVideoStateListener(videoStateListener);
    }

    public void show(Activity activity) {
        this.f33212a.a(activity.getApplicationContext());
    }

    @RequiresPermission(g.f31159a)
    public InterstitialAd(Context context, String str, InterstitialAdListener interstitialAdListener, String str2) {
        com.octopus.ad.internal.e.f fVar = new com.octopus.ad.internal.e.f(context == null ? q.a().l() : context, p.INTERSTITIAL, false, str2);
        this.f33212a = fVar;
        fVar.setAdSlotId(str);
        fVar.setInterstitialAdListener(interstitialAdListener);
    }

    @RequiresPermission(g.f31159a)
    public void loadAd(AdRequest adRequest) {
        this.f33212a.a(adRequest.a());
    }
}
