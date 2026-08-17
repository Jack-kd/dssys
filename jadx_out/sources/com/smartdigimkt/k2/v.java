package com.smartdigimkt.k2;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.ShakeBorderThumbView;

/* loaded from: classes5.dex */
public final class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f41354a;

    public v(y yVar) {
        this.f41354a = yVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f41354a.a()) {
            try {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.2f);
                valueAnimatorOfFloat.setDuration(500L);
                valueAnimatorOfFloat.setRepeatCount(1);
                valueAnimatorOfFloat.setRepeatMode(2);
                valueAnimatorOfFloat.addUpdateListener(new t(this));
                valueAnimatorOfFloat.addListener(new u(this));
                valueAnimatorOfFloat.start();
            } catch (Throwable unused) {
                if (this.f41354a.a()) {
                    ShakeBorderThumbView shakeBorderThumbView = this.f41354a.f41358j;
                    if (shakeBorderThumbView == null || shakeBorderThumbView.getParent() == null) {
                        this.f41354a.f41357i.setVisibility(0);
                    } else {
                        this.f41354a.f41357i.setVisibility(8);
                        this.f41354a.f41358j.setVisibility(0);
                    }
                }
            }
        }
    }
}
