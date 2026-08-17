package com.smartdigimkt.y;

import D.h;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import com.bykv.vk.component.ttvideo.player.MediaFormat;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public AudioManager f45121a;

    /* renamed from: b, reason: collision with root package name */
    public AudioFocusRequest f45122b;

    public final void a(Context context) {
        this.f45121a = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO);
        if (Build.VERSION.SDK_INT >= 26) {
            this.f45122b = h.a(2).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(3).build()).setAcceptsDelayedFocusGain(false).build();
        }
    }

    public final void b() {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f45121a.requestAudioFocus(this.f45122b);
            } else {
                this.f45121a.requestAudioFocus(null, 3, 2);
            }
        } catch (Exception unused) {
        }
    }

    public final void a() {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f45121a.abandonAudioFocusRequest(this.f45122b);
            } else {
                this.f45121a.abandonAudioFocus(null);
            }
        } catch (Exception unused) {
        }
    }
}
