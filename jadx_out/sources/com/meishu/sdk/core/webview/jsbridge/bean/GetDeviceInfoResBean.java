package com.meishu.sdk.core.webview.jsbridge.bean;

import java.io.Serializable;

/* loaded from: classes4.dex */
public class GetDeviceInfoResBean implements Serializable {
    private static final long serialVersionUID = 1;
    private AdConfig ad_config;
    private int shakable;
    private int top_bar_height;
    private int twistable;

    public static class AdConfig implements Serializable {
        private static final long serialVersionUID = 1;
        private int padding_bottom;
        private int padding_left;
        private int padding_right;
    }

    public static GetDeviceInfoResBean make(int i2, boolean z2, boolean z3, AdConfig adConfig) {
        GetDeviceInfoResBean getDeviceInfoResBean = new GetDeviceInfoResBean();
        getDeviceInfoResBean.top_bar_height = i2;
        getDeviceInfoResBean.ad_config = adConfig;
        getDeviceInfoResBean.shakable = z2 ? 1 : 0;
        getDeviceInfoResBean.twistable = z3 ? 1 : 0;
        return getDeviceInfoResBean;
    }

    public static AdConfig makeAdConfig(int i2, int i3, int i4) {
        AdConfig adConfig = new AdConfig();
        adConfig.padding_left = i2;
        adConfig.padding_right = i3;
        adConfig.padding_bottom = i4;
        return adConfig;
    }
}
