package com.byazt.yn;

import com.byakv.x.YogaNative;
import com.byakv.x.YogaNodeJNIBase;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_RENDER_TIME, 19})
/* loaded from: classes3.dex */
public class jl extends YogaNodeJNIBase {
    public void finalize() throws Throwable {
        try {
            zy();
        } finally {
            super.finalize();
        }
    }

    public void zy() {
        long j2 = this.hp;
        if (j2 != 0) {
            this.hp = 0L;
            YogaNative.jni_YGNodeFinalizeJNI(j2);
        }
    }
}
