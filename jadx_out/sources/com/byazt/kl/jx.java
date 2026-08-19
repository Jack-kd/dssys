package com.byazt.kl;

import android.content.Context;
import com.byazt.jz.nu;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 597, 30})
/* loaded from: classes.dex */
public class jx {
    public static com.byazt.c.hp hp;

    public static void hp(l lVar) {
        if (j() == null) {
            return;
        }
        hp.hp(lVar);
    }

    private static com.byazt.c.hp j() {
        if (hp == null) {
            hp = nu.hp().w();
        }
        return hp;
    }

    public static void jx(String str, String str2) {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return;
        }
        hpVarJ.e(str, str2);
    }

    public static void l(String str, String str2) {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return;
        }
        hpVarJ.i(str, str2);
    }

    public static void hp() {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return;
        }
        hpVarJ.destroy();
    }

    public static void jx() {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return;
        }
        hpVarJ.execCloudManagerSafely();
    }

    public static void l() {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return;
        }
        hpVarJ.fetchCommand();
    }

    public static void hp(int i2) {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return;
        }
        hpVarJ.changeLogLevel(i2);
    }

    public static void hp(String str, String str2) {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return;
        }
        hpVarJ.d(str, str2);
    }

    public static void hp(String str, String str2, Throwable th) {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return;
        }
        hpVarJ.e(str, str2, th);
    }

    public static void hp(String str, Throwable th) {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return;
        }
        hpVarJ.e(str, th);
    }

    public static boolean hp(Context context, JSONObject jSONObject) {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return false;
        }
        hpVarJ.initCLog(context, jSONObject);
        return true;
    }

    public static void hp(Context context, String str, String str2) {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return;
        }
        hpVarJ.initCloudMessageManager(context, str, str2);
    }

    public static void hp(String str) {
        com.byazt.c.hp hpVarJ = j();
        if (hpVarJ == null) {
            return;
        }
        hpVarJ.setUploadHost(str);
    }
}
