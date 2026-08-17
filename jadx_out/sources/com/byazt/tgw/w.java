package com.byazt.tgw;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements Comparable<w> {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public int f25873j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public double f25874l;

    public w(String str, double d2, int i2, int i3) {
        this.hp = str;
        this.f25874l = d2;
        this.jx = i2;
        this.f25873j = i3;
    }

    public String hp() {
        return this.hp;
    }

    public int j() {
        return this.f25873j;
    }

    public int jx() {
        return this.jx;
    }

    public double l() {
        return this.f25874l;
    }

    public String toString() {
        return "{mCsjRitId:" + this.hp + ",mEcpm:" + this.f25874l + ",mLoadSort:" + this.jx + ",mShowSort:" + this.f25873j + "}";
    }

    @Override // java.lang.Comparable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compareTo(w wVar) {
        if (wVar == null) {
            return 1;
        }
        if (this.f25874l > wVar.l()) {
            return -1;
        }
        if (this.f25874l < wVar.l() || this.jx > wVar.jx()) {
            return 1;
        }
        if (this.jx < wVar.jx()) {
            return -1;
        }
        if (this.f25873j > wVar.j()) {
            return 1;
        }
        return this.f25873j < wVar.j() ? -1 : 0;
    }
}
