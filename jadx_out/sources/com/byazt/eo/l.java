package com.byazt.eo;

import android.graphics.Rect;
import android.view.View;
import com.byazt.fjm.RecyclerView;

@com.byazt.kj.hp(hp = {0, 1, 1298, 34})
/* loaded from: classes2.dex */
public abstract class l extends RecyclerView.k {
    public boolean hp = false;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public hp f19434l;

    public l(hp hpVar) {
        this.f19434l = hpVar;
    }

    public abstract void hp();

    public abstract void hp(int i2, int i3);

    public abstract void hp(int i2, View view);

    @Override // com.byazt.fjm.RecyclerView.k
    public void hp(RecyclerView recyclerView, int i2) {
        super.hp(recyclerView, i2);
        com.byazt.fjm.w wVar = (com.byazt.fjm.w) recyclerView.getLayoutManager();
        if (i2 == 0) {
            int iGu = wVar.gu();
            if (!hp(wVar.l(iGu), 50)) {
                iGu--;
            }
            int iMax = Math.max(0, Math.max(iGu, this.jx));
            for (int iMin = Math.min(this.jx, iGu); iMin <= iMax; iMin++) {
                hp(iMin, wVar.l(iMin));
            }
            this.jx = iGu;
            int iHq = wVar.hq();
            this.f19434l.hp(recyclerView);
            if ((iGu == iHq - 1 && this.hp) || iHq == 1) {
                hp();
            }
        }
        l(recyclerView, i2);
    }

    public abstract void l(RecyclerView recyclerView, int i2);

    private int hp(View view) {
        Rect rect = new Rect();
        if (!view.getLocalVisibleRect(rect) || view.getMeasuredHeight() <= 0) {
            return -1;
        }
        return (rect.height() * 100) / view.getMeasuredHeight();
    }

    private boolean hp(View view, int i2) {
        return view != null && view.getLocalVisibleRect(new Rect()) && view.getVisibility() == 0 && hp(view) >= i2;
    }

    @Override // com.byazt.fjm.RecyclerView.k
    public void hp(RecyclerView recyclerView, int i2, int i3) {
        super.hp(recyclerView, i2, i3);
        if (i3 == 0) {
            com.byazt.fjm.w wVar = (com.byazt.fjm.w) recyclerView.getLayoutManager();
            this.jx = wVar.e();
            int iGu = wVar.gu();
            if (!hp(wVar.l(iGu), 50)) {
                iGu--;
            }
            int iMax = Math.max(0, Math.max(iGu, this.jx));
            for (int i4 = this.jx; i4 <= iMax; i4++) {
                hp(i4, wVar.l(i4));
            }
        }
        this.hp = i3 > 0;
        this.f19434l.hp();
        hp(i2, i3);
    }
}
