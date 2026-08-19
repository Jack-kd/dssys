package com.byazt.fj;

import com.byazt.dt.hp;
import com.byazt.mo.ec;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes2.dex */
public class n implements jx, hp.InterfaceC0210hp {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.dt.hp<?, Float> f19836a;
    public final com.byazt.dt.hp<?, Float> eb;
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final ec.hp f19837j;
    public final List<hp.InterfaceC0210hp> jx = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public final boolean f19838l;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.dt.hp<?, Float> f19839w;

    public n(com.byazt.at.jx jxVar, com.byazt.mo.ec ecVar) {
        this.hp = ecVar.hp();
        this.f19838l = ecVar.w();
        this.f19837j = ecVar.getType();
        com.byazt.dt.hp<Float, Float> hpVarHp = ecVar.jx().hp();
        this.f19839w = hpVarHp;
        com.byazt.dt.hp<Float, Float> hpVarHp2 = ecVar.l().hp();
        this.f19836a = hpVarHp2;
        com.byazt.dt.hp<Float, Float> hpVarHp3 = ecVar.j().hp();
        this.eb = hpVarHp3;
        jxVar.hp(hpVarHp);
        jxVar.hp(hpVarHp2);
        jxVar.hp(hpVarHp3);
        hpVarHp.hp(this);
        hpVarHp2.hp(this);
        hpVarHp3.hp(this);
    }

    public ec.hp getType() {
        return this.f19837j;
    }

    @Override // com.byazt.fj.jx
    public void hp(List<jx> list, List<jx> list2) {
    }

    public com.byazt.dt.hp<?, Float> j() {
        return this.eb;
    }

    public com.byazt.dt.hp<?, Float> jx() {
        return this.f19836a;
    }

    public com.byazt.dt.hp<?, Float> l() {
        return this.f19839w;
    }

    public boolean w() {
        return this.f19838l;
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        for (int i2 = 0; i2 < this.jx.size(); i2++) {
            this.jx.get(i2).hp();
        }
    }

    public void hp(hp.InterfaceC0210hp interfaceC0210hp) {
        this.jx.add(interfaceC0210hp);
    }
}
