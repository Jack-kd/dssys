package com.byazt.ton;

import com.byazt.jz.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1140, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static String hp = "com.bytedance.openadsdk";

    /* renamed from: l, reason: collision with root package name */
    public static String f25971l = "content://" + hp + ".TTMultiProvider";

    static {
        hp();
    }

    public static void hp() {
        if (sz.getContext() != null) {
            hp = sz.getContext().getPackageName();
            f25971l = "content://" + hp + ".TTMultiProvider";
        }
    }
}
