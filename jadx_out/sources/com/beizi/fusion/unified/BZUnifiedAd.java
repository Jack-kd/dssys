package com.beizi.fusion.unified;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.f3;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class BZUnifiedAd {
    private int mAdType;
    private f3 mBZUnifiedManager;
    private String mSpaceId;
    private int mTimeout;

    public BZUnifiedAd(Context context, BZBZUnifiedAdRequestParameters bZBZUnifiedAdRequestParameters, BZUnifiedAdListener bZUnifiedAdListener) {
        this.mSpaceId = null;
        this.mTimeout = 5000;
        this.mAdType = 0;
        if (bZBZUnifiedAdRequestParameters != null) {
            this.mSpaceId = bZBZUnifiedAdRequestParameters.getSpaceId();
            this.mTimeout = bZBZUnifiedAdRequestParameters.getTimeout();
            this.mAdType = bZBZUnifiedAdRequestParameters.getAdType();
        }
        this.mBZUnifiedManager = new f3(context, this.mSpaceId, this.mTimeout, this.mAdType, bZUnifiedAdListener);
    }

    public void adsInteractiveActions(BZUnifiedAdActionData bZUnifiedAdActionData) {
        f3 f3Var = this.mBZUnifiedManager;
        if (f3Var == null) {
            return;
        }
        f3Var.a(bZUnifiedAdActionData);
    }

    public void destroy() {
        f3 f3Var = this.mBZUnifiedManager;
        if (f3Var == null) {
            return;
        }
        f3Var.Y();
    }

    public String getCustomExtraJsonData() {
        f3 f3Var = this.mBZUnifiedManager;
        if (f3Var == null) {
            return null;
        }
        return f3Var.s();
    }

    public boolean isValid() {
        f3 f3Var = this.mBZUnifiedManager;
        if (f3Var == null) {
            return false;
        }
        return f3Var.J();
    }

    public void loadAd() throws InterruptedException {
        f3 f3Var = this.mBZUnifiedManager;
        if (f3Var != null) {
            f3Var.Z();
        }
    }

    public void notifyVideoPlayProgress(int i2) {
        f3 f3Var = this.mBZUnifiedManager;
        if (f3Var == null) {
            return;
        }
        f3Var.c(i2);
    }

    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list) {
        f3 f3Var = this.mBZUnifiedManager;
        if (f3Var == null) {
            return;
        }
        f3Var.a(viewGroup, list);
    }

    public void sendLossNotificationWithInfo(Map map) {
        f3 f3Var = this.mBZUnifiedManager;
        if (f3Var == null || map == null) {
            return;
        }
        f3Var.a(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        f3 f3Var = this.mBZUnifiedManager;
        if (f3Var == null || map == null) {
            return;
        }
        f3Var.b(map);
    }

    public void setBidResponse(String str) {
        if (this.mBZUnifiedManager == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.mBZUnifiedManager.m(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        f3 f3Var = this.mBZUnifiedManager;
        if (f3Var == null) {
            return;
        }
        f3Var.c(map);
    }
}
