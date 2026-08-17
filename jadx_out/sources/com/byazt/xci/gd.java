package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 14})
/* loaded from: classes3.dex */
public class gd {
    public int hp;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27281l;

    /* renamed from: j, reason: collision with root package name */
    public int f27280j = 1;

    /* renamed from: w, reason: collision with root package name */
    public int f27282w = 0;

    private int a() {
        return com.byazt.zn.xh.j(com.byazt.jz.sz.getContext(), com.byazt.zn.xh.w(com.byazt.jz.sz.getContext()));
    }

    private int eb() {
        return com.byazt.zn.xh.j(com.byazt.jz.sz.getContext(), com.byazt.zn.xh.j(com.byazt.jz.sz.getContext()));
    }

    public int hp() {
        return this.hp;
    }

    public int j() {
        return this.f27280j == 2 ? 2 : 1;
    }

    public int jx() {
        return this.jx;
    }

    public int l() {
        return this.f27281l;
    }

    public int w() {
        return this.f27282w;
    }

    public void hp(int i2) {
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            this.hp = i2;
        } else {
            this.hp = 2;
        }
    }

    public void j(int i2) {
        this.f27280j = i2;
    }

    public void jx(int i2) {
        if (i2 > 0 && i2 < a()) {
            this.jx = i2;
            return;
        }
        int i3 = this.hp;
        if (i3 == 3 || i3 == 4) {
            this.jx = 30;
        } else {
            this.jx = 16;
        }
    }

    public void l(int i2) {
        if (i2 <= 0 || i2 >= eb()) {
            this.f27281l = 16;
        } else {
            this.f27281l = i2;
        }
    }

    public void w(int i2) {
        this.f27282w = i2;
    }

    public static boolean hp(mp mpVar) {
        return (mpVar == null || mpVar.la() == null || mpVar.la().w() != 1) ? false : true;
    }
}
