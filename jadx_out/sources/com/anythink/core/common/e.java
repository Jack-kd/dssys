package com.anythink.core.common;

import com.anythink.core.e.m;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static String f3091a = "e";

    /* renamed from: b, reason: collision with root package name */
    public static final String f3092b = "cp_event_callback_info";

    /* renamed from: c, reason: collision with root package name */
    public static final String f3093c = "type_start_load";

    private static JSONObject a(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(m.a.f8918T, str);
                jSONObject.put("request_id", str2);
                return jSONObject;
            } catch (Throwable unused) {
                return jSONObject;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    private static void a(Object obj, String str, String str2, String str3) {
        if (obj == null) {
            return;
        }
        try {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                JSONObject jSONObjectA = a(str2, str3);
                if (jSONObjectA != null) {
                    map.put(str, jSONObjectA);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(Object obj, String str, com.anythink.core.common.h.n nVar) {
        if (nVar == null) {
            return;
        }
        nVar.aQ();
        a(obj, str, nVar.aJ(), nVar.aR());
    }

    public static void a(Map<String, Object> map, String str, String str2, String str3) {
        if (map == null) {
            return;
        }
        a(map.get(f3092b), str, str2, str3);
    }
}
