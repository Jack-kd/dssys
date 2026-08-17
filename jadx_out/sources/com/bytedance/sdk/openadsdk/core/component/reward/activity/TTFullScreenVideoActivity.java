package com.bytedance.sdk.openadsdk.core.component.reward.activity;

import android.os.Bundle;
import com.byazt.ash.l;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jz.sz;
import com.byazt.vv.hp;
import com.byazt.xci.ea;

/* loaded from: classes3.dex */
public class TTFullScreenVideoActivity extends TTBaseVideoActivity {
    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void d() {
        if (this.jx.getAndSet(true)) {
            return;
        }
        hp hpVar = this.f20283y;
        if (hpVar == null || !hpVar.jx()) {
            hp("onAdClose", (Bundle) null);
        }
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void f() {
        String str;
        super.f();
        if (ea.xs(this.pu) || this.dy.ud()) {
            return;
        }
        if (this.f20276r.nu()) {
            this.nu.hp(false, null, null, true, true);
            return;
        }
        int iHq = ((int) this.f20276r.hq()) / 1000;
        String str2 = this.f20272ms.a(false) + "s";
        boolean z2 = iHq >= this.f20272ms.nd();
        if (z2 || !sz.l().w(String.valueOf(this.mp))) {
            str = null;
        } else {
            str = (this.f20272ms.nd() - iHq) + "s后可跳过";
        }
        this.nu.hp(false, str2, str, z2, z2);
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void jx(boolean z2) {
        char c2 = 65535;
        if (this.cx) {
            if (sz.l().pj() == 1) {
                c2 = 2000;
            }
        } else if (z2) {
            c2 = 0;
        }
        if (c2 < 0 || this.sz.get()) {
            return;
        }
        if (c2 != 0) {
            this.f20270l.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TTFullScreenVideoActivity.this.sz.getAndSet(true)) {
                        return;
                    }
                    l.hp().hp(TTFullScreenVideoActivity.this.pu, String.valueOf(TTFullScreenVideoActivity.this.mp));
                }
            }, 2000L);
        } else {
            if (this.sz.getAndSet(true)) {
                return;
            }
            l.hp().hp(this.pu, String.valueOf(this.mp));
        }
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public boolean o() {
        return false;
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void hp(String str, Bundle bundle) {
        com.byazt.bp.hp.hp(1, this.f20271m, str, bundle);
    }
}
