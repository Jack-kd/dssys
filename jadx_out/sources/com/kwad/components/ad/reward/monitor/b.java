package com.kwad.components.ad.reward.monitor;

/* loaded from: classes4.dex */
public final class b {
    private static String TAG = "LivePlayMonitor";

    public static void a(int i2, String str, String str2, Long l2, int i3, String str3) {
        if (l2 == null) {
            l2 = -1L;
        }
        com.kwad.sdk.commercial.c.b("ad_sdk_live_video_error_monitor", new LivePlayMonitorInfo().setScene(2).setAppId(str).setAuthorId(str2).setUserId(l2).setErrorCode(i3).setErrorMsg(str3));
        com.kwad.sdk.core.d.c.d(TAG, "reportAdLiveMonitorError, status:" + i3 + " scene:2 errMsg:" + str3 + " appId:" + str + " authorId" + str2 + " userId" + l2);
    }
}
