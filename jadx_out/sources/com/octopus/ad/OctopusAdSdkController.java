package com.octopus.ad;

import com.octopus.ad.model.OctLocation;
import com.octopus.ad.model.ShakeValue;

/* loaded from: classes4.dex */
public abstract class OctopusAdSdkController {
    public String getAuthorities() {
        return "";
    }

    public String getImei() {
        return "";
    }

    public OctLocation getLocation() {
        return null;
    }

    public String getOaid() {
        return "";
    }

    public ShakeValue getShakeValue() {
        return null;
    }

    public boolean isCanShake() {
        return true;
    }

    public boolean isCanUseAppList() {
        return true;
    }

    public boolean isCanUseLocation() {
        return true;
    }

    public boolean isCanUseOaid() {
        return true;
    }

    public boolean isCanUsePhoneState() {
        return true;
    }

    public boolean isShowFeedBack() {
        return true;
    }

    public boolean isUseHttps() {
        return false;
    }
}
