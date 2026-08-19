package com.byazt.fjm;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import com.byazt.fjm.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 19})
/* loaded from: classes2.dex */
public abstract class jl extends RecyclerView.jl {
    public RecyclerView hp;
    public final RecyclerView.k jx = new RecyclerView.k() { // from class: com.byazt.fjm.jl.1
        public boolean hp = false;

        @Override // com.byazt.fjm.RecyclerView.k
        public void hp(RecyclerView recyclerView, int i2) {
            super.hp(recyclerView, i2);
            if (i2 == 0 && this.hp) {
                this.hp = false;
                jl.this.hp();
            }
        }

        @Override // com.byazt.fjm.RecyclerView.k
        public void hp(RecyclerView recyclerView, int i2, int i3) {
            if (i2 == 0 && i3 == 0) {
                return;
            }
            this.hp = true;
        }
    };

    /* renamed from: l, reason: collision with root package name */
    public Scroller f19995l;

    private void jx() {
        this.hp.l(this.jx);
        this.hp.setOnFlingListener(null);
    }

    private void l() throws IllegalStateException {
        if (this.hp.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.hp.hp(this.jx);
        this.hp.setOnFlingListener(this);
    }

    public abstract int hp(RecyclerView.q qVar, int i2, int i3);

    public abstract View hp(RecyclerView.q qVar);

    @Override // com.byazt.fjm.RecyclerView.jl
    public boolean hp(int i2, int i3) {
        RecyclerView.q layoutManager = this.hp.getLayoutManager();
        if (layoutManager == null || this.hp.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.hp.getMinFlingVelocity();
        return (Math.abs(i3) > minFlingVelocity || Math.abs(i2) > minFlingVelocity) && l(layoutManager, i2, i3);
    }

    public abstract int[] hp(RecyclerView.q qVar, View view);

    public RecyclerView.ec jx(RecyclerView.q qVar) {
        return l(qVar);
    }

    private boolean l(RecyclerView.q qVar, int i2, int i3) {
        RecyclerView.ec ecVarJx;
        int iHp;
        if (!(qVar instanceof RecyclerView.ec.l) || (ecVarJx = jx(qVar)) == null || (iHp = hp(qVar, i2, i3)) == -1) {
            return false;
        }
        ecVarJx.jx(iHp);
        qVar.hp(ecVarJx);
        return true;
    }

    public void hp(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.hp;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                jx();
            }
            this.hp = recyclerView;
            if (recyclerView != null) {
                l();
                this.f19995l = new Scroller(this.hp.getContext(), new DecelerateInterpolator());
                hp();
            }
        }
    }

    @Deprecated
    public a l(RecyclerView.q qVar) {
        if (qVar instanceof RecyclerView.ec.l) {
            return new a(this.hp.getContext()) { // from class: com.byazt.fjm.jl.2
                @Override // com.byazt.fjm.a, com.byazt.fjm.RecyclerView.ec
                public void hp(View view, RecyclerView.sz szVar, RecyclerView.ec.hp hpVar) {
                    jl jlVar = jl.this;
                    RecyclerView recyclerView = jlVar.hp;
                    if (recyclerView != null) {
                        int[] iArrHp = jlVar.hp(recyclerView.getLayoutManager(), view);
                        int i2 = iArrHp[0];
                        int i3 = iArrHp[1];
                        int iHp = hp(Math.max(Math.abs(i2), Math.abs(i3)));
                        if (iHp > 0) {
                            hpVar.update(i2, i3, iHp, ((a) this).f19976l);
                        }
                    }
                }

                @Override // com.byazt.fjm.a
                public float hp(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }
            };
        }
        return null;
    }

    public void hp() {
        RecyclerView.q layoutManager;
        View viewHp;
        RecyclerView recyclerView = this.hp;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewHp = hp(layoutManager)) == null) {
            return;
        }
        int[] iArrHp = hp(layoutManager, viewHp);
        int i2 = iArrHp[0];
        if (i2 == 0 && iArrHp[1] == 0) {
            return;
        }
        this.hp.hp(i2, iArrHp[1]);
    }
}
