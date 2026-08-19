package com.byazt.bi;

import android.content.Context;
import android.os.Vibrator;
import android.text.TextUtils;
import com.byazt.xci.mp;
import com.byazt.xci.nu;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 322, 30})
/* loaded from: classes2.dex */
public class jx {
    public static boolean hp(Context context) {
        return j(context) && w(context);
    }

    private static boolean j(Context context) {
        return context.getPackageManager().checkPermission("android.permission.VIBRATE", context.getPackageName()) == 0;
    }

    public static Vibrator jx(Context context) {
        try {
            return (Vibrator) context.getSystemService("vibrator");
        } catch (Exception unused) {
            return null;
        }
    }

    public static void l(Context context) {
        Vibrator vibratorJx = jx(context);
        if (vibratorJx != null) {
            vibratorJx.cancel();
        }
    }

    private static boolean w(Context context) {
        Vibrator vibratorJx = jx(context);
        return vibratorJx != null && vibratorJx.hasVibrator();
    }

    public static void hp(Context context, nu nuVar) {
        new hp(context, nuVar).l();
    }

    public static void hp(JSONObject jSONObject, Context context, mp mpVar) {
        if (jSONObject == null || context == null) {
            return;
        }
        hp(jSONObject.optString("id"), jSONObject.optJSONArray("pattern"), context, mpVar);
    }

    public static void hp(String str, JSONArray jSONArray, Context context, mp mpVar) {
        nu nuVarL;
        if (jSONArray != null && jSONArray.length() > 0) {
            nuVarL = new nu(str, jSONArray);
        } else {
            nuVarL = (TextUtils.isEmpty(str) || mpVar == null) ? null : mpVar.l(str);
        }
        if (nuVarL != null) {
            hp(context, nuVarL);
        }
    }
}
