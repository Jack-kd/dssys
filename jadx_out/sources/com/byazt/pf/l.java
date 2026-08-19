package com.byazt.pf;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1474, 34})
/* loaded from: classes3.dex */
public class l extends hp {
    public l() {
    }

    @Override // com.byazt.pf.hp
    public int hp(Map<String, Object> map, jx jxVar) {
        return !l(this.f24372j) ? 1 : 0;
    }

    public boolean l(View view) {
        if (view != null && this.hp != null) {
            String strValueOf = String.valueOf(view.getTag(2097610717));
            if (view.getTag(2097610717) != null && !TextUtils.isEmpty(strValueOf)) {
                if ("click".equals(strValueOf)) {
                    return this.jx.s();
                }
                return true;
            }
            Context context = this.f24373l;
            if (context == null) {
                context = sz.getContext();
            }
            if (hp(view, context)) {
                return this.hp.t() != 1 || this.jx.s();
            }
            if (this.hp.qh() == 1 && !this.jx.s()) {
                return false;
            }
        }
        return true;
    }

    public l(mp mpVar, Context context) {
        this.hp = mpVar;
        this.f24373l = context;
    }

    public boolean hp(View view, Context context) {
        int id = view.getId();
        List<Integer> listK = this.jx.k();
        if (listK != null && listK.size() == 0) {
            listK.add(2114387830);
            listK.add(2114387864);
            listK.add(2114387633);
            listK.add(2114387466);
            listK.add(2114387468);
            listK.add(2114387962);
            listK.add(2114387625);
        }
        return listK != null && listK.contains(Integer.valueOf(id));
    }

    public boolean hp(View view, Point point) {
        int i2;
        int i3;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                View childAt = viewGroup.getChildAt(i4);
                Context context = this.f24373l;
                if (context == null) {
                    context = sz.getContext();
                }
                if (hp(childAt, context)) {
                    int[] iArr = new int[2];
                    childAt.getLocationOnScreen(iArr);
                    int i5 = point.x;
                    int i6 = iArr[0];
                    return i5 >= i6 && i5 <= i6 + childAt.getWidth() && (i2 = point.y) >= (i3 = iArr[1]) && i2 <= i3 + childAt.getHeight();
                }
                if (hp(childAt, point)) {
                    return true;
                }
            }
        }
        return false;
    }
}
