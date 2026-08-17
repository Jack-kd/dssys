package com.byazt.wx;

/* loaded from: classes3.dex */
public interface l {
    void adAnalysisData(String str);

    String adInfo();

    String appInfo();

    void changeVideoState(String str);

    void clickEvent(String str);

    void dynamicTrack(String str);

    String getCurrentVideoState();

    String getData(String str);

    String getTemplateInfo();

    void initRenderFinish();

    void muteVideo(String str);

    void renderDidFinish(String str);

    void requestPauseVideo(String str);

    void skipVideo();
}
