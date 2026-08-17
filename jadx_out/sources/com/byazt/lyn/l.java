package com.byazt.lyn;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 34})
/* loaded from: classes3.dex */
public class l {
    public List<String> hp;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public List<String> f22841l;

    public long hp() {
        return this.jx;
    }

    public List<String> jx() {
        return this.f22841l;
    }

    public List<String> l() {
        return this.hp;
    }

    public String toString() {
        return "AdnLoadFailShowConfigBean{ breadRequestErrorCode=" + this.hp + ",ritList=" + this.f22841l + ",breadRequestDuration=" + this.jx + " }";
    }

    public void hp(long j2) {
        this.jx = j2;
    }

    public void l(List<String> list) {
        this.f22841l = list;
    }

    public void hp(List<String> list) {
        this.hp = list;
    }
}
