package com.byazt.zn;

import android.content.Context;
import java.io.BufferedReader;
import java.io.InputStreamReader;

@com.byazt.kj.hp(hp = {0, 1, 442, 94})
/* loaded from: classes3.dex */
public class eb {
    public static boolean hp() {
        if (com.byazt.jz.s.u().yr()) {
            return true;
        }
        Context context = com.byazt.jz.sz.getContext();
        if (context.getApplicationInfo() != null) {
            if ((context.getApplicationInfo().flags & 2) != 0) {
                return true;
            }
        }
        return false;
    }

    public static void hp(com.byazt.jt.hp hpVar) {
        try {
            if (!hpVar.s() || com.byazt.ymw.u.hp()) {
                return;
            }
            System.currentTimeMillis();
            if (Boolean.parseBoolean(new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop debug.ttcsj.debugmode").getInputStream())).readLine())) {
                com.byazt.ymw.u.l();
                com.byazt.qm.l.hp();
                com.byazt.oyr.hp.hp();
                com.byazt.oz.jx.l();
                com.byazt.cwe.l.hp().openDebugLog(true);
            }
        } catch (Exception unused) {
        }
    }
}
