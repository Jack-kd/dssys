package com.fl.saas.adx.base.inner.interstitial.coustomView;

/* loaded from: classes3.dex */
public interface VideoSoundControlListener {

    public interface SoundControlViewStateChangeListener {
        void changeSystemSound(boolean z2);

        void changeViewVisible(boolean z2);
    }

    void changeSoundEnable(boolean z2);

    boolean getSoundEnable();

    void setSoundControlViewStateChangeListener(SoundControlViewStateChangeListener soundControlViewStateChangeListener);
}
