package com.byazt.j;

import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.work.PeriodicWorkRequest;
import com.byazt.ei.hp;
import com.byazt.y.zy;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 38, 54})
/* loaded from: classes.dex */
public class a {
    public static Handler hp = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: private */
    public static int e(com.byazt.zv.l lVar) {
        return com.byazt.y.w.hp((com.byazt.zv.hp) lVar).hp("app_link_check_count", 10);
    }

    public static boolean j(com.byazt.zv.l lVar) {
        return com.byazt.y.w.hp((com.byazt.zv.hp) lVar).l("app_link_opt_dialog_switch") == 1;
    }

    public static boolean jx(com.byazt.zv.l lVar) {
        return com.byazt.y.w.hp((com.byazt.zv.hp) lVar).l("app_link_opt_invoke_switch") == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(@NonNull final com.byazt.zv.l lVar, final int i2) {
        if (i2 <= 0) {
            return;
        }
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.j.a.2
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                int i3 = 1;
                if (!zy.jx(lVar.w())) {
                    a.l(lVar, i2 - 1);
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    if (!lVar.rv()) {
                        i3 = 2;
                    }
                    jSONObject.putOpt("deeplink_source", Integer.valueOf(i3));
                } catch (JSONException unused) {
                }
                com.byazt.r.hp.hp().hp("deeplink_success_2", jSONObject, lVar);
            }
        }, q(lVar) * 1000);
    }

    private static int q(com.byazt.zv.l lVar) {
        return com.byazt.y.w.hp((com.byazt.zv.hp) lVar).hp("app_link_check_delay", 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long s(com.byazt.zv.l lVar) {
        return com.byazt.y.w.hp((com.byazt.zv.hp) lVar).hp("app_link_check_timeout", PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS);
    }

    public static long w(com.byazt.zv.l lVar) {
        if (lVar == null) {
            return 3000L;
        }
        return com.byazt.y.w.hp((com.byazt.zv.hp) lVar).hp("app_link_opt_back_time_limit", 3) * 1000;
    }

    public static void hp(final com.byazt.zv.l lVar, @NonNull final s sVar) {
        boolean zL = com.byazt.ei.hp.hp().l();
        if (!zL && Build.VERSION.SDK_INT >= 29) {
            zy.jx();
        }
        boolean zL2 = com.byazt.ei.hp.hp().l();
        boolean z2 = !zL && zL2;
        if (lVar != null) {
            lVar.jl(z2);
        }
        sVar.hp(z2);
        if (lVar == null) {
            return;
        }
        l(lVar, e(lVar));
        if (zL2) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.byazt.ei.hp.hp().hp(new hp.InterfaceC0218hp() { // from class: com.byazt.j.a.1
            @Override // com.byazt.ei.hp.InterfaceC0218hp
            public void jx() {
            }

            @Override // com.byazt.ei.hp.InterfaceC0218hp
            public void l() {
                com.byazt.ei.hp.hp().l(this);
                com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.j.a.1.1
                    @Override // java.lang.Runnable
                    public void run() throws PackageManager.NameNotFoundException {
                        boolean zJx = zy.jx(lVar.w());
                        long jW = a.w(lVar);
                        if (!zJx || jW >= System.currentTimeMillis() - jCurrentTimeMillis) {
                            long jS = a.s(lVar);
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            if (jCurrentTimeMillis2 - jCurrentTimeMillis > jS) {
                                com.byazt.r.hp.hp().hp("deeplink_delay_timeout", lVar);
                                return;
                            }
                            lVar.jl(true);
                            com.byazt.r.hp.hp().hp("deeplink_delay_invoke", lVar);
                            sVar.hp(true);
                            com.byazt.zv.l lVar2 = lVar;
                            a.l(lVar2, a.e(lVar2));
                        }
                    }
                });
            }
        });
    }

    public static boolean l(com.byazt.zv.l lVar) {
        return com.byazt.y.w.hp((com.byazt.zv.hp) lVar).l("app_link_opt_install_switch") == 1;
    }

    public static boolean hp(com.byazt.zv.l lVar) {
        return com.byazt.y.w.hp((com.byazt.zv.hp) lVar).l("app_link_opt_switch") == 1;
    }
}
