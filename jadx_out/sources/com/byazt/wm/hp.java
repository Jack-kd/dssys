package com.byazt.wm;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.ni.a;
import java.lang.reflect.Field;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 75, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final HashMap<String, a.hp> hp = new HashMap<>();

    public static boolean hp(JSONArray jSONArray, String str) {
        if (jSONArray != null && !TextUtils.isEmpty(str)) {
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null && str.equals(jSONObjectOptJSONObject.optString("type")) && hp(jSONObjectOptJSONObject)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean jx(JSONObject jSONObject) {
        return jSONObject == null || a.hp() || jSONObject.optInt("scy_mode") != 1;
    }

    public static boolean l(JSONObject jSONObject) throws NumberFormatException {
        if (jSONObject == null) {
            return true;
        }
        int i2 = Build.VERSION.SDK_INT;
        String strOptString = jSONObject.optString("allow_os_api_range");
        int iOptInt = jSONObject.optInt("min_os_api", -1);
        if (TextUtils.isEmpty(strOptString)) {
            return iOptInt <= 0 || i2 >= iOptInt;
        }
        try {
            String[] strArrSplit = strOptString.split("[-,]");
            for (int i3 = 0; i3 < strArrSplit.length; i3 += 2) {
                int i4 = Integer.parseInt(strArrSplit[i3]);
                int i5 = Integer.parseInt(strArrSplit[i3 + 1]);
                if (i2 >= i4 && i2 <= i5) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        return l(jSONObject) && hp(jSONObject.optJSONArray("device_requirements")) && jx(jSONObject);
    }

    public static boolean hp(JSONArray jSONArray) {
        int length;
        if (jSONArray == null || (length = jSONArray.length()) == 0) {
            return true;
        }
        boolean zHp = false;
        for (int i2 = 0; i2 < length; i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString("package_names");
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("version_allow");
                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("version_block");
                String strOptString2 = jSONObjectOptJSONObject.optString("allow_version_range");
                if (TextUtils.isEmpty(strOptString)) {
                    return false;
                }
                for (String strE : strOptString.split(",")) {
                    if ("market".equals(strE)) {
                        strE = w.e();
                    }
                    a.hp hpVarL = l(strE);
                    if (hpVarL != null && !(zHp = hp(jSONArrayOptJSONArray, jSONArrayOptJSONArray2, strOptString2, hpVarL))) {
                        return false;
                    }
                }
            }
        }
        return zHp;
    }

    private static boolean l(JSONArray jSONArray, String str) {
        if (jSONArray != null && str != null) {
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (str.equalsIgnoreCase(jSONArray.optString(i2).trim())) {
                    return true;
                }
            }
        }
        return false;
    }

    private static a.hp l(String str) {
        HashMap<String, a.hp> map = hp;
        if (map.containsKey(str)) {
            a.hp hpVar = map.get(str);
            if (hpVar != null) {
                return hpVar;
            }
            return null;
        }
        a.hp hpVarL = com.byazt.ni.a.l(str);
        map.put(str, hpVarL);
        if (hpVarL != null) {
            return hpVarL;
        }
        return null;
    }

    private static boolean hp(JSONArray jSONArray, JSONArray jSONArray2, String str, @NonNull a.hp hpVar) throws NumberFormatException {
        String strEb = hpVar.eb();
        int iA = hpVar.a();
        String str2 = iA + "_" + strEb;
        if (!TextUtils.isEmpty(str)) {
            try {
                String[] strArrSplit = str.split("[-,]");
                for (int i2 = 0; i2 < strArrSplit.length; i2 += 2) {
                    int i3 = Integer.parseInt(strArrSplit[i2]);
                    int i4 = Integer.parseInt(strArrSplit[i2 + 1]);
                    if (iA >= i3 && iA <= i4) {
                        return true;
                    }
                }
            } catch (Exception unused) {
            }
        } else if (jSONArray != null && jSONArray.length() > 0) {
            if (l(jSONArray, str2)) {
                return true;
            }
        } else if (jSONArray2 != null && jSONArray2.length() > 0 && !l(jSONArray2, str2)) {
            return true;
        }
        return false;
    }

    public static a.hp hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                a.hp hpVarL = l(str);
                if (hpVarL != null) {
                    return hpVarL;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static boolean hp(JSONObject jSONObject, Context context, String str) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (!TextUtils.isEmpty(str) && context != null && jSONObject != null) {
            String strOptString = jSONObject.optString("s");
            try {
                String strHp = jx.hp(jSONObject.optString("az"), strOptString);
                String strHp2 = jx.hp(jSONObject.optString("ba"), strOptString);
                Field declaredField = ContextWrapper.class.getDeclaredField(strHp);
                declaredField.setAccessible(true);
                Object obj = declaredField.get(context);
                Field declaredField2 = obj.getClass().getDeclaredField(strHp2);
                declaredField2.setAccessible(true);
                declaredField2.set(obj, str);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
