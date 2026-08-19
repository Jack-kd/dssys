package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1176})
/* loaded from: classes3.dex */
public class pc {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27407j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public double f27408l;

    /* renamed from: w, reason: collision with root package name */
    public int f27409w;

    public pc(int i2, double d2, int i3, int i4) {
        this.hp = i2;
        this.f27408l = d2;
        this.jx = i3;
        this.f27407j = i4;
    }

    public void hp(int i2) {
        this.f27409w = i2;
    }

    public int j() {
        return this.jx;
    }

    public double jx() {
        return this.f27408l;
    }

    public int l() {
        return this.hp;
    }

    public int hp() {
        return this.f27407j;
    }
}
