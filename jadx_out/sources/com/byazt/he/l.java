package com.byazt.he;

import java.util.Map;

/* loaded from: classes2.dex */
public interface l {
    boolean alist();

    boolean canRead(int i2);

    String getAndroidId();

    String getDevImei();

    String getDevOaid();

    String getMacAddress();

    gu getMediationPrivacyConfig();

    w getTTLocation();

    boolean isCanUseAndroidId();

    boolean isCanUseLocation();

    boolean isCanUseMessage();

    boolean isCanUsePermissionRecordAudio();

    boolean isCanUsePhoneState();

    boolean isCanUseWifiState();

    boolean isCanUseWriteExternal();

    Map<String, Object> userPrivacyConfig();
}
