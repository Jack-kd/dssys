package com.byazt.fgx;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1762, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public static String hp = "com.bytedance.openadsdk";

    /* renamed from: l, reason: collision with root package name */
    public static String f19736l = "content://" + hp + ".TTMultiProvider";

    static {
        hp();
    }

    public static void hp() {
        Context context = l.getContext();
        if (context != null) {
            hp = context.getPackageName();
            f19736l = "content://" + hp + ".TTMultiProvider";
        }
    }
}
