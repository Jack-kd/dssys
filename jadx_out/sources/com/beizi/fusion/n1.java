package com.beizi.fusion;

import com.kwad.library.solder.lib.ext.PluginError;

/* loaded from: classes2.dex */
public enum n1 {
    ERROR_NO_FILL(2001, "no bid model fill"),
    ERROR_RESPONSE_PARSE_FAILED(2002, "ad response parse failed"),
    ERROR_SDK_NOT_INIT(2003, "sdk not init"),
    ERROR_REQUEST_TOO_OFTEN(PluginError.ERROR_UPD_EXTRACT, "request too often"),
    ERROR_AD_BEING_COMPLAINED(PluginError.ERROR_UPD_CAPACITY, "ad type being complained"),
    ERROR_REQUEST_TIME_OUT(PluginError.ERROR_UPD_REQUEST, "request timeout"),
    ERROR_REQUEST_FAILED(PluginError.ERROR_UPD_NOT_WIFI_DOWNLOAD, "request error"),
    ERROR_INVALID_CONFIG(PluginError.ERROR_UPD_NO_DOWNLOADER, "invalid config"),
    ERROR_AD_REQUESTING(PluginError.ERROR_UPD_FILE_NOT_FOUND, "ad is requesting"),
    ERROR_UNITE_CONTROL(PluginError.ERROR_UPD_PLUGIN_CONNECTION, "unite control"),
    ERROR_RENDER_FAILED(2011, "render failed"),
    ERROR_ACTIVITY_ISSUE(2012, "local activity error"),
    ERROR_INVALID_SPACE_ID(2013, "invalid space id"),
    ERROR_AD_NOT_READY_TO_SHOW(2014, "ad not ready to show"),
    ERROR_S2S_VERIFICATION_FAILED(2015, "s2s verification failed"),
    ERROR_S2S_EXPRESS_TYPE_ERROR(2016, "s2s express type error"),
    ERROR_UNEXPECTED(2099, "error unexpected");


    /* renamed from: a, reason: collision with root package name */
    private final int f15216a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15217b;

    n1(int i2, String str) {
        this.f15216a = i2;
        this.f15217b = str;
    }

    public int b() {
        return this.f15216a;
    }

    public String c() {
        return this.f15217b;
    }
}
