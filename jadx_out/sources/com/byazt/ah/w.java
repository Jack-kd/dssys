package com.byazt.ah;

import com.byazt.ah.hp;
import com.byazt.zg.d;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 688, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements hp.InterfaceC0186hp {
    public List<hp> hp = new CopyOnWriteArrayList();
    public com.byazt.ktq.l jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.xl.l f18007l;

    public w(List<hp> list) {
        if (d.hp(list)) {
            return;
        }
        this.hp.addAll(list);
    }

    @Override // com.byazt.ah.hp.InterfaceC0186hp
    public com.byazt.ktq.l l() {
        return this.jx;
    }

    public void hp(com.byazt.ktq.l lVar, com.byazt.xl.l lVar2) {
        this.jx = lVar;
        this.f18007l = lVar2;
        if (d.hp(this.hp)) {
            return;
        }
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.ah.w.1
            @Override // java.lang.Runnable
            public void run() {
                ((hp) w.this.hp.get(0)).hp(w.this);
            }
        });
    }

    @Override // com.byazt.ah.hp.InterfaceC0186hp
    public com.byazt.xl.l hp() {
        return this.f18007l;
    }

    @Override // com.byazt.ah.hp.InterfaceC0186hp
    public void hp(hp hpVar) {
        int iIndexOf;
        if (d.hp(this.hp) || hpVar == null || (iIndexOf = this.hp.indexOf(hpVar)) == -1 || iIndexOf >= this.hp.size() - 1) {
            return;
        }
        this.hp.get(iIndexOf + 1).hp(this);
    }
}
