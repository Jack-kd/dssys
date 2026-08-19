package com.byazt.iu;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_ABR_SWITCH_COST, 30})
/* loaded from: classes.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public int f21230a;
    public int eb;
    public int hp;

    /* renamed from: q, reason: collision with root package name */
    public long f21234q;

    /* renamed from: s, reason: collision with root package name */
    public String f21235s;

    /* renamed from: w, reason: collision with root package name */
    public int f21236w;

    /* renamed from: l, reason: collision with root package name */
    public long f21233l = 0;
    public long jx = 0;

    /* renamed from: j, reason: collision with root package name */
    public long f21232j = 0;

    /* renamed from: e, reason: collision with root package name */
    public final long f21231e = 30;

    public int a() {
        return this.eb;
    }

    public int e() {
        return this.f21236w;
    }

    public long eb() {
        return this.f21233l;
    }

    public int gu() {
        return this.f21230a;
    }

    public int hp() {
        return this.hp;
    }

    public long j() {
        return this.f21236w + 30 + this.eb;
    }

    public String jl() {
        return this.f21235s;
    }

    public long jx() {
        return j() + l();
    }

    public long l() {
        long j2 = this.jx;
        return j2 > 0 ? j2 : this.f21232j;
    }

    public long q() {
        return this.f21232j;
    }

    public long s() {
        return this.jx;
    }

    public long w() {
        return 28L;
    }

    public long zy() {
        return this.f21234q;
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    public void j(int i2) {
        this.f21230a = i2;
    }

    public void jx(long j2) {
        this.f21232j = j2;
    }

    public void hp(long j2) {
        this.f21233l = j2;
    }

    public void j(long j2) {
        this.f21234q = j2;
    }

    public void jx(int i2) {
        this.f21236w = i2;
    }

    public void l(int i2) {
        this.eb = i2;
    }

    public void hp(String str) {
        this.f21235s = str;
    }

    public void l(long j2) {
        this.jx = j2;
    }
}
