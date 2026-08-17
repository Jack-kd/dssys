package com.byazt.gkj;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.bki.k;
import java.util.Map;

/* loaded from: classes2.dex */
public interface j extends l {
    void checkVersion();

    void clearInitStatus();

    String getAdapterVersion();

    String getBiddingToken(Context context, Map<String, Object> map);

    Map<String, Object> getBiddingTokenMap(Context context, Map<String, Object> map);

    String getNetworkSdkPluginVersion();

    String getNetworkSdkVersion();

    long initDuration();

    int initStatus();

    void setPrivacyConfig(k kVar, SparseArray<Object> sparseArray);

    void setThemeStatus(Map<String, Object> map);

    int showOpenOrInstallAppDialog(com.byazt.bki.jx jxVar);
}
