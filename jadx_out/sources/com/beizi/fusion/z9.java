package com.beizi.fusion;

import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.mta.PointCategory;

/* loaded from: classes2.dex */
public interface z9 extends ab {

    public enum a implements za {
        AD_CLICK(502, "ad_click"),
        DOWNLOAD_START(MediaPlayer.MEDIA_PLAYER_OPTION_LICENSE_DIR, "download_start"),
        DOWNLOAD_PAUSE(511, "download_pause"),
        DOWNLOAD_CONTINUE(512, "download_continue"),
        DOWNLOAD_COMPLETE(513, "download_complete"),
        DOWNLOAD_FAILED(MediaPlayer.MEDIA_PLAYER_OPTION_TCP_FAST_OPEN_SUCCESS, PointCategory.DOWNLOAD_FAILED),
        INSTALL_START(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_EXPIRED_LICENSE, C1244a.f35653E),
        INSTALL_COMPLETE(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_EXACT, "install_complete"),
        APP_LAUNCHED(MediaPlayer.MEDIA_PLAYER_OPTION_FILE_FORMAT, "app_launched"),
        INVOKE_DEEPLINK(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, "start_deeplink"),
        DEEPLINK_INVOKE_SUCCESS(MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_INFOS, "deeplink_success"),
        DEEPLINK_INVOKE_ASSUME_SUCCESS(525, "deeplink_assume_success"),
        DEEPLINK_INVOKE_FAILED(MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, "deeplink_failed"),
        DEEPLINK_INVOKE_ASSUME_REFUSE(526, "deeplink_refuse"),
        APP_NOT_INSTALLED(MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_AUDIO_WINDOW_SIZE, "app_not_installed"),
        APP_INSTALLED(524, "app_installed"),
        AD_CLOSE(MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_VIDEO_STACK_SIZE, "ad_closed"),
        REWARD_PRIMARY_CLOSE(84, "reward_close"),
        REWARD_TO_PRIVILEGE(85, "reward_to_privilege"),
        REWARD_TO_RETAIN(86, "reward_to_retain"),
        REWARD_TO_END_CARD(87, "reward_to_end_card"),
        COMPLAIN_CONFIRM(900, "complain_confirm");


        /* renamed from: a, reason: collision with root package name */
        private final int f17869a;

        /* renamed from: b, reason: collision with root package name */
        private final String f17870b;

        a(int i2, String str) {
            this.f17869a = i2;
            this.f17870b = str;
        }

        @Override // com.beizi.fusion.za
        public int getEventCode() {
            return this.f17869a;
        }
    }

    void a(a aVar);

    void a(za zaVar, View view);

    void d(za zaVar);

    void f(za zaVar);
}
