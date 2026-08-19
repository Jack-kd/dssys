package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
public abstract class xb extends tb {

    /* renamed from: e, reason: collision with root package name */
    private ViewGroup f17445e;

    public xb(Context context, da daVar) {
        super(context, daVar);
    }

    private boolean b(ViewGroup viewGroup) {
        return viewGroup.getVisibility() == 0;
    }

    @Override // com.beizi.fusion.tb
    public final void a(Context context) {
        if (!this.f16362d.f() || !a(this.f17445e)) {
            this.f16362d.b(n1.ERROR_AD_NOT_READY_TO_SHOW);
            return;
        }
        View viewA = this.f16362d.a(false);
        if (viewA != null) {
            this.f17445e.addView(viewA);
        }
    }

    public void c(ViewGroup viewGroup) {
        this.f17445e = viewGroup;
    }

    private boolean a(ViewGroup viewGroup) {
        return viewGroup != null && b(viewGroup);
    }
}
