package com.byazt.lyn;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 28})
/* loaded from: classes3.dex */
public class hp {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f22831j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public String f22832l;

    public hp(String str, String str2, long j2) {
        this(str, str2, j2, null);
    }

    public long hp() {
        return this.jx;
    }

    public String l() {
        return this.f22831j;
    }

    public String toString() {
        return "AdnLoadFailShowBean{slotId='" + this.hp + "', adnName='" + this.f22832l + "', effectiveTime=" + this.jx + '}';
    }

    public hp(String str, String str2, long j2, String str3) {
        this.hp = str2;
        this.f22832l = str;
        this.jx = j2;
        this.f22831j = str3;
    }
}
