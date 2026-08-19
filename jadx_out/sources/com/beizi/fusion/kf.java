package com.beizi.fusion;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes2.dex */
public interface kf extends ab {

    public enum a implements za {
        VIDEO_CACHE_FAILED(32, "cache_failed"),
        VIDEO_START(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, "play_start"),
        VIDEO_PROCESS(33, "play_process"),
        VIDEO_FINISHED(MediaPlayer.MEDIA_PLAYER_OPTION_ROTATION, "play_end"),
        VIDEO_PLAY_VALID(MediaPlayer.MEDIA_PLAYER_OPTION_CLIP_HEAACV2_FIRSTPTS_PACKET, "video play valid"),
        VIDEO_ERROR(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY, "video play error"),
        VIDEO_PREPARED(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VIDEO_TIMESTAMP_MONOTONIC, "video prepared");


        /* renamed from: a, reason: collision with root package name */
        private final int f14741a;

        /* renamed from: b, reason: collision with root package name */
        private final String f14742b;

        a(int i2, String str) {
            this.f14741a = i2;
            this.f14742b = str;
        }

        @Override // com.beizi.fusion.za
        public int getEventCode() {
            return this.f14741a;
        }
    }

    void a(za zaVar, int i2);

    void b(za zaVar, int i2);

    void c(za zaVar);

    void e(za zaVar);

    void i(za zaVar);

    void j(za zaVar);
}
