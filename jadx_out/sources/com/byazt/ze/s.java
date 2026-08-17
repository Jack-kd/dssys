package com.byazt.ze;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 683, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public float hp;

    /* renamed from: l, reason: collision with root package name */
    public int f28399l;

    public void hp(float f2) {
        float f3 = this.hp + f2;
        this.hp = f3;
        int i2 = this.f28399l + 1;
        this.f28399l = i2;
        if (i2 == Integer.MAX_VALUE) {
            this.hp = f3 / 2.0f;
            this.f28399l = i2 / 2;
        }
    }
}
