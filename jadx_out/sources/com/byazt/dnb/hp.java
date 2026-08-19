package com.byazt.dnb;

import D.h;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import com.byazt.jz.sz;
import com.bykv.vk.component.ttvideo.player.MediaFormat;

@com.byazt.kj.hp(hp = {0, 1, 1239, 28})
/* loaded from: classes2.dex */
public class hp {
    public AudioAttributes hp;

    /* renamed from: j, reason: collision with root package name */
    public AudioManager.OnAudioFocusChangeListener f19184j;
    public AudioManager jx;

    /* renamed from: l, reason: collision with root package name */
    public AudioFocusRequest f19185l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f19186w;

    public hp() {
        this.f19186w = false;
        boolean zM = sz.l().m();
        this.f19186w = zM;
        if (zM) {
            this.f19184j = new AudioManager.OnAudioFocusChangeListener() { // from class: com.byazt.dnb.hp.1
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public void onAudioFocusChange(int i2) {
                }
            };
            this.jx = (AudioManager) sz.getContext().getSystemService(MediaFormat.KEY_AUDIO);
        }
    }

    public int hp() {
        if (!this.f19186w) {
            return -1;
        }
        int i2 = Build.VERSION.SDK_INT;
        this.hp = new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
        if (i2 >= 26) {
            AudioFocusRequest audioFocusRequestBuild = h.a(2).setWillPauseWhenDucked(true).setAcceptsDelayedFocusGain(true).setOnAudioFocusChangeListener(this.f19184j).setAudioAttributes(this.hp).build();
            this.f19185l = audioFocusRequestBuild;
            AudioManager audioManager = this.jx;
            if (audioManager != null) {
                return audioManager.requestAudioFocus(audioFocusRequestBuild);
            }
        } else {
            AudioManager audioManager2 = this.jx;
            if (audioManager2 != null) {
                return audioManager2.requestAudioFocus(this.f19184j, 3, 2);
            }
        }
        return -1;
    }

    public void l() {
        if (this.f19186w) {
            if (Build.VERSION.SDK_INT >= 26) {
                AudioManager audioManager = this.jx;
                if (audioManager != null) {
                    audioManager.abandonAudioFocusRequest(this.f19185l);
                    return;
                }
                return;
            }
            AudioManager audioManager2 = this.jx;
            if (audioManager2 != null) {
                audioManager2.abandonAudioFocus(this.f19184j);
            }
        }
    }
}
