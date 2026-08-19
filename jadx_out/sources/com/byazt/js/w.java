package com.byazt.js;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w {
    public String hp;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f21684l;

    public String getType() {
        return this.hp;
    }

    public void hp(String str) {
        this.hp = str;
    }

    public boolean jx() {
        return "time".equals(this.hp);
    }

    public long l() {
        return this.jx;
    }

    public long hp() {
        return this.f21684l;
    }

    public void l(long j2) {
        this.jx = j2;
    }

    public void hp(long j2) {
        this.f21684l = j2;
    }
}
