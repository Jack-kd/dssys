package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
public class jj extends k3 {
    public jj(Context context, String str, int i2) {
        this.f14701a = new mj(context, str, i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 6 ? null : wh.NATIVE : wh.INTERSTITIAL : wh.NEW_SPLASH : wh.REWARDEDVIDEO);
    }

    public void a(lj ljVar) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof mj)) {
            ((mj) l3Var).a(ljVar);
        }
    }

    public void a(View view) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof mj)) {
            ((mj) l3Var).b(view);
        }
    }

    public void a(ViewGroup viewGroup, kj kjVar) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof mj)) {
            ((mj) l3Var).a(viewGroup, kjVar);
        }
    }
}
