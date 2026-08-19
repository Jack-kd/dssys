package com.fl.saas;

import android.text.TextUtils;
import androidx.arch.core.util.Function;
import com.fl.saas.E0;
import com.fl.saas.adx.base.activity.h5.QuickAppHelper;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.OaidUtils;
import com.umeng.analytics.pro.cl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class E0 {

    /* renamed from: d, reason: collision with root package name */
    private static E0 f29896d;

    /* renamed from: a, reason: collision with root package name */
    private int f29897a = 0;

    /* renamed from: b, reason: collision with root package name */
    private Map f29898b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    private int f29899c;

    public class a implements T {
        public a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String a(Object obj) {
            if (obj instanceof String) {
                return (String) obj;
            }
            return null;
        }

        @Override // com.fl.saas.T
        public void b(String str) {
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            LogcatUtil.d("FLSDK", "上报失败:" + exc.toString());
            E0.this.f29897a = -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String b(Object obj) {
            if (obj instanceof String) {
                return (String) obj;
            }
            return null;
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            E0.this.f29897a = 2;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObjectA = AbstractC1195l0.a(str);
                if (jSONObjectA != null) {
                    LogcatUtil.debug("https://t.funlinkads.com/log/initialization init_response:" + jSONObjectA);
                    JSONArray jSONArrayOptJSONArray = jSONObjectA.optJSONArray("app_list");
                    if (jSONArrayOptJSONArray != null) {
                        DeviceUtil.appList = jSONArrayOptJSONArray;
                    }
                    QuickAppHelper.getInstance().setCollectWebviewWakeup(jSONObjectA.optInt("collect_webview_wakeup", 0));
                    QuickAppHelper.getInstance().setWebviewWakeupLimit(jSONObjectA.optInt("webview_wakeup_limit", 0));
                    QuickAppHelper.getInstance().setQuickAppBlockRatio(jSONObjectA.optDouble("quick_app_block_ratio", 100.0d));
                    QuickAppHelper.getInstance().setQuickAppInterceptionType(jSONObjectA.optInt("quick_app_interception_type", 1));
                    QuickAppHelper.getInstance().setQuickAppFreqDay(jSONObjectA.optInt("quick_app_freq_day", 0));
                    String strOptString = jSONObjectA.optString("whitelist_headers", "");
                    if (!strOptString.isEmpty()) {
                        QuickAppHelper.getInstance().setWhitelistHeaders(Arrays.asList(strOptString.split(",")));
                    }
                    String strOptString2 = jSONObjectA.optString("device_permisson_info");
                    if (!TextUtils.isEmpty(strOptString2) && !"-".equals(strOptString2)) {
                        try {
                            C1213r0 c1213r0 = new C1213r0();
                            JSONObject jSONObject = new JSONObject(strOptString2);
                            int iOptInt = jSONObject.optInt("androidId", 1);
                            int iOptInt2 = jSONObject.optInt("mac", 1);
                            int iOptInt3 = jSONObject.optInt("iemi", 1);
                            int iOptInt4 = jSONObject.optInt("imsi", 1);
                            int iOptInt5 = jSONObject.optInt("oaid", 1);
                            int iOptInt6 = jSONObject.optInt("bootId", 1);
                            int iOptInt7 = jSONObject.optInt("sensor", 1);
                            DeviceUtil.isCanUseLocation = jSONObject.optInt("location", 1) == 1;
                            c1213r0.a(iOptInt == 1);
                            c1213r0.e(iOptInt2 == 1);
                            c1213r0.c(iOptInt3 == 1);
                            c1213r0.f(iOptInt5 == 1);
                            c1213r0.b(iOptInt6 == 1);
                            c1213r0.g(iOptInt7 == 1);
                            c1213r0.d(iOptInt4 == 1);
                            DeviceUtil.controlBean = c1213r0;
                            if (!DeviceUtil.isCanUseSensor && iOptInt7 == 1) {
                                boolean zCheckAccelerometerSensor = DeviceUtil.checkAccelerometerSensor(DeviceUtil.getContext());
                                DeviceUtil.deviceHasAccelerometerSensor = zCheckAccelerometerSensor;
                                if (zCheckAccelerometerSensor) {
                                    T0.b().a();
                                }
                            }
                            if (!OaidUtils.isIsCanUseOAID() && iOptInt5 == 1) {
                                OaidUtils.init();
                            }
                        } catch (Throwable th) {
                            LogcatUtil.debug(th);
                        }
                    }
                    int iOptInt8 = jSONObjectA.optInt("keyword_ad_sts", 0);
                    E0.this.f29899c = jSONObjectA.optInt("has_bg_wake_up", 0);
                    if (iOptInt8 == 1) {
                        C1171d0 c1171d0 = new C1171d0();
                        c1171d0.c(jSONObjectA.optString("keyword_url", ""));
                        c1171d0.b(jSONObjectA.optString("keyword_regex", ""));
                        c1171d0.a(jSONObjectA.optInt("device_keyword_freq", 0));
                        c1171d0.b(jSONObjectA.optInt("device_keyword_interval", 0));
                        c1171d0.c(jSONObjectA.optInt("keyword_use_time_range", 0));
                        c1171d0.a(jSONObjectA.optString("kcs", ""));
                        C1174e0.a().a(c1171d0);
                    }
                    C1166c.c().a(AbstractC1167c0.a(jSONObjectA.optJSONArray("quickapp_block_domains"), new Function() { // from class: com.fl.saas.i1
                        @Override // androidx.arch.core.util.Function
                        public final Object apply(Object obj) {
                            return E0.a.a(obj);
                        }
                    }));
                    C1166c.c().b(AbstractC1167c0.a(jSONObjectA.optJSONArray("quickapp_whitelist_domains"), new Function() { // from class: com.fl.saas.j1
                        @Override // androidx.arch.core.util.Function
                        public final Object apply(Object obj) {
                            return E0.a.b(obj);
                        }
                    }));
                    DeviceUtil.filling_timing = jSONObjectA.optInt("filling_timing", 0);
                    QuickAppHelper.getInstance().setEnableQuickApp(jSONObjectA.optInt("enable_quick_app", 1));
                    try {
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectA.optJSONArray("quick_app_list");
                        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                            ArrayList arrayList = new ArrayList();
                            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                                arrayList.add(jSONArrayOptJSONArray2.optString(i2));
                            }
                            QuickAppHelper.getInstance().addListQuickKey(arrayList);
                        }
                        JSONArray jSONArrayOptJSONArray3 = jSONObjectA.optJSONArray("quickapp_match_rule_list");
                        if (jSONArrayOptJSONArray3 == null || jSONArrayOptJSONArray3.length() <= 0) {
                            return;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray3.optJSONObject(i3);
                            if (jSONObjectOptJSONObject != null) {
                                B0 b02 = new B0();
                                b02.b(jSONObjectOptJSONObject.optString("prefix"));
                                b02.a(jSONObjectOptJSONObject.optString("contains_str"));
                                arrayList2.add(b02);
                            }
                        }
                        QuickAppHelper.getInstance().addListQuickMatch(arrayList2);
                    } catch (Throwable th2) {
                        LogcatUtil.debug(th2);
                    }
                }
            } catch (Throwable th3) {
                LogcatUtil.debug(th3);
            }
        }
    }

    public class b implements T {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f29901a;

        public b(e eVar) {
            this.f29901a = eVar;
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObjectA = AbstractC1195l0.a(str);
                if (jSONObjectA != null) {
                    int iOptInt = jSONObjectA.optInt("code");
                    JSONArray jSONArrayOptJSONArray = jSONObjectA.optJSONArray("places");
                    if (iOptInt != 0 || jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                        String strOptString = jSONObjectOptJSONObject.optString("place_id");
                        int iOptInt2 = jSONObjectOptJSONObject.optInt("bg_wake_up_time");
                        int iOptInt3 = jSONObjectOptJSONObject.optInt("position");
                        C1222u0 c1222u0 = new C1222u0();
                        c1222u0.a(strOptString);
                        c1222u0.a(iOptInt2);
                        c1222u0.b(iOptInt3);
                        arrayList.add(c1222u0);
                    }
                    e eVar = this.f29901a;
                    if (eVar != null) {
                        eVar.a(arrayList);
                    }
                }
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }

        @Override // com.fl.saas.T
        public void b(String str) {
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            LogcatUtil.e(exc.getMessage());
        }
    }

    public class c implements T {
        public c() {
        }

        @Override // com.fl.saas.T
        public void a(String str) {
        }

        @Override // com.fl.saas.T
        public void b(String str) {
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            LogcatUtil.d("FLSDk-doRequest", "上报失败:" + exc.toString());
        }
    }

    public class d implements T {
        public d() {
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            LogcatUtil.d("FLSDK-API", "VideoVerify:" + str);
        }

        @Override // com.fl.saas.T
        public void b(String str) {
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
        }
    }

    public interface e {
        void a(List list);
    }

    private String c() {
        JSONObject jSONObject = new JSONObject();
        try {
            String reqID = DeviceUtil.getReqID("");
            jSONObject.putOpt("id", reqID);
            jSONObject.putOpt("track_id", reqID);
            jSONObject.putOpt(cl.f49059n, CommConstant.SdkVersion.SDK_VERSION_CODE);
            jSONObject.putOpt("secure", Integer.valueOf(DeviceUtil.isHttpSupported()));
            jSONObject.putOpt("app_id", DeviceUtil.appId);
            jSONObject.putOpt("app", DeviceUtil.getAppInfo());
            jSONObject.putOpt("device", DeviceUtil.getDeviceInfo());
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return AbstractC1191k.e(jSONObject.toString());
    }

    public boolean d() {
        return this.f29899c == 1;
    }

    public synchronized void e() {
        try {
            int i2 = this.f29897a;
            if (i2 != 1 && i2 != 2) {
                LogcatUtil.d("FLSdk:", "reportSDKInit");
                this.f29897a = 1;
                OaidUtils.init();
                if (DeviceUtil.isCanUseSensor) {
                    boolean zCheckAccelerometerSensor = DeviceUtil.checkAccelerometerSensor(DeviceUtil.getContext());
                    DeviceUtil.deviceHasAccelerometerSensor = zCheckAccelerometerSensor;
                    if (zCheckAccelerometerSensor) {
                        T0.b().a();
                    }
                }
                C1177f0.a().b();
                String strB = b();
                LogcatUtil.d("FLSdk:", "startSDKInit");
                C1166c.c().a(strB, new a());
            }
        } finally {
        }
    }

    public static E0 a() {
        if (f29896d == null) {
            synchronized (E0.class) {
                f29896d = new E0();
            }
        }
        return f29896d;
    }

    private String b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("id", DeviceUtil.getReqID(""));
            jSONObject.putOpt(cl.f49059n, CommConstant.SdkVersion.SDK_VERSION_CODE);
            jSONObject.putOpt("secure", Integer.valueOf(DeviceUtil.isHttpSupported()));
            jSONObject.putOpt("app", DeviceUtil.getAppInfo());
            jSONObject.putOpt("device", DeviceUtil.getDeviceInfo());
            jSONObject.putOpt("is_applist", Boolean.valueOf(DeviceUtil.isAppList()));
            jSONObject.putOpt("device_id_info", DeviceUtil.customConfig);
            if (DeviceUtil.customMap != null) {
                jSONObject.putOpt("user_defined", new JSONObject(DeviceUtil.customMap));
            }
            LogcatUtil.debug("https://t.funlinkads.com/log/initialization doGetParams:" + jSONObject);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return "https://t.funlinkads.com/log/initialization?e=" + AbstractC1191k.e(jSONObject.toString());
    }

    private String a(C1188j c1188j, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("id", c1188j.f30505g);
            jSONObject.putOpt(cl.f49059n, CommConstant.SdkVersion.SDK_VERSION_CODE);
            jSONObject.putOpt("secure", Integer.valueOf(DeviceUtil.isHttpSupported()));
            jSONObject.putOpt("place_id", c1188j.f30511i);
            jSONObject.putOpt("group_id", c1188j.f30508h);
            jSONObject.putOpt("adv_id", Integer.valueOf(c1188j.f30485a));
            jSONObject.putOpt("tagid", c1188j.f30502f);
            jSONObject.putOpt("price", Integer.valueOf(c1188j.j()));
            jSONObject.putOpt("time", Long.valueOf(c1188j.f30407A));
            jSONObject.putOpt("test_id", c1188j.f30514j);
            jSONObject.putOpt("track_id", c1188j.f30538r);
            jSONObject.putOpt("device", DeviceUtil.getDeviceInfo());
            jSONObject.putOpt("app", DeviceUtil.getAppInfo());
            jSONObject.putOpt("cost_time", Long.valueOf(DeviceUtil.getBootTime() - c1188j.f30520l));
            jSONObject.putOpt("js_dpurl", str);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return "https://t.funlinkads.com/log/js_dpurl?e=" + AbstractC1191k.e(jSONObject.toString()) + "&place_id=" + c1188j.f30511i;
    }

    public synchronized void b(C1188j c1188j, String str) {
        if (c1188j != null) {
            if (!TextUtils.isEmpty(str)) {
                a(a(c1188j, str));
            }
        }
    }

    private JSONObject b(String str, String str2, String str3, String str4, String str5, String str6) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("user_id", str);
            jSONObject.putOpt("custom_parameters", str2);
            jSONObject.putOpt("app_id", str3);
            jSONObject.putOpt("place_id", str4);
            jSONObject.putOpt("transaction_id", str5);
            jSONObject.putOpt("reward_ecpm", str6);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public void a(e eVar) {
        C1166c.c().a(CommConstant.API.URL_WAKEUP_PLACES, c(), new b(eVar));
    }

    public void a(C1188j c1188j, String str, long j2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("id", c1188j.f30505g);
            jSONObject.putOpt(cl.f49059n, CommConstant.SdkVersion.SDK_VERSION_CODE);
            jSONObject.putOpt("secure", Integer.valueOf(DeviceUtil.isHttpSupported()));
            jSONObject.putOpt("place_id", c1188j.f30511i);
            jSONObject.putOpt("adv_id", Integer.valueOf(c1188j.f30485a));
            jSONObject.putOpt("tagid", c1188j.f30502f);
            jSONObject.putOpt("price", Integer.valueOf(c1188j.j()));
            jSONObject.putOpt("time", Long.valueOf(c1188j.f30407A));
            jSONObject.putOpt("test_id", c1188j.f30514j);
            jSONObject.putOpt("track_id", c1188j.f30538r);
            jSONObject.putOpt("creative_id", c1188j.f30562z);
            jSONObject.putOpt("device", DeviceUtil.getDeviceInfo());
            jSONObject.putOpt("app", DeviceUtil.getAppInfo());
            jSONObject.putOpt("cost_time", Long.valueOf(DeviceUtil.getBootTime() - c1188j.f30520l));
            jSONObject.putOpt("is_background_switch", str);
            jSONObject.putOpt("background_stay_time", Long.valueOf(j2));
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        a("https://t.funlinkads.com/log/dpEffect?e=" + AbstractC1191k.e(jSONObject.toString()) + "&place_id=" + c1188j.f30511i);
    }

    public void a(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("id", DeviceUtil.getReqID(""));
            jSONObject.putOpt(cl.f49059n, CommConstant.SdkVersion.SDK_VERSION_CODE);
            jSONObject.putOpt("secure", Integer.valueOf(DeviceUtil.isHttpSupported()));
            jSONObject.putOpt("app", DeviceUtil.getAppInfo());
            jSONObject.putOpt("device", DeviceUtil.getDeviceInfo());
            jSONObject.putOpt("keyword_url_result", Integer.valueOf(i2));
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        a("https://t.funlinkads.com/log/ka_rep?e=" + AbstractC1191k.e(jSONObject.toString()));
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6) {
        C1166c.c().a(CommConstant.API.NEW_VIDEO_SERVER_VERIFY, AbstractC1191k.e(b(str, str2, str3, str4, str5, str6).toString()), new d());
    }

    private synchronized void a(String str) {
        C1166c.c().a(str, new c());
    }
}
