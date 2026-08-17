package com.byazt.hq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 158, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE})
/* loaded from: classes2.dex */
public class wv {

    /* renamed from: a, reason: collision with root package name */
    public long f20942a;
    public long eb;
    public long hp = System.currentTimeMillis();

    /* renamed from: j, reason: collision with root package name */
    public long f20943j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f20944l;

    /* renamed from: w, reason: collision with root package name */
    public long f20945w;

    public long a() {
        return this.f20943j;
    }

    public long e() {
        return this.f20944l;
    }

    public long eb() {
        return this.f20945w;
    }

    public void gu() {
        this.f20944l = System.currentTimeMillis();
    }

    public void hp() {
        this.jx = System.currentTimeMillis();
    }

    public long j() {
        return this.hp;
    }

    public void jx() {
        this.f20945w = System.currentTimeMillis();
    }

    public void l() {
        this.f20943j = System.currentTimeMillis();
    }

    public long q() {
        return this.eb;
    }

    public long s() {
        return this.f20942a;
    }

    public String toString() {
        return "RequestHttpTime{requestBuildTs=" + this.hp + ", asyncCallExecTs=" + this.f20944l + ", requestStartExecTs=" + this.jx + ", requestConnectStartTs=" + this.f20943j + ", requestConnectFinishTs=" + this.f20945w + ", reqCallServerStartTs=" + this.f20942a + ", reqCallServerFinishTs=" + this.eb + '}';
    }

    public long w() {
        return this.jx;
    }

    public void hp(long j2) {
        this.f20942a = j2;
    }

    public void l(long j2) {
        this.eb = j2;
    }
}
