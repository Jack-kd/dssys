package com.byazt.vg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1750, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public String hp;
    public com.byazt.bh.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public int f26565l;

    public w(String str, int i2) {
        this.hp = str;
        this.f26565l = i2;
    }

    public w(com.byazt.bh.hp hpVar) {
        if (hpVar != null) {
            this.hp = hpVar.l();
            this.f26565l = hpVar.jx();
            this.jx = hpVar;
        }
    }
}
