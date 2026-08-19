package com.byazt.pn;

import com.byazt.hq.n;
import com.byazt.hq.ud;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 741, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public final class s extends ud {
    public final String hp;
    public final com.byazt.raq.w jx;

    /* renamed from: l, reason: collision with root package name */
    public final long f24458l;

    public s(String str, long j2, com.byazt.raq.w wVar) {
        this.hp = str;
        this.f24458l = j2;
        this.jx = wVar;
    }

    @Override // com.byazt.hq.ud
    public n hp() {
        String str = this.hp;
        if (str != null) {
            return n.hp(str);
        }
        return null;
    }

    @Override // com.byazt.hq.ud
    public com.byazt.raq.w jx() {
        return this.jx;
    }

    @Override // com.byazt.hq.ud
    public long l() {
        return this.f24458l;
    }
}
