package com.beizi.fusion;

import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes2.dex */
public interface ic extends ab {

    public enum a implements za {
        AD_EXPOSURE(MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_PROTOCOL_HANDLE, "ad exposure"),
        ADN_RECOGNIZE(64, "adn recognize"),
        AD_VIEW_SHOWN(67, "ad view shown"),
        AD_VIEW_PAUSE(68, "ad view pause"),
        AD_VIEW_DETACHED(69, "ad view detached");


        /* renamed from: a, reason: collision with root package name */
        private final int f14456a;

        /* renamed from: b, reason: collision with root package name */
        private final String f14457b;

        a(int i2, String str) {
            this.f14456a = i2;
            this.f14457b = str;
        }

        @Override // com.beizi.fusion.za
        public int getEventCode() {
            return this.f14456a;
        }
    }

    void a(View view);

    void b(View view);

    void b(za zaVar, View view);

    void c(za zaVar, View view);
}
