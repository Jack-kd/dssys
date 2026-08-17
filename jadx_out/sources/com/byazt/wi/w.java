package com.byazt.wi;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1789, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public final SparseArray<Object> hp = new SparseArray<>();

    private w() {
    }

    public static w hp() {
        return new w();
    }

    public SparseArray<Object> l() {
        return this.hp;
    }

    public w hp(int i2) {
        this.hp.put(-999900, Integer.valueOf(i2));
        return this;
    }

    public w hp(String str) {
        this.hp.put(-999901, str);
        return this;
    }

    public w hp(boolean z2) {
        this.hp.put(-999903, Boolean.valueOf(z2));
        return this;
    }

    public w hp(SparseArray<Object> sparseArray) {
        this.hp.put(-999902, sparseArray);
        return this;
    }
}
