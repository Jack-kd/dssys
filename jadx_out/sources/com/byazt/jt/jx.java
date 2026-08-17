package com.byazt.jt;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TOTAL_CACHED_LEN, 30})
/* loaded from: classes.dex */
public class jx {
    public PluginValueSet hp;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TOTAL_CACHED_LEN, 219})
    public static class hp {
        public final com.byazt.wi.j hp = com.byazt.wi.j.hp();

        public hp hp(double d2) {
            this.hp.hp(262001, Double.valueOf(d2));
            return this;
        }

        public hp l(double d2) {
            this.hp.hp(262002, Double.valueOf(d2));
            return this;
        }

        public jx hp() {
            return new jx(this.hp.l());
        }
    }

    public jx(SparseArray<Object> sparseArray) {
        this.hp = com.byazt.xi.hp.hp(sparseArray).l();
    }

    public double hp() {
        return this.hp.doubleValue(262001);
    }

    public double l() {
        return this.hp.doubleValue(262002);
    }
}
