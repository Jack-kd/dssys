package com.byazt.pg;

import java.util.Map;

/* loaded from: classes3.dex */
public interface jl {
    String getActiveSimOperatorStr();

    String getAndroidId();

    String getAsyncWifiMac();

    String getBoot();

    String getBuildSerial();

    String getCarrierName();

    String getCompilingTime();

    String getDeviceModel();

    String getDeviceName();

    int getDeviceType(boolean z2);

    int getDisplayDpi();

    String getEmuiInfo();

    String getImei(Boolean bool);

    String getImsi(Boolean bool);

    Map<String, String> getIpInfoMap(boolean z2);

    String getLanguage();

    String getLocalLanguage();

    com.byazt.yb.hp getLocation(boolean z2);

    String getMacAddress(Boolean bool);

    String getMcc();

    String getMcc2();

    String getMnc();

    String getMnc2();

    String getNetworkSignalType(int i2);

    String[] getNewIpAddrs(boolean z2);

    int getOs();

    String getOsVersion();

    int getRealNetworkType(long j2);

    String getRom();

    String getRomInfo();

    String getSSID(Boolean bool);

    float getScreenBright();

    int getScreenHeight();

    int getScreenWidth();

    String getSimOperator();

    String getSimOperatorCode();

    String getTimeZone();

    int getTimeZoneInt();

    long getUnlockTime();

    String getUserAgent();

    String getVendor();

    String getWebViewUA(boolean z2);

    String getWifiMac(Boolean bool);

    boolean isScreenOn();

    void registerNetworkMonitor(com.byazt.yb.jx jxVar);

    void removeNetworkMonitor(com.byazt.yb.jx jxVar);
}
