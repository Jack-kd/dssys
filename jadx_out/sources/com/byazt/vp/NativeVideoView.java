package com.byazt.vp;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.byazt.dnb.jl;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.su.jx;
import com.byazt.tw.a;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import com.byazt.zn.xh;
import com.byazt.zs.j;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 76, 1063})
/* loaded from: classes3.dex */
public class NativeVideoView extends NativeVideoTsView implements jx.hp {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public hp f26613l;

    /* renamed from: n, reason: collision with root package name */
    public j f26614n;
    public boolean ns;

    public NativeVideoView(Context context) {
        super(context);
        jx jxVar = this.f24039w;
        if (jxVar != null) {
            jxVar.hp(true);
        }
        this.sz.set(true);
        setNeedNativeVideoPlayBtnVisible(false);
        setEnableBlur(true);
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public void H_() {
        super.H_();
    }

    @Override // com.byazt.oh.NativeVideoTsView, com.byazt.oh.j.hp
    public void I_() {
        xh.hp((View) this.f24025e, 8);
        super.I_();
    }

    public void S_() {
        hp hpVar = this.f26613l;
        if (hpVar != null) {
            hpVar.s();
            xh.hp((View) this.f24025e, 8);
        }
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public jx hp(Context context, ViewGroup viewGroup, mp mpVar, String str, boolean z2, boolean z3, boolean z4) {
        hp hpVar = new hp(context, viewGroup, mpVar, str, z2, z3, z4);
        this.f26613l = hpVar;
        return hpVar;
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public void j() {
        jx jxVar = this.f24039w;
        if (jxVar == null) {
            H_();
        } else if ((jxVar instanceof com.byazt.oh.j) && !xs()) {
            ((com.byazt.oh.j) this.f24039w).as();
        }
        if (this.f24039w == null || !this.sz.get()) {
            return;
        }
        this.sz.set(false);
        eb();
        if (!v()) {
            if (this.f24039w.sz()) {
                xh.hp((View) this.f24025e, 0);
                return;
            } else {
                jl();
                xh.hp((View) this.f24025e, 0);
                return;
            }
        }
        xh.hp((View) this.f24025e, 0);
        ImageView imageView = this.jl;
        if (imageView != null) {
            xh.hp((View) imageView, 8);
        }
        if (df.v(this.f24027j) == null) {
            u.l("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
            return;
        }
        a aVarHp = df.hp(4, this.f24027j);
        aVarHp.setCid(this.f24027j.j());
        aVarHp.setWidth(this.f24022a.getWidth());
        aVarHp.setHeight(this.f24022a.getHeight());
        aVarHp.setLogExtra(this.f24027j.w_());
        this.f24027j.rv(this.hp);
        aVarHp.setPlayerType(this.hp);
        aVarHp.setAudio(jl.hp(this.f24027j));
        aVarHp.setCurrent(this.f24039w.gu());
        aVarHp.setQuiet(this.f24039w.ec());
        ((com.byazt.oh.j) this.f24039w).j(this.hp);
        ((com.byazt.oh.j) this.f24039w).l(this.f24027j);
        hp(aVarHp);
        this.f24039w.jx(false);
    }

    @Override // com.byazt.oh.NativeVideoTsView, com.byazt.su.jx.hp
    public void l(long j2, int i2) {
        super.l(j2, i2);
        xh.hp((View) this.f24025e, 0);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        j jVar = this.f26614n;
        if (jVar == null) {
            super.onMeasure(i2, i3);
        } else {
            int[] iArrHp = jVar.hp(i2, i3);
            super.onMeasure(iArrHp[0], iArrHp[1]);
        }
    }

    @Override // com.byazt.oh.NativeVideoTsView, android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (!this.ns && i2 == 8) {
            w();
        }
    }

    public void s() {
        hp hpVar = this.f26613l;
        if (hpVar != null) {
            hpVar.a();
        }
    }

    public void setExtraMap(Map<String, Object> map) {
        jx jxVar = this.f24039w;
        if (jxVar != null) {
            jxVar.l(map);
        }
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public void setIsAutoPlay(boolean z2) {
        super.setIsAutoPlay(z2);
        xh.hp((View) this.f24025e, 0);
    }

    public void setLp(boolean z2) {
        this.ns = z2;
    }

    public void setPlayerType(int i2) {
        this.hp = i2;
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public void w() {
        super.w();
        xh.hp((View) this.f24025e, 0);
    }

    public void hp(boolean z2, boolean z3) {
        jl();
        xh.hp((View) this.f24025e, 0);
        xh.hp((View) this.zy, z2 ? 0 : 8);
        xh.hp((View) this.gu, z3 ? 0 : 8);
    }

    @Override // com.byazt.oh.NativeVideoTsView
    public boolean hp(long j2, boolean z2, boolean z3) {
        this.f24022a.setVisibility(0);
        if (this.f24039w == null) {
            this.f24039w = new com.byazt.oh.j(getContext(), this.eb, this.f24027j, this.f24038v, false, false);
        }
        if (zy() || this.f24034q) {
            hp(this.jx, 25, df.l(this.f24027j));
        }
        return false;
    }

    public void hp(j jVar) {
        this.f26614n = jVar;
    }
}
