package com.beizi.fusion;

import android.content.Context;
import android.view.ViewGroup;
import java.util.Map;

/* loaded from: classes2.dex */
public class UnifiedSplashAd {

    /* renamed from: a, reason: collision with root package name */
    private rp f12557a;

    public UnifiedSplashAd(Context context, String str, UnifiedSplashAdListener unifiedSplashAdListener, long j2) {
        this.f12557a = new rp(context, str, unifiedSplashAdListener, j2);
    }

    public void adsInteractiveActions(UnifiedSplashActionData unifiedSplashActionData) {
        rp rpVar = this.f12557a;
        if (rpVar != null) {
            rpVar.a(unifiedSplashActionData);
        }
    }

    public void destroy() {
        rp rpVar = this.f12557a;
        if (rpVar != null) {
            rpVar.Y();
        }
    }

    public String getCustomExtraData() {
        rp rpVar = this.f12557a;
        if (rpVar == null) {
            return null;
        }
        return rpVar.r();
    }

    public String getCustomExtraJsonData() {
        rp rpVar = this.f12557a;
        if (rpVar == null) {
            return null;
        }
        return rpVar.s();
    }

    public int getECPM() {
        rp rpVar = this.f12557a;
        if (rpVar != null) {
            return rpVar.Z();
        }
        return -1;
    }

    public boolean isValid() {
        rp rpVar = this.f12557a;
        if (rpVar == null) {
            return false;
        }
        return rpVar.J();
    }

    public void loadAd() throws InterruptedException {
        rp rpVar = this.f12557a;
        if (rpVar != null) {
            rpVar.a0();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        rp rpVar = this.f12557a;
        if (rpVar == null || map == null) {
            return;
        }
        rpVar.a(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        rp rpVar = this.f12557a;
        if (rpVar == null || map == null) {
            return;
        }
        rpVar.b(map);
    }

    public void setBidResponse(String str) {
        rp rpVar = this.f12557a;
        if (rpVar == null) {
            return;
        }
        rpVar.m(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        rp rpVar = this.f12557a;
        if (rpVar == null) {
            return;
        }
        rpVar.c(map);
    }

    public void showAd(ViewGroup viewGroup) {
        rp rpVar = this.f12557a;
        if (rpVar != null) {
            rpVar.c(viewGroup);
        }
    }
}
