package com.byazt.owd;

import android.os.Bundle;
import android.util.SparseArray;
import com.byazt.jz.d;
import com.byazt.jz.wv;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1061, 34})
/* loaded from: classes3.dex */
public class l {
    public static int hp() {
        return d.f21856j;
    }

    public static String j() {
        return "7.6.4.3";
    }

    public static String jx() {
        return d.f21860w;
    }

    public static wv l() {
        return DispatchAdSdkInitializerHolder.getCsjManger();
    }

    public static boolean w() {
        return DispatchAdSdkInitializerHolder.isInitSuccess();
    }

    public static void hp(int i2) {
        wv wvVarL = l();
        if (wvVarL != null) {
            wvVarL.setThemeStatus(i2);
        }
    }

    public static void hp(boolean z2) throws JSONException {
        wv wvVarL = l();
        if (wvVarL == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_paid", z2);
        if (bundle.keySet().isEmpty()) {
            return;
        }
        wvVarL.getExtra(SparseArray.class, bundle);
    }
}
