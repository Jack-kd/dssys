package com.byazt.dt;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1622, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends eb<com.byazt.mo.j> {

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.mo.j f19293j;

    public w(List<com.byazt.ch.hp<com.byazt.mo.j>> list) {
        super(list);
        com.byazt.mo.j jVar = list.get(0).hp;
        int iJx = jVar != null ? jVar.jx() : 0;
        this.f19293j = new com.byazt.mo.j(new float[iJx], new int[iJx]);
    }

    @Override // com.byazt.dt.hp
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public com.byazt.mo.j hp(com.byazt.ch.hp<com.byazt.mo.j> hpVar, float f2) {
        this.f19293j.hp(hpVar.hp, hpVar.f18850l, f2);
        return this.f19293j;
    }
}
