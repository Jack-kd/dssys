package com.byazt.rp;

import android.app.Activity;
import android.view.View;
import com.byazt.xci.mp;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 1245, 34})
/* loaded from: classes3.dex */
public class l {
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f25266j;

    /* renamed from: l, reason: collision with root package name */
    public long f25267l = 0;
    public long jx = 0;

    public l(String str) {
        this.f25266j = "rewarded_video".equalsIgnoreCase(str) || "fullscreen_interstitial_ad".equalsIgnoreCase(str);
    }

    public void hp(final Activity activity, mp mpVar) {
        if (activity == null || mpVar == null || !mpVar.pu()) {
            return;
        }
        xh.jx(activity);
        try {
            final View decorView = activity.getWindow().getDecorView();
            decorView.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.byazt.rp.l.1
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int i2) {
                    if (i2 == 0) {
                        l.this.hp();
                        try {
                            if (activity.isFinishing()) {
                                return;
                            }
                            decorView.postDelayed(new Runnable() { // from class: com.byazt.rp.l.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    xh.jx(activity);
                                }
                            }, 5000L);
                        } catch (Throwable unused) {
                        }
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public boolean l(Activity activity, mp mpVar) {
        if (activity != null && mpVar != null) {
            boolean z2 = this.hp;
            this.hp = false;
            if (!mpVar.pu() || !z2) {
                return false;
            }
            if (hp.hp(activity) || l()) {
                return true;
            }
            try {
                if (!this.f25266j) {
                    return hp(activity);
                }
                if (hp.hp()) {
                    return false;
                }
                return hp(activity);
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public void hp(int i2) {
        boolean z2 = i2 == 4;
        this.hp = z2;
        if (z2) {
            this.f25267l = System.currentTimeMillis();
        }
    }

    public void hp() {
        this.jx = System.currentTimeMillis();
    }

    private boolean hp(Activity activity) {
        return (activity.getWindow().getDecorView().getSystemUiVisibility() & 2) == 2;
    }

    private boolean l() {
        long j2 = this.f25267l;
        long jAbs = j2 > 0 ? Math.abs(j2 - this.jx) : -1L;
        return jAbs >= 0 && jAbs < 300;
    }
}
