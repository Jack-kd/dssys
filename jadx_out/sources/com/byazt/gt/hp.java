package com.byazt.gt;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER, 28})
/* loaded from: classes2.dex */
public class hp {
    public static String a() {
        return hp().getVendor();
    }

    public static int eb() {
        return hp().getDisplayDpi();
    }

    public static com.byazt.pg.jl hp() {
        return (com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new");
    }

    public static String j() {
        return hp().getRom();
    }

    public static int jx() {
        return hp().getTimeZoneInt();
    }

    public static String l() {
        return hp().getWifiMac(null);
    }

    public static int q() {
        return hp().getScreenWidth();
    }

    public static int s() {
        return hp().getScreenHeight();
    }

    public static String w() {
        return hp().getDeviceModel();
    }
}
