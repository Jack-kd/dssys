package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import java.util.List;

/* loaded from: classes2.dex */
public class ji extends k3 {

    /* renamed from: b, reason: collision with root package name */
    private int f14669b;

    /* renamed from: c, reason: collision with root package name */
    private List f14670c;

    /* renamed from: d, reason: collision with root package name */
    private View f14671d;

    public ji(Context context, String str, int i2, ni niVar) {
        bj bjVar = new bj(context, str, i2);
        this.f14701a = bjVar;
        bjVar.a(niVar);
    }

    public void a(int i2, View view, View view2, String str) {
        int iX = x();
        boolean zA = ml.a(iX);
        nh.c("BeiZisAd", "percent = " + iX + ",isPass = " + zA);
        if (zA) {
            this.f14671d = y7.a(i2, view, view2, str);
        }
    }

    public void b(int i2) {
        this.f14669b = i2;
    }

    public int x() {
        int iIntValue;
        l3 l3Var = this.f14701a;
        if (l3Var == null || !(l3Var instanceof bj)) {
            return -1;
        }
        String strS = ((bj) l3Var).s();
        if (TextUtils.isEmpty(strS)) {
            return -1;
        }
        List<Pair> list = this.f14670c;
        if (list != null) {
            iIntValue = -1;
            for (Pair pair : list) {
                if (strS.contains((CharSequence) pair.first)) {
                    iIntValue = ((Integer) pair.second).intValue();
                }
            }
        } else {
            iIntValue = -1;
        }
        return iIntValue == -1 ? this.f14669b : iIntValue;
    }

    public void y() {
        View view = this.f14671d;
        if (view != null) {
            eq.a(view);
        }
    }

    public void a(List list) {
        this.f14670c = list;
    }

    public void a(View view, ri riVar) {
        l3 l3Var = this.f14701a;
        if (l3Var == null || view == null || riVar == null || !(l3Var instanceof bj)) {
            return;
        }
        ((bj) l3Var).a(view, riVar);
    }
}
