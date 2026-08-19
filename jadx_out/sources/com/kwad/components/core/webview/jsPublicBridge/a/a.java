package com.kwad.components.core.webview.jsPublicBridge.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kuaishou.weapon.p0.g;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.f;
import com.kwad.sdk.utils.SystemUtil;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.n;
import java.lang.reflect.Method;

/* loaded from: classes4.dex */
public final class a implements com.kwad.sdk.core.webview.c.a {

    @KsJson
    /* renamed from: com.kwad.components.core.webview.jsPublicBridge.a.a$a, reason: collision with other inner class name */
    public static final class C0562a extends com.kwad.sdk.core.response.a.a {
        public int apb;
        public int apc;
        public int apd;
        public String ape;
        public String apf;
        public String apg;
        public String appVersion;
        public int netType;

        private static int ym() throws NoSuchMethodException, SecurityException {
            boolean zBooleanValue;
            if (!SystemUtil.b(ServiceProvider.getContext(), g.f31160b)) {
                return -1;
            }
            try {
                Context context = ServiceProvider.getContext();
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                int i2 = Build.VERSION.SDK_INT;
                if (connectivityManager == null) {
                    return -1;
                }
                if (i2 >= 26) {
                    zBooleanValue = telephonyManager.isDataEnabled();
                } else {
                    Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", null);
                    declaredMethod.setAccessible(true);
                    zBooleanValue = ((Boolean) declaredMethod.invoke(connectivityManager, null)).booleanValue();
                }
                boolean zIsWifiConnected = aq.isWifiConnected(context);
                if (zBooleanValue && zIsWifiConnected) {
                    return 3;
                }
                if (zBooleanValue) {
                    return 1;
                }
                return zIsWifiConnected ? 2 : -1;
            } catch (Exception e2) {
                c.printStackTraceOnly(e2);
                return -1;
            }
        }

        public static C0562a yq() {
            C0562a c0562a = new C0562a();
            c0562a.apb = 6;
            c0562a.apc = 2;
            c0562a.apd = 2;
            c0562a.appVersion = n.cZ(((f) ServiceProvider.get(f.class)).getContext());
            c0562a.netType = ym();
            c0562a.ape = e.KZ();
            c0562a.apf = "KSAdChinaMobile.ksadGetPhoneNumber";
            c0562a.apg = "KSAdChinaMobile.ksadGetOperJudge";
            return c0562a;
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        cVar.b(C0562a.yq());
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "ksadUnionGetPlatformInfo";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }
}
