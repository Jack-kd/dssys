package com.beizi.fusion;

import android.content.Context;
import java.util.Map;

/* loaded from: classes2.dex */
public class NativeAd {

    /* renamed from: a, reason: collision with root package name */
    private oi f12544a;

    public NativeAd(Context context, String str, NativeAdListener nativeAdListener, long j2, int i2) {
        this.f12544a = new oi(context, str, nativeAdListener, j2, i2);
    }

    public void destroy() {
        oi oiVar = this.f12544a;
        if (oiVar != null) {
            oiVar.Y();
        }
    }

    public String getCustomExtraData() {
        oi oiVar = this.f12544a;
        if (oiVar == null) {
            return null;
        }
        return oiVar.r();
    }

    public String getCustomExtraJsonData() {
        oi oiVar = this.f12544a;
        if (oiVar == null) {
            return null;
        }
        return oiVar.s();
    }

    public int getECPM() {
        oi oiVar = this.f12544a;
        if (oiVar != null) {
            return oiVar.Z();
        }
        return -1;
    }

    public boolean isValid() {
        oi oiVar = this.f12544a;
        if (oiVar == null) {
            return false;
        }
        return oiVar.J();
    }

    public void loadAd(float f2, float f3) throws InterruptedException {
        oi oiVar = this.f12544a;
        if (oiVar != null) {
            oiVar.a(f2, f3);
        }
    }

    public void pause() {
        oi oiVar = this.f12544a;
        if (oiVar != null) {
            oiVar.a0();
        }
    }

    public void resume() {
        oi oiVar = this.f12544a;
        if (oiVar != null) {
            oiVar.b0();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        oi oiVar = this.f12544a;
        if (oiVar == null || map == null) {
            return;
        }
        oiVar.a(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        oi oiVar = this.f12544a;
        if (oiVar == null || map == null) {
            return;
        }
        oiVar.b(map);
    }

    public void setBidResponse(String str) {
        oi oiVar = this.f12544a;
        if (oiVar == null) {
            return;
        }
        oiVar.m(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        oi oiVar = this.f12544a;
        if (oiVar == null) {
            return;
        }
        oiVar.c(map);
    }
}
