package com.byazt.lsx;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 310, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public final boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f22788j;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final int f22789l;

    public w(boolean z2, int i2, String str, boolean z3) {
        this.hp = z2;
        this.f22789l = i2;
        this.jx = str;
        this.f22788j = z3;
    }

    public String toString() {
        return "AdEventUploadResult{mSuccess=" + this.hp + ", mStatusCode=" + this.f22789l + ", mMsg='" + this.jx + "', mIsDataError=" + this.f22788j + '}';
    }
}
