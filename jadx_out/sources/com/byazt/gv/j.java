package com.byazt.gv;

import android.graphics.Bitmap;
import com.byazt.nke.nu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SHARP, 38})
/* loaded from: classes2.dex */
public class j implements nu {
    public final nu hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.jn.l f20612l;

    public j(nu nuVar) {
        this(nuVar, null);
    }

    public j(nu nuVar, com.byazt.jn.l lVar) {
        this.hp = nuVar;
        this.f20612l = lVar;
    }

    @Override // com.byazt.nke.hp
    public boolean l(String str) {
        return this.hp.l(str);
    }

    @Override // com.byazt.nke.hp
    public boolean hp(String str, Bitmap bitmap) {
        return this.hp.hp(str, bitmap);
    }

    @Override // com.byazt.nke.hp
    public Bitmap hp(String str) {
        return this.hp.hp((nu) str);
    }

    @Override // com.byazt.nke.hp
    public void hp() {
        this.hp.hp();
    }

    @Override // com.byazt.nke.hp
    public void hp(double d2) {
        this.hp.hp(d2);
    }
}
