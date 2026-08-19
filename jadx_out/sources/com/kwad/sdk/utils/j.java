package com.kwad.sdk.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import com.bykv.vk.component.ttvideo.player.MediaFormat;

/* loaded from: classes4.dex */
public final class j {
    private AudioManager aZy;
    private AudioManager.OnAudioFocusChangeListener bov = new AudioManager.OnAudioFocusChangeListener() { // from class: com.kwad.sdk.utils.j.1
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(final int i2) {
            if (j.this.kF == null) {
                return;
            }
            by.postOnUiThread(new Runnable() { // from class: com.kwad.sdk.utils.j.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (i2 < 0) {
                        j.this.kF.onAudioBeOccupied();
                    } else {
                        j.this.kF.onAudioBeReleased();
                    }
                }
            });
        }
    };
    private a kF;

    public interface a {
        void onAudioBeOccupied();

        void onAudioBeReleased();
    }

    public j(Context context) {
        this.aZy = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO);
    }

    @TargetApi(26)
    private AudioFocusRequest Uu() {
        return D.h.a(2).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(3).setUsage(1).setContentType(2).build()).setAcceptsDelayedFocusGain(false).setOnAudioFocusChangeListener(this.bov).build();
    }

    public final boolean Ut() {
        AudioManager audioManager;
        try {
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.bov;
            if (onAudioFocusChangeListener != null && (audioManager = this.aZy) != null) {
                if (Build.VERSION.SDK_INT >= 26) {
                    return 1 == audioManager.requestAudioFocus(Uu());
                }
                if (1 == audioManager.requestAudioFocus(onAudioFocusChangeListener, 3, 2)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public final void c(a aVar) {
        this.kF = aVar;
    }
}
