package com.byazt.mw;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.PrerollVideoResponse;
import com.byazt.mw.jx;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 512, 38})
/* loaded from: classes3.dex */
public class j {
    public static int hp(int i2) {
        if (i2 < 0) {
            return -1;
        }
        if (i2 == 0) {
            return Integer.MIN_VALUE;
        }
        return i2 - 1;
    }

    private static String j(String str, JSONObject jSONObject) {
        String strHp = com.byazt.ss.l.hp(str, jSONObject);
        return jx(strHp) ? Arrays.toString(l(strHp, jSONObject)) : com.byazt.ss.l.hp(strHp, jSONObject);
    }

    public static boolean jx(String str) {
        JSONArray jSONArrayHp = com.byazt.xa.l.hp(str, (JSONArray) null);
        return jSONArrayHp != null && jSONArrayHp.length() > 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.animation.Interpolator l(java.lang.String r3) {
        /*
            int r0 = r3.hashCode()
            r1 = 2
            r2 = 1
            switch(r0) {
                case -1965072618: goto L28;
                case -1102672091: goto L1e;
                case -787702915: goto L14;
                case 1065009829: goto La;
                default: goto L9;
            }
        L9:
            goto L32
        La:
            java.lang.String r0 = "ease_in_out"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L32
            r3 = r2
            goto L33
        L14:
            java.lang.String r0 = "ease_out"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L32
            r3 = r1
            goto L33
        L1e:
            java.lang.String r0 = "linear"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L32
            r3 = 3
            goto L33
        L28:
            java.lang.String r0 = "ease_in"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L32
            r3 = 0
            goto L33
        L32:
            r3 = -1
        L33:
            if (r3 == 0) goto L4b
            if (r3 == r2) goto L45
            if (r3 == r1) goto L3f
            android.view.animation.LinearInterpolator r3 = new android.view.animation.LinearInterpolator
            r3.<init>()
            return r3
        L3f:
            android.view.animation.DecelerateInterpolator r3 = new android.view.animation.DecelerateInterpolator
            r3.<init>()
            return r3
        L45:
            android.view.animation.AccelerateDecelerateInterpolator r3 = new android.view.animation.AccelerateDecelerateInterpolator
            r3.<init>()
            return r3
        L4b:
            android.view.animation.AccelerateInterpolator r3 = new android.view.animation.AccelerateInterpolator
            r3.<init>()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.mw.j.l(java.lang.String):android.view.animation.Interpolator");
    }

    public static List<jx> hp(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() <= 0) {
                return null;
            }
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(hp(jSONObjectOptJSONObject, jSONObject));
                }
            }
            return arrayList;
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static jx.hp jx(String str, JSONObject jSONObject) {
        JSONArray jSONArrayHp;
        if (TextUtils.isEmpty(str) || (jSONArrayHp = com.byazt.xa.l.hp(jSONObject, str, null)) == null || jSONArrayHp.length() != 2) {
            return null;
        }
        jx.hp hpVar = new jx.hp();
        hpVar.hp = com.byazt.ss.l.hp(jSONArrayHp.optString(0), jSONObject);
        hpVar.f23308l = com.byazt.ss.l.hp(jSONArrayHp.optString(1), jSONObject);
        return hpVar;
    }

    public static float[] l(String str, JSONObject jSONObject) {
        float[] fArr = {0.0f, 0.0f};
        JSONArray jSONArrayHp = com.byazt.xa.l.hp(jSONObject, str, null);
        if (jSONArrayHp != null && jSONArrayHp.length() == 2) {
            fArr[0] = (float) com.byazt.xa.jx.hp(com.byazt.ss.l.hp(jSONArrayHp.optString(0), jSONObject), 0.0d);
            fArr[1] = (float) com.byazt.xa.jx.hp(com.byazt.ss.l.hp(jSONArrayHp.optString(1), jSONObject), 0.0d);
        }
        return fArr;
    }

    public static jx hp(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            return null;
        }
        jx jxVar = new jx();
        jxVar.l(com.byazt.xa.jx.hp(com.byazt.ss.l.hp(jSONObject.optString("delay"), jSONObject2), 0L));
        jxVar.jx(com.byazt.ss.l.hp(jSONObject.optString("name"), jSONObject2));
        jxVar.l(com.byazt.xa.jx.hp(com.byazt.ss.l.hp(jSONObject.optString("playState"), jSONObject2), 1));
        jxVar.hp(Math.max(com.byazt.xa.jx.hp(com.byazt.ss.l.hp(jSONObject.optString("duration"), jSONObject2), 0L), 0L));
        jxVar.hp(com.byazt.xa.jx.hp(com.byazt.ss.l.hp(jSONObject.optString("playCount"), jSONObject2), 1));
        jxVar.hp(com.byazt.ss.l.hp(jSONObject.optString("playDirection"), jSONObject2));
        jxVar.hp(jx(jSONObject.optString("transformOrigin"), jSONObject2));
        jxVar.l(com.byazt.ss.l.hp(jSONObject.optString("timingFunction", "linear"), jSONObject2));
        jxVar.hp(jSONObject.optJSONObject("effect"));
        jxVar.hp(hp(jSONObject.optJSONArray("keyframes"), jSONObject2));
        return jxVar;
    }

    public static Map<String, TreeMap<Float, String>> hp(JSONArray jSONArray, JSONObject jSONObject) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject != null) {
                float fOptDouble = (float) jSONObjectOptJSONObject.optDouble("offset");
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!TextUtils.equals(next, "offset")) {
                        TreeMap treeMap = (TreeMap) map.get(next);
                        if (treeMap == null) {
                            treeMap = new TreeMap();
                            map.put(next, treeMap);
                        }
                        treeMap.put(Float.valueOf(fOptDouble), j(jSONObjectOptJSONObject.optString(next), jSONObject));
                    }
                }
            }
        }
        return map;
    }

    public static int hp(String str) {
        int iHashCode = str.hashCode();
        if (iHashCode == -1408024454) {
            return str.equals("alternate") ? 2 : 1;
        }
        if (iHashCode != -1039745817) {
            return 1;
        }
        str.equals(PrerollVideoResponse.NORMAL);
        return 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int hp(String str, int i2) {
        int i3 = i2 / 2;
        if (!TextUtils.isEmpty(str)) {
            str.getClass();
            switch (str) {
                case "bottom":
                case "right":
                    return i2;
                case "center":
                    break;
                case "top":
                case "left":
                    return 0;
                default:
                    if (str.endsWith("%")) {
                        try {
                            return (int) ((i2 * Float.parseFloat(str.substring(0, str.length() - 1))) / 100.0f);
                        } catch (NumberFormatException unused) {
                            break;
                        }
                    } else {
                        try {
                            return Integer.parseInt(str);
                        } catch (NumberFormatException unused2) {
                            return i3;
                        }
                    }
            }
        }
        return i3;
    }
}
