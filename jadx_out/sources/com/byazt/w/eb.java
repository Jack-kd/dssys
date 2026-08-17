package com.byazt.w;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, 94})
/* loaded from: classes3.dex */
public class eb {
    public int hp;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f26847l;

    public eb(int i2) {
        this(i2, 0, null);
    }

    public int getType() {
        return this.hp;
    }

    public int hp() {
        return this.f26847l;
    }

    public String l() {
        return this.jx;
    }

    public eb(int i2, int i3) {
        this(i2, i3, null);
    }

    public eb(int i2, String str) {
        this(i2, 0, str);
    }

    public eb(int i2, int i3, String str) {
        this.hp = i2;
        this.f26847l = i3;
        this.jx = str;
    }
}
