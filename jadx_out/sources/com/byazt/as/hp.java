package com.byazt.as;

import android.content.Context;
import android.content.IntentFilter;
import com.byazt.kc.AbsServerManager;
import com.byazt.ymw.u;
import com.byazt.zn.ky;

@com.byazt.kj.hp(hp = {0, 1, 693, 28})
/* loaded from: classes2.dex */
public class hp {
    public static volatile hp hp;

    /* renamed from: l, reason: collision with root package name */
    public String f18145l = "";

    private hp() {
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public String l() {
        return this.f18145l;
    }

    public void registerReceiver(Context context) {
        MiniAppBroadcastReceiver miniAppBroadcastReceiver = new MiniAppBroadcastReceiver();
        IntentFilter intentFilter = new IntentFilter("com.byted.pma.PMA_DATA");
        intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
        intentFilter.addDataAuthority(context.getPackageName(), null);
        try {
            context.registerReceiver(miniAppBroadcastReceiver, intentFilter, ky.d(), null);
        } catch (Throwable th) {
            u.l("MiniAppManager", "register BroadcastReceiver : " + th.getMessage());
        }
    }

    public void hp(String str) {
        this.f18145l = str;
    }
}
