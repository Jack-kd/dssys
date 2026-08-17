package com.smartdigimkt.d4;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.h3.m;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.core.SDKContext;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f39902a = {"hw_ver", "hw_hms_ver", "mi_global_ver", "vivo_ver", "oppo_ver", "xiaomi_ver", "honor_v2_ver"};

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f39903b = {"mac", "imei", "oaid", "update_mark", "boot_mark"};

    public static JSONObject a(String str) {
        int i2;
        int i3;
        Context contextD = SDKContext.getInstance().d();
        if (contextD == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            try {
                i2 = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                i2 = 0;
            }
            jSONObject.put("unit_id", i2);
            jSONObject.put("is_s2s", 1);
            com.smartdigimkt.c5.h.w(contextD);
            String strH = SDKContext.getInstance().h();
            if (strH == null) {
                strH = "";
            }
            jSONObject.put("upid", strH);
            String strA = com.smartdigimkt.c5.h.a(contextD);
            if (strA == null) {
                strA = "";
            }
            jSONObject.put("android_id", strA);
            String strQ = com.smartdigimkt.c5.h.q();
            if (strQ == null) {
                strQ = "";
            }
            jSONObject.put("gaid", strQ);
            String sDKVersion = SDMSDK.getInstance().getSDKVersion();
            jSONObject.put("adx_sdk_ver", sDKVersion != null ? sDKVersion : "");
            String strX = com.smartdigimkt.c5.h.x();
            if (TextUtils.isEmpty(strX)) {
                i3 = 0;
            } else {
                try {
                    i3 = Integer.parseInt(strX);
                } catch (NumberFormatException unused2) {
                }
            }
            jSONObject.put(com.anythink.core.common.m.f.af, i3);
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = m.b().c()[0];
            if (jSONArray2 != null) {
                jSONArray = jSONArray2;
            }
            jSONObject.put(com.anythink.core.common.m.f.am, jSONArray);
            c(jSONObject);
            try {
                com.smartdigimkt.l4.a.a(jSONObject);
            } catch (Throwable unused3) {
            }
            a(jSONObject);
            b(jSONObject);
            return jSONObject;
        } catch (Throwable unused4) {
            return null;
        }
    }

    public static void b(JSONObject jSONObject) {
        com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
        if (bVarE != null) {
            try {
                com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
                JSONObject jSONObject2 = new JSONObject();
                bVarE.fillRequestData(jSONObject2, aVarA, -1);
                jSONObject.put("mac", jSONObject2.optString("mac"));
                jSONObject.put("imei", jSONObject2.optString("imei"));
                jSONObject.put("oaid", jSONObject2.optString("oaid"));
                JSONObject jSONObject3 = new JSONObject();
                bVarE.fillRequestDeviceData(jSONObject3, 3);
                jSONObject.put("update_mark", jSONObject3.optString("update_mark"));
                jSONObject.put("boot_mark", jSONObject3.optString("boot_mark"));
                String[] strArr = f39903b;
                for (int i2 = 0; i2 < 5; i2++) {
                    String str = strArr[i2];
                    if (!jSONObject.has(str) || jSONObject.isNull(str)) {
                        jSONObject.put(str, "");
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(org.json.JSONObject r5) throws org.json.JSONException {
        /*
            com.smartdigimkt.h3.m r0 = com.smartdigimkt.h3.m.b()
            java.util.concurrent.ConcurrentHashMap r0 = r0.f40579d
            java.util.LinkedHashSet r1 = new java.util.LinkedHashSet
            r1.<init>()
            java.lang.String[] r2 = com.smartdigimkt.d4.g.f39902a
            r3 = 0
        Le:
            r4 = 7
            if (r3 >= r4) goto L19
            r4 = r2[r3]
            r1.add(r4)
            int r3 = r3 + 1
            goto Le
        L19:
            if (r0 == 0) goto L22
            java.util.Set r2 = r0.keySet()
            r1.addAll(r2)
        L22:
            java.util.Iterator r1 = r1.iterator()
        L26:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L4e
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 == 0) goto L39
            goto L26
        L39:
            if (r0 == 0) goto L48
            java.lang.Object r3 = r0.get(r2)
            java.lang.String r3 = (java.lang.String) r3
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 != 0) goto L48
            goto L4a
        L48:
            java.lang.String r3 = ""
        L4a:
            r5.put(r2, r3)
            goto L26
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.d4.g.c(org.json.JSONObject):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(org.json.JSONObject r4) throws org.json.JSONException {
        /*
            java.lang.String r0 = "wx_data"
            boolean r1 = r4.has(r0)
            if (r1 == 0) goto L1e
            boolean r1 = r4.isNull(r0)
            if (r1 == 0) goto Lf
            goto L1e
        Lf:
            org.json.JSONObject r4 = r4.getJSONObject(r0)     // Catch: java.lang.Throwable -> L14
            goto L27
        L14:
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
            r4.put(r0, r1)
        L1c:
            r4 = r1
            goto L27
        L1e:
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
            r4.put(r0, r1)
            goto L1c
        L27:
            java.lang.String r0 = "has_sdk"
            boolean r1 = r4.has(r0)
            if (r1 != 0) goto L33
            r1 = 0
            r4.put(r0, r1)
        L33:
            java.lang.String r0 = "sdk_ver"
            boolean r1 = r4.has(r0)
            java.lang.String r2 = "0"
            if (r1 != 0) goto L40
            r4.put(r0, r2)
        L40:
            java.lang.String r0 = "sdk_api_ver"
            boolean r1 = r4.has(r0)
            if (r1 != 0) goto L4b
            r4.put(r0, r2)
        L4b:
            java.lang.String r0 = "open_app_id"
            boolean r1 = r4.has(r0)
            java.lang.String r2 = ""
            if (r1 != 0) goto L60
            java.lang.String r1 = com.smartdigimkt.c5.h.A()
            if (r1 == 0) goto L5c
            r2 = r1
        L5c:
            r4.put(r0, r2)
            goto L6d
        L60:
            java.lang.Object r1 = r4.opt(r0)
            if (r1 == 0) goto L6a
            java.lang.Object r3 = org.json.JSONObject.NULL
            if (r1 != r3) goto L6d
        L6a:
            r4.put(r0, r2)
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.d4.g.a(org.json.JSONObject):void");
    }
}
