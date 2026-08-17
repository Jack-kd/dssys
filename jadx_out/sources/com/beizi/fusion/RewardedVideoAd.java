package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Map;

/* loaded from: classes2.dex */
public class RewardedVideoAd {

    /* renamed from: a, reason: collision with root package name */
    private km f12550a;

    /* renamed from: b, reason: collision with root package name */
    private String f12551b;

    /* renamed from: c, reason: collision with root package name */
    private String f12552c;

    public RewardedVideoAd(Context context, String str, RewardedVideoAdListener rewardedVideoAdListener, long j2, int i2) {
        this.f12550a = new km(context, str, rewardedVideoAdListener, j2, i2);
    }

    public void destroy() {
        km kmVar = this.f12550a;
        if (kmVar != null) {
            kmVar.Y();
        }
    }

    public String getCustomExtraData() {
        km kmVar = this.f12550a;
        if (kmVar == null) {
            return null;
        }
        return kmVar.r();
    }

    public String getCustomExtraJsonData() {
        km kmVar = this.f12550a;
        if (kmVar == null) {
            return null;
        }
        return kmVar.s();
    }

    public int getECPM() {
        km kmVar = this.f12550a;
        if (kmVar != null) {
            return kmVar.Z();
        }
        return -1;
    }

    public String getExtra() {
        return this.f12552c;
    }

    public String getUserId() {
        return this.f12551b;
    }

    public boolean isLoaded() {
        km kmVar = this.f12550a;
        if (kmVar != null) {
            return kmVar.c0();
        }
        return false;
    }

    public boolean isValid() {
        km kmVar = this.f12550a;
        if (kmVar == null) {
            return false;
        }
        return kmVar.J();
    }

    public void loadAd() throws InterruptedException {
        km kmVar = this.f12550a;
        if (kmVar != null) {
            kmVar.d0();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        km kmVar = this.f12550a;
        if (kmVar == null || map == null) {
            return;
        }
        kmVar.a(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        km kmVar = this.f12550a;
        if (kmVar == null || map == null) {
            return;
        }
        kmVar.b(map);
    }

    public void setBidResponse(String str) {
        km kmVar = this.f12550a;
        if (kmVar == null) {
            return;
        }
        kmVar.m(str);
    }

    public void setExtra(String str) {
        km kmVar = this.f12550a;
        if (kmVar != null) {
            kmVar.n(str);
        }
    }

    public void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        km kmVar = this.f12550a;
        if (kmVar != null) {
            kmVar.a(rewardedVideoAdListener);
        }
    }

    public void setSpaceParam(Map<String, Object> map) {
        km kmVar = this.f12550a;
        if (kmVar == null) {
            return;
        }
        kmVar.c(map);
    }

    public void setUserId(String str) {
        km kmVar = this.f12550a;
        if (kmVar != null) {
            kmVar.o(str);
        }
    }

    public void showAd(@NonNull Activity activity) {
        km kmVar = this.f12550a;
        if (kmVar != null) {
            kmVar.a(activity);
        }
    }
}
