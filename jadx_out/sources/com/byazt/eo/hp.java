package com.byazt.eo;

import android.graphics.Rect;
import android.view.View;
import com.byazt.eo.w;
import com.byazt.fjm.RecyclerView;
import com.byazt.xa.s;
import java.util.LinkedHashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1298, 28})
/* loaded from: classes2.dex */
public class hp {
    public static int hp = 0;

    /* renamed from: l, reason: collision with root package name */
    public static int f19430l = 1;
    public w.hp jx;

    /* renamed from: j, reason: collision with root package name */
    public int f19431j = 60;

    /* renamed from: w, reason: collision with root package name */
    public int f19432w = f19430l;

    private int l(View view) {
        int iHp = (int) (s.hp(view.getContext()) / 2.3d);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return Math.abs((iArr[1] + (view.getHeight() / 2)) - iHp);
    }

    public int hp(RecyclerView recyclerView) {
        w.hp hpVar;
        View viewJx;
        w.hp hpVar2 = null;
        com.byazt.fjm.w wVar = recyclerView.getLayoutManager() instanceof com.byazt.fjm.w ? (com.byazt.fjm.w) recyclerView.getLayoutManager() : null;
        if (wVar != null) {
            int iGu = wVar.gu();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (int iE = wVar.e(); iE <= iGu; iE++) {
                Object objJx = recyclerView.jx(iE);
                if ((objJx instanceof w.hp) && (viewJx = (hpVar = (w.hp) objJx).jx()) != null && hp(viewJx, this.f19431j)) {
                    if (this.f19432w == hp) {
                        hpVar.Q_();
                        this.jx = hpVar;
                        return iE;
                    }
                    linkedHashMap.put(Integer.valueOf(iE), hpVar);
                }
            }
            int i2 = Integer.MAX_VALUE;
            int iIntValue = -1;
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                int iL = l(((w.hp) entry.getValue()).jx());
                if (iL < i2) {
                    w.hp hpVar3 = (w.hp) entry.getValue();
                    iIntValue = ((Integer) entry.getKey()).intValue();
                    hpVar2 = hpVar3;
                    i2 = iL;
                }
            }
            w.hp hpVar4 = this.jx;
            if (hpVar4 != hpVar2) {
                if (hpVar4 != null) {
                    hpVar4.P_();
                }
                this.jx = hpVar2;
            }
            w.hp hpVar5 = this.jx;
            if (hpVar5 != null) {
                hpVar5.Q_();
                return iIntValue;
            }
        }
        return -1;
    }

    public void hp() {
        w.hp hpVar = this.jx;
        if (hpVar == null || hpVar.jx() == null || hp(this.jx.jx(), this.f19431j)) {
            return;
        }
        this.jx.P_();
    }

    private int hp(View view) {
        Rect rect = new Rect();
        if (!view.getLocalVisibleRect(rect) || view.getMeasuredHeight() <= 0) {
            return -1;
        }
        return (rect.height() * 100) / view.getMeasuredHeight();
    }

    private boolean hp(View view, int i2) {
        return view.getLocalVisibleRect(new Rect()) && view.getVisibility() == 0 && hp(view) >= i2;
    }
}
