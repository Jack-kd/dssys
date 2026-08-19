package com.byazt.pg;

import android.util.SparseArray;
import java.util.Map;

/* loaded from: classes3.dex */
public interface hp<T> {
    int getAgeGroup();

    String getAppChannel();

    String getAppId();

    String getAppName();

    String getAppVersion();

    com.byazt.he.l getCustomController();

    String getData();

    int[] getDirectDownloadNetworkType();

    Object getExtra(String str);

    Map<String, Object> getInitExtra();

    String getKeywords();

    com.byazt.he.eb getMediationConfig();

    String getPackageName();

    int getPluginUpdateConfig();

    String getSdkApiVersion();

    int getThemeStatus();

    int getTitleBarTheme();

    String getVersionCode();

    boolean isAllowShowNotify();

    boolean isDebug();

    boolean isPaid();

    boolean isPlugin();

    boolean isSupportMultiProcess();

    boolean isUseMediation();

    void updateInitParams(SparseArray sparseArray);
}
