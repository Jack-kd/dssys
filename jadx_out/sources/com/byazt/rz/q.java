package com.byazt.rz;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.common.d.i;
import com.anythink.core.common.m.f;
import com.byazt.lc.zy;
import com.byazt.ye.jl;
import com.byazt.ye.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.IZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 150})
/* loaded from: classes3.dex */
public class q {

    /* renamed from: j, reason: collision with root package name */
    public static volatile BaseDexClassLoader f25419j;
    public static volatile TTPluginListener jl;

    /* renamed from: q, reason: collision with root package name */
    public final Context f25424q;
    public static final String hp = "next" + File.separator;

    /* renamed from: l, reason: collision with root package name */
    public static final HashMap<String, TTPluginListener> f25420l = new HashMap<>();
    public static final HashMap<String, Handler> jx = new HashMap<>();

    /* renamed from: w, reason: collision with root package name */
    public static volatile q f25421w = null;

    /* renamed from: a, reason: collision with root package name */
    public final CountDownLatch f25422a = new CountDownLatch(1);
    public volatile boolean eb = false;

    /* renamed from: s, reason: collision with root package name */
    public volatile String f25425s = com.baidu.mobads.sdk.internal.a.f10877a;

    /* renamed from: e, reason: collision with root package name */
    public JSONObject f25423e = new JSONObject();
    public EventListener gu = null;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 3})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public int f25427a;
        public String eb;

        /* renamed from: j, reason: collision with root package name */
        public int f25429j;
        public String jx;

        /* renamed from: w, reason: collision with root package name */
        public String f25433w;
        public String hp = "";

        /* renamed from: l, reason: collision with root package name */
        public File f25430l = null;

        /* renamed from: q, reason: collision with root package name */
        public int f25431q = 0;

        /* renamed from: e, reason: collision with root package name */
        public int f25428e = Integer.MAX_VALUE;

        /* renamed from: s, reason: collision with root package name */
        public List<String> f25432s = null;

        public boolean hp() {
            return this.f25427a == 3;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_PROCESSOR_ADDR})
    public static final class jx implements Serializable, Function<SparseArray<Object>, Object> {
        private void hp(hp hpVar) {
            try {
                if (TextUtils.isEmpty(hpVar.jx) || !hpVar.jx.equals("com.byted.pangle")) {
                    return;
                }
                q.hp(TTAppContextHolder.getContext()).l();
            } catch (Exception unused) {
            }
        }

        public SparseArray<Object> onEvent(int i2, Result result) {
            com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp();
            if (i2 == 1) {
                w.hp("plugin_download", "plugin update start");
                ValueSet valueSetValues = result.values();
                if (valueSetValues == null) {
                    w.hp("plugin_download", "valueSet empty");
                    return null;
                }
                String strStringValue = valueSetValues.stringValue(3);
                int iCode = result.code();
                if (!result.isSuccess()) {
                    w.hp("plugin_download", "plugin update received failed");
                    com.byazt.ik.a.j("TTPluginManager", "plugin update received failed");
                    q.jx(strStringValue, iCode);
                    return null;
                }
                hp hpVarJ = q.j(valueSetValues.stringValue(2));
                if (hpVarJ == null || TextUtils.isEmpty(hpVarJ.jx)) {
                    w.hp("plugin_download", "plugin update received with invalid config");
                    com.byazt.ik.a.j("TTPluginManager", "plugin update received with invalid config");
                    return null;
                }
                w.hp("plugin_download", "plugin update received: " + hpVarJ.jx);
                com.byazt.ik.a.j("TTPluginManager", "plugin update received: " + hpVarJ.jx);
                if (hpVarJ.hp()) {
                    w.hp("plugin_download", "plugin revert " + hpVarJ.jx);
                    Zeus.unInstallPlugin(hpVarJ.jx);
                } else {
                    hp(hpVarJ);
                    w.hp("plugin_download", "plugin install");
                    if (q.l(hpVarJ)) {
                        jxVarHp.hp(4, true);
                    }
                }
            }
            return jxVarHp.l().sparseArray();
        }

        @Override // java.util.function.Function
        public Object apply(SparseArray<Object> sparseArray) {
            if (sparseArray == null) {
                return null;
            }
            ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
            int iIntValue = valueSetL.intValue(-99999987);
            SparseArray sparseArray2 = (SparseArray) valueSetL.objectValue(-99999979, SparseArray.class);
            if (sparseArray2 == null) {
                return null;
            }
            ValueSet valueSetL2 = com.byazt.xi.jx.hp((SparseArray<Object>) sparseArray2).l();
            return onEvent(iIntValue, com.byazt.xi.l.hp().hp(valueSetL2.intValue(-999900)).hp(valueSetL2.stringValue(-999901)).hp(valueSetL2.booleanValue(-999903)).hp(com.byazt.xi.jx.hp((SparseArray<Object>) valueSetL2.objectValue(-999902, SparseArray.class)).l()).l());
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 731})
    public static final class l implements IZeusLogger {
        private l() {
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void e(String str, String str2, Throwable th) {
            com.byazt.ik.a.w(str, str2, th);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void i(String str, String str2) {
            com.byazt.ik.a.jx(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void v(String str, String str2) {
            com.byazt.ik.a.hp(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void w(String str, String str2) {
            com.byazt.ik.a.j(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void w(String str, String str2, Throwable th) {
            com.byazt.ik.a.j(str, str2, th);
        }
    }

    private q(Context context) {
        this.f25424q = context.getApplicationContext();
        try {
            GlobalParam.getInstance().closeHookHuaweiOnInit(true);
        } catch (Throwable th) {
            com.byazt.ik.a.j("TTPluginManager", "Unexpected error for closeHookHuaweiOnInit.", th);
        }
        l(context.getApplicationContext());
        Plugin plugin = Zeus.getPlugin("com.byted.pangle");
        if (plugin != null) {
            plugin.setApiBridge(com.byazt.dw.j.instance());
        }
    }

    private static boolean j(Context context) {
        File fileJx = jx(context);
        return fileJx.exists() && fileJx.listFiles().length != 0;
    }

    private static File jx(Context context) {
        return new File(com.byazt.rz.l.hp(context, "tt_pangle_bykv_file", 0), hp);
    }

    private void l(Context context) {
        try {
            zy.hp().hp(new gu());
            com.byazt.hu.w.hp(new com.byazt.ye.a() { // from class: com.byazt.rz.q.1
                @Override // com.byazt.ye.a
                public void hp(Runnable runnable) {
                    com.byazt.wq.hp.hp().j().execute(runnable);
                }

                @Override // com.byazt.ye.a
                public void jx(Runnable runnable) {
                    new Handler(Looper.getMainLooper()).post(runnable);
                }

                @Override // com.byazt.ye.a
                public void l(Runnable runnable) {
                    com.byazt.wq.hp.hp().j().execute(runnable);
                }
            });
            com.byazt.qva.hp hpVar = new com.byazt.qva.hp() { // from class: com.byazt.rz.q.2
                @Override // com.byazt.qva.hp
                public void hp(String str, JSONObject jSONObject) throws JSONException {
                    if ("load_finish".equals(str) && jSONObject != null && "com.byted.pangle".endsWith(jSONObject.optString("plugin_package_name"))) {
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("duration", jSONObject.opt("duration"));
                            jSONObject2.put("message", jSONObject.opt("message"));
                            q.this.f25423e.put("zeus", jSONObject2);
                        } catch (Exception e2) {
                            com.byazt.ik.a.hp(e2);
                        }
                    }
                    if (TTAdSdk.isInitSuccess()) {
                        a.hp(str, jSONObject);
                    } else {
                        a.l(str, jSONObject);
                    }
                }

                @Override // com.byazt.qva.hp
                public void hp(String str, String str2) {
                    w.hp(str, str2);
                }
            };
            com.byazt.hu.w.hp(new com.byazt.ye.a() { // from class: com.byazt.rz.q.3
                @Override // com.byazt.ye.a
                public void hp(Runnable runnable) {
                    com.byazt.wq.hp.hp().j().execute(runnable);
                }

                @Override // com.byazt.ye.a
                public void jx(Runnable runnable) {
                    new Handler(Looper.getMainLooper()).post(runnable);
                }

                @Override // com.byazt.ye.a
                public void l(Runnable runnable) {
                    com.byazt.wq.hp.hp().j().execute(runnable);
                }
            });
            GlobalParam globalParam = GlobalParam.getInstance();
            globalParam.setReporter(hpVar);
            globalParam.setCheckPermission(false);
            globalParam.setDownloadDir(jx(context));
            globalParam.setLogger(new l());
            globalParam.setSignature("com.byted.pangle", "MIIDfTCCAmWgAwIBAgIEfRwYPjANBgkqhkiG9w0BAQsFADBvMQswCQYDVQQGEwJDTjEQMA4GA1UECBMHQmVpamluZzEQMA4GA1UEBxMHQmVpamluZzESMBAGA1UEChMJQnl0ZURhbmNlMQ8wDQYDVQQLEwZQYW5nbGUxFzAVBgNVBAMTDkNodWFuIFNoYW4gSmlhMB4XDTIxMTEwODA2MjQzOVoXDTQ2MTEwMjA2MjQzOVowbzELMAkGA1UEBhMCQ04xEDAOBgNVBAgTB0JlaWppbmcxEDAOBgNVBAcTB0JlaWppbmcxEjAQBgNVBAoTCUJ5dGVEYW5jZTEPMA0GA1UECxMGUGFuZ2xlMRcwFQYDVQQDEw5DaHVhbiBTaGFuIEppYTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAIBKeRL+4mfCn1SLYv6OemfwwItkjlLPyqOEugkV6lanFTcZgLwEl5LIkL0y28UncPtMX1Mii6DzCdJ/plw7S9+RT/hYDneu339IKWojaU2qai/5FokHlQ0MMnYl5yry00ghVPsl1u+03cQA2ZnjIMiFhrBJpQzHt7IYvq2aEEMBcY8uT7iFoBI848e1mL1joVS2z02C3NliP7ZNARkXH+rTQAlCJulT5IZk+V/PTaKqzgNrkhsKh0/tBmU7m8u79x/xpgGsE19H18AgS4P/9/MDCRe2Z35boZeccaUy2MXCwv3djzUcDk3rRzQPYzdpyyRnrFMuhiKesc5VHgUMs9kCAwEAAaMhMB8wHQYDVR0OBBYEFENENrNWGzc2WhxdvhoMDs57U70zMA0GCSqGSIb3DQEBCwUAA4IBAQAHqDCrmvyBBmIGXwuL1rwS/Qv9ZJIZykBIaNMm+H1IfitCl4yXd9N2n+PjE0UZtxZ21UZOt9wAr+RFiSl5YRXqpt7WLARTy4YW3RiQ+wiL7bshzeSYBoSiC427Bfeq0WjwY0/jHlr8uouppyJOz++6U9hrYX2EW/6UjH5XlWiKQJ6b2ZzPcP8Xpg/TJn4tWvXJP6jw9kRRP2GmMttY78leWQst2QEZILmWJubXRLPj9O+qx2uP9oGTD4sc1vb9hzkOHBIHzGaalqLFbbGaeFpLFHoGTsnOfPTwUVKDZYmxbkcmR1bp7eYOW+nSQNMLn0FjDewZl5l37Sa/gz0WVHon");
            globalParam.setSignature("com.byted.csj.ext", "MIIDezCCAmOgAwIBAgIENkE1KDANBgkqhkiG9w0BAQsFADBtMQswCQYDVQQGEwI4NjEQMA4GA1UECBMHYmVpamluZzEQMA4GA1UEBxMHYmVpamluZzESMBAGA1UEChMJYnl0ZWRhbmNlMRIwEAYDVQQLEwlieXRlZGFuY2UxEjAQBgNVBAMTCWJ5dGVkYW5jZTAgFw0yMjExMDIwODI3MzlaGA8yMDUwMDMyMDA4MjczOVowbTELMAkGA1UEBhMCODYxEDAOBgNVBAgTB2JlaWppbmcxEDAOBgNVBAcTB2JlaWppbmcxEjAQBgNVBAoTCWJ5dGVkYW5jZTESMBAGA1UECxMJYnl0ZWRhbmNlMRIwEAYDVQQDEwlieXRlZGFuY2UwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCc9Z2F3xxOMX1qTXMy2aPmS9OSkqrp8C8bHwS1hkNVR4umKREuqOn73INNo+R706jaCVnlPwxDwWjtX6H74DE4CveivyM9f2wNC3yIyDW+5j7lW/keTQcOlGLDEJQv4O/6FbB/jNU6epjyNaNIZhgZcvTpgaSixbdyHzRTFmvMh+WovdVK/J9LnHOQ+pmPZj7NB6MQRGMUrPEotLHQca3cmnLrnPAaZQaVoaFE9lOt9syyqEuf361SprNIGDtbkJuX3EqV/QOKWFwZX94IS7ZGSvfyCojcD4kaUSbaSoZC7zEuBb7l69g+ZMrJ/v6wkm01wxsNNssUwF7k6Sp0zubbAgMBAAGjITAfMB0GA1UdDgQWBBSxk+gVdDco1dP65hP67qoKNlMEYDANBgkqhkiG9w0BAQsFAAOCAQEAfosExl/AYEbS2xqHBTHa28cvnp/SElUQuzW6aWLqkfk9cxmFSI/euUV3/eB8RN+U2X47Y05u6+XUxTv0tSSEtyXNawm0qWH8jkR4gZY38YqBChKjhea668oT5X3Uocrw7SYXO/BfI8SKPa0uI/U8Cyl3uctbmmq/pPUkd3mKAy+HgyJoThD6K0oyiADlygngUMVTv6Uvid4qPj/bBnxI+LvVeX4l1dxGqWkiafQW9sz+RbFdge3X2XsSH4eo01BsCwOYEv1lHO2FrbAtFNpnIsSqrERdFaAJZ3tlJmg9bA03png8A2AajEjkhaOhduJB8zkSlvHNpoQMIAS9WtkG/w==");
            globalParam.setSignature("com.byted.live.lite", "MIIDSTCCAjGgAwIBAgIEaLy5tzANBgkqhkiG9w0BAQsFADBVMQswCQYDVQQGEwIxMTEMMAoGA1UECBMDMTExMQ4wDAYDVQQHEwUxMTExMTEMMAoGA1UEChMDMTExMQwwCgYDVQQLEwMxMTExDDAKBgNVBAMTAzExMTAeFw0yMDEyMDMxMjQyMTJaFw00NTExMjcxMjQyMTJaMFUxCzAJBgNVBAYTAjExMQwwCgYDVQQIEwMxMTExDjAMBgNVBAcTBTExMTExMQwwCgYDVQQKEwMxMTExDDAKBgNVBAsTAzExMTEMMAoGA1UEAxMDMTExMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA45E52YdkJm4gPCXZq7KDoM1h6pgSswllC/CwDOmh8pDGvX4ROaYP1vr2biRlXMHg7G0iXpxWVdlTtx+4QFd3dC+cGJQk0f6apGo2n2RpMA0zIsSf0VO1a3GjWLei5INo+4RDdciqJ4jfsoqBIjZETRkky+UU4eO/oyrAwOu4KdMln3Bg3u7eHWU4kMFrXxrRruT3Q/9gzlO90yQa0CZPWVDrk6cGJtJwJGhWm+62S3U8D26HE++eGP7ve83QBDGtKqx7HpCAFWUiYBgXGq12H0amQDkKcPcr/EFCaBlombSgkN0t6zBX80m+wcUPC75IBTmMV/DT2dXcgjZ2I1JSCQIDAQABoyEwHzAdBgNVHQ4EFgQUPDyIeKI0KhZFPHyn36gMMIYrpukwDQYJKoZIhvcNAQELBQADggEBAHkl0DoCRwn+XKsDJE+wGMpBBqUDzL6DSOnJx4SNqb7YZZU0ThcDK7jY4If3QRkvMio6ODrVZc2U/m/Tc3VeMk5h2W2UZRUWHNH3k9Xe0720uL20ZeH2Y6IG4L5HG8kIbTbFtX3gJpPG/xAcez+CzyCFLWQAZt1N+csG0syWkXJ0Nryq8VrgSCyCXD1KzFxrOe+65wtu50Vi68Vlbk7BZe/G8Qm0RhKmxq5BPMBJ4uY3be+03Ba5qC//o1XQHOEAjrJKXcN5wqHdFZTkmuxVyIPogZOzx4JlNl0zOrYGDJxp7aZfKF9FkXQyF7x0Ns3mZEtjx/+flXRzAAU9MDhPr/0=");
            Zeus.setDecodeCallback(new jl() { // from class: com.byazt.rz.q.4
                @Override // com.byazt.ye.jl
                public String hp(String str) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        String strOptString = jSONObject.optString("cypher");
                        String strOptString2 = jSONObject.optString("message");
                        if (!TextUtils.equals(strOptString, "3") || TextUtils.isEmpty(strOptString2)) {
                            return null;
                        }
                        return com.byazt.vx.l.l(strOptString2);
                    } catch (Throwable th) {
                        com.byazt.ik.a.l("TTPluginManager", "dex plugin decode throw error ".concat(String.valueOf(th)));
                        return null;
                    }
                }
            });
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("isDexPlugin", 1);
                jSONObject.put("apiVersionCode", 1000);
                jSONObject.put("packageName", "com.byted.mixed");
                jSONObject.put("hostPackageName", "com.byted.pangle");
                jSONObject.put("minPluginVersion", 1000);
                jSONObject.put("maxPluginVersion", 999999999);
                jSONObject.put("internalPath", "");
                jSONObject.put("internalVersionCode", -1);
                jSONObject.put("appKey", "");
                jSONObject.put("appSecretKey", "");
                Zeus.addPackageDexManager("com.byted.mixed", jSONObject);
            } catch (Throwable th) {
                com.byazt.ik.a.l("TTPluginManager", "init dex plugin config throw error " + th);
            }
            globalParam.closeBgDex2oat(true);
            Zeus.init((Application) context);
            Zeus.registerPluginInstallListener(new k() { // from class: com.byazt.rz.q.5
                @Override // com.byazt.ye.k
                public void hp(String str, int i2, String str2) {
                    if (i2 == 7) {
                        q.this.l(str, i2);
                        return;
                    }
                    if (i2 == 6) {
                        q.this.l(str, i2);
                        if (q.this.gu == null || !"com.byted.pangle".equals(str)) {
                            com.byazt.ik.a.l("TTPluginManager", "no main pl");
                        } else {
                            q.this.gu.onEvent(0, com.byazt.xi.l.hp().hp(true).l());
                        }
                    }
                }
            });
            this.eb = true;
        } catch (Throwable th2) {
            com.byazt.ik.a.j("TTPluginManager", "Unexpected error for init zeus.", th2);
            this.f25425s = th2.getMessage();
        }
        PluginManager pluginManager = PluginManager.getInstance();
        pluginManager.registerPlugin("{apiVersionCode:7643,packageName:com.byted.pangle,minPluginVersion:7643,internalPath:'',internalVersionCode:7643}");
        pluginManager.registerPlugin("{apiVersionCode:1000,packageName:com.byted.csj.ext,minPluginVersion:1000,maxPluginVersion:999999999,internalPath:'',internalVersionCode:-1,appKey:'',appSecretKey:''}");
        pluginManager.registerPlugin("{apiVersionCode:2114,packageName:com.byted.live.lite,minPluginVersion:211400,maxPluginVersion:999999,isSupportLibIsolate:true}");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static hp j(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return hp(new JSONObject(str));
        } catch (JSONException unused) {
            com.byazt.ik.a.w("TTPluginManager", "Invalid plugin info:" + str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(String str, int i2) {
        com.byazt.ik.a.j("TTPluginManager", "plugin update failed");
        Bundle bundle = new Bundle();
        bundle.putInt("code", i2);
        TTPluginListener tTPluginListener = f25420l.get(str);
        if (tTPluginListener != null) {
            tTPluginListener.onPluginListener(1001, null, null, bundle);
        }
    }

    public static q hp(Context context) {
        if (f25421w == null) {
            synchronized (q.class) {
                try {
                    if (f25421w == null) {
                        f25421w = new q(context);
                    }
                } finally {
                }
            }
        }
        return f25421w;
    }

    public JSONObject hp() {
        return this.f25423e;
    }

    public BaseDexClassLoader hp(eb ebVar, int i2) throws Exception {
        boolean z2;
        String str;
        if (this.eb) {
            boolean zL = com.byazt.vx.jx.l();
            int i3 = 8;
            if (!Zeus.isPluginInstalled("com.byted.pangle")) {
                if (zL) {
                    new s(this.f25424q).hp();
                }
                if (j(this.f25424q)) {
                    Zeus.installFromDownloadDir();
                }
                try {
                    if (!zL) {
                        com.byazt.ik.a.l("TTPluginManager", "dont wait pl");
                    } else {
                        com.byazt.ik.a.l("TTPluginManager", "wait start");
                        this.f25422a.await(i2, TimeUnit.MILLISECONDS);
                    }
                    com.byazt.ik.a.l("TTPluginManager", "wait done");
                    ebVar.l("wait_install_cost");
                } catch (Exception unused) {
                    com.byazt.ik.a.l("TTPluginManager", "Install wait time out");
                    throw new j(8, "install wait timeout");
                }
            }
            if (Zeus.isPluginLoaded("com.byted.pangle") || Zeus.loadPlugin("com.byted.pangle")) {
                f25419j = Zeus.getPlugin("com.byted.pangle").mClassLoader;
                z2 = true;
            } else {
                z2 = false;
            }
            ebVar.l("get_classloader_cost");
            Zeus.installFromDownloadDir();
            if (f25419j == null) {
                if (this.f25422a.getCount() != 0) {
                    if (zL) {
                        i3 = 10;
                        str = "this device does not support arm64-v8a, and install wait time out";
                    } else {
                        str = "install wait time out";
                    }
                    com.byazt.ik.a.j("TTPluginManager", "Install wait time out");
                    throw new j(i3, str);
                }
                if (z2) {
                    com.byazt.ik.a.j("TTPluginManager", "Get null after load");
                    throw new j(9, "Get null after load");
                }
            }
            ebVar.l("get_classloader_done");
            return f25419j;
        }
        com.byazt.ik.a.j("TTPluginManager", "Zeus init failed.");
        throw new j(4, this.f25425s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str, int i2) {
        if ("com.byted.pangle".equals(str) && i2 == 6) {
            com.byazt.ik.a.j("TTPluginManager", "notify to end wait");
            this.f25422a.countDown();
        }
        hp(i2 == 6, str);
    }

    public static String l(String str) {
        int installedMaxVer;
        try {
            Plugin plugin = Zeus.getPlugin(str, false);
            if (plugin == null || (installedMaxVer = plugin.getInstalledMaxVer()) <= 0) {
                return null;
            }
            return hp(installedMaxVer);
        } catch (Throwable unused) {
            com.byazt.ik.a.j("TTPluginManager", "Get local version failed");
            return null;
        }
    }

    public Bundle hp(String str, Bundle bundle) {
        String strHp = hp(str);
        if (!TextUtils.isEmpty(strHp)) {
            bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, strHp);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putBundle(str, bundle);
        Bundle bundle3 = new Bundle();
        bundle3.putBundle(PluginConstants.KEY_PL_CONFIG_INFO, bundle2);
        return bundle3;
    }

    public void l(TTPluginListener tTPluginListener) {
        String strPackageName = tTPluginListener.packageName();
        Plugin plugin = (Zeus.isPluginInstalled(strPackageName) && (Zeus.isPluginLoaded(strPackageName) || Zeus.loadPlugin(strPackageName))) ? Zeus.getPlugin(strPackageName) : null;
        StringBuilder sb = new StringBuilder("Find plugin:");
        sb.append(plugin != null);
        com.byazt.ik.a.l("TTPluginManager", sb.toString());
        if (plugin != null) {
            hp(plugin);
            tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
        } else {
            jl = tTPluginListener;
        }
    }

    public static String hp(String str) {
        Context context;
        Plugin plugin;
        try {
            if (!Zeus.isPluginInstalled(str, false) || (plugin = Zeus.getPlugin(str, false)) == null) {
                return null;
            }
            return hp(plugin.getVersion());
        } finally {
            if (context != null) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(hp hpVar) {
        File file;
        if (hpVar != null && (file = hpVar.f25430l) != null) {
            boolean zSyncInstallPlugin = Zeus.syncInstallPlugin(hpVar.jx, file.getAbsolutePath());
            hp(zSyncInstallPlugin, hpVar.jx);
            return zSyncInstallPlugin;
        }
        com.byazt.ik.a.j("TTPluginManager", "plugin config is null");
        return false;
    }

    public void l() {
        EventListener eventListener = this.gu;
        if (eventListener != null) {
            eventListener.onEvent(1, com.byazt.xi.l.hp().hp(true).l());
        }
    }

    public void hp(final TTPluginListener tTPluginListener) {
        if (!this.eb) {
            com.byazt.ik.a.j("TTPluginManager", "Zeus init failed.");
            if (tTPluginListener != null) {
                tTPluginListener.onPluginListener(1002, null, null, null);
                return;
            }
            return;
        }
        Handler handlerL = com.byazt.wq.hp.hp().l();
        Runnable runnable = new Runnable() { // from class: com.byazt.rz.q.6
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.ik.a.l("TTPluginManager", "Load plugin failed, caused by timeout.");
                tTPluginListener.onPluginListener(1001, null, null, null);
            }
        };
        handlerL.postDelayed(runnable, 180000L);
        String strPackageName = tTPluginListener.packageName();
        Plugin plugin = (Zeus.isPluginInstalled(strPackageName) && (Zeus.isPluginLoaded(strPackageName) || Zeus.loadPlugin(strPackageName))) ? Zeus.getPlugin(strPackageName) : null;
        StringBuilder sb = new StringBuilder("Find plugin:");
        sb.append(plugin != null);
        com.byazt.ik.a.l("TTPluginManager", sb.toString());
        if (plugin != null) {
            hp(plugin);
            handlerL.removeCallbacks(runnable);
            tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
        } else {
            f25420l.put(strPackageName, tTPluginListener);
            jx.put(strPackageName, handlerL);
        }
    }

    public void hp(EventListener eventListener) {
        this.gu = eventListener;
    }

    private static hp hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        hp hpVar = new hp();
        hpVar.jx = jSONObject.optString("package_name");
        hpVar.f25429j = jSONObject.optInt("version_code");
        hpVar.f25433w = jSONObject.optString("download_url");
        hpVar.eb = jSONObject.optString(TKDownloadReason.KSAD_TK_MD5);
        hpVar.f25431q = jSONObject.optInt("min_version");
        hpVar.f25428e = jSONObject.optInt("max_version");
        hpVar.hp = jSONObject.optString(f.f5775Y);
        hpVar.f25427a = jSONObject.optBoolean("is_revert") ? 3 : 2;
        hpVar.f25430l = new File(jSONObject.optString("plugin_file"));
        return hpVar;
    }

    private static void hp(Plugin plugin) {
        if (plugin == null) {
            com.byazt.ik.a.j("TTPluginManager", "plugin is null.");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt(com.umeng.ccg.a.f49772z, 0);
        bundle.putString("plugin_pkg_name", plugin.mPkgName);
        bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, hp(plugin.getVersion()));
        TTAdManager adManager = TTAdSdk.getAdManager();
        if (adManager != null) {
            adManager.getExtra(Bundle.class, bundle);
        }
    }

    public static String hp(int i2) {
        char[] charArray = String.valueOf(i2).toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < charArray.length; i3++) {
            sb.append(charArray[i3]);
            if (i3 < charArray.length - 1) {
                sb.append(i.f2495E);
            }
        }
        return sb.toString();
    }

    private static boolean hp(TTPluginListener tTPluginListener, String str) {
        if (tTPluginListener == null || tTPluginListener.packageName() == null) {
            return false;
        }
        return tTPluginListener.packageName().equals(str);
    }

    private static void hp(boolean z2, String str) {
        HashMap<String, TTPluginListener> map = f25420l;
        TTPluginListener tTPluginListener = map.get(str);
        StringBuilder sb = new StringBuilder("Install dl plugin ");
        sb.append(str);
        sb.append(z2 ? " success" : " failed");
        sb.append(", need notify: ");
        sb.append(tTPluginListener != null);
        com.byazt.ik.a.l("TTPluginManager", sb.toString());
        HashMap<String, Handler> map2 = jx;
        Handler handler = map2.get(str);
        if (z2) {
            TTPluginListener tTPluginListener2 = jl;
            if (!hp(tTPluginListener2, str) && (tTPluginListener == null || handler == null)) {
                return;
            }
            if (Zeus.loadPlugin(str)) {
                Plugin plugin = Zeus.getPlugin(str);
                hp(plugin);
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                if (tTPluginListener != null) {
                    tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
                }
                if (hp(tTPluginListener2, str)) {
                    tTPluginListener2.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
                    jl = null;
                }
            } else {
                com.byazt.ik.a.l("TTPluginManager", "handle installed, load failed");
                jx(str, 1002);
            }
        } else {
            com.byazt.ik.a.l("TTPluginManager", "handle installed failed");
            jx(str, 1003);
        }
        map.remove(str);
        map2.remove(str);
    }

    public static void hp(Throwable th) {
        if (th instanceof AbstractMethodError) {
            Zeus.unInstallPlugin("com.byted.pangle");
            com.byazt.ik.a.j("TTPluginManager", "AbstractMethodError, rollback to builtin version.");
            a.hp("uninstall_plugin", null, th);
        }
    }
}
