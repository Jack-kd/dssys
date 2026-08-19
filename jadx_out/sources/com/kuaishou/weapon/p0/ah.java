package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.lang.reflect.Proxy;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class ah {

    /* renamed from: a, reason: collision with root package name */
    private static final String f30767a = "YW5kcm9pZC5hcHAuQWN0aXZpdHlUaHJlYWQ=";

    /* renamed from: b, reason: collision with root package name */
    private final String f30768b = "YW5kcm9pZC5hcHAuQWN0aXZpdHlNYW5hZ2Vy";

    /* renamed from: c, reason: collision with root package name */
    private final String f30769c = "YW5kcm9pZC5hcHAuQWN0aXZpdHlNYW5hZ2VyTmF0aXZl";

    /* renamed from: d, reason: collision with root package name */
    private final String f30770d = "YW5kcm9pZC5hcHAuQWN0aXZpdHlUYXNrTWFuYWdlcg==";

    /* renamed from: e, reason: collision with root package name */
    private final String f30771e = "SUFjdGl2aXR5VGFza01hbmFnZXJTaW5nbGV0b24=";

    private void b(JSONObject jSONObject, int i2) {
        try {
            Object objA = df.a(new String(c.a(f30767a.getBytes(), 2)), (Object) null, "getPackageManager", new Object[0]);
            if (objA != null) {
                a(objA, jSONObject, i2);
            }
        } catch (Exception unused) {
        }
    }

    private void c(JSONObject jSONObject, int i2) {
        Object objA;
        Object objA2;
        try {
            if (Build.VERSION.SDK_INT < 29 || (objA = df.a(new String(c.a("YW5kcm9pZC5hcHAuQWN0aXZpdHlUYXNrTWFuYWdlcg==".getBytes(), 2)), new String(c.a("SUFjdGl2aXR5VGFza01hbmFnZXJTaW5nbGV0b24=".getBytes(), 2)))) == null || (objA2 = df.a("android.util.Singleton", objA, "get", new Object[0])) == null) {
                return;
            }
            a(objA2, jSONObject, i2);
        } catch (Exception unused) {
        }
    }

    private void d(JSONObject jSONObject, int i2) {
        Object objA;
        try {
            Object objA2 = df.a(new String(c.a(f30767a.getBytes(), 2)), (Object) null, "currentActivityThread", new Object[0]);
            if (objA2 == null || (objA = df.a(objA2.getClass(), objA2, "mInstrumentation")) == null) {
                return;
            }
            a(objA, jSONObject, i2);
        } catch (Exception unused) {
        }
    }

    public JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            b(jSONObject, 0);
            a(jSONObject, 1);
            c(jSONObject, 2);
            d(jSONObject, 3);
            if (jSONObject.length() > 0) {
                return jSONObject;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private void a(JSONObject jSONObject, int i2) {
        Object objA;
        Object objA2;
        try {
            String str = new String(c.a("YW5kcm9pZC5hcHAuQWN0aXZpdHlNYW5hZ2Vy".getBytes(), 2));
            String str2 = new String(c.a("YW5kcm9pZC5hcHAuQWN0aXZpdHlNYW5hZ2VyTmF0aXZl".getBytes(), 2));
            if (Build.VERSION.SDK_INT >= 26) {
                objA = df.a(str, "IActivityManagerSingleton");
            } else {
                objA = df.a(str2, "gDefault");
            }
            if (objA == null || (objA2 = df.a("android.util.Singleton", objA, "get", new Object[0])) == null) {
                return;
            }
            a(objA2, jSONObject, i2);
        } catch (Exception unused) {
        }
    }

    private boolean a(Object obj, JSONObject jSONObject, int i2) throws JSONException {
        if (jSONObject == null) {
            return false;
        }
        try {
            boolean zIsProxyClass = Proxy.isProxyClass(obj.getClass());
            String name = obj.getClass().getName();
            if (zIsProxyClass) {
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                jSONObject.put(sb.toString(), zIsProxyClass ? 1 : 0);
                jSONObject.put(i2 + "-c", name);
                return zIsProxyClass;
            }
            if (i2 == 3 && !name.contains("Instrumentation")) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i2);
                jSONObject.put(sb2.toString(), zIsProxyClass ? 1 : 0);
                jSONObject.put(i2 + "-c", name);
            }
            return zIsProxyClass;
        } catch (Exception unused) {
            return false;
        }
    }

    public JSONObject a(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            PackageManager packageManager = context.getPackageManager();
            Object objA = df.a(packageManager.getClass(), packageManager, "mPM");
            if (objA == null) {
                return null;
            }
            if (a(objA, jSONObject, 0)) {
                return jSONObject;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
