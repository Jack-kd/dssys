package com.byazt.cs;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Build;
import com.bykv.vk.component.ttvideo.player.MediaFormat;

@com.byazt.kj.hp(hp = {0, 1, 1278, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: l, reason: collision with root package name */
    public final AudioManager f18976l;
    public int hp = -1;
    public int jx = -1;

    /* renamed from: j, reason: collision with root package name */
    public int f18975j = -1;

    /* renamed from: w, reason: collision with root package name */
    public final int f18977w = 15;

    /* renamed from: a, reason: collision with root package name */
    public final int f18974a = 0;

    public hp(Context context) {
        this.f18976l = (AudioManager) context.getApplicationContext().getSystemService(MediaFormat.KEY_AUDIO);
    }

    private boolean a() {
        return this.f18976l.isWiredHeadsetOn() && this.f18976l.isBluetoothA2dpOn();
    }

    private boolean w() {
        for (AudioDeviceInfo audioDeviceInfo : this.f18976l.getDevices(3)) {
            int type = audioDeviceInfo.getType();
            if (type == 3 || type == 4 || type == 8 || type == 7) {
                return true;
            }
        }
        return false;
    }

    public int hp() {
        try {
            int i2 = this.f18975j;
            if (i2 != -1) {
                return i2;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                AudioManager audioManager = this.f18976l;
                this.f18975j = audioManager != null ? audioManager.getStreamMinVolume(3) : 0;
            } else {
                this.f18975j = 0;
            }
            return this.f18975j;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public boolean j() {
        return Build.VERSION.SDK_INT < 31 ? a() : w();
    }

    public int jx() {
        try {
            AudioManager audioManager = this.f18976l;
            if (audioManager != null) {
                return audioManager.getStreamVolume(3);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public int l() {
        try {
            int i2 = this.jx;
            if (i2 != -1) {
                return i2;
            }
            AudioManager audioManager = this.f18976l;
            int streamMaxVolume = audioManager != null ? audioManager.getStreamMaxVolume(3) : 15;
            this.jx = streamMaxVolume;
            return streamMaxVolume;
        } catch (Throwable unused) {
            return 15;
        }
    }

    public int hp(int i2) {
        AudioManager audioManager = this.f18976l;
        if (audioManager == null) {
            return -1;
        }
        audioManager.setStreamVolume(3, i2, 0);
        jx();
        return i2;
    }
}
