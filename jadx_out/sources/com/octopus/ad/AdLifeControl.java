package com.octopus.ad;

/* loaded from: classes4.dex */
public interface AdLifeControl {
    void cancel();

    void destroy();

    void onCreateLifeCycle();

    void onDestroyLifeCycle();

    void onPauseLifeCycle();

    void onRestartLifeCycle();

    void onResumeLifeCycle();

    void onStartLifeCycle();

    void onStopLifeCycle();
}
