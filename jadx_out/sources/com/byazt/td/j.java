package com.byazt.td;

import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.xci.mp;
import com.byazt.zn.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, 38})
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public boolean f25728a = false;
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public l f25729j;
    public mp jx;

    /* renamed from: l, reason: collision with root package name */
    public final TTBaseVideoActivity f25730l;

    /* renamed from: w, reason: collision with root package name */
    public w f25731w;

    public j(TTBaseVideoActivity tTBaseVideoActivity) {
        this.f25730l = tTBaseVideoActivity;
    }

    public boolean a() {
        return this.hp;
    }

    public void hp(l lVar, mp mpVar, String str, w wVar) {
        if (this.f25728a) {
            return;
        }
        this.f25728a = true;
        this.f25729j = lVar;
        this.jx = mpVar;
        this.f25731w = wVar;
    }

    public boolean j() {
        l lVar = this.f25729j;
        if (lVar != null) {
            return lVar.ud();
        }
        return false;
    }

    public void jx() {
        this.f25729j.wv();
        this.f25731w.hp(this.f25730l.y().an());
    }

    public void l() {
        if (n.l(this.jx)) {
            if (this.f25729j.r() || j()) {
                boolean z2 = !this.hp;
                this.hp = z2;
                this.f25729j.hp(z2);
            }
        }
    }

    public boolean w() {
        if (n.jx(this.jx)) {
            return this.f25729j.lv();
        }
        return false;
    }

    public void l(boolean z2) {
        this.f25729j.a(z2);
    }

    public void hp() {
        if (n.l(this.jx) && !this.f25729j.r()) {
            j();
        }
    }

    public void hp(boolean z2) {
        l lVar = this.f25729j;
        if (lVar != null && lVar.hq()) {
            this.hp = z2;
            this.f25731w.j(z2);
            this.f25729j.hp(this.hp);
        }
    }

    public void hp(boolean z2, boolean z3) {
        this.f25729j.di();
        hp(z2);
        l(z3);
    }

    public void hp(int i2, int i3) {
        this.f25729j.l(i2, i3);
    }

    public void hp(mp mpVar) {
        this.jx = mpVar;
    }
}
