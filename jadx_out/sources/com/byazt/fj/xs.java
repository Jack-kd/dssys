package com.byazt.fj;

import android.graphics.PointF;
import com.byazt.dt.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes2.dex */
public class xs implements ec, hp.InterfaceC0210hp {
    public final com.byazt.na.s hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.mo.k f19880j;
    public final com.byazt.dt.hp<Float, Float> jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f19881l;

    public xs(com.byazt.na.s sVar, com.byazt.at.jx jxVar, com.byazt.mo.zy zyVar) {
        this.hp = sVar;
        this.f19881l = zyVar.hp();
        com.byazt.dt.hp<Float, Float> hpVarHp = zyVar.l().hp();
        this.jx = hpVarHp;
        jxVar.hp(hpVarHp);
        hpVarHp.hp(this);
    }

    @Override // com.byazt.fj.jx
    public void hp(List<jx> list, List<jx> list2) {
    }

    public com.byazt.dt.hp<Float, Float> l() {
        return this.jx;
    }

    private com.byazt.mo.k l(com.byazt.mo.k kVar) {
        List<com.byazt.yg.hp> listJx = kVar.jx();
        boolean zL = kVar.l();
        int size = listJx.size() - 1;
        int i2 = 0;
        while (size >= 0) {
            com.byazt.yg.hp hpVar = listJx.get(size);
            com.byazt.yg.hp hpVar2 = listJx.get(hp(size - 1, listJx.size()));
            PointF pointFJx = (size != 0 || zL) ? hpVar2.jx() : kVar.hp();
            i2 = (((size != 0 || zL) ? hpVar2.l() : pointFJx).equals(pointFJx) && hpVar.hp().equals(pointFJx) && !(!kVar.l() && size == 0 && size == listJx.size() - 1)) ? i2 + 2 : i2 + 1;
            size--;
        }
        com.byazt.mo.k kVar2 = this.f19880j;
        if (kVar2 == null || kVar2.jx().size() != i2) {
            ArrayList arrayList = new ArrayList(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                arrayList.add(new com.byazt.yg.hp());
            }
            this.f19880j = new com.byazt.mo.k(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.f19880j.hp(zL);
        return this.f19880j;
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        this.hp.invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a1  */
    @Override // com.byazt.fj.ec
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.byazt.mo.k hp(com.byazt.mo.k r19) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fj.xs.hp(com.byazt.mo.k):com.byazt.mo.k");
    }

    private static int l(int i2, int i3) {
        int i4 = i2 / i3;
        return ((i2 ^ i3) >= 0 || i3 * i4 == i2) ? i4 : i4 - 1;
    }

    private static int hp(int i2, int i3) {
        return i2 - (l(i2, i3) * i3);
    }
}
