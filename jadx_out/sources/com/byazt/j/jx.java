package com.byazt.j;

import android.os.Build;
import androidx.annotation.NonNull;
import com.byazt.ei.hp;
import com.byazt.y.zy;

@com.byazt.kj.hp(hp = {0, 1, 38, 30})
/* loaded from: classes.dex */
public class jx {
    public static void hp(final com.byazt.zv.l lVar, @NonNull final com.byazt.o.hp hpVar) {
        boolean zL = com.byazt.ei.hp.hp().l();
        if (!zL && Build.VERSION.SDK_INT >= 29) {
            zy.jx();
        }
        boolean zL2 = com.byazt.ei.hp.hp().l();
        if (!zL && zL2 && lVar != null) {
            lVar.jl(true);
        }
        hpVar.hp();
        com.byazt.nu.hp.l("AppInstallOptimiseHelper", "AppInstallOptimiseHelper-->isAppForegroundSecond:::".concat(String.valueOf(zL2)));
        if (zL2) {
            return;
        }
        com.byazt.ei.hp.hp().hp(new hp.InterfaceC0218hp() { // from class: com.byazt.j.jx.1
            @Override // com.byazt.ei.hp.InterfaceC0218hp
            public void jx() {
            }

            @Override // com.byazt.ei.hp.InterfaceC0218hp
            public void l() {
                com.byazt.nu.hp.l("AppInstallOptimiseHelper", "AppInstallOptimiseHelper-->onAppForeground");
                com.byazt.ei.hp.hp().l(this);
                if (zy.l(lVar)) {
                    return;
                }
                lVar.zy(true);
                com.byazt.r.hp.hp().hp("install_delay_invoke", lVar);
                hpVar.hp();
            }
        });
    }
}
