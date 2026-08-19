package com.umeng.analytics.pro;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.umeng.analytics.pro.cj;
import com.umeng.analytics.pro.cn;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class ck {

    /* renamed from: g, reason: collision with root package name */
    private static cj f49044g;

    /* renamed from: a, reason: collision with root package name */
    private static Object f49038a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private static Object f49039b = new Object();

    /* renamed from: c, reason: collision with root package name */
    private static ArrayList<cg> f49040c = new ArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    private static ArrayList<ci> f49041d = new ArrayList<>();

    /* renamed from: e, reason: collision with root package name */
    private static volatile int f49042e = 0;

    /* renamed from: f, reason: collision with root package name */
    private static volatile long f49043f = 0;

    /* renamed from: h, reason: collision with root package name */
    private static ArrayList<cj.a> f49045h = new ArrayList<>();

    public static void a(cg cgVar) {
        if (cgVar != null) {
            synchronized (f49038a) {
                f49040c.add(cgVar);
            }
        }
    }

    public static void b(JSONObject jSONObject) {
        synchronized (f49038a) {
            try {
                int size = f49040c.size();
                if (size > 0) {
                    for (int i2 = 0; i2 < size; i2++) {
                        f49040c.get(i2).a(jSONObject);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(ci ciVar) {
        if (ciVar != null) {
            synchronized (f49039b) {
                f49041d.add(ciVar);
            }
        }
    }

    private static void b(Context context) {
        if (f49044g == null) {
            synchronized (ck.class) {
                try {
                    if (f49044g == null) {
                        cj cjVar = new cj();
                        f49044g = cjVar;
                        if (context instanceof Application) {
                            ((Application) context).registerActivityLifecycleCallbacks(cjVar);
                        } else {
                            Context applicationContext = context.getApplicationContext();
                            if (applicationContext instanceof Application) {
                                ((Application) applicationContext).registerActivityLifecycleCallbacks(f49044g);
                            } else {
                                UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: Failed to register ActivityLifecycleCallbacks, context is not Application");
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void a(JSONObject jSONObject) {
        synchronized (f49039b) {
            try {
                int size = f49041d.size();
                if (size > 0) {
                    for (int i2 = 0; i2 < size; i2++) {
                        f49041d.get(i2).a(jSONObject);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(ch chVar) {
        if (chVar != null) {
            chVar.a(cn.a().b(UMGlobalContext.getAppContext()));
        }
    }

    public static void a(Context context) {
        b(context);
        cn.a().a(context);
    }

    public static void a(cj.a aVar) {
        if (aVar != null) {
            synchronized (f49045h) {
                try {
                    if (!f49045h.contains(aVar)) {
                        f49045h.add(aVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            cj cjVar = f49044g;
            if (cjVar != null) {
                cjVar.a(aVar);
            }
        }
    }

    public static void b(cj.a aVar) {
        if (aVar != null) {
            synchronized (f49045h) {
                f49045h.remove(aVar);
            }
            cj cjVar = f49044g;
            if (cjVar != null) {
                cjVar.b(aVar);
            }
        }
    }

    public static Map<String, String> a() {
        HashMap map = new HashMap();
        map.put("flag", String.valueOf(f49042e));
        map.put("ts", String.valueOf(f49043f));
        return map;
    }

    public static int b() {
        return f49042e;
    }

    public static void a(String str, String str2, Bundle bundle) {
        UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: umc_cfg: call b a.");
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String string = "";
            if (bundle != null) {
                try {
                    string = bundle.getString("ss");
                } catch (Throwable unused) {
                    return;
                }
            }
            String str3 = string;
            boolean z2 = true;
            f49042e = 1;
            f49043f = System.currentTimeMillis();
            long initCompleteTs = UMConfigure.getInitCompleteTs();
            if (initCompleteTs != 0 && System.currentTimeMillis() - initCompleteTs > 6000) {
                z2 = false;
            }
            cm.a(UMGlobalContext.getAppContext(), 306, cn.a(), new cn.a(str, str2, str3, f49043f, z2));
            return;
        }
        UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: onActUpEvent: type or token agument is empty string, pls check!");
    }
}
