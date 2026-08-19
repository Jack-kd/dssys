package com.byazt.um;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface w {
    int getCover_height();

    String getCover_url();

    int getCover_width();

    String getEndcard();

    int getEndcardRender();

    int getExecuteCachedType();

    int getFallbackEndCardJudge();

    String getFileHash();

    float getPlay_speed_ratio();

    int getPlayableLoadingHide();

    int getPlayableLoadingShow();

    String getPlayableZipUrl();

    int getReplayTime();

    String getResolution();

    int getRewardVideoCachedType();

    long getSize();

    double getStart();

    int getVideoPreloadSize();

    double getVideo_duration();

    String getVideo_url();

    int[] getWidthAndHeight();

    boolean isCacheAllVideo();

    boolean isExecCallbackWhenFail();

    void setCover_height(int i2);

    void setCover_url(String str);

    void setCover_width(int i2);

    void setEndcard(String str);

    void setEndcardRender(int i2);

    void setExecuteCachedType(int i2);

    void setFallbackEndCardJudge(int i2);

    void setFileHash(String str);

    void setPlay_speed_ratio(float f2);

    void setPlayableLoadingHide(int i2);

    void setPlayableLoadingShow(int i2);

    void setPlayableZipUrl(String str);

    void setReplayTime(int i2);

    void setResolution(String str);

    void setRewardVideoCachedType(int i2);

    void setSize(long j2);

    void setStart(double d2);

    void setVideoPreloadSize(int i2);

    void setVideo_duration(double d2);

    void setVideo_url(String str);

    JSONObject toJsonObj();
}
