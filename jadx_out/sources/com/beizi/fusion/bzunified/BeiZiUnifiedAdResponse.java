package com.beizi.fusion.bzunified;

import android.content.Context;
import android.view.View;
import com.beizi.fusion.widget.BeiZiAdContainer;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface BeiZiUnifiedAdResponse {
    void bindAdToView(Context context, BeiZiAdContainer beiZiAdContainer, List<View> list);

    String getAdLogoUrl();

    String getAppName();

    int getAppStatus();

    String getDesc();

    BeiZiUnifiedAdDownloadAppInfo getDownloadAppInfo();

    int getECPM();

    Map<String, Object> getExtraInfo();

    String getIconUrl();

    String getRewardTaskAction();

    String getTitle();

    boolean isValid();

    void setNativeADEventListener(BeiZiUnifiedAdEventListener beiZiUnifiedAdEventListener);
}
