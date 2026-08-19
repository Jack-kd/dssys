package com.byazt.zg;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 308, 42})
/* loaded from: classes3.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f28423a = false;
    public static final Map<Integer, Map<String, List<List<String>>>> eb = new HashMap();
    public static boolean hp = true;

    /* renamed from: j, reason: collision with root package name */
    public static boolean f28424j = true;
    public static boolean jx = true;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f28425l = true;

    /* renamed from: w, reason: collision with root package name */
    public static boolean f28426w = true;

    public static boolean a() {
        if (!jx) {
            return false;
        }
        jx = false;
        return true;
    }

    public static boolean eb() {
        if (!f28424j) {
            return false;
        }
        f28424j = false;
        return true;
    }

    public static boolean hp() {
        return f28423a;
    }

    public static boolean j() {
        if (!hp) {
            return false;
        }
        hp = false;
        return true;
    }

    public static boolean jx() {
        StackTraceElement[] stackTrace;
        Map<String, List<List<String>>> map;
        List<List<String>> list;
        try {
            stackTrace = Thread.currentThread().getStackTrace();
        } catch (Throwable unused) {
            stackTrace = null;
        }
        if (stackTrace == null || stackTrace.length == 0 || (map = eb.get(8)) == null || (list = map.get(MediationConstant.ADN_PANGLE)) == null || list.size() <= 1) {
            return true;
        }
        return hp(stackTrace, list);
    }

    public static boolean l() {
        StackTraceElement[] stackTrace;
        Map<String, List<List<String>>> map;
        List<List<String>> list;
        try {
            stackTrace = Thread.currentThread().getStackTrace();
        } catch (Throwable unused) {
            stackTrace = null;
        }
        if (stackTrace == null || stackTrace.length == 0 || (map = eb.get(7)) == null || (list = map.get(MediationConstant.ADN_PANGLE)) == null || list.size() <= 1) {
            return true;
        }
        return hp(stackTrace, list);
    }

    public static boolean s() {
        if (!f28426w) {
            return false;
        }
        f28426w = false;
        return true;
    }

    public static boolean w() {
        if (!f28425l) {
            return false;
        }
        f28425l = false;
        return true;
    }

    public static void hp(boolean z2) {
        f28423a = z2;
    }

    public static void hp(JSONObject jSONObject) throws JSONException {
        if (jSONObject != null) {
            try {
                Iterator<String> itKeys = jSONObject.keys();
                if (itKeys != null) {
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                        if (jSONArrayOptJSONArray != null) {
                            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i2);
                                Integer numValueOf = Integer.valueOf(jSONObject2.optInt("rit_type"));
                                JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("adn_features");
                                if (jSONArrayOptJSONArray2 != null) {
                                    ArrayList arrayList = new ArrayList();
                                    for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                                        JSONArray jSONArray = jSONArrayOptJSONArray2.getJSONArray(i3);
                                        if (jSONArray != null) {
                                            ArrayList arrayList2 = new ArrayList();
                                            for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                                                String string = jSONArray.getString(i4);
                                                if (!TextUtils.isEmpty(string)) {
                                                    arrayList2.add(string);
                                                }
                                            }
                                            arrayList.add(arrayList2);
                                        }
                                    }
                                    if (arrayList.size() > 0) {
                                        HashMap map = new HashMap();
                                        map.put(next, arrayList);
                                        eb.put(numValueOf, map);
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                com.byazt.aw.l.hp("TMe", "supervisorFeature error: " + e2.toString());
                return;
            }
        }
        com.byazt.aw.l.hp("TMe", "--==-- adn features:" + eb);
    }

    private static boolean hp(Object obj, List<List<String>> list) {
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) obj;
        for (List<String> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                for (int i2 = 0; i2 < stackTraceElementArr.length; i2++) {
                    StackTraceElement stackTraceElement = stackTraceElementArr[i2];
                    if (stackTraceElement != null) {
                        String string = stackTraceElement.toString();
                        if (!TextUtils.isEmpty(string) && string.contains(list2.get(0)) && (list2.size() == 1 || hp(stackTraceElementArr, i2, list2))) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private static boolean hp(Object obj, int i2, List<String> list) {
        int i3;
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) obj;
        for (int i4 = 0; i4 < list.size(); i4++) {
            String str = list.get(i4);
            if (TextUtils.isEmpty(str) || (i3 = i2 + i4) >= stackTraceElementArr.length) {
                return false;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i3];
            if (stackTraceElement != null) {
                String string = stackTraceElement.toString();
                if (TextUtils.isEmpty(string) || !string.contains(str)) {
                    return false;
                }
            }
        }
        return true;
    }
}
