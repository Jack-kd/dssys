package com.byazt.ar;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.gy.j;
import com.byazt.xci.d;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public mp hp;
    public com.byazt.ib.jx jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ib.l f18142l;

    public w(mp mpVar, hp hpVar) {
        this.hp = mpVar;
        this.f18142l = new com.byazt.ib.l(mpVar, hpVar);
        this.jx = new com.byazt.ib.jx(this.hp, hpVar);
        if (mpVar == null || !d.hp(mpVar)) {
            return;
        }
        com.byazt.rk.a.hp(mpVar, String.valueOf(ky.zy(mpVar)), ky.jl(mpVar), d.l(mpVar) ? 1 : 2, com.byazt.gy.eb.hp(mpVar));
        final int iJ = d.j(this.hp);
        com.byazt.rk.a.hp().hp(com.byazt.gy.eb.hp(mpVar), new j.hp() { // from class: com.byazt.ar.w.1
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar) {
                if (lVar instanceof com.byazt.kf.s) {
                    ((com.byazt.kf.s) lVar).jx = iJ;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(ViewGroup viewGroup, View view) {
        if (viewGroup != null) {
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if ("easy_play_tag".equals(childAt.getTag())) {
                    viewGroup.removeView(childAt);
                }
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) view;
            for (int i3 = 0; i3 < viewGroup2.getChildCount(); i3++) {
                View childAt2 = viewGroup2.getChildAt(i3);
                if ("easy_play_tag".equals(childAt2.getTag())) {
                    viewGroup2.removeView(childAt2);
                }
            }
        }
    }

    public void hp(final ViewGroup viewGroup, final View view) {
        if (viewGroup == null) {
            return;
        }
        viewGroup.post(new Runnable() { // from class: com.byazt.ar.w.2
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                boolean z2;
                w.this.l(viewGroup, view);
                if (d.l(w.this.hp)) {
                    com.byazt.rk.a.l(com.byazt.gy.eb.hp(w.this.hp));
                    com.byazt.rk.a.hp().hp(com.byazt.gy.eb.hp(w.this.hp), new j.hp() { // from class: com.byazt.ar.w.2.1
                        @Override // com.byazt.gy.j.hp
                        public void hp(com.byazt.gy.l lVar) {
                            if (lVar instanceof com.byazt.kf.s) {
                                com.byazt.kf.s sVar = (com.byazt.kf.s) lVar;
                                sVar.f22028l = d.s(w.this.hp).w();
                                sVar.f22029w = d.s(w.this.hp).j();
                            }
                        }
                    });
                    mp mpVar = w.this.hp;
                    jx.hp(mpVar, d.s(mpVar));
                    z2 = d.s(w.this.hp).j() == 0;
                    com.byazt.ib.l lVar = w.this.f18142l;
                    ViewGroup viewGroup2 = viewGroup;
                    lVar.l(viewGroup2, z2 ? viewGroup2 : view);
                    return;
                }
                if (d.jx(w.this.hp)) {
                    com.byazt.rk.a.l(com.byazt.gy.eb.hp(w.this.hp));
                    com.byazt.rk.a.hp().hp(com.byazt.gy.eb.hp(w.this.hp), new j.hp() { // from class: com.byazt.ar.w.2.2
                        @Override // com.byazt.gy.j.hp
                        public void hp(com.byazt.gy.l lVar2) {
                            if (lVar2 instanceof com.byazt.kf.s) {
                                com.byazt.kf.s sVar = (com.byazt.kf.s) lVar2;
                                sVar.f22028l = d.eb(w.this.hp).w();
                                sVar.f22029w = d.eb(w.this.hp).j();
                            }
                        }
                    });
                    mp mpVar2 = w.this.hp;
                    jx.hp(mpVar2, d.eb(mpVar2));
                    z2 = d.eb(w.this.hp).j() == 0;
                    com.byazt.ib.jx jxVar = w.this.jx;
                    ViewGroup viewGroup3 = viewGroup;
                    jxVar.l(viewGroup3, z2 ? viewGroup3 : view);
                }
            }
        });
    }

    public eb hp() {
        if (d.l(this.hp)) {
            return this.f18142l.hp();
        }
        if (d.jx(this.hp)) {
            return this.jx.hp();
        }
        return new eb() { // from class: com.byazt.ar.w.3
            @Override // com.byazt.ar.eb
            public void hp() {
            }

            @Override // com.byazt.ar.eb
            public void j() {
            }

            @Override // com.byazt.ar.eb
            public void jx() {
            }

            @Override // com.byazt.ar.eb
            public void l() {
            }

            @Override // com.byazt.ar.eb
            public void w() {
            }

            @Override // com.byazt.ar.eb
            public void hp(int i2) {
            }

            @Override // com.byazt.ar.eb
            public void hp(boolean z2) {
            }
        };
    }

    public void hp(com.byazt.pt.l lVar) {
        com.byazt.ib.jx jxVar = this.jx;
        if (jxVar != null) {
            jxVar.hp(lVar);
        }
        com.byazt.ib.l lVar2 = this.f18142l;
        if (lVar2 != null) {
            lVar2.hp(lVar);
        }
    }

    public w(mp mpVar, hp hpVar, com.byazt.jt.l lVar, Context context) {
        this(mpVar, hpVar);
        this.f18142l.hp(lVar);
        this.f18142l.hp(context);
    }

    public void l() {
        com.byazt.ib.l lVar = this.f18142l;
        if (lVar != null) {
            lVar.w();
        }
        com.byazt.ib.jx jxVar = this.jx;
        if (jxVar != null) {
            jxVar.jx();
        }
    }
}
