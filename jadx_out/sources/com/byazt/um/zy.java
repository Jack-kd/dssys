package com.byazt.um;

import java.util.List;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface zy {
    String getCacheParentDir();

    String getCid();

    String getCodeId();

    int getConnectTimeOutMills();

    long getCurrent();

    w getCurrentVideoInfo();

    Object getExtra(String str);

    String getFileNameKey();

    int getHeight();

    String getLogExtra();

    JSONObject getPassThroughJson();

    int getPitayaCacheSize();

    int getPitayaCode();

    String getPitayaErrorMsg();

    float getPlaySpeedRatio();

    List<String> getPlayTrackUrls();

    int getPlayerType();

    int getPreloadSize();

    int getReadTimeOutMills();

    int getScene();

    int getSourceType();

    String getUrl();

    int getVideoEncodeType();

    w getVideoH264();

    w getVideoH265();

    long getVideoSize();

    int getVideoSkipResult();

    int getWidth();

    int getWriteTimeOutMills();

    boolean isAudio();

    boolean isH265();

    boolean isPreloadAll();

    boolean isQuiet();

    void putExtra(String str, Object obj);

    Object removeExtra(String str);

    void setAudio(boolean z2);

    void setCacheParentDir(String str);

    void setCid(String str);

    void setCodeId(String str);

    void setConnectTimeOutMills(int i2);

    void setCurrent(long j2);

    void setHeight(int i2);

    void setLogExtra(String str);

    void setPlayTrackUrls(List<String> list);

    void setPlayerType(int i2);

    void setQuiet(boolean z2);

    void setReadTimeOutMills(int i2);

    void setScene(int i2);

    void setSourceType(int i2);

    void setVideoEncodeType(int i2);

    void setVideoH264(w wVar);

    void setVideoH265(w wVar);

    void setVideoSkipResult(int i2);

    void setWidth(int i2);

    void setWriteTimeOutMills(int i2);
}
