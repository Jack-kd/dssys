package com.ubix.ssp.ad.e.a0;

import android.content.Context;
import android.text.TextUtils;
import com.ubix.ssp.ad.e.y.a.a;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public class x {

    /* renamed from: a, reason: collision with root package name */
    private static Object f46487a;

    public static boolean a() throws ClassNotFoundException {
        try {
            Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static int b() throws ClassNotFoundException {
        try {
            Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
            return p.b("com.tencent.mm") ? 1 : 2;
        } catch (Exception unused) {
            return 2;
        }
    }

    public static boolean c() throws ClassNotFoundException {
        try {
            Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
            return c.g("com.tencent.mm");
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean a(Context context, a.b.m mVar) {
        if (mVar == null) {
            return false;
        }
        return a(context, mVar.f47547c, mVar.f47546b, mVar.f47548d, mVar.f47549e);
    }

    public static boolean a(Context context, String str, String str2, String str3, String str4) throws IllegalAccessException, NoSuchMethodException, InstantiationException, ClassNotFoundException, SecurityException, IllegalArgumentException {
        boolean z2 = false;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !c()) {
            u.b("lanchWXMiniProgram", "暂时不支持小程序 ");
            return false;
        }
        u.b("lanchWXMiniProgram", "isCanSend: false");
        u.b("mp_appid", str);
        u.b("mp_userName", str2);
        u.b("mp_path", str3);
        u.b("mp_ext", str4);
        try {
            Class<?> cls = Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
            Method method = cls.getMethod("createWXAPI", Context.class, String.class, Boolean.TYPE);
            Class<?> cls2 = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
            Object objNewInstance = cls2.newInstance();
            cls2.getField("userName").set(objNewInstance, str2);
            if (str3 != null) {
                cls2.getField("path").set(objNewInstance, str3);
            }
            if (str4 != null) {
                cls2.getField("extData").set(objNewInstance, str4);
            }
            f46487a = method.invoke(cls, context, str, Boolean.TRUE);
            boolean zBooleanValue = false;
            for (int i2 = 0; i2 < f46487a.getClass().getMethods().length; i2++) {
                try {
                    Method method2 = f46487a.getClass().getMethods()[i2];
                    if (method2.getName().contains("sendReq")) {
                        zBooleanValue = ((Boolean) method2.invoke(f46487a, objNewInstance)).booleanValue();
                        u.b("lanchWXMiniProgram", "sendReq: " + zBooleanValue);
                    }
                } catch (Exception e2) {
                    z2 = zBooleanValue;
                    e = e2;
                    e.printStackTrace();
                    return z2;
                }
            }
            return zBooleanValue;
        } catch (Exception e3) {
            e = e3;
        }
    }
}
