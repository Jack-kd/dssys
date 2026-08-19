package com.fl.saas;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceStateUtil;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.umeng.analytics.pro.cl;
import org.json.JSONObject;

/* renamed from: com.fl.saas.f0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1177f0 {

    /* renamed from: a, reason: collision with root package name */
    private static C1177f0 f30385a;

    /* renamed from: com.fl.saas.f0$a */
    public class a implements T {
        public a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(String str) {
            if (TextUtils.isEmpty(str)) {
                AbstractC1236z.a();
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.optInt("code", 1) == 0) {
                    String strOptString = jSONObject.optString("status");
                    if ("A".equals(strOptString)) {
                        String strOptString2 = jSONObject.optString(f.a.f3244d);
                        if (!TextUtils.isEmpty(strOptString2) && !"null".equalsIgnoreCase(strOptString2)) {
                            AbstractC1236z.a();
                            C1177f0.this.a(strOptString2);
                            return;
                        } else {
                            String strA = S0.a().a("key_zz_value", "");
                            if (!TextUtils.isEmpty(strA) && AbstractC1236z.a(strA) > 0) {
                                return;
                            }
                        }
                    } else if (!"D".equals(strOptString)) {
                        return;
                    }
                }
                AbstractC1236z.a();
            } catch (Throwable th) {
                AbstractC1236z.a();
                LogcatUtil.debug(th);
            }
        }

        @Override // com.fl.saas.T
        public void b(String str) {
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            LogcatUtil.debug(exc);
            AbstractC1236z.a();
        }

        @Override // com.fl.saas.T
        public void a(final String str) {
            C1172d1.a().b(new Runnable() { // from class: com.fl.saas.o2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30618b.c(str);
                }
            });
        }
    }

    /* renamed from: com.fl.saas.f0$b */
    public class b implements T {
        public b() {
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                final String strOptString = new JSONObject(str).optString("content");
                C1172d1.a().b(new Runnable() { // from class: com.fl.saas.p2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1236z.b(strOptString);
                    }
                });
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }

        @Override // com.fl.saas.T
        public void b(String str) {
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
        }
    }

    private C1177f0() {
    }

    private JSONObject c() {
        int i2 = 0;
        int iA = S0.a().a("key_zz_number", 0);
        if (iA > 0 && iA == 7) {
            AbstractC1236z.a();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("id", DeviceUtil.getReqID(""));
            jSONObject.putOpt(cl.f49059n, CommConstant.SdkVersion.SDK_VERSION_CODE);
            jSONObject.putOpt("secure", Integer.valueOf(DeviceUtil.isHttpSupported()));
            jSONObject.putOpt("dpVersion", Integer.valueOf(iA));
            jSONObject.putOpt("sdkPackageName", CommConstant.SdkVersion.SDK_PACKAGE_NAME);
            JSONObject deviceInfo = DeviceUtil.getDeviceInfo();
            if (!DeviceStateUtil.isDebug()) {
                deviceInfo.put("usbEnabled", DeviceStateUtil.isDeveloperOptionsEnabled(DeviceUtil.getContext()) ? 1 : 0);
                deviceInfo.put("proxyEnabled", DeviceStateUtil.isNetworkProxyEnabled(DeviceUtil.getContext()) ? 1 : 0);
                deviceInfo.put("rootEnabled", DeviceStateUtil.isDeviceRooted() ? 1 : 0);
                deviceInfo.put("isDebug", DeviceStateUtil.isDebug() ? 1 : 0);
                if (DeviceStateUtil.hasSimCard(DeviceUtil.getContext())) {
                    i2 = 1;
                }
            } else if (S0.a().a("fl_mit_state", false)) {
                deviceInfo.put("usbEnabled", 0);
                deviceInfo.put("proxyEnabled", 0);
                deviceInfo.put("rootEnabled", 0);
                deviceInfo.put("isDebug", 0);
            } else {
                deviceInfo.put("usbEnabled", DeviceStateUtil.isDeveloperOptionsEnabled(DeviceUtil.getContext()) ? 1 : 0);
                deviceInfo.put("proxyEnabled", DeviceStateUtil.isNetworkProxyEnabled(DeviceUtil.getContext()) ? 1 : 0);
                deviceInfo.put("rootEnabled", DeviceStateUtil.isDeviceRooted() ? 1 : 0);
                deviceInfo.put("isDebug", DeviceStateUtil.isDebug() ? 1 : 0);
                if (DeviceStateUtil.hasSimCard(DeviceUtil.getContext())) {
                    i2 = 1;
                }
            }
            deviceInfo.put("hasSimCard", i2);
            jSONObject.putOpt("device", deviceInfo);
            jSONObject.putOpt("app", DeviceUtil.getAppInfo());
            return jSONObject;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return jSONObject;
        }
    }

    public void a(String str) {
        C1166c.c().a("https://dp.funlinkads.com/api/dp/content?md5=" + str, new b());
    }

    public void b() {
        C1166c.c().a(CommConstant.API.URL_REQUEST, AbstractC1191k.e(c().toString()), new a());
    }

    public static C1177f0 a() {
        if (f30385a == null) {
            synchronized (C1177f0.class) {
                f30385a = new C1177f0();
            }
        }
        return f30385a;
    }
}
