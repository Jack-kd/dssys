package com.byazt.pd;

import android.annotation.SuppressLint;
import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE, 30})
/* loaded from: classes3.dex */
public class jx extends l {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile jx hp;

    private jx(Context context) {
        super(context, "ttopensdk.db");
    }

    public static jx hp(Context context) {
        if (hp == null) {
            synchronized (jx.class) {
                try {
                    if (hp == null) {
                        hp = new jx(context);
                    }
                } finally {
                }
            }
        }
        return hp;
    }
}
