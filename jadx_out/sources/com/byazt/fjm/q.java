package com.byazt.fjm;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import com.byazt.fjm.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 150})
/* loaded from: classes2.dex */
public class q extends jl {
    public s jx;

    /* renamed from: l, reason: collision with root package name */
    public s f20031l;

    private s j(RecyclerView.q qVar) {
        s sVar = this.f20031l;
        if (sVar == null || sVar.hp != qVar) {
            this.f20031l = s.l(qVar);
        }
        return this.f20031l;
    }

    private s w(RecyclerView.q qVar) {
        s sVar = this.jx;
        if (sVar == null || sVar.hp != qVar) {
            this.jx = s.hp(qVar);
        }
        return this.jx;
    }

    @Override // com.byazt.fjm.jl
    public int[] hp(RecyclerView.q qVar, View view) {
        int[] iArr = new int[2];
        if (qVar.jx()) {
            iArr[0] = hp(qVar, view, w(qVar));
        } else {
            iArr[0] = 0;
        }
        if (qVar.j()) {
            iArr[1] = hp(qVar, view, j(qVar));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    @Override // com.byazt.fjm.jl
    public a l(RecyclerView.q qVar) {
        if (qVar instanceof RecyclerView.ec.l) {
            return new a(this.hp.getContext()) { // from class: com.byazt.fjm.q.1
                @Override // com.byazt.fjm.a, com.byazt.fjm.RecyclerView.ec
                public void hp(View view, RecyclerView.sz szVar, RecyclerView.ec.hp hpVar) {
                    q qVar2 = q.this;
                    int[] iArrHp = qVar2.hp(qVar2.hp.getLayoutManager(), view);
                    int i2 = iArrHp[0];
                    int i3 = iArrHp[1];
                    int iHp = hp(Math.max(Math.abs(i2), Math.abs(i3)));
                    if (iHp > 0) {
                        hpVar.update(i2, i3, iHp, ((a) this).f19976l);
                    }
                }

                @Override // com.byazt.fjm.a
                public int l(int i2) {
                    return Math.min(100, super.l(i2));
                }

                @Override // com.byazt.fjm.a
                public float hp(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }
            };
        }
        return null;
    }

    private View l(RecyclerView.q qVar, s sVar) {
        int iEc = qVar.ec();
        View view = null;
        if (iEc == 0) {
            return null;
        }
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < iEc; i3++) {
            View viewS = qVar.s(i3);
            int iHp = sVar.hp(viewS);
            if (iHp < i2) {
                view = viewS;
                i2 = iHp;
            }
        }
        return view;
    }

    @Override // com.byazt.fjm.jl
    public View hp(RecyclerView.q qVar) {
        if (qVar.j()) {
            return hp(qVar, j(qVar));
        }
        if (qVar.jx()) {
            return hp(qVar, w(qVar));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.fjm.jl
    public int hp(RecyclerView.q qVar, int i2, int i3) {
        View viewL;
        int iJ;
        PointF pointFJx;
        int iHq = qVar.hq();
        if (iHq == 0) {
            return -1;
        }
        if (qVar.j()) {
            viewL = l(qVar, j(qVar));
        } else {
            viewL = qVar.jx() ? l(qVar, w(qVar)) : null;
        }
        if (viewL == null || (iJ = qVar.j(viewL)) == -1) {
            return -1;
        }
        boolean z2 = false;
        if (!qVar.jx() ? i3 > 0 : i2 > 0) {
            z2 = true;
        }
        return (!(qVar instanceof RecyclerView.ec.l) || (pointFJx = ((RecyclerView.ec.l) qVar).jx(iHq - 1)) == null || (pointFJx.x >= 0.0f && pointFJx.y >= 0.0f)) ? z2 ? iJ + 1 : iJ : z2 ? iJ - 1 : iJ;
    }

    private int hp(RecyclerView.q qVar, View view, s sVar) {
        int iW;
        int iHp = sVar.hp(view) + (sVar.w(view) / 2);
        if (qVar.v()) {
            iW = sVar.jx() + (sVar.a() / 2);
        } else {
            iW = sVar.w() / 2;
        }
        return iHp - iW;
    }

    private View hp(RecyclerView.q qVar, s sVar) {
        int iW;
        int iEc = qVar.ec();
        View view = null;
        if (iEc == 0) {
            return null;
        }
        if (qVar.v()) {
            iW = sVar.jx() + (sVar.a() / 2);
        } else {
            iW = sVar.w() / 2;
        }
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < iEc; i3++) {
            View viewS = qVar.s(i3);
            int iAbs = Math.abs((sVar.hp(viewS) + (sVar.w(viewS) / 2)) - iW);
            if (iAbs < i2) {
                view = viewS;
                i2 = iAbs;
            }
        }
        return view;
    }
}
