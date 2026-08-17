package com.smartdigimkt.pd;

import android.content.Context;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.GeolocationPermissions;
import com.smartdigimkt.c3.g;
import com.smartdigimkt.c5.d;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.c5.i;
import com.smartdigimkt.c5.p;
import com.smartdigimkt.g.a;
import com.smartdigimkt.sdk.api.IExHandler;
import com.smartdigimkt.sdk.core.SDKContext;
import java.math.BigDecimal;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class ExHandler implements IExHandler {
    public static final String JSON_REQUEST_BOOT_MARK = "boot_mark";
    public static final String JSON_REQUEST_BTTS = "btts";
    public static final String JSON_REQUEST_COMMON_DENY_PLAD = "deny_plad";
    public static final String JSON_REQUEST_COMMON_IMSI = "imsi";
    public static final String JSON_REQUEST_CPU = "cpu";
    public static final String JSON_REQUEST_IMEI = "imei";
    public static final String JSON_REQUEST_INSTALL_TS = "install_ts";
    public static final String JSON_REQUEST_ISAGENT = "isagent";
    public static final String JSON_REQUEST_ISROOT = "isroot";
    public static final String JSON_REQUEST_MAC = "mac";
    public static final String JSON_REQUEST_SSID = "wifi_name";
    public static final String JSON_REQUEST_UPDATE_MARK = "update_mark";
    public static final String JSON_REQUEST_UPDATE_TS = "update_ts";
    int macOpen = 1;
    int imeiOpen = 1;

    @Override // com.smartdigimkt.sdk.api.IExHandler, com.smartdigimkt.sdk.api.IOdHandler
    public String fillCDataParam(String str) {
        String strC;
        if (str == null) {
            return "";
        }
        String strB = this.imeiOpen == 1 ? a.b(SDKContext.getInstance().d()) : "";
        if (this.macOpen == 1) {
            SDKContext.getInstance().d();
            strC = a.c();
        } else {
            strC = "";
        }
        if (strB == null) {
            strB = "";
        }
        return str.replaceAll("at_device1", strB).replaceAll("at_device2", strC != null ? strC : "");
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public void fillRequestData(JSONObject jSONObject, com.smartdigimkt.a5.a aVar) throws JSONException {
        fillRequestData(jSONObject, aVar, -1);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public void fillRequestDeviceData(JSONObject jSONObject, int i2) {
        if ((i2 & 1) == 1) {
            try {
                if (!TextUtils.isEmpty(a.f40287c)) {
                    jSONObject.put("isroot", Integer.parseInt(a.f40287c));
                }
            } catch (Throwable unused) {
            }
            try {
                String strB = "";
                if (!TextUtils.isEmpty(h.b("isagent") ? "" : p.b(SDKContext.getInstance().d()))) {
                    Context contextD = SDKContext.getInstance().d();
                    if (!h.b("isagent")) {
                        strB = p.b(contextD);
                    }
                    jSONObject.put("isagent", Integer.parseInt(strB));
                }
            } catch (Throwable unused2) {
            }
            try {
                jSONObject.put("wifi_name", a.d());
            } catch (Throwable unused3) {
            }
            try {
                if (!TextUtils.isEmpty(a.f40288d)) {
                    jSONObject.put("install_ts", Long.parseLong(a.f40288d));
                }
            } catch (Throwable unused4) {
            }
            try {
                if (!TextUtils.isEmpty(a.f40289e)) {
                    jSONObject.put("update_ts", Long.parseLong(a.f40289e));
                }
            } catch (Throwable unused5) {
            }
        }
        if ((i2 & 2) == 2) {
            try {
                jSONObject.put("update_mark", a.f40290f);
            } catch (Throwable unused6) {
            }
        }
        if ((i2 & 64) == 64) {
            try {
                jSONObject.put("wifi_name", a.d());
                jSONObject.put("deny_plad", g.f39673a);
            } catch (Throwable unused7) {
            }
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler, com.smartdigimkt.sdk.api.IOdHandler
    public void fillTestDeviceData(JSONObject jSONObject, com.smartdigimkt.a5.a aVar) throws JSONException {
        String str = "";
        String str2 = aVar != null ? aVar.f39389t : "";
        try {
            if (TextUtils.isEmpty(str2)) {
                String strB = a.b(SDKContext.getInstance().d());
                if (!TextUtils.isEmpty(strB)) {
                    str = strB;
                }
                jSONObject.put("IMEI", str);
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(str2);
                this.macOpen = jSONObject2.optInt("m");
                this.imeiOpen = jSONObject2.optInt("i");
            } catch (Exception unused) {
            }
            String strB2 = a.b(SDKContext.getInstance().d());
            if (this.imeiOpen == 1 && !TextUtils.isEmpty(strB2)) {
                str = strB2;
            }
            jSONObject.put("IMEI", str);
        } catch (Exception unused2) {
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public String getAid(Context context) {
        return a.a(context);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public String getDefaultMarketSchemePackageName() {
        return a.a();
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler, com.smartdigimkt.sdk.api.IOdHandler
    public String getUniqueId(Context context) {
        a.b(context);
        return !TextUtils.isEmpty(a.f40286b) ? a.f40286b : "";
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler, com.smartdigimkt.sdk.api.IOdHandler
    public void initDeviceInfo(Context context) {
        a.c(context);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public boolean initPlugin(Context context) {
        com.smartdigimkt.f.h hVarA = com.smartdigimkt.f.h.a();
        if (context == null) {
            hVarA.getClass();
            return false;
        }
        com.smartdigimkt.f.a aVar = hVarA.f40132b;
        if (aVar != null) {
            context.unregisterReceiver(aVar);
        }
        hVarA.f40132b = new com.smartdigimkt.f.a();
        IntentFilter intentFilter = new IntentFilter();
        String packageName = context.getPackageName();
        intentFilter.addAction(i.a(d.e(packageName + packageName)));
        com.smartdigimkt.i3.a.a(context).a(hVarA.f40132b, intentFilter);
        return true;
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public boolean isContainsPlStr(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains(com.smartdigimkt.d.a.f39866a) || str.contains(com.smartdigimkt.d.a.f39867b);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public boolean onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        try {
            callback.invoke(str, true, false);
        } catch (Throwable unused) {
        }
        return true;
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public void resetSSID() {
        synchronized (a.class) {
            a.f40295k = null;
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler
    public void startRefreshes(long j2) {
    }

    @Override // com.smartdigimkt.sdk.api.IExHandler, com.smartdigimkt.sdk.api.IOdHandler
    public void fillRequestData(JSONObject jSONObject, com.smartdigimkt.a5.a aVar, int i2) throws JSONException {
        String strC;
        String string = "";
        String str = aVar != null ? aVar.f39389t : "";
        try {
            if (TextUtils.isEmpty(str)) {
                SDKContext.getInstance().d();
                jSONObject.put("mac", a.c());
                jSONObject.put("imei", a.b(SDKContext.getInstance().d()));
            } else {
                try {
                    JSONObject jSONObject2 = new JSONObject(str);
                    this.macOpen = jSONObject2.optInt("m");
                    this.imeiOpen = jSONObject2.optInt("i");
                } catch (Exception unused) {
                }
                if (this.macOpen == 1) {
                    SDKContext.getInstance().d();
                    strC = a.c();
                } else {
                    strC = "";
                }
                jSONObject.put("mac", strC);
                jSONObject.put("imei", this.imeiOpen == 1 ? a.b(SDKContext.getInstance().d()) : "");
            }
        } catch (Exception unused2) {
        }
        try {
            string = new BigDecimal((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000.0d).setScale(6, 4).toString();
        } catch (Throwable unused3) {
        }
        try {
            jSONObject.put("btts", string);
        } catch (Throwable unused4) {
        }
        if (i2 == -1 || (i2 & 64) != 64) {
            return;
        }
        try {
            jSONObject.put("imsi", a.b());
        } catch (Throwable unused5) {
        }
    }
}
