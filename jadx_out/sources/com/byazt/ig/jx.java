package com.byazt.ig;

import android.content.Context;
import android.view.View;
import com.byazt.fjm.RecyclerView;
import com.byazt.fjm.q;
import com.byazt.ymw.u;

@com.byazt.kj.hp(hp = {0, 1, 7, 30})
/* loaded from: classes.dex */
public class jx extends com.byazt.fjm.w {

    /* renamed from: b, reason: collision with root package name */
    public hp f21063b;
    public int cx;
    public final RecyclerView.gu di;
    public final q ec;

    /* renamed from: n, reason: collision with root package name */
    public int f21064n;
    public boolean ns;
    public int sz;
    public boolean vv;

    public interface hp {
        void hp();

        void hp(boolean z2, int i2);

        void hp(boolean z2, int i2, boolean z3);
    }

    public jx(Context context, int i2, boolean z2) {
        super(context, i2, z2);
        this.ns = false;
        this.vv = true;
        this.di = new RecyclerView.gu() { // from class: com.byazt.ig.jx.1
            @Override // com.byazt.fjm.RecyclerView.gu
            public void hp(View view) {
                if (jx.this.f21063b == null || jx.this.ec() != 1) {
                    return;
                }
                jx.this.f21063b.hp();
            }

            @Override // com.byazt.fjm.RecyclerView.gu
            public void l(View view) {
                if (jx.this.f21063b != null) {
                    jx.this.f21063b.hp(jx.this.sz >= 0, jx.this.j(view));
                }
            }
        };
        this.ec = new q();
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public void gu(int i2) {
        boolean z2;
        hp hpVar;
        this.f21064n = i2;
        if (i2 == 0) {
            View viewHp = this.ec.hp(this);
            if (viewHp != null) {
                int iJ = j(viewHp);
                z2 = this.cx == iJ;
                this.cx = iJ;
            } else {
                z2 = true;
            }
            if (this.ns) {
                this.ns = false;
                if (!z2 && (hpVar = this.f21063b) != null) {
                    boolean z3 = this.sz >= 0;
                    int i3 = this.cx;
                    hpVar.hp(z3, i3, i3 == hq() - 1);
                }
            }
        }
        if (i2 == 2) {
            this.ns = true;
        }
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public void jx(RecyclerView recyclerView) throws IllegalStateException {
        super.jx(recyclerView);
        this.ec.hp(recyclerView);
        recyclerView.hp(this.di);
    }

    @Override // com.byazt.fjm.w, com.byazt.fjm.RecyclerView.q
    public void hp(RecyclerView recyclerView, RecyclerView.u uVar) {
        super.hp(recyclerView, uVar);
        try {
            w wVar = (w) recyclerView.jx(this.cx);
            if (wVar != null) {
                wVar.hq();
            }
        } catch (Exception e2) {
            u.hp("cubic detached exception:" + e2.getMessage());
        }
    }

    public void l(boolean z2) {
        this.vv = z2;
    }

    @Override // com.byazt.fjm.w, com.byazt.fjm.RecyclerView.q
    public int l(int i2, RecyclerView.u uVar, RecyclerView.sz szVar) {
        this.sz = i2;
        return super.l(i2, uVar, szVar);
    }

    @Override // com.byazt.fjm.w, com.byazt.fjm.RecyclerView.q
    public int hp(int i2, RecyclerView.u uVar, RecyclerView.sz szVar) {
        this.sz = i2;
        return super.hp(i2, uVar, szVar);
    }

    public void hp(hp hpVar) {
        this.f21063b = hpVar;
    }
}
