package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Map;

/* loaded from: classes2.dex */
public class InterstitialAd {

    /* renamed from: a, reason: collision with root package name */
    private dg f12538a;

    public InterstitialAd(Context context, String str, InterstitialAdListener interstitialAdListener, long j2) {
        this.f12538a = new dg(context, str, interstitialAdListener, j2, 0);
    }

    public void destroy() {
        dg dgVar = this.f12538a;
        if (dgVar != null) {
            dgVar.Y();
        }
    }

    public String getCustomExtraData() {
        dg dgVar = this.f12538a;
        if (dgVar == null) {
            return null;
        }
        return dgVar.r();
    }

    public String getCustomExtraJsonData() {
        dg dgVar = this.f12538a;
        if (dgVar == null) {
            return null;
        }
        return dgVar.s();
    }

    public int getECPM() {
        dg dgVar = this.f12538a;
        if (dgVar != null) {
            return dgVar.Z();
        }
        return -1;
    }

    public boolean isLoaded() {
        dg dgVar = this.f12538a;
        if (dgVar != null) {
            return dgVar.a0();
        }
        return false;
    }

    public boolean isValid() {
        dg dgVar = this.f12538a;
        if (dgVar == null) {
            return false;
        }
        return dgVar.J();
    }

    public void loadAd() throws InterruptedException {
        dg dgVar = this.f12538a;
        if (dgVar != null) {
            dgVar.b0();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        dg dgVar = this.f12538a;
        if (dgVar == null || map == null) {
            return;
        }
        dgVar.a(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        dg dgVar = this.f12538a;
        if (dgVar == null || map == null) {
            return;
        }
        dgVar.b(map);
    }

    public void setAdVersion(int i2) {
        dg dgVar = this.f12538a;
        if (dgVar != null) {
            dgVar.c(i2);
        }
    }

    public void setBidResponse(String str) {
        dg dgVar = this.f12538a;
        if (dgVar == null) {
            return;
        }
        dgVar.m(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        dg dgVar = this.f12538a;
        if (dgVar == null) {
            return;
        }
        dgVar.c(map);
    }

    public void showAd(@NonNull Activity activity) {
        dg dgVar = this.f12538a;
        if (dgVar != null) {
            dgVar.a(activity);
        }
    }

    public InterstitialAd(Context context, String str, InterstitialAdListener interstitialAdListener, long j2, int i2) {
        this.f12538a = new dg(context, str, interstitialAdListener, j2, i2);
    }
}
