package com.byazt.mo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public final hp hp;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f23125j;
    public final com.byazt.ha.j jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ha.s f23126l;

    public enum hp {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public s(hp hpVar, com.byazt.ha.s sVar, com.byazt.ha.j jVar, boolean z2) {
        this.hp = hpVar;
        this.f23126l = sVar;
        this.jx = jVar;
        this.f23125j = z2;
    }

    public hp hp() {
        return this.hp;
    }

    public boolean j() {
        return this.f23125j;
    }

    public com.byazt.ha.j jx() {
        return this.jx;
    }

    public com.byazt.ha.s l() {
        return this.f23126l;
    }
}
