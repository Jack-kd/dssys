package com.byazt.lyn;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public long f22845j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public long f22846l;

    /* renamed from: w, reason: collision with root package name */
    public int f22847w;

    public void hp(w wVar) {
        this.hp = wVar.hp();
        this.f22846l = wVar.l();
        this.jx = wVar.jx();
        this.f22845j = wVar.j();
        this.f22847w = wVar.w();
    }

    public long j() {
        return this.f22845j;
    }

    public String jx() {
        return this.jx;
    }

    public long l() {
        return this.f22846l;
    }

    public int w() {
        return this.f22847w;
    }

    public void l(long j2) {
        this.f22845j = j2;
    }

    public void l(int i2) {
        this.f22847w = i2;
    }

    public int hp() {
        return this.hp;
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    public void hp(long j2) {
        this.f22846l = j2;
    }

    public void hp(String str) {
        this.jx = str;
    }
}
