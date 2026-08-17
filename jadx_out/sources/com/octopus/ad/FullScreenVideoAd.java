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
public final class FullScreenVideoAd implements AdLifeControl, IBidding {

    /* renamed from: a, reason: collision with root package name */
    private final com.octopus.ad.internal.e.f f33211a;

    @RequiresPermission(g.f31159a)
    public FullScreenVideoAd(Context context, String str, FullScreenVideoAdListener fullScreenVideoAdListener) {
        this(context, str, fullScreenVideoAdListener, "");
    }

    @Override // com.octopus.ad.AdLifeControl
    public void cancel() {
        this.f33211a.cancel();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void destroy() {
        onDestroyLifeCycle();
        cancel();
    }

    public String getAdSlotId() {
        return this.f33211a.getAdSlotId();
    }

    public Map<String, Object> getMediaExtraInfo() {
        com.octopus.ad.internal.e.f fVar = this.f33211a;
        return fVar != null ? fVar.getMediaExtraInfo() : Collections.EMPTY_MAP;
    }

    public int getPrice() {
        return this.f33211a.getPrice();
    }

    public String getRequestId() {
        return this.f33211a.getRequestId();
    }

    public ShakeValue getShakeValue() {
        com.octopus.ad.internal.e.f fVar = this.f33211a;
        if (fVar != null) {
            return fVar.getShakeValue();
        }
        return null;
    }

    public String getTagId() {
        return this.f33211a.getTagId();
    }

    public boolean isLoaded() {
        return this.f33211a.f();
    }

    public boolean isLoading() {
        return this.f33211a.j();
    }

    public boolean isValid() {
        return isLoaded() && this.f33211a.g();
    }

    @RequiresPermission(g.f31159a)
    public void loadAd() {
        this.f33211a.a(new AdRequest.Builder().build().a());
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onDestroyLifeCycle() {
        this.f33211a.onDestroyLifeCycle();
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
        this.f33211a.setOpensNativeBrowser(z2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i2, String str, String str2) {
        com.octopus.ad.internal.e.f fVar = this.f33211a;
        if (fVar == null) {
            return;
        }
        fVar.sendLossNotice(i2, str, str2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i2) {
        com.octopus.ad.internal.e.f fVar = this.f33211a;
        if (fVar == null) {
            return;
        }
        fVar.sendWinNotice(i2);
    }

    public void setChannel(String str) {
        this.f33211a.setChannel(str);
    }

    public void setOnCpaListener(OnCpaListener onCpaListener) {
        com.octopus.ad.internal.e.f fVar = this.f33211a;
        if (fVar == null) {
            return;
        }
        fVar.setOnCpaListener(onCpaListener);
    }

    public void setOnSensorListener(OnSensorListener onSensorListener) {
        com.octopus.ad.internal.e.f fVar = this.f33211a;
        if (fVar == null) {
            return;
        }
        fVar.setOnSensorListener(onSensorListener);
    }

    public void setRequestId(String str) {
        this.f33211a.setRequestId(str);
    }

    public void setVideoStateListener(VideoStateListener videoStateListener) {
        com.octopus.ad.internal.e.f fVar = this.f33211a;
        if (fVar == null) {
            return;
        }
        fVar.setVideoStateListener(videoStateListener);
    }

    public void show(Activity activity) {
        this.f33211a.a(activity);
    }

    @RequiresPermission(g.f31159a)
    public FullScreenVideoAd(Context context, String str, FullScreenVideoAdListener fullScreenVideoAdListener, String str2) {
        com.octopus.ad.internal.e.f fVar = new com.octopus.ad.internal.e.f(context == null ? q.a().l() : context, p.FULLSCREEN, false, str2);
        this.f33211a = fVar;
        fVar.setAdSlotId(str);
        fVar.setFullScreenVideoAdListener(fullScreenVideoAdListener);
    }

    @RequiresPermission(g.f31159a)
    public void loadAd(AdRequest adRequest) {
        this.f33211a.a(adRequest.a());
    }
}
