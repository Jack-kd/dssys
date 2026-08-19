package com.sigmob.sdk;

import android.content.Context;
import android.util.Base64;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.exceptions.CrashHandler;
import com.czhj.sdk.common.models.BidRequest;
import com.czhj.sdk.common.mta.PointEntitySuper;
import com.czhj.sdk.common.network.BuriedPointRequest;
import com.czhj.sdk.common.network.JsonRequest;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import com.czhj.volley.VolleyLog;
import com.sigmob.sdk.base.common.C1254f;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointEntitySigmobCrash;
import com.sigmob.sdk.base.mta.PointInitEntity;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.o;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdOptions;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.WindCustomController;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.zip.DeflaterOutputStream;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class Sigmob {

    /* renamed from: a, reason: collision with root package name */
    private static Sigmob f35392a;
    public static SigMacroCommon macroCommon;

    /* renamed from: b, reason: collision with root package name */
    private WindAdError f35393b;

    private Sigmob() {
    }

    private String a(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream);
        try {
            deflaterOutputStream.write(bArr);
            deflaterOutputStream.flush();
            deflaterOutputStream.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    public static BidRequest createRequest() {
        BidRequest.Builder builder = new BidRequest.Builder();
        try {
            builder = com.sigmob.sdk.base.network.a.a((LoadAdRequest) null);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
        return builder.build();
    }

    public static synchronized Sigmob getInstance() {
        try {
            if (f35392a == null) {
                synchronized (Sigmob.class) {
                    f35392a = new Sigmob();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f35392a;
    }

    private void h() {
        Context contextE = b.e();
        if (contextE == null) {
            return;
        }
        ImageManager.with(contextE).clearCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        ad.a("app");
        this.f35393b = C1254f.b();
        e();
    }

    public static void updateLocationMonitor() {
        try {
            if (com.sigmob.sdk.base.o.a().P()) {
                return;
            }
            com.sigmob.sdk.base.services.f.a(com.sigmob.sdk.base.services.f.f36554a, com.sigmob.sdk.base.i.a().i());
        } catch (Throwable th) {
            SigmobLog.e("updateLocationMonitor fail", th);
        }
    }

    public SigMacroCommon getMacroCommon() {
        if (macroCommon == null) {
            macroCommon = new SigMacroCommon();
        }
        return macroCommon;
    }

    public String getSDKToken() {
        b.a(true);
        String str = "2.01|" + a(createRequest().encode());
        ad.a("token_request", (String) null, (BaseAdUnit) null, (ad.a) null);
        SigmobLog.d("getSDKToken: " + str);
        return str;
    }

    public WindAdError getSigMobError() {
        return this.f35393b;
    }

    public void init() {
        int i2;
        boolean zIsCanUseAppList;
        WindCustomController customController;
        VolleyLog.DEBUG = com.sigmob.sdk.base.n.f36443f.booleanValue();
        WindAdOptions options = WindAds.sharedAds().getOptions();
        com.sigmob.sdk.base.o oVarA = com.sigmob.sdk.base.o.a();
        final int iAb = oVarA.ab();
        boolean zJ = oVarA.j();
        final boolean zQ = oVarA.Q();
        boolean z2 = false;
        if (options == null || (customController = options.getCustomController()) == null) {
            i2 = 0;
            zIsCanUseAppList = true;
        } else {
            zIsCanUseAppList = customController.isCanUseAppList();
            i2 = zIsCanUseAppList ? 1 : 2;
        }
        if (!zJ && (iAb == 1 || (iAb != 2 && zIsCanUseAppList && !zQ))) {
            z2 = true;
        }
        final boolean zD = C1254f.d();
        final int i3 = i2;
        final boolean z3 = z2;
        ad.a("init", new ad.a() { // from class: com.sigmob.sdk.f
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                Sigmob.a(i3, zD, zQ, iAb, z3, obj);
            }
        });
        if (com.sigmob.sdk.base.o.a().V()) {
            ad.a("permission", "init", (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.g
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    Sigmob.a(obj);
                }
            });
        }
        C1258h.e();
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f37752b.i();
            }
        });
        TrackManager.getInstance().setSigmobTrackListener(new TrackManager.Listener() { // from class: com.sigmob.sdk.Sigmob.1
            @Override // com.czhj.sdk.common.track.TrackManager.Listener
            public void onErrorResponse(AdTracker adTracker, VolleyError volleyError) {
                ad.a(adTracker, adTracker.getUrl(), (BaseAdUnit) null, volleyError);
            }

            @Override // com.czhj.sdk.common.track.TrackManager.Listener
            public void onSuccess(AdTracker adTracker, NetworkResponse networkResponse) {
                ad.a(adTracker, adTracker.getUrl(), (BaseAdUnit) null, networkResponse, (ad.a) null);
            }
        });
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f37753b.a();
            }
        });
        TrackManager.getInstance().startRetryTracking();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        C1258h.b();
        C1258h.l();
        C1258h.j();
        C1258h.i();
        C1258h.h();
        C1258h.k();
        C1258h.c();
    }

    private static void b() {
        try {
            com.sigmob.sdk.base.services.f.a(com.sigmob.sdk.base.services.f.f36555b, true);
        } catch (Throwable th) {
            SigmobLog.e("initAppInstallService fail", th);
        }
    }

    private static void c() {
        try {
            com.sigmob.sdk.base.services.f.a(com.sigmob.sdk.base.services.f.f36556c, com.sigmob.sdk.base.i.a().i() && com.sigmob.sdk.base.o.a().T());
        } catch (Throwable th) {
            SigmobLog.e("updateWifiScanService fail", th);
        }
    }

    private static void d() {
        try {
            com.sigmob.sdk.base.services.f.a("DownloadService", true);
        } catch (Throwable th) {
            SigmobLog.e("initDownloadService fail", th);
        }
    }

    private void e() {
        Networking.getSigRequestQueue().add(new JsonRequest(com.sigmob.sdk.base.o.d(), new JsonRequest.Listener() { // from class: com.sigmob.sdk.Sigmob.2
            @Override // com.czhj.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                Sigmob.this.g();
                com.sigmob.sdk.base.i.a().a(null);
            }

            @Override // com.czhj.sdk.common.network.JsonRequest.Listener
            public void onSuccess(JSONObject jSONObject) {
                if (jSONObject != null) {
                    try {
                        com.sigmob.sdk.base.i.a().a(Boolean.valueOf(jSONObject.getBoolean(Constants.IS_REQUEST_IN_EEA_OR_UNKNOWN)));
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                Sigmob.this.g();
            }
        }, 0));
    }

    private void f() {
        try {
            File[] fileArrK = com.sigmob.sdk.base.utils.n.k();
            if (fileArrK == null) {
                return;
            }
            for (File file : fileArrK) {
                String fileToString = FileUtil.readFileToString(file);
                if (!com.sigmob.sdk.base.utils.s.a((CharSequence) fileToString)) {
                    a(file, fileToString);
                }
            }
        } catch (Throwable th) {
            SigmobLog.e("send crash Log fail", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        d();
        b.d();
        com.sigmob.sdk.base.o.a().a(new o.a() { // from class: com.sigmob.sdk.d
            @Override // com.sigmob.sdk.base.o.a
            public final void onUpdate(boolean z2) {
                Sigmob.a(z2);
            }
        }).f();
        if (com.sigmob.sdk.base.o.a().X()) {
            String[] strArrSplit = WindAds.class.getName().split("\\.");
            if (strArrSplit.length <= 2) {
                return;
            }
            final String str = strArrSplit[0] + com.anythink.core.common.d.i.f2495E + strArrSplit[1] + com.anythink.core.common.d.i.f2495E;
            CrashHandler.getInstance().add(new CrashHandler.CrashHandlerListener() { // from class: com.sigmob.sdk.e
                @Override // com.czhj.sdk.common.exceptions.CrashHandler.CrashHandlerListener
                public final void reportCrash(String str2) {
                    this.f37745a.a(str, str2);
                }
            });
            f();
        }
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i2, boolean z2, boolean z3, int i3, boolean z4, Object obj) {
        if (obj instanceof PointInitEntity) {
            PointInitEntity pointInitEntity = (PointInitEntity) obj;
            Map<String, String> options = pointInitEntity.getOptions();
            options.put(PointParamKey.IS_MINOR, com.sigmob.sdk.base.i.a().d() ? "0" : "1");
            options.put(PointParamKey.IS_UNPERSONALIZED, com.sigmob.sdk.base.i.a().e() ? "0" : "1");
            options.put("canUseAppList", String.valueOf(i2));
            options.put("appListPermission", z2 ? "1" : "0");
            options.put("disableUpAppInfo", z3 ? "1" : "0");
            options.put("EnableAppList", String.valueOf(i3));
            options.put("uploadAppList", z4 ? "1" : "0");
            options.put("common_version", String.valueOf(WindAds.sharedAds().getCommonVersion()));
            pointInitEntity.setOptions(options);
        }
    }

    private void a(final File file, String str) {
        PointEntitySigmobCrash pointEntitySigmobCrashWindCrash = PointEntitySigmobCrash.WindCrash(str);
        if (file != null) {
            try {
                pointEntitySigmobCrashWindCrash.setCrashTime(Long.parseLong(file.getName().replace(".log", "")));
            } catch (Throwable th) {
                SigmobLog.e("set crash time fail", th);
            }
        }
        pointEntitySigmobCrashWindCrash.sendServe(new BuriedPointRequest.RequestListener() { // from class: com.sigmob.sdk.Sigmob.3
            @Override // com.czhj.sdk.common.network.BuriedPointRequest.RequestListener
            public void onErrorResponse(VolleyError volleyError) {
            }

            @Override // com.czhj.sdk.common.network.BuriedPointRequest.RequestListener
            public void onSuccess() {
                File file2 = file;
                if (file2 == null) {
                    return;
                }
                file2.delete();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setPermission(ClientMetadata.getInstance().getPermission(b.e()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2) {
        if (com.sigmob.sdk.base.utils.s.b(str2)) {
            if (str2.contains(str) || str2.contains("com.czhj.")) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("crashTime", System.currentTimeMillis());
                    jSONObject.put("appId", WindAds.sharedAds().getAppId());
                    jSONObject.put("sdkVersion", WindAds.getVersion());
                    jSONObject.put("commonVersion", WindAds.sharedAds().getCommonVersion());
                    jSONObject.put("wmsession_id", PointEntitySuper.getSessionId());
                    jSONObject.put("crashLog", URLEncoder.encode(str2, "UTF-8"));
                    String string = jSONObject.toString();
                    SigmobLog.e("crashLog " + string);
                    File fileJ = com.sigmob.sdk.base.utils.n.j();
                    if (fileJ != null) {
                        FileUtil.writeToBuffer(string.getBytes(), fileJ.getAbsolutePath());
                    }
                    a(fileJ, string);
                } catch (Throwable th) {
                    SigmobLog.e("error ", th);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z2) {
        if (z2) {
            com.sigmob.sdk.base.services.b.b();
            b();
            com.sigmob.sdk.base.services.b.d();
        }
    }
}
