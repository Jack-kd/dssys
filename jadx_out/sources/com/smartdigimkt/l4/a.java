package com.smartdigimkt.l4;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import com.anythink.core.common.m.f;
import com.smartdigimkt.c3.g;
import com.smartdigimkt.c4.c;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.c5.i;
import com.smartdigimkt.c5.j;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.c5.p;
import com.smartdigimkt.c5.z;
import com.smartdigimkt.h3.m;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.api.SDMUserDeviceInfo;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.bridge.entity.AppInfoEntity;
import com.smartdigimkt.z4.d;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static int f41660a = -1;

    /* renamed from: b, reason: collision with root package name */
    public static int f41661b = -1;

    public static JSONObject a(int i2) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        NetworkInfo networkInfo;
        String strValueOf;
        String str6;
        ConcurrentHashMap concurrentHashMap;
        com.smartdigimkt.a5.a aVarA;
        h.w(SDKContext.getInstance().d());
        JSONObject jSONObject = new JSONObject();
        Context contextD = SDKContext.getInstance().d();
        if (contextD == null) {
            contextD = c.a().f39693i;
        }
        try {
            jSONObject.put("adx_sdk_ver", SDMSDK.getInstance().getSDKVersion());
            int i3 = 2;
            if (h.C()) {
                AppInfoEntity appInfoEntity = h.f39740e0;
                jSONObject.put("sdk_ver", appInfoEntity != null ? appInfoEntity.getMediationVersion() : j.a());
                jSONObject.put("is_only_adx", 2);
            } else {
                jSONObject.put("sdk_ver", j.a());
                jSONObject.put("is_only_adx", 1);
            }
            jSONObject.put("cpu", h.o());
            jSONObject.put("platform", 1);
            jSONObject.put("os_platform", 1);
            if (SDKContext.getInstance().a("os_vn")) {
                str = "";
            } else {
                if (TextUtils.isEmpty(h.f39755m)) {
                    h.f39755m = Build.VERSION.RELEASE;
                }
                str = h.f39755m;
            }
            jSONObject.put("os_vn", str);
            jSONObject.put("os_vc", h.u());
            jSONObject.put("package_name", h.p(contextD));
            jSONObject.put("app_vn", h.v(contextD));
            jSONObject.put("app_vc", h.u(contextD));
            jSONObject.put("brand", h.v());
            jSONObject.put("model", h.t());
            jSONObject.put("screen", h.r(contextD));
            jSONObject.put("network_type", h.o(contextD));
            if (SDKContext.getInstance().a("mnc")) {
                str2 = "";
            } else {
                if (contextD == null) {
                    SDKContext.getInstance().d();
                }
                try {
                    str2 = !com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a() ? "" : h.f39773v;
                } catch (Exception unused) {
                    str2 = "";
                }
            }
            jSONObject.put("mnc", str2);
            if (SDKContext.getInstance().a("mcc")) {
                str3 = "";
            } else {
                if (contextD == null) {
                    SDKContext.getInstance().d();
                }
                try {
                    str3 = !com.smartdigimkt.i3.c.a(SDKContext.getInstance().d()).a() ? "" : h.f39771u;
                } catch (Exception unused2) {
                    str3 = "";
                }
            }
            jSONObject.put("mcc", str3);
            jSONObject.put("language", h.n(contextD));
            jSONObject.put("timezone", h.y());
            if (h.f39769t == null) {
                synchronized (h.f39742f0) {
                    try {
                        if (h.f39769t == null) {
                            SDKContext.getInstance().getClass();
                        }
                        if (h.f39769t == null) {
                            h.f39769t = "";
                        }
                    } finally {
                    }
                }
            }
            jSONObject.put("gp_ver", h.f39769t);
            jSONObject.put("ua", h.p());
            jSONObject.put("orient", h.y(contextD));
            jSONObject.put("system", 1);
            if (SDKContext.getInstance().f44116e) {
                jSONObject.put("upid", com.smartdigimkt.i3.c.a(contextD).a() ? SDKContext.getInstance().h() : "");
                jSONObject.put("ps_id", SDKContext.getInstance().f());
                jSONObject.put(f.f5761K, SDKContext.getInstance().f44124m);
                jSONObject.put(f.f5762L, SDKContext.getInstance().f44126o);
                jSONObject.put(f.f5759I, g.f39673a + "" + com.smartdigimkt.i3.c.a(contextD).f40733b);
                if (SDKContext.getInstance().f44131t) {
                    SDKContext.getInstance().getClass();
                    str4 = "3";
                } else {
                    SDKContext.getInstance().getClass();
                    str4 = "4";
                }
                jSONObject.put(f.ae, str4);
                com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
                if (bVarE != null) {
                    bVarE.fillRequestDeviceData(jSONObject, i2);
                }
                String strX = h.x();
                if (!TextUtils.isEmpty(strX)) {
                    jSONObject.put(f.af, Integer.parseInt(strX));
                }
                if ((i2 & 4) == 4 && (aVarA = d.c().a()) != null) {
                    try {
                        JSONObject jSONObject2 = aVarA.f39352N;
                        if (jSONObject2 != null) {
                            jSONObject.put("a_c", jSONObject2);
                        }
                    } catch (Exception unused3) {
                    }
                }
                if ((i2 & 16) == 16 && (concurrentHashMap = m.b().f40579d) != null && !concurrentHashMap.isEmpty()) {
                    for (Map.Entry entry : concurrentHashMap.entrySet()) {
                        String str7 = (String) entry.getKey();
                        String str8 = (String) entry.getValue();
                        if (!TextUtils.isEmpty(str7) && !TextUtils.isEmpty(str8)) {
                            jSONObject.put(str7, str8);
                        }
                    }
                }
                if ((i2 & 64) == 64) {
                    jSONObject.put("isroot", h.w());
                    jSONObject.put("isagent", h.b("isagent") ? "" : p.b(contextD));
                    jSONObject.put(f.aM, h.k(contextD));
                    jSONObject.put(f.aN, h.l(contextD));
                    if ((d.c().a().f39353O == 1) && !h.b(f.aO)) {
                        try {
                            ConnectivityManager connectivityManager = (ConnectivityManager) contextD.getSystemService("connectivity");
                            if (connectivityManager != null && (networkInfo = connectivityManager.getNetworkInfo(17)) != null) {
                                if (networkInfo.isConnected()) {
                                    str5 = "1";
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        str5 = "2";
                    } else {
                        str5 = "";
                    }
                    jSONObject.put(f.aO, str5);
                    if (h.b(f.aP)) {
                        strValueOf = "";
                    } else {
                        try {
                            Intent intentRegisterReceiver = contextD.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                            int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
                            boolean z2 = intExtra == 2 || intExtra == 5;
                            int intExtra2 = intentRegisterReceiver.getIntExtra("plugged", -1);
                            boolean z3 = intExtra2 == 2;
                            boolean z4 = intExtra2 == 1;
                            if (z2 && (z3 || z4)) {
                                i3 = 1;
                            }
                        } catch (Throwable unused5) {
                        }
                        strValueOf = String.valueOf(i3);
                    }
                    jSONObject.put(f.aP, strValueOf);
                    jSONObject.put("battery", h.b("battery") ? "" : p.a(contextD));
                    if (h.b(f.aR)) {
                        str6 = "";
                    } else {
                        if (h.f39717M == null) {
                            h.f39717M = k.b() ? "1" : "0";
                        }
                        str6 = h.f39717M;
                    }
                    jSONObject.put(f.aR, str6);
                }
                if ((i2 & 128) == 128) {
                    JSONArray[] jSONArrayArrC = m.b().c();
                    JSONArray jSONArray = jSONArrayArrC[0];
                    if (jSONArray != null && jSONArray.length() > 0) {
                        jSONObject.put(f.am, jSONArray);
                    }
                    JSONArray jSONArray2 = jSONArrayArrC[1];
                    if (jSONArray2 != null && jSONArray2.length() > 0) {
                        jSONObject.put(f.bl, jSONArray2);
                    }
                }
                jSONObject.put(f.bf, i.c(h.c(contextD)));
                jSONObject.put(f.bg, i.c(h.b(contextD)));
            }
            jSONObject.put("app_id", SDKContext.getInstance().a());
            com.smartdigimkt.g4.f.a().b(SDKContext.getInstance().d(), jSONObject);
        } catch (Throwable unused6) {
        }
        return jSONObject;
    }

    public static void b(JSONObject jSONObject) throws JSONException {
        SDMUserDeviceInfo sDMUserDeviceInfo = g.f39676d;
        if (sDMUserDeviceInfo != null) {
            String devGaid = sDMUserDeviceInfo.getDevGaid();
            String devImei = sDMUserDeviceInfo.getDevImei();
            String devOaid = sDMUserDeviceInfo.getDevOaid();
            JSONObject jSONObject2 = new JSONObject();
            if (!TextUtils.isEmpty(devGaid)) {
                jSONObject2.put("set_gaid", devGaid);
            }
            if (!TextUtils.isEmpty(devImei)) {
                jSONObject2.put("set_imei", devImei);
            }
            if (!TextUtils.isEmpty(devOaid)) {
                jSONObject2.put("set_oaid", devOaid);
            }
            jSONObject.put(f.f5758H, jSONObject2);
            String devUID2Token = sDMUserDeviceInfo.getDevUID2Token();
            if (TextUtils.isEmpty(devUID2Token)) {
                return;
            }
            jSONObject.put(f.bA, devUID2Token);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject a(int r10, java.util.List r11) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.l4.a.a(int, java.util.List):org.json.JSONObject");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Context context, JSONObject jSONObject) throws JSONException {
        boolean z2;
        int i2;
        int i3 = f41660a;
        if (i3 == -1) {
            boolean zA = z.a().a(context);
            boolean zB = z.a().b(context);
            int i4 = zB ? 2 : zA;
            if (zA && zB) {
                i4 = 3;
            }
            if (i4 > 0) {
                jSONObject.put(f.f5757G, i4);
            }
            f41660a = i4;
        } else if (i3 > 0) {
            jSONObject.put(f.f5757G, i3);
        }
        int i5 = f41661b;
        if (i5 != -1) {
            if (i5 == 1) {
                jSONObject.put(f.f5756F, i5);
                return;
            }
            return;
        }
        z zVarA = z.a();
        synchronized (zVarA) {
            if (zVarA.f39824a.indexOfKey(3) >= 0) {
                i2 = zVarA.f39824a.get(3);
            } else {
                try {
                    Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
                    z2 = true;
                } catch (Exception unused) {
                    z2 = false;
                }
                zVarA.f39824a.put(3, z2);
                i2 = z2;
            }
        }
        if (i2 == 1) {
            jSONObject.put(f.f5756F, i2);
        }
        f41661b = i2;
    }

    public static void a(JSONObject jSONObject) {
        try {
            com.smartdigimkt.l3.d dVarZ = h.z();
            JSONObject jSONObject2 = new JSONObject();
            int i2 = 1;
            if (dVarZ.f41657b != 1) {
                i2 = 0;
            }
            jSONObject2.put("has_sdk", i2);
            jSONObject2.put("sdk_ver", String.valueOf(dVarZ.f41658c));
            jSONObject2.put("sdk_api_ver", String.valueOf(dVarZ.f41659d));
            jSONObject2.put("open_app_id", h.A());
            jSONObject.put(f.an, jSONObject2);
        } catch (Throwable unused) {
        }
    }
}
