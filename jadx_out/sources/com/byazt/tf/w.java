package com.byazt.tf;

import com.byazt.nke.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 2188, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements s {
    public long hp;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f25765l;

    @Override // com.byazt.nke.s
    public long getEndRequestTime() {
        return this.jx;
    }

    @Override // com.byazt.nke.s
    public long getFirstFrameTime() {
        return this.f25765l;
    }

    @Override // com.byazt.nke.s
    public long getStartRequestTime() {
        return this.hp;
    }

    public void hp(long j2) {
        this.hp = j2;
    }

    public void jx(long j2) {
        this.jx = j2;
    }

    public void l(long j2) {
        this.f25765l = j2;
    }
}
