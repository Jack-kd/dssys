package com.beizi.fusion;

import android.content.Context;
import java.util.Map;

/* loaded from: classes2.dex */
public class NativeUnifiedAd {

    /* renamed from: a, reason: collision with root package name */
    private vi f12545a;

    public NativeUnifiedAd(Context context, String str, NativeUnifiedAdListener nativeUnifiedAdListener, long j2, int i2) {
        this.f12545a = new vi(context, str, nativeUnifiedAdListener, j2, i2);
    }

    public void destroy() {
        vi viVar = this.f12545a;
        if (viVar != null) {
            viVar.Y();
        }
    }

    public String getCustomExtraData() {
        vi viVar = this.f12545a;
        if (viVar == null) {
            return null;
        }
        return viVar.r();
    }

    public String getCustomExtraJsonData() {
        vi viVar = this.f12545a;
        if (viVar == null) {
            return null;
        }
        return viVar.s();
    }

    public int getECPM() {
        vi viVar = this.f12545a;
        if (viVar != null) {
            return viVar.Z();
        }
        return -1;
    }

    public boolean isLoaded() {
        vi viVar = this.f12545a;
        if (viVar != null) {
            return viVar.a0();
        }
        return false;
    }

    public boolean isValid() {
        vi viVar = this.f12545a;
        if (viVar == null) {
            return false;
        }
        return viVar.J();
    }

    public void loadAd() throws InterruptedException {
        vi viVar = this.f12545a;
        if (viVar != null) {
            viVar.b0();
        }
    }

    public void resume() {
        vi viVar = this.f12545a;
        if (viVar != null) {
            viVar.c0();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        vi viVar = this.f12545a;
        if (viVar == null || map == null) {
            return;
        }
        viVar.a(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        vi viVar = this.f12545a;
        if (viVar == null || map == null) {
            return;
        }
        viVar.b(map);
    }

    public void setBidResponse(String str) {
        vi viVar = this.f12545a;
        if (viVar == null) {
            return;
        }
        viVar.m(str);
    }

    public void setHideAdLogo(boolean z2) {
        vi viVar = this.f12545a;
        if (viVar != null) {
            viVar.b(z2);
        }
    }

    public void setHideDownloadInfo(boolean z2) {
        vi viVar = this.f12545a;
        if (viVar != null) {
            viVar.c(z2);
        }
    }

    public void setSpaceParam(Map<String, Object> map) {
        vi viVar = this.f12545a;
        if (viVar == null) {
            return;
        }
        viVar.c(map);
    }
}
