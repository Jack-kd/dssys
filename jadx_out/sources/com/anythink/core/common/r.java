package com.anythink.core.common;

import android.content.Context;
import com.anythink.network.myoffer.MyOfferAPI;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    public static final int f7263a = 35;

    /* renamed from: b, reason: collision with root package name */
    public static final String f7264b = "isDefaultOffer";

    /* renamed from: g, reason: collision with root package name */
    private static volatile r f7265g;

    /* renamed from: c, reason: collision with root package name */
    Method f7266c;

    /* renamed from: d, reason: collision with root package name */
    Method f7267d;

    /* renamed from: e, reason: collision with root package name */
    Method f7268e;

    /* renamed from: f, reason: collision with root package name */
    Method f7269f;

    private r() {
        try {
            this.f7266c = MyOfferAPI.class.getDeclaredMethod("preloadTopOnOffer", Context.class, String.class, JSONObject.class);
            this.f7267d = MyOfferAPI.class.getDeclaredMethod("getOutOfCapOfferIds", Context.class);
            this.f7268e = MyOfferAPI.class.getDeclaredMethod("getDefaultOfferId", Context.class, String.class);
            this.f7269f = MyOfferAPI.class.getDeclaredMethod("checkOffersOutOfCap", Context.class, String.class);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static r a() {
        if (f7265g == null) {
            synchronized (r.class) {
                try {
                    if (f7265g == null) {
                        f7265g = new r();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7265g;
    }

    public final boolean b(Context context, String str) {
        try {
            Method method = this.f7269f;
            if (method != null) {
                return ((Boolean) method.invoke(null, context, str)).booleanValue();
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final void a(Context context, String str, JSONObject jSONObject) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            Method method = this.f7266c;
            if (method != null) {
                method.invoke(null, context, str, jSONObject);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final JSONArray a(Context context) {
        try {
            Method method = this.f7267d;
            if (method != null) {
                return new JSONArray(method.invoke(null, context).toString());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return new JSONArray();
    }

    public final String a(Context context, String str) {
        try {
            Method method = this.f7268e;
            if (method != null) {
                return method.invoke(null, context, str).toString();
            }
            return "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
