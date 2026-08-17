package com.byazt.pd;

import android.annotation.SuppressLint;
import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE, 28})
/* loaded from: classes3.dex */
public class hp extends l {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile hp hp;

    private hp(Context context) {
        super(context, "ttopensdk2.db");
    }

    public static hp hp(Context context) {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp(context);
                    }
                } finally {
                }
            }
        }
        return hp;
    }
}
