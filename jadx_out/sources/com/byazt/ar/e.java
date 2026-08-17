package com.byazt.ar;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.gy.j;
import com.byazt.xci.d;
import com.byazt.xci.mp;
import com.byazt.xci.x;
import com.byazt.xci.yr;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 45})
/* loaded from: classes2.dex */
public class e {
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    public Context f18119j;
    public hp jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jt.l f18120l;

    /* renamed from: w, reason: collision with root package name */
    public List<com.byazt.ib.a> f18121w;

    public e(mp mpVar, hp hpVar) {
        this.hp = mpVar;
        this.jx = hpVar;
        this.f18121w = new ArrayList();
        if (mpVar == null || !yr.l(mpVar)) {
            return;
        }
        com.byazt.rk.a.hp(mpVar, String.valueOf(ky.zy(mpVar)), ky.jl(mpVar), 3, com.byazt.gy.eb.hp(mpVar));
        final int iJ = d.j(this.hp);
        com.byazt.rk.a.hp().hp(com.byazt.gy.eb.hp(mpVar), new j.hp() { // from class: com.byazt.ar.e.1
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar) {
                if (lVar instanceof com.byazt.kf.s) {
                    ((com.byazt.kf.s) lVar).jx = iJ;
                }
            }
        });
    }

    private void l(ViewGroup viewGroup, View view) {
        if (viewGroup != null) {
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if ("overlay_tag".equals(childAt.getTag())) {
                    viewGroup.removeView(childAt);
                }
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) view;
            for (int i3 = 0; i3 < viewGroup2.getChildCount(); i3++) {
                View childAt2 = viewGroup2.getChildAt(i3);
                if ("overlay_tag".equals(childAt2.getTag())) {
                    viewGroup2.removeView(childAt2);
                }
            }
        }
    }

    public void hp(ViewGroup viewGroup, View view) {
        final List<x> listHp;
        l(viewGroup, view);
        if (!yr.l(this.hp) || (listHp = yr.hp(this.hp)) == null || listHp.isEmpty()) {
            return;
        }
        com.byazt.rk.a.l(com.byazt.gy.eb.hp(this.hp));
        if (listHp.get(0) != null) {
            com.byazt.rk.a.hp().hp(com.byazt.gy.eb.hp(this.hp), new j.hp() { // from class: com.byazt.ar.e.2
                @Override // com.byazt.gy.j.hp
                public void hp(com.byazt.gy.l lVar) {
                    if (lVar instanceof com.byazt.kf.s) {
                        com.byazt.kf.s sVar = (com.byazt.kf.s) lVar;
                        sVar.f22028l = ((x) listHp.get(0)).w();
                        sVar.f22029w = ((x) listHp.get(0)).j();
                    }
                }
            });
        }
        for (x xVar : listHp) {
            if (xVar != null) {
                jx.hp(this.hp, xVar);
                com.byazt.ib.a aVar = new com.byazt.ib.a(this.hp, this.jx, xVar);
                aVar.hp(this.f18120l);
                aVar.hp(this.f18119j);
                aVar.l(viewGroup, xVar.j() == 0 ? viewGroup : view);
                this.f18121w.add(aVar);
            }
        }
    }

    public e(mp mpVar, hp hpVar, com.byazt.jt.l lVar, Context context) {
        this(mpVar, hpVar);
        this.f18120l = lVar;
        this.f18119j = context;
    }

    public void hp() {
        for (com.byazt.ib.a aVar : this.f18121w) {
            if (aVar != null) {
                aVar.hp((com.byazt.jt.l) null);
                aVar.hp((Context) null);
                aVar.w();
            }
        }
        this.f18121w.clear();
    }
}
