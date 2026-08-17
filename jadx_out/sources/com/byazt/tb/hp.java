package com.byazt.tb;

import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVREAGE_BITRATE_DIFF, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.gj.hp {
    public com.byazt.kf.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public boolean f25692l = false;
    public boolean jx = false;

    @Override // com.byazt.gj.hp
    public void a(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.jx = true;
    }

    @Override // com.byazt.gj.hp
    public void e(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        mp mpVar;
        if (this.f25692l || sVar == null || sVar.hp(n.f36449l) == null || !this.jx || (mpVar = hpVar.f20629q) == null || !mpVar.f() || hpVar.f20629q.yr() || !hpVar.f20629q.hl() || !sVar.hp(n.f36449l).equals(1)) {
            return;
        }
        this.f25692l = true;
        com.byazt.gu.l lVar = (com.byazt.gu.l) com.byazt.jz.n.hp(hpVar.f20629q.n(), com.byazt.gu.l.class);
        if (lVar != null) {
            hpVar.f20629q.w(true);
            com.byazt.jdb.j.hp(hpVar.f20629q, 2);
            lVar.hp(5, null);
        }
    }

    @Override // com.byazt.gj.hp
    public void eb(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        com.byazt.gu.l lVar;
        hp(hpVar);
        this.jx = true;
        mp mpVar = hpVar.f20629q;
        if (mpVar == null || mpVar.nf() != 1 || (lVar = (com.byazt.gu.l) com.byazt.jz.n.hp(hpVar.f20629q.n(), com.byazt.gu.l.class)) == null) {
            return;
        }
        lVar.hp(6, null);
    }

    @Override // com.byazt.gj.hp
    public void hp(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
    }

    @Override // com.byazt.gj.hp
    public void j(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.jx = true;
    }

    @Override // com.byazt.gj.hp
    public void jx(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.jx = true;
    }

    @Override // com.byazt.gj.hp
    public void l(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.jx = true;
    }

    @Override // com.byazt.gj.hp
    public void q(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        mp mpVar;
        hp(hpVar);
        this.jx = true;
        if (!this.f25692l && (mpVar = hpVar.f20629q) != null && mpVar.f() && !hpVar.f20629q.yr() && hpVar.f20629q.hl() && hpVar.f20629q.nf() == 1) {
            this.f25692l = true;
            hpVar.f20629q.w(true);
            com.byazt.gu.l lVar = (com.byazt.gu.l) com.byazt.jz.n.hp(hpVar.f20629q.n(), com.byazt.gu.l.class);
            if (lVar != null) {
                com.byazt.jdb.j.hp(hpVar.f20629q, 1);
                lVar.hp(5, null);
            }
        }
    }

    @Override // com.byazt.gj.hp
    public void s(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.jx = true;
    }

    @Override // com.byazt.gj.hp
    public void w(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.jx = true;
    }

    private void hp(com.byazt.kf.hp hpVar) {
        if (this.hp == null) {
            this.hp = hpVar;
        }
    }
}
