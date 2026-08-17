package com.byazt.lyn;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.bg;
import java.text.SimpleDateFormat;
import java.util.Date;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 54})
/* loaded from: classes3.dex */
public class a {
    public static long hp(long j2) {
        Date date = new Date();
        Date date2 = (j2 >= bg.f30873s || date.getMinutes() <= 30) ? new Date(date.getYear(), date.getMonth(), date.getDate(), date.getHours(), 0, 0) : new Date(date.getYear(), date.getMonth(), date.getDate(), date.getHours(), 30, 0);
        return hp(date2.getTime(), j2);
    }

    public static String l(long j2) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(j2));
    }

    private static long hp(long j2, long j3) {
        Date date = new Date(j3 + j2);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        long time = date.getTime();
        com.byazt.aw.l.hp("TTMediationSDK_IntervalEffectiveTime", "old time " + j2 + " new time = " + simpleDateFormat.format(date) + " 毫秒 = " + time);
        return time;
    }
}
