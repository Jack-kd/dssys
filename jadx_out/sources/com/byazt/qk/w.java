package com.byazt.qk;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.byazt.xci.mp;
import com.byazt.xci.q;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 64, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends com.byazt.go.hp {

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.xci.b f24896e;
    public boolean gu;
    public int jl;

    /* renamed from: k, reason: collision with root package name */
    public int f24897k;
    public int zy;

    public w(Context context, mp mpVar, String str, int i2) {
        super(context, mpVar, str, i2);
        this.jl = 0;
        this.zy = -1;
        this.f24897k = -1;
        this.gu = true;
        if (mpVar == null) {
            return;
        }
        com.byazt.mi.hp.hp().hp(mpVar.hashCode() + mpVar.ns()).put("is_express_ad", Boolean.TRUE);
    }

    @Override // com.byazt.go.l, com.byazt.go.j
    public void hp(View view, com.byazt.xci.e eVar) {
        com.byazt.ey.hp hpVar = (com.byazt.ey.hp) hp(com.byazt.ey.hp.class);
        hpVar.hp(hp(hpVar.jx(), eVar == null ? (byte) 0 : eVar.l()));
        super.hp(view, eVar);
    }

    @Override // com.byazt.go.j
    public void j() {
        this.f24897k = 1;
        this.gu = false;
    }

    @Override // com.byazt.go.j
    public void jx() {
        this.zy = 1;
        this.gu = false;
    }

    @Override // com.byazt.go.j
    public void w(int i2) {
        this.jl = i2;
    }

    public com.byazt.xci.q hp(String str, byte b3) {
        int i2;
        int i3;
        String str2;
        String str3;
        String str4;
        String str5;
        int iJx;
        int iJx2;
        View viewE = this.eb.e();
        int[] iArrHp = xh.hp(viewE);
        if (iArrHp == null || iArrHp.length != 2) {
            i2 = 0;
            i3 = 0;
        } else {
            i2 = iArrHp[0];
            i3 = iArrHp[1];
            if (this.jl == 0 && this.gu) {
                this.eb.hp((xh.jx(this.f20518a, r8.xs()) + i2) - 0.5f);
                this.eb.l((xh.jx(this.f20518a, r8.vv()) + i3) - 0.5f);
                this.eb.jx((xh.jx(this.f20518a, r8.ec()) + i2) - 0.5f);
                this.eb.j((xh.jx(this.f20518a, r8.sz()) + i3) - 0.5f);
            }
        }
        int[] iArrHp2 = {-1, -1};
        int[] iArrJx = new int[2];
        com.byazt.xci.b bVar = this.f24896e;
        if (bVar != null && this.gu) {
            this.eb.hp(bVar.f27204w);
            this.eb.l(this.f24896e.f27195a);
            if (this.jl == 0) {
                iArrHp2[0] = xh.jx(this.f20518a, this.f24896e.eb) + i2;
                iArrHp2[1] = xh.jx(this.f20518a, this.f24896e.f27201s) + i3;
                iJx2 = xh.jx(this.f20518a, this.f24896e.f27200q);
                iJx = xh.jx(this.f20518a, this.f24896e.f27196e);
            } else {
                com.byazt.xci.b bVar2 = this.f24896e;
                iArrHp2[0] = bVar2.eb;
                iArrHp2[1] = bVar2.f27201s;
                int i4 = bVar2.f27200q;
                iJx = bVar2.f27196e;
                iJx2 = i4;
            }
            str3 = TextUtils.isEmpty(str) ? this.f24896e.gu : str;
            com.byazt.xci.b bVar3 = this.f24896e;
            str2 = bVar3.jl;
            str5 = bVar3.zy;
            str4 = bVar3.f27198k;
            iArrJx[0] = iJx2;
            iArrJx[1] = iJx;
            View viewQ = this.eb.q();
            if (iJx2 == 0 && iJx == 0 && viewQ != null) {
                iArrHp2 = xh.hp(viewQ);
                iArrJx = xh.jx(viewQ);
            }
        } else {
            str2 = "";
            str3 = str;
            str4 = "";
            str5 = str4;
        }
        this.jl = 0;
        return new q.hp().a(this.eb.xs()).w(this.eb.vv()).j(this.eb.ec()).jx(this.eb.sz()).l(this.eb.v()).hp(this.eb.u()).l(iArrHp).hp(iArrHp2).jx(xh.jx(viewE)).j(iArrJx).j(this.eb.w()).w(this.eb.a()).a(this.eb.eb()).jx(com.byazt.jz.s.u().l() ? 1 : 2).hp(this.eb.zy()).hp(str3).l(str5).jx(str2).j(str4).hp(xh.a(this.f20518a)).l(((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getDisplayDpi()).eb(this.zy).s(this.f24897k).l(xh.eb(this.f20518a)).w(this.eb.n()).q(this.eb.ns()).l(b3).hp(this.eb.jx()).hp(com.byazt.fy.s.l(this.hp)).hp();
    }

    @Override // com.byazt.go.j
    public void hp(com.byazt.xci.b bVar) {
        this.f24896e = bVar;
    }
}
