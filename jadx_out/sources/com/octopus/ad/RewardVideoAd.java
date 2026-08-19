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
public final class RewardVideoAd implements IBidding, IRewardVideoAd {

    /* renamed from: a, reason: collision with root package name */
    private final com.octopus.ad.internal.e.f f33222a;

    @RequiresPermission(g.f31159a)
    public RewardVideoAd(Context context, String str, RewardVideoAdListener rewardVideoAdListener) {
        this(context, str, rewardVideoAdListener, "");
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public void destroy() {
        this.f33222a.destroy();
    }

    public Map<String, Object> getMediaExtraInfo() {
        com.octopus.ad.internal.e.f fVar = this.f33222a;
        return fVar != null ? fVar.getMediaExtraInfo() : Collections.EMPTY_MAP;
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public int getPrice() {
        return this.f33222a.getPrice();
    }

    public String getRequestId() {
        return this.f33222a.getRequestId();
    }

    public ShakeValue getShakeValue() {
        com.octopus.ad.internal.e.f fVar = this.f33222a;
        if (fVar != null) {
            return fVar.getShakeValue();
        }
        return null;
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public String getTagId() {
        return this.f33222a.getTagId();
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public boolean isLoaded() {
        return this.f33222a.f();
    }

    public boolean isValid() {
        return isLoaded() && this.f33222a.g();
    }

    @Override // com.octopus.ad.IRewardVideoAd
    @RequiresPermission(g.f31159a)
    public void loadAd() {
        this.f33222a.a(new AdRequest.Builder().build().a());
    }

    public void openAdInNativeBrowser(boolean z2) {
        this.f33222a.c(z2);
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public void pause() {
        this.f33222a.t();
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public void resume() {
        this.f33222a.u();
    }

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i2, String str, String str2) {
        com.octopus.ad.internal.e.f fVar = this.f33222a;
        if (fVar == null) {
            return;
        }
        fVar.sendLossNotice(i2, str, str2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i2) {
        com.octopus.ad.internal.e.f fVar = this.f33222a;
        if (fVar == null) {
            return;
        }
        fVar.sendWinNotice(i2);
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public void setAdSlotId(String str) {
        this.f33222a.setAdSlotId(str);
    }

    public void setChannel(String str) {
        this.f33222a.setChannel(str);
    }

    public void setExtraData(String str) {
        this.f33222a.setExtraData(str);
    }

    public void setOnCpaListener(OnCpaListener onCpaListener) {
        com.octopus.ad.internal.e.f fVar = this.f33222a;
        if (fVar == null) {
            return;
        }
        fVar.setOnCpaListener(onCpaListener);
    }

    public void setOnSensorListener(OnSensorListener onSensorListener) {
        com.octopus.ad.internal.e.f fVar = this.f33222a;
        if (fVar == null) {
            return;
        }
        fVar.setOnSensorListener(onSensorListener);
    }

    public void setRequestId(String str) {
        this.f33222a.setRequestId(str);
    }

    public void setUserId(String str) {
        this.f33222a.setUserId(str);
    }

    public void setVideoStateListener(VideoStateListener videoStateListener) {
        com.octopus.ad.internal.e.f fVar = this.f33222a;
        if (fVar == null) {
            return;
        }
        fVar.setVideoStateListener(videoStateListener);
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public void show(Activity activity) {
        if (isLoaded()) {
            this.f33222a.a(activity);
        }
    }

    @RequiresPermission(g.f31159a)
    public RewardVideoAd(Context context, String str, RewardVideoAdListener rewardVideoAdListener, String str2) {
        com.octopus.ad.internal.e.f fVar = new com.octopus.ad.internal.e.f(context == null ? q.a().l() : context, p.REWARD, false, str2);
        this.f33222a = fVar;
        fVar.setAdSlotId(str);
        fVar.setRewardVideoAdListener(rewardVideoAdListener);
    }
}
