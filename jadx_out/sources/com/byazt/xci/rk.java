package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS})
/* loaded from: classes3.dex */
public class rk {
    public int hp;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27465l;

    private int j() {
        return com.byazt.zn.xh.j(com.byazt.jz.sz.getContext(), com.byazt.zn.xh.w(com.byazt.jz.sz.getContext()));
    }

    public int hp() {
        return this.hp;
    }

    public int jx() {
        return this.jx;
    }

    public int l() {
        return this.f27465l;
    }

    public void hp(int i2) {
        if (i2 != 1 && i2 != 2) {
            i2 = 0;
        }
        this.hp = i2;
    }

    public void jx(int i2) {
        if (i2 > 0 && i2 < j()) {
            this.jx = i2;
            return;
        }
        int i3 = this.hp;
        if (i3 == 1) {
            this.jx = 90;
        } else if (i3 == 2) {
            this.jx = 150;
        }
    }

    public void l(int i2) {
        if (i2 > 0 && i2 < j()) {
            this.f27465l = i2;
            return;
        }
        int i3 = this.hp;
        if (i3 == 1) {
            this.f27465l = 90;
        } else if (i3 == 2) {
            this.f27465l = 150;
        }
    }
}
