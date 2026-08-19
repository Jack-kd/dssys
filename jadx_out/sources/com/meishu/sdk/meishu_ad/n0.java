package com.meishu.sdk.meishu_ad;

import android.view.View;
import android.view.ViewParent;

/* loaded from: classes4.dex */
public interface n0 {

    public interface a {
        void onCompleted();
    }

    public interface b {
        void onKeepTimeFinished();
    }

    public interface c {
        void onLoaded(n0 n0Var);
    }

    void a(a aVar);

    void a(b bVar, long j2);

    boolean a();

    ViewParent getParent();

    View getVideoView();

    void mute();

    void pause();

    void replay();

    void resume();

    void setNativeAdMediaListener(com.meishu.sdk.meishu_ad.nativ.e eVar);

    void setVideoPath(String str);

    void start();

    void unmute();
}
