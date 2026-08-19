package com.beizi.fusion.bzunified;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.r4;
import java.util.Map;

/* loaded from: classes2.dex */
public class BeiZiUnifiedAd {
    private r4 mBeiZiUnifiedManager;
    private String mSpaceId;
    private int mTimeout;

    public BeiZiUnifiedAd(Context context, BeiZiUnifiedAdRequestParameters beiZiUnifiedAdRequestParameters, BeiZiUnifiedAdListener beiZiUnifiedAdListener) {
        this.mSpaceId = null;
        this.mTimeout = 5000;
        if (beiZiUnifiedAdRequestParameters != null) {
            this.mSpaceId = beiZiUnifiedAdRequestParameters.getSpaceId();
            this.mTimeout = beiZiUnifiedAdRequestParameters.getTimeout();
        }
        this.mBeiZiUnifiedManager = new r4(context, this.mSpaceId, this.mTimeout, beiZiUnifiedAdListener);
    }

    public void destroy() {
        r4 r4Var = this.mBeiZiUnifiedManager;
        if (r4Var == null) {
            return;
        }
        r4Var.Y();
    }

    public String getCustomExtraData() {
        r4 r4Var = this.mBeiZiUnifiedManager;
        if (r4Var == null) {
            return null;
        }
        return r4Var.r();
    }

    public String getCustomExtraJsonData() {
        r4 r4Var = this.mBeiZiUnifiedManager;
        if (r4Var == null) {
            return null;
        }
        return r4Var.s();
    }

    public boolean isLoaded() {
        r4 r4Var = this.mBeiZiUnifiedManager;
        if (r4Var != null) {
            return r4Var.Z();
        }
        return false;
    }

    public boolean isValid() {
        r4 r4Var = this.mBeiZiUnifiedManager;
        if (r4Var == null) {
            return false;
        }
        return r4Var.J();
    }

    public void loadAd() throws InterruptedException {
        r4 r4Var = this.mBeiZiUnifiedManager;
        if (r4Var != null) {
            r4Var.a0();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        r4 r4Var = this.mBeiZiUnifiedManager;
        if (r4Var == null || map == null) {
            return;
        }
        r4Var.a(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        r4 r4Var = this.mBeiZiUnifiedManager;
        if (r4Var == null || map == null) {
            return;
        }
        r4Var.b(map);
    }

    public void setBidResponse(String str) {
        if (this.mBeiZiUnifiedManager == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.mBeiZiUnifiedManager.m(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        r4 r4Var = this.mBeiZiUnifiedManager;
        if (r4Var == null) {
            return;
        }
        r4Var.c(map);
    }
}
