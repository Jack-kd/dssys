package com.byazt.mey;

import android.text.TextUtils;
import com.byazt.jt.l;
import com.byazt.jz.s;
import com.byazt.zg.hq;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 589, 38})
/* loaded from: classes3.dex */
public class j {
    public static Map<String, List<com.byazt.tgw.w>> hp = new ConcurrentHashMap();

    /* renamed from: l, reason: collision with root package name */
    public static Map<String, String> f22962l = new ConcurrentHashMap();

    public static PluginValueSet hp(String str, l.hp hpVar, int i2) throws JSONException {
        long jCurrentTimeMillis;
        String str2;
        int i3;
        String str3;
        int i4;
        if (TextUtils.isEmpty(str)) {
            return com.byazt.aqw.hp.hp(hpVar.hp());
        }
        if (com.byazt.ky.hp.hp().hp(str)) {
            return com.byazt.aqw.hp.hp(hpVar.hp());
        }
        String strL = l(str);
        if (TextUtils.isEmpty(strL)) {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            String strJx = jx(str);
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
            if (TextUtils.isEmpty(strJx)) {
                str2 = str;
                i3 = i2;
                i4 = 3;
            } else {
                str2 = str;
                i3 = i2;
                i4 = 2;
            }
            str3 = strJx;
        } else {
            jCurrentTimeMillis = 0;
            str2 = str;
            i3 = i2;
            str3 = strL;
            i4 = 1;
        }
        com.byazt.lsx.a.hp(i3, i4, jCurrentTimeMillis, str2, str3);
        int i5 = i4;
        String str4 = str3;
        if (TextUtils.isEmpty(str4)) {
            return com.byazt.aqw.hp.hp(hpVar.hp());
        }
        hpVar.j(str4);
        return com.byazt.aqw.hp.hp(hpVar.hp(), str2, i5 == 2);
    }

    private static String jx(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (f22962l.size() == 0) {
            jx();
        }
        return f22962l.get(str);
    }

    private static String l(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (hp.size() == 0) {
            l();
        }
        for (String str2 : hp.keySet()) {
            List<com.byazt.tgw.w> list = hp.get(str2);
            if (list != null) {
                Iterator<com.byazt.tgw.w> it = list.iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().hp())) {
                        return str2;
                    }
                }
            }
        }
        return null;
    }

    private static void jx() throws JSONException {
        String string = com.byazt.lto.hp.jx().getString("mediation_adn_map", null);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            Iterator<String> itKeys = jSONObject.keys();
            if (itKeys != null) {
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    String string2 = jSONObject.getString(next);
                    if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(string2)) {
                        f22962l.put(next, string2);
                    }
                }
            }
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void l() throws JSONException {
        String string = com.byazt.lto.hp.jx().getString("mediation_csj_map", null);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            Iterator<String> itKeys = jSONObject.keys();
            if (itKeys != null) {
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONArray jSONArray = jSONObject.getJSONArray(next);
                    if (jSONArray.length() > 0) {
                        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                            String strOptString = jSONObjectOptJSONObject.optString("csj_code_id");
                            if (TextUtils.isEmpty(strOptString)) {
                                strOptString = jSONObjectOptJSONObject.optString("csj_rit_id");
                            }
                            double dOptDouble = jSONObjectOptJSONObject.optDouble("price");
                            if (dOptDouble <= 0.0d) {
                                dOptDouble = jSONObjectOptJSONObject.optDouble("ecpm");
                            }
                            copyOnWriteArrayList.add(new com.byazt.tgw.w(strOptString, dOptDouble, jSONObjectOptJSONObject.optInt("load_sort"), jSONObjectOptJSONObject.optInt("show_sort")));
                        }
                        hp.put(next, copyOnWriteArrayList);
                    }
                }
            }
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static boolean hp(String str) {
        return s.u().lv() && !TextUtils.isEmpty(l(str));
    }

    public static void hp(final JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        double dDoubleValue;
        if (jSONObject == null) {
            return;
        }
        hp.clear();
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!TextUtils.isEmpty(next) && (jSONArrayOptJSONArray = jSONObject.optJSONArray(next)) != null) {
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i2);
                        String strOptString = jSONObject2.optString("price");
                        long jOptLong = jSONObject2.optLong("csj_code_id");
                        try {
                            dDoubleValue = Double.valueOf(strOptString).doubleValue();
                        } catch (Throwable unused) {
                            dDoubleValue = 0.0d;
                        }
                        copyOnWriteArrayList.add(new com.byazt.tgw.w(String.valueOf(jOptLong), dDoubleValue, 0, 0));
                    }
                    hp.put(next, copyOnWriteArrayList);
                }
            }
        } catch (Throwable unused2) {
        }
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.mey.j.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.lto.hp.jx().put("mediation_csj_map", jSONObject.toString());
            }
        });
    }

    public static void hp() throws JSONException {
        if (f22962l.size() == 0) {
            return;
        }
        final JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, String> entry : f22962l.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                try {
                    jSONObject.put(entry.getKey(), entry.getValue());
                } catch (JSONException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.mey.j.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.lto.hp.jx().put("mediation_adn_map", jSONObject.toString());
            }
        });
    }

    public static boolean hp(String str, String str2) {
        List<com.byazt.tgw.w> list;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (list = hp.get(str)) == null || list.size() == 0) {
            return true;
        }
        hq.hp(list);
        return str2.equals(list.get(0).hp());
    }
}
