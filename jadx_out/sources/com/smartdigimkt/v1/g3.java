package com.smartdigimkt.v1;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

/* loaded from: classes5.dex */
public final class g3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j3 f44481a;

    public g3(j3 j3Var) {
        this.f44481a = j3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ViewGroup viewGroup = this.f44481a.f44509a;
            if (viewGroup instanceof RelativeLayout) {
                int i2 = this.f44481a.f44511c;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i2);
                layoutParams.addRule(13);
                j3 j3Var = this.f44481a;
                j3Var.f44509a.addView(j3Var.f44510b, layoutParams);
                return;
            }
            if (viewGroup instanceof FrameLayout) {
                int i3 = this.f44481a.f44511c;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i3, i3);
                layoutParams2.gravity = 17;
                j3 j3Var2 = this.f44481a;
                j3Var2.f44509a.addView(j3Var2.f44510b, layoutParams2);
            }
        } catch (Throwable unused) {
        }
    }
}
