package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Map;

/* loaded from: classes2.dex */
public class UnifiedCustomAd {

    /* renamed from: a, reason: collision with root package name */
    private np f12556a;

    public UnifiedCustomAd(Context context, String str, NativeAdListener nativeAdListener, long j2, int i2) {
        this.f12556a = new np(context, str, nativeAdListener, j2, i2);
    }

    public void destroy() {
        np npVar = this.f12556a;
        if (npVar != null) {
            npVar.Y();
        }
    }

    public String getCustomExtraData() {
        np npVar = this.f12556a;
        if (npVar == null) {
            return null;
        }
        return npVar.r();
    }

    public String getCustomExtraJsonData() {
        np npVar = this.f12556a;
        if (npVar == null) {
            return null;
        }
        return npVar.s();
    }

    public boolean isLoaded() {
        np npVar = this.f12556a;
        if (npVar != null) {
            return npVar.Z();
        }
        return false;
    }

    public boolean isValid() {
        np npVar = this.f12556a;
        if (npVar == null) {
            return false;
        }
        return npVar.J();
    }

    public void loadAd() throws InterruptedException {
        np npVar = this.f12556a;
        if (npVar != null) {
            npVar.a0();
        }
    }

    public void resume() {
        np npVar = this.f12556a;
        if (npVar != null) {
            npVar.b0();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        np npVar = this.f12556a;
        if (npVar == null || map == null) {
            return;
        }
        npVar.a(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        np npVar = this.f12556a;
        if (npVar == null || map == null) {
            return;
        }
        npVar.b(map);
    }

    public void setBidResponse(String str) {
        np npVar = this.f12556a;
        if (npVar == null) {
            return;
        }
        npVar.m(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        np npVar = this.f12556a;
        if (npVar == null) {
            return;
        }
        npVar.c(map);
    }

    public void showAd(@NonNull Activity activity) {
        np npVar = this.f12556a;
        if (npVar != null) {
            npVar.a(activity);
        }
    }
}
