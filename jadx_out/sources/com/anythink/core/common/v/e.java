package com.anythink.core.common.v;

import com.umeng.analytics.pro.cl;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8164a = "anythink_platform_check";

    /* renamed from: b, reason: collision with root package name */
    private static volatile e f8165b = null;

    /* renamed from: c, reason: collision with root package name */
    private static final String f8166c = "t_b";

    /* renamed from: d, reason: collision with root package name */
    private static final String f8167d = "g_m";

    /* renamed from: e, reason: collision with root package name */
    private static final String f8168e = "t_p";

    /* renamed from: f, reason: collision with root package name */
    private static final String f8169f = "t_ps";

    /* renamed from: g, reason: collision with root package name */
    private static final String f8170g = "p_g";

    /* renamed from: i, reason: collision with root package name */
    private static volatile int f8171i = -1;

    /* renamed from: h, reason: collision with root package name */
    private final JSONObject f8172h = new JSONObject();

    private e() {
    }

    public static e a() {
        if (f8165b == null) {
            synchronized (e.class) {
                try {
                    if (f8165b == null) {
                        f8165b = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8165b;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x0054. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(org.json.JSONArray r12) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.e.a(org.json.JSONArray):void");
    }

    public final void a(int i2, Map<String, Object> map) {
        try {
            if (this.f8172h.length() > 0) {
                Iterator<String> itKeys = this.f8172h.keys();
                JSONObject jSONObject = new JSONObject();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(cl.f49059n, (String) this.f8172h.get(next));
                    if (next.equals(f8167d) && (i2 == 46 || i2 == 15)) {
                        for (Map.Entry<String, Object> entry : map.entrySet()) {
                            jSONObject2.put(entry.getKey(), entry.getValue());
                        }
                    }
                    if (next.equals(f8170g) && i2 == 92) {
                        for (Map.Entry<String, Object> entry2 : map.entrySet()) {
                            jSONObject2.put(entry2.getKey(), entry2.getValue());
                        }
                    }
                    jSONObject.put(next, jSONObject2);
                }
                com.anythink.core.common.u.f.b(this.f8172h.toString(), jSONObject.toString());
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r7, java.lang.String r8) throws org.json.JSONException, java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r6 = this;
            java.lang.Class.forName(r8)     // Catch: java.lang.ClassNotFoundException -> La java.lang.Throwable -> Ld5
            org.json.JSONObject r0 = r6.f8172h     // Catch: java.lang.ClassNotFoundException -> La java.lang.Throwable -> Ld5
            java.lang.String r1 = ""
            r0.put(r7, r1)     // Catch: java.lang.ClassNotFoundException -> La java.lang.Throwable -> Ld5
        La:
            int r0 = r7.hashCode()     // Catch: java.lang.Throwable -> Ld5
            r1 = 3
            r2 = 2
            r3 = 1
            switch(r0) {
                case 102037: goto L33;
                case 110680: goto L29;
                case 114519: goto L1f;
                case 3550638: goto L15;
                default: goto L14;
            }     // Catch: java.lang.Throwable -> Ld5
        L14:
            goto L3d
        L15:
            java.lang.String r0 = "t_ps"
            boolean r0 = r7.equals(r0)     // Catch: java.lang.Throwable -> Ld5
            if (r0 == 0) goto L3d
            r0 = r2
            goto L3e
        L1f:
            java.lang.String r0 = "t_b"
            boolean r0 = r7.equals(r0)     // Catch: java.lang.Throwable -> Ld5
            if (r0 == 0) goto L3d
            r0 = 0
            goto L3e
        L29:
            java.lang.String r0 = "p_g"
            boolean r0 = r7.equals(r0)     // Catch: java.lang.Throwable -> Ld5
            if (r0 == 0) goto L3d
            r0 = r1
            goto L3e
        L33:
            java.lang.String r0 = "g_m"
            boolean r0 = r7.equals(r0)     // Catch: java.lang.Throwable -> Ld5
            if (r0 == 0) goto L3d
            r0 = r3
            goto L3e
        L3d:
            r0 = -1
        L3e:
            r4 = 0
            if (r0 == 0) goto Lb7
            java.lang.String r5 = "getSDKVersion"
            if (r0 == r3) goto L87
            if (r0 == r2) goto L68
            if (r0 == r1) goto L4b
            goto Ld5
        L4b:
            java.lang.Class r8 = java.lang.Class.forName(r8)
            java.lang.reflect.Method r0 = r8.getMethod(r5, r4)
            r0.setAccessible(r3)
            java.lang.Object r8 = r0.invoke(r8, r4)
            java.lang.String r8 = (java.lang.String) r8
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            if (r0 != 0) goto Ld5
            org.json.JSONObject r0 = r6.f8172h
            r0.put(r7, r8)
            goto Ld5
        L68:
            java.lang.Class r8 = java.lang.Class.forName(r8)
            java.lang.String r0 = "VERSION_NAME"
            java.lang.reflect.Field r8 = r8.getField(r0)
            r8.setAccessible(r3)
            java.lang.Object r8 = r8.get(r4)
            java.lang.String r8 = (java.lang.String) r8
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            if (r0 != 0) goto Ld5
            org.json.JSONObject r0 = r6.f8172h
            r0.put(r7, r8)
            goto Ld5
        L87:
            java.lang.Class r8 = java.lang.Class.forName(r8)
            java.lang.String r0 = "getAdManager"
            java.lang.reflect.Method r0 = r8.getMethod(r0, r4)
            r0.setAccessible(r3)
            java.lang.Object r8 = r0.invoke(r8, r4)
            if (r8 == 0) goto Ld5
            java.lang.Class r0 = r8.getClass()
            java.lang.reflect.Method r0 = r0.getMethod(r5, r4)
            r0.setAccessible(r3)
            java.lang.Object r8 = r0.invoke(r8, r4)
            java.lang.String r8 = (java.lang.String) r8
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            if (r0 != 0) goto Ld5
            org.json.JSONObject r0 = r6.f8172h
            r0.put(r7, r8)
            goto Ld5
        Lb7:
            java.lang.Class r8 = java.lang.Class.forName(r8)
            java.lang.String r0 = "getVersion"
            java.lang.reflect.Method r0 = r8.getMethod(r0, r4)
            r0.setAccessible(r3)
            java.lang.Object r8 = r0.invoke(r8, r4)
            java.lang.String r8 = (java.lang.String) r8
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            if (r0 != 0) goto Ld5
            org.json.JSONObject r0 = r6.f8172h
            r0.put(r7, r8)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.e.a(java.lang.String, java.lang.String):void");
    }
}
