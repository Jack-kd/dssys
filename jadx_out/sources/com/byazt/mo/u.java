package com.byazt.mo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public class u implements jx {
    public final String hp;
    public final boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final List<jx> f23130l;

    public u(String str, List<jx> list, boolean z2) {
        this.hp = str;
        this.f23130l = list;
        this.jx = z2;
    }

    public String hp() {
        return this.hp;
    }

    public boolean jx() {
        return this.jx;
    }

    public List<jx> l() {
        return this.f23130l;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.hp + "' Shapes: " + Arrays.toString(this.f23130l.toArray()) + '}';
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new com.byazt.fj.j(sVar, jxVar, this, aVar);
    }
}
