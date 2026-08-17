package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.t.hp;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class ct {

    /* renamed from: a, reason: collision with root package name */
    public static String f31029a = "appkey";

    /* renamed from: b, reason: collision with root package name */
    public static String f31030b = "secretkey";

    /* renamed from: c, reason: collision with root package name */
    public static String f31031c = "pver";

    /* renamed from: d, reason: collision with root package name */
    public static String f31032d = "sdkver";

    /* renamed from: e, reason: collision with root package name */
    public static String f31033e = "ksid";

    /* renamed from: f, reason: collision with root package name */
    public static String f31034f = "timestamp";

    /* renamed from: g, reason: collision with root package name */
    public static String f31035g = "sign";

    public static String a(Map<String, String> map) {
        String str = "";
        for (Map.Entry<String, String> entry : map.entrySet()) {
            str = str + "&" + entry.getKey() + "=" + entry.getValue();
        }
        return str.substring(1);
    }

    public static JSONObject b(Context context) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            a(context, jSONObject);
            jSONObject.put("sdkver", WeaponHI.sKSSdkver);
            jSONObject.put("pluginver", "5.4.3");
            jSONObject.put("device_id", ck.b(context));
            jSONObject.put("iv", "v1");
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject c(Context context) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("k", br.a(context));
            jSONObject.put(hp.hp, context.getPackageName());
            jSONObject.put("hv", bf.q(context));
            try {
                String strB = h.a(context, "re_po_rt").b(dd.f31114i, bo.f30891e);
                if (TextUtils.isEmpty(strB)) {
                    strB = bo.f30891e;
                }
                jSONObject.put("pver", strB);
            } catch (Exception unused) {
                jSONObject.put("pver", bo.f30891e);
            }
            jSONObject.put("platform", 1);
            jSONObject.put(com.umeng.analytics.pro.g.f49332S, bo.f30893g);
            jSONObject.put("sdkver", WeaponHI.sKSSdkver);
            jSONObject.put("pluginver", "5.4.3");
            jSONObject.put("device_id", ck.b(context));
            jSONObject.put("iv", "v1");
            return jSONObject;
        } catch (Exception unused2) {
            return null;
        }
    }

    private static Map d(Context context) {
        try {
            String str = WeaponHI.sKSAppkey;
            String str2 = WeaponHI.sKSSecKey;
            HashMap map = new HashMap();
            map.put(f31029a, str);
            map.put(f31030b, str2);
            map.put(f31034f, String.valueOf(System.currentTimeMillis() / 1000));
            map.put(f31035g, b(map));
            return map;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a(Context context) {
        Map mapD = d(context);
        if (mapD == null || mapD.size() <= 0) {
            return null;
        }
        String str = "";
        for (Map.Entry entry : mapD.entrySet()) {
            str = str + "&" + ((String) entry.getKey()) + "=" + ((String) entry.getValue());
        }
        return str.substring(1);
    }

    private static String b(Map map) {
        StringBuilder sb = new StringBuilder();
        try {
            sb.append(map.get(f31029a));
            sb.append(map.get(f31030b));
            sb.append(map.get(f31034f));
            return f.a(sb.toString());
        } catch (Exception unused) {
            return null;
        }
    }

    private static void a(Context context, JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("k", br.a(context));
            jSONObject.put(hp.hp, context.getPackageName());
            jSONObject.put("hv", bf.q(context));
            jSONObject.put("dpver", h.a(context, "re_po_rt").b(dd.f31112g, bo.f30891e));
            jSONObject.put("platform", 1);
            jSONObject.put(com.umeng.analytics.pro.g.f49332S, bo.f30893g);
        } catch (Exception unused) {
        }
    }
}
