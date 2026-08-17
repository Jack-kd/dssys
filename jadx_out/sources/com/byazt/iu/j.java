package com.byazt.iu;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_ABR_SWITCH_COST, 38})
/* loaded from: classes.dex */
public class j {

    /* renamed from: j, reason: collision with root package name */
    public final File f21228j;
    public hp hp = new hp();

    /* renamed from: l, reason: collision with root package name */
    public l f21229l = new l();
    public final com.byazt.eg.jx jx = new com.byazt.eg.jx();

    public j(String str) {
        this.f21228j = new File(str);
    }

    public hp hp() {
        return this.hp;
    }

    public com.byazt.eg.jx j() {
        return this.jx;
    }

    public File jx() {
        return this.f21228j;
    }

    public l l() {
        return this.f21229l;
    }

    public void hp(hp hpVar) {
        this.hp = hpVar;
    }

    public void hp(l lVar) {
        this.f21229l = lVar;
    }
}
