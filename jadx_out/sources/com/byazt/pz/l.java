package com.byazt.pz;

import android.text.TextUtils;
import com.byazt.ow.w;
import io.flutter.plugin.platform.PlatformPlugin;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, PlatformPlugin.DEFAULT_SYSTEM_UI, 34})
/* loaded from: classes3.dex */
public class l {
    public static <T> void hp(String str, T t2, w wVar) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("min_version", 7643);
            jSONObject.put("data", t2);
            wVar.put(hp(str, true), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    private static String jx(String str, w wVar) {
        if (!TextUtils.isEmpty(str) && wVar != null) {
            try {
                if (TextUtils.isEmpty(null)) {
                    return hp(hp(str, true), wVar);
                }
                return null;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static void l(String str, w wVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            wVar.remove(hp(str, true));
        } catch (Exception unused) {
        }
    }

    public static int hp(String str, w wVar, int i2) {
        String strJx = jx(str, wVar);
        if (TextUtils.isEmpty(strJx)) {
            return i2;
        }
        try {
            return Integer.parseInt(strJx);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static long hp(String str, w wVar, long j2) {
        String strJx = jx(str, wVar);
        if (TextUtils.isEmpty(strJx)) {
            return j2;
        }
        try {
            return Long.parseLong(strJx);
        } catch (NumberFormatException unused) {
            return j2;
        }
    }

    public static float hp(String str, w wVar, float f2) {
        String strJx = jx(str, wVar);
        if (TextUtils.isEmpty(strJx)) {
            return f2;
        }
        try {
            return Float.parseFloat(strJx);
        } catch (NumberFormatException unused) {
            return f2;
        }
    }

    public static Set<String> hp(String str, w wVar, Set<String> set) {
        String strJx = jx(str, wVar);
        if (!TextUtils.isEmpty(strJx)) {
            try {
                JSONArray jSONArray = new JSONArray(strJx);
                HashSet hashSet = new HashSet();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    String strOptString = jSONArray.optString(i2);
                    if (!TextUtils.isEmpty(strOptString)) {
                        hashSet.add(strOptString);
                    }
                }
                return hashSet;
            } catch (JSONException unused) {
            }
        }
        return set;
    }

    public static boolean hp(String str, w wVar, boolean z2) {
        String strJx = jx(str, wVar);
        if (TextUtils.isEmpty(strJx)) {
            return z2;
        }
        try {
            return Boolean.parseBoolean(strJx);
        } catch (NumberFormatException unused) {
            return z2;
        }
    }

    public static String hp(String str, w wVar, String str2) {
        String strJx = jx(str, wVar);
        return TextUtils.isEmpty(strJx) ? str2 : strJx;
    }

    public static String hp(String str, w wVar) {
        return hp(wVar.get(str, (String) null));
    }

    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (7643 < jSONObject.optInt("min_version")) {
                return null;
            }
            String strOptString = jSONObject.optString("data");
            if (TextUtils.isEmpty(strOptString)) {
                return null;
            }
            return strOptString;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String hp(String str, boolean z2) {
        if (z2) {
            return str + "_bst";
        }
        return str + "_pl";
    }
}
