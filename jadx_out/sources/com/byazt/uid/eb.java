package com.byazt.uid;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, 94})
/* loaded from: classes3.dex */
public abstract class eb implements Comparable<eb>, Runnable {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public String f26236l;

    public eb(String str, int i2) {
        this.hp = 0;
        this.hp = i2 == 0 ? 5 : i2;
        this.f26236l = str;
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    public int hp() {
        return this.hp;
    }

    @Override // java.lang.Comparable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compareTo(eb ebVar) {
        if (hp() < ebVar.hp()) {
            return 1;
        }
        return hp() >= ebVar.hp() ? -1 : 0;
    }

    public eb(String str) {
        this.hp = 5;
        this.f26236l = str;
    }
}
