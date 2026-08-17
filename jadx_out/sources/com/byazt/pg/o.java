package com.byazt.pg;

@Deprecated
/* loaded from: classes3.dex */
public interface o {
    String getAndroidId();

    String getAppLogDid();

    String getBoot();

    String getBuildSerial();

    String getCarrierName();

    String getCompilingTime();

    int getConnType();

    String getDeviceModel();

    String getDeviceName();

    int getDeviceType(boolean z2);

    String getDisplayDensity();

    int getDisplayDpi();

    String getImei(Boolean bool);

    String getImsi(Boolean bool);

    String getIpv4();

    String getIpv6();

    String getLanguage();

    String getLocalLanguage();

    com.byazt.yb.hp getLocation();

    String getMacAddress(Boolean bool);

    String getMcc();

    String getMcc2();

    String getMnc();

    String getMnc2();

    String[] getNewIpAddrs(boolean z2);

    String getOAID(boolean z2);

    int getOs();

    String getOsVersion();

    String getRom();

    String getRomInfo();

    String getSSID(Boolean bool);

    int getScreenHeight();

    int getScreenWidth();

    String getTimeZone();

    int getTimeZoneInt();

    String getTotalMem();

    String getTotalSpace();

    String getUUId();

    String getUserAgent();

    String getVendor();

    String getWebViewUA();

    String getWifiMac(Boolean bool);
}
