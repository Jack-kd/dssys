package com.byazt.he;

import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public interface eb {
    JSONObject getCustomLocalConfig();

    boolean getHttps();

    Map<String, Object> getLocalExtra();

    s getMediationConfigUserInfoForSegment();

    String getOpensdkVer();

    String getPublisherDid();

    boolean isOpenAdnTest();

    boolean isSupportH265();

    boolean isSupportSplashZoomout();

    boolean isWxInstalled();

    String wxAppId();
}
