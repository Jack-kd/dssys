package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import com.beizi.ad.internal.splash.SplashUnifiedActionData;

/* loaded from: classes2.dex */
public class hj extends k3 {
    public hj(Context context, String str) {
        this.f14701a = new ij(context, str);
    }

    public void a(jo joVar) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof ij)) {
            ((ij) l3Var).a(joVar);
        }
    }

    public void a(View view) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof ij)) {
            ((ij) l3Var).a(view);
        }
    }

    public void a(SplashUnifiedActionData splashUnifiedActionData) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof ij)) {
            ((ij) l3Var).a(splashUnifiedActionData);
        }
    }
}
