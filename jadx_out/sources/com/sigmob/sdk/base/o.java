package com.sigmob.sdk.base;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.work.WorkRequest;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.Config;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestQueue;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.VolleyError;
import com.czhj.wire.Wire;
import com.sigmob.sdk.base.models.config.SigmobAndroid;
import com.sigmob.sdk.base.models.config.SigmobAntiFraudLogConfig;
import com.sigmob.sdk.base.models.config.SigmobCommon;
import com.sigmob.sdk.base.models.config.SigmobCommonEndpointsConfig;
import com.sigmob.sdk.base.models.config.SigmobDialogSetting;
import com.sigmob.sdk.base.models.config.SigmobMotionConfig;
import com.sigmob.sdk.base.models.config.SigmobNativeConfig;
import com.sigmob.sdk.base.models.config.SigmobRvConfig;
import com.sigmob.sdk.base.models.config.SigmobSdkConfig;
import com.sigmob.sdk.base.models.config.SigmobSdkConfigResponse;
import com.sigmob.sdk.base.models.config.SigmobSplashConfig;
import com.sigmob.sdk.base.network.g;
import com.sigmob.sdk.base.utils.v;
import com.sigmob.sdk.base.utils.y;
import com.sigmob.windad.WindAds;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f36521a = null;

    /* renamed from: b, reason: collision with root package name */
    private static final String f36522b = "o";

    /* renamed from: c, reason: collision with root package name */
    private static final String f36523c = "sdkConfigVer";

    /* renamed from: d, reason: collision with root package name */
    private static o f36524d = null;

    /* renamed from: e, reason: collision with root package name */
    private static final boolean f36525e = false;

    /* renamed from: n, reason: collision with root package name */
    private static String f36526n = null;

    /* renamed from: o, reason: collision with root package name */
    private static boolean f36527o = false;

    /* renamed from: m, reason: collision with root package name */
    private a f36535m;

    /* renamed from: h, reason: collision with root package name */
    private final String f36530h = n.f36448k;

    /* renamed from: j, reason: collision with root package name */
    private long f36532j = 0;

    /* renamed from: k, reason: collision with root package name */
    private SigmobSdkConfig f36533k = null;

    /* renamed from: l, reason: collision with root package name */
    private SigmobSdkConfig f36534l = null;

    /* renamed from: f, reason: collision with root package name */
    private final Handler f36528f = new Handler(Looper.getMainLooper());

    /* renamed from: g, reason: collision with root package name */
    private final Runnable f36529g = new Runnable() { // from class: com.sigmob.sdk.base.r
        @Override // java.lang.Runnable
        public final void run() {
            this.f36540b.aj();
        }
    };

    /* renamed from: i, reason: collision with root package name */
    private final boolean f36531i = true;

    /* renamed from: com.sigmob.sdk.base.o$1, reason: invalid class name */
    public class AnonymousClass1 implements g.a {
        public AnonymousClass1() {
        }

        @Override // com.czhj.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            String unused = o.f36526n = o.this.am();
            if (o.f36527o) {
                o.this.aq();
            } else {
                boolean unused2 = o.f36527o = true;
                o.this.f36528f.post(o.this.f36529g);
            }
            SigmobLog.e(volleyError.toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(SigmobSdkConfig sigmobSdkConfig) {
            o.this.a(sigmobSdkConfig, true);
        }

        @Override // com.sigmob.sdk.base.network.g.a
        public void a(SigmobSdkConfigResponse sigmobSdkConfigResponse) throws Throwable {
            boolean unused = o.f36527o = false;
            SigmobLog.d(sigmobSdkConfigResponse.toString());
            final SigmobSdkConfig sigmobSdkConfig = sigmobSdkConfigResponse.config;
            if (sigmobSdkConfig == null) {
                SigmobLog.e(sigmobSdkConfigResponse.error_message);
            } else {
                WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f36541b.a(sigmobSdkConfig);
                    }
                });
                o.this.a(sigmobSdkConfig);
            }
            o.this.aq();
        }
    }

    public interface a {
        void onUpdate(boolean z2);
    }

    private o() {
        ai();
    }

    public static synchronized o a() {
        try {
            if (f36524d == null) {
                f36524d = new o();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f36524d;
    }

    private void ai() {
        if (this.f36533k == null) {
            SigmobSdkConfig.Builder builder = new SigmobSdkConfig.Builder();
            SigmobCommon.Builder builder2 = new SigmobCommon.Builder();
            SigmobAndroid.Builder builder3 = new SigmobAndroid.Builder();
            SigmobCommonEndpointsConfig.Builder builder4 = new SigmobCommonEndpointsConfig.Builder();
            builder4.native_ad(a(false));
            builder2.endpoints(builder4.build());
            SigmobRvConfig.Builder builder5 = new SigmobRvConfig.Builder();
            builder5.cacheTop(4);
            builder2.rv_config(builder5.build());
            builder2.configRefresh(1000);
            Boolean bool = Boolean.FALSE;
            builder2.disable_up_location(bool);
            builder2.is_gdpr_region(bool);
            builder2.enable_debug_level(bool);
            Boolean bool2 = Boolean.TRUE;
            builder3.disable_boot_mark(bool2);
            builder3.disableUpAppInfo(bool2);
            builder3.oaid_api_is_disable(bool2);
            builder3.enable_permission(bool);
            builder3.enable_report_crash(bool);
            builder.common_config(builder2.build());
            builder.android_config(builder3.build());
            this.f36533k = builder.build();
        }
        SigmobLog.d("Default config: " + this.f36533k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aj() {
        if (com.sigmob.sdk.b.e() == null) {
            return;
        }
        if (ClientMetadata.getInstance().isNetworkConnected(c()) && i.a().i()) {
            al();
        } else {
            SigmobLog.d("Can't load an ad because there is no network connectivity.");
            aq();
        }
    }

    private boolean ak() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobCommonP.log_enc, Boolean.FALSE)).booleanValue();
    }

    private void al() {
        SigmobRequestQueue sigRequestQueue = Networking.getSigRequestQueue();
        com.sigmob.sdk.base.network.g gVar = new com.sigmob.sdk.base.network.g(c(), new AnonymousClass1());
        if (sigRequestQueue == null) {
            SigmobLog.e("queue is null");
            aq();
        } else {
            sigRequestQueue.add(gVar);
            SigmobLog.i("update sdk config");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String am() {
        SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig;
        SigmobCommon sigmobCommonP = p();
        return (sigmobCommonP == null || (sigmobCommonEndpointsConfig = sigmobCommonP.endpoints) == null) ? "" : (String) Wire.get(sigmobCommonEndpointsConfig.config, "https://c.etoolads.cn/s/config");
    }

    private int an() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobCommonP.network_timeout, 0)).intValue();
    }

    private boolean ao() {
        if (!v.b((Object) f36521a)) {
            SigmobCommon sigmobCommonP = p();
            if (sigmobCommonP == null) {
                return false;
            }
            f36521a = (Boolean) Wire.get(sigmobCommonP.noncompliance_mark, Boolean.FALSE);
            com.sigmob.sdk.base.utils.k.c(f36522b, "noncomplianceMark(config) = " + f36521a, new Object[0]);
        }
        return f36521a.booleanValue();
    }

    private void ap() {
        this.f36528f.removeCallbacks(this.f36529g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aq() {
        ap();
        if (this.f36531i) {
            this.f36528f.postDelayed(this.f36529g, Math.max(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, this.f36532j));
        }
    }

    private SigmobSplashConfig ar() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return null;
        }
        return sigmobCommonP.splash_config;
    }

    private SigmobNativeConfig as() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return null;
        }
        return sigmobCommonP.native_config;
    }

    public static boolean n() {
        return false;
    }

    public long A() {
        SigmobNativeConfig sigmobNativeConfigAs = as();
        if (sigmobNativeConfigAs == null) {
            return 45000L;
        }
        int iIntValue = ((Integer) Wire.get(sigmobNativeConfigAs.ad_load_timeout, 45)).intValue();
        if (iIntValue < 10) {
            iIntValue = 10;
        }
        return iIntValue * 1000;
    }

    public boolean B() {
        SigmobAntiFraudLogConfig sigmobAntiFraudLogConfig;
        SigmobCommon sigmobCommonP = p();
        return (sigmobCommonP == null || (sigmobAntiFraudLogConfig = sigmobCommonP.anti_fraud_log) == null || sigmobAntiFraudLogConfig.events == null) ? false : true;
    }

    public int C() {
        SigmobMotionConfig sigmobMotionConfig;
        SigmobCommon sigmobCommonP = p();
        if (!B() || (sigmobMotionConfig = sigmobCommonP.anti_fraud_log.motion_config) == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobMotionConfig.interval, 0)).intValue();
    }

    public int D() {
        if (!B() || p().anti_fraud_log.motion_config == null) {
            return 0;
        }
        return ((Integer) Wire.get(p().anti_fraud_log.motion_config.count, 0)).intValue();
    }

    public int E() {
        if (!B() || p().anti_fraud_log.motion_config == null) {
            return 0;
        }
        return p().anti_fraud_log.motion_config.queue_max.intValue() + (-50) < p().anti_fraud_log.motion_config.count.intValue() * 2 ? (((Integer) Wire.get(p().anti_fraud_log.motion_config.count, 0)).intValue() * 2) + 50 : ((Integer) Wire.get(p().anti_fraud_log.motion_config.queue_max, 0)).intValue();
    }

    public long F() {
        long jIntValue = p() != null ? ((Integer) Wire.get(p().tracking_expiration_time, 86400)).intValue() : 86400L;
        if (jIntValue < 180) {
            return 180L;
        }
        return jIntValue;
    }

    public int G() {
        int iIntValue = p() != null ? ((Integer) Wire.get(p().tracking_retry_interval, 180)).intValue() : 180;
        if (iIntValue < 10) {
            return 10;
        }
        return iIntValue;
    }

    public int H() {
        Integer num = SigmobCommon.DEFAULT_MAX_SEND_LOG_RECORDS;
        int iIntValue = num.intValue();
        if (p() != null) {
            iIntValue = ((Integer) Wire.get(p().max_send_log_records, num)).intValue();
        }
        return iIntValue < 10 ? num.intValue() : iIntValue;
    }

    public int I() {
        int iIntValue;
        if (p() == null || (iIntValue = ((Integer) Wire.get(p().send_log_interval, 3)).intValue()) < 3) {
            return 3;
        }
        return iIntValue;
    }

    public boolean J() {
        SigmobAndroid sigmobAndroidQ;
        if (j() || (sigmobAndroidQ = q()) == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidQ.enable_open_pkg_list, Boolean.FALSE)).booleanValue();
    }

    public boolean K() {
        SigmobAndroid sigmobAndroidQ;
        if (j() || (sigmobAndroidQ = q()) == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidQ.enable_open_pkg_dir_list, Boolean.FALSE)).booleanValue();
    }

    public Boolean L() {
        o oVarA = a();
        return Boolean.valueOf(oVarA.J() || oVarA.K());
    }

    public List<Integer> M() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return null;
        }
        return sigmobCommonP.dclog_blacklist;
    }

    public boolean N() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobCommonP.enable_debug_level, Boolean.FALSE)).booleanValue();
    }

    public long O() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return 0L;
        }
        long jIntValue = ((Integer) Wire.get(sigmobCommonP.load_interval, 0)).intValue();
        if (jIntValue < 1) {
            return 0L;
        }
        return jIntValue * 1000;
    }

    public boolean P() {
        SigmobCommon sigmobCommonP;
        if (j() || (sigmobCommonP = p()) == null) {
            return true;
        }
        return ((Boolean) Wire.get(sigmobCommonP.disable_up_location, Boolean.FALSE)).booleanValue();
    }

    public boolean Q() {
        SigmobAndroid sigmobAndroidQ;
        if (j() || (sigmobAndroidQ = q()) == null) {
            return true;
        }
        return ((Boolean) Wire.get(sigmobAndroidQ.disableUpAppInfo, Boolean.FALSE)).booleanValue();
    }

    public int R() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobAndroidQ.report_log, 0)).intValue();
    }

    public List<String> S() {
        SigmobAndroid sigmobAndroidQ = q();
        return sigmobAndroidQ == null ? new ArrayList() : sigmobAndroidQ.open_pkg_list;
    }

    public boolean T() {
        SigmobAndroid sigmobAndroidQ = q();
        return sigmobAndroidQ != null && ((Integer) Wire.get(sigmobAndroidQ.up_wifi_list_interval, 0)).intValue() >= 60;
    }

    public int U() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobAndroidQ.disable_up_oaid, 0)).intValue();
    }

    public boolean V() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidQ.enable_permission, Boolean.FALSE)).booleanValue();
    }

    public int W() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobAndroidQ.apk_expired_time, 0)).intValue();
    }

    public boolean X() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidQ.enable_report_crash, Boolean.FALSE)).booleanValue();
    }

    public boolean Y() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return true;
        }
        return ((Boolean) Wire.get(sigmobAndroidQ.oaid_api_is_disable, Boolean.FALSE)).booleanValue();
    }

    public boolean Z() {
        return false;
    }

    public boolean aa() {
        SigmobAndroid sigmobAndroidQ;
        if (j() || (sigmobAndroidQ = q()) == null) {
            return true;
        }
        return ((Boolean) Wire.get(sigmobAndroidQ.disable_install_monitor, Boolean.FALSE)).booleanValue();
    }

    public int ab() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobAndroidQ.enable_app_list, 0)).intValue();
    }

    public boolean ac() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return true;
        }
        return ((Boolean) Wire.get(sigmobAndroidQ.disable_boot_mark, Boolean.FALSE)).booleanValue();
    }

    public boolean ad() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidQ.use_web_source_cache, Boolean.FALSE)).booleanValue();
    }

    public boolean ae() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobCommonP.enable_extra_dclog, Boolean.FALSE)).booleanValue();
    }

    public int af() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobAndroidQ.web_source_cache_expiration_time, 0)).intValue();
    }

    public int ag() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return 500;
        }
        return ((Integer) Wire.get(sigmobAndroidQ.s2s_token_timeout, 500)).intValue();
    }

    public Boolean b(String str) {
        boolean zB;
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            return Boolean.FALSE;
        }
        Context contextE = com.sigmob.sdk.b.e();
        boolean zJ = J();
        boolean zK = K();
        if (zJ) {
            zB = com.sigmob.sdk.base.utils.h.a(contextE, str);
        } else {
            if (!zK) {
                return Boolean.FALSE;
            }
            zB = com.sigmob.sdk.base.utils.h.b(contextE, str);
        }
        return Boolean.valueOf(zB);
    }

    public void f() {
        ap();
        this.f36528f.post(this.f36529g);
    }

    public boolean g() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobCommonP.feedback_debug, Boolean.FALSE)).booleanValue();
    }

    public boolean h() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidQ.lock_play, Boolean.FALSE)).booleanValue();
    }

    public boolean i() {
        SigmobAndroid sigmobAndroidQ = q();
        if (sigmobAndroidQ == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidQ.screen_keep, Boolean.FALSE)).booleanValue();
    }

    public boolean j() {
        return !ao();
    }

    public int k() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return 0;
        }
        int iIntValue = ((Integer) Wire.get(sigmobCommonP.expire_monitor_interval, 0)).intValue();
        SigmobLog.d("expireMonitorInterval = " + iIntValue);
        return iIntValue;
    }

    public boolean l() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobCommonP.enable_active_expire, Boolean.FALSE)).booleanValue();
    }

    public int m() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return 0;
        }
        Integer num = (Integer) Wire.get(sigmobCommonP.sniffing_type, 0);
        SigmobLog.d("sniffingType = " + num);
        return num.intValue();
    }

    public SigmobSdkConfig o() {
        SigmobSdkConfig sigmobSdkConfig = this.f36534l;
        return sigmobSdkConfig == null ? this.f36533k : sigmobSdkConfig;
    }

    public SigmobCommon p() {
        SigmobSdkConfig sigmobSdkConfigO = o();
        if (sigmobSdkConfigO == null) {
            return null;
        }
        return sigmobSdkConfigO.sigmobCommon_config;
    }

    public SigmobAndroid q() {
        SigmobSdkConfig sigmobSdkConfigO = o();
        if (sigmobSdkConfigO == null) {
            return null;
        }
        return sigmobSdkConfigO.sigmobAndroid_config;
    }

    public String r() {
        StringBuilder sb;
        String str;
        SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig;
        SigmobCommon sigmobCommonP = p();
        String str2 = (sigmobCommonP == null || (sigmobCommonEndpointsConfig = sigmobCommonP.endpoints) == null) ? "" : sigmobCommonEndpointsConfig.log;
        if (!com.sigmob.sdk.base.utils.s.b(str2)) {
            str2 = "https://dc.sigmob.cn/log";
        }
        if (str2.indexOf(63) == -1) {
            sb = new StringBuilder();
            sb.append(str2);
            str = "?";
        } else {
            sb = new StringBuilder();
            sb.append(str2);
            str = "&";
        }
        sb.append(str);
        sb.append(b());
        return sb.toString();
    }

    public String s() {
        StringBuilder sb;
        String str;
        String str2 = (String) Wire.get(p().endpoints.feedback, "https://adxtool.sigmob.cn/debug/feedback");
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str2)) {
            return str2;
        }
        if (str2.indexOf(63) == -1) {
            sb = new StringBuilder();
            sb.append(str2);
            str = "?";
        } else {
            sb = new StringBuilder();
            sb.append(str2);
            str = "&";
        }
        sb.append(str);
        sb.append(b());
        return sb.toString();
    }

    public SigmobRvConfig t() {
        SigmobCommon sigmobCommonP = p();
        if (sigmobCommonP == null) {
            return null;
        }
        return sigmobCommonP.rv_config;
    }

    public int u() {
        SigmobRvConfig sigmobRvConfigT = t();
        if (sigmobRvConfigT == null) {
            return 5;
        }
        return ((Integer) Wire.get(sigmobRvConfigT.cacheTop, 5)).intValue();
    }

    public long v() {
        SigmobRvConfig sigmobRvConfigT = t();
        if (sigmobRvConfigT == null) {
            return 45000L;
        }
        int iIntValue = ((Integer) Wire.get(sigmobRvConfigT.ad_load_timeout, 45)).intValue();
        if (iIntValue < 10) {
            iIntValue = 10;
        }
        return iIntValue * 1000;
    }

    public SigmobDialogSetting w() {
        SigmobRvConfig sigmobRvConfigT = t();
        if (sigmobRvConfigT == null) {
            return null;
        }
        return sigmobRvConfigT.close_dialog_setting;
    }

    public int x() {
        SigmobSplashConfig sigmobSplashConfigAr = ar();
        if (sigmobSplashConfigAr == null) {
            return 50;
        }
        return ((Integer) Wire.get(sigmobSplashConfigAr.cacheTop, 50)).intValue();
    }

    public long y() {
        SigmobSplashConfig sigmobSplashConfigAr = ar();
        int iIntValue = sigmobSplashConfigAr != null ? ((Integer) Wire.get(sigmobSplashConfigAr.material_expired_time, 2)).intValue() : 2;
        return iIntValue < 0 ? iIntValue : iIntValue * 86400000;
    }

    public int z() {
        SigmobNativeConfig sigmobNativeConfigAs = as();
        if (sigmobNativeConfigAs == null) {
            return 50;
        }
        return ((Integer) Wire.get(sigmobNativeConfigAs.cacheTop, 50)).intValue();
    }

    public static String b() {
        return "appId=" + WindAds.sharedAds().getAppId() + "&sdkVersion=4.25.12";
    }

    public static String c() {
        if (!com.sigmob.sdk.base.utils.s.b(f36526n)) {
            if (!com.sigmob.sdk.base.utils.s.b("https://adservice.sigmob.cn/s/config")) {
                return "https://adservice.sigmob.cn/s/config?" + b();
            }
            return "https://adservice.sigmob.cn/s/config?" + b();
        }
        if (f36526n.indexOf(63) == -1) {
            return f36526n + "?" + b();
        }
        return f36526n + "&" + b();
    }

    public static String d() {
        return "https://adservice.sigmob.cn/extconfig?" + b();
    }

    public o a(a aVar) {
        this.f36535m = aVar;
        return f36524d;
    }

    public void e() {
        ObjectInputStream objectInputStream = null;
        String strA = y.a(com.sigmob.sdk.b.e(), (String) null, f36523c, (String) null);
        File file = new File(com.sigmob.sdk.base.utils.n.a() + "/config");
        if (n.f36448k.equals(strA)) {
            try {
                if (file.exists()) {
                    try {
                        ObjectInputStream objectInputStream2 = new ObjectInputStream(new FileInputStream(file));
                        try {
                            a(SigmobSdkConfig.ADAPTER.decode(objectInputStream2), false);
                            objectInputStream2.close();
                        } catch (Throwable th) {
                            th = th;
                            objectInputStream = objectInputStream2;
                            try {
                                a(this.f36533k, false);
                                SigmobLog.e(th.getMessage());
                                if (objectInputStream != null) {
                                    objectInputStream.close();
                                    return;
                                }
                                return;
                            } catch (Throwable th2) {
                                if (objectInputStream != null) {
                                    try {
                                        objectInputStream.close();
                                    } catch (Throwable th3) {
                                        SigmobLog.e(th3.getMessage());
                                    }
                                }
                                throw th2;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                    return;
                }
            } catch (Throwable th5) {
                SigmobLog.e(th5.getMessage());
                return;
            }
        }
        a(this.f36533k, false);
    }

    public String a(boolean z2) {
        StringBuilder sb;
        String str;
        SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("https://");
        sb2.append(z2 ? n.f36436V : n.f36433S);
        String string = sb2.toString();
        SigmobCommon sigmobCommonP = p();
        String str2 = (sigmobCommonP == null || (sigmobCommonEndpointsConfig = sigmobCommonP.endpoints) == null) ? "" : z2 ? sigmobCommonEndpointsConfig.saas_ads : sigmobCommonEndpointsConfig.ads;
        if (com.sigmob.sdk.base.utils.s.b(str2)) {
            string = str2;
        }
        if (string.indexOf(63) == -1) {
            sb = new StringBuilder();
            sb.append(string);
            str = "?";
        } else {
            sb = new StringBuilder();
            sb.append(string);
            str = "&";
        }
        sb.append(str);
        sb.append(b());
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SigmobSdkConfig sigmobSdkConfig) throws Throwable {
        ObjectOutputStream objectOutputStream;
        if (sigmobSdkConfig == null) {
            return;
        }
        File file = new File(com.sigmob.sdk.base.utils.n.a() + "/config");
        if (file.exists()) {
            file.delete();
        }
        file.getParentFile().mkdirs();
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                try {
                    objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
                } catch (IOException e2) {
                    SigmobLog.e(e2.getMessage());
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            sigmobSdkConfig.encode(objectOutputStream);
            y.b(com.sigmob.sdk.b.e(), (String) null, f36523c, n.f36448k);
            objectOutputStream.close();
        } catch (IOException e4) {
            e = e4;
            objectOutputStream2 = objectOutputStream;
            SigmobLog.e(e.getMessage());
            if (objectOutputStream2 != null) {
                objectOutputStream2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2 = objectOutputStream;
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException e5) {
                    SigmobLog.e(e5.getMessage());
                }
            }
            throw th;
        }
    }

    public String b(boolean z2) {
        StringBuilder sb;
        String str;
        SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("https://");
        sb2.append(z2 ? n.f36437W : n.f36434T);
        String string = sb2.toString();
        SigmobCommon sigmobCommonP = p();
        String str2 = (sigmobCommonP == null || (sigmobCommonEndpointsConfig = sigmobCommonP.endpoints) == null) ? "" : z2 ? sigmobCommonEndpointsConfig.saas_hb_ads : sigmobCommonEndpointsConfig.hb_ads;
        if (com.sigmob.sdk.base.utils.s.b(str2)) {
            string = str2;
        }
        if (string.indexOf(63) == -1) {
            sb = new StringBuilder();
            sb.append(string);
            str = "?";
        } else {
            sb = new StringBuilder();
            sb.append(string);
            str = "&";
        }
        sb.append(str);
        sb.append(b());
        return sb.toString();
    }

    public String c(boolean z2) {
        StringBuilder sb;
        String str;
        SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("https://");
        sb2.append(z2 ? n.f36436V : n.f36433S);
        String string = sb2.toString();
        SigmobCommon sigmobCommonP = p();
        String str2 = (sigmobCommonP == null || (sigmobCommonEndpointsConfig = sigmobCommonP.endpoints) == null) ? "" : z2 ? sigmobCommonEndpointsConfig.saas_native_ad : sigmobCommonEndpointsConfig.native_ad;
        if (com.sigmob.sdk.base.utils.s.b(str2)) {
            string = str2;
        }
        if (string.indexOf(63) == -1) {
            sb = new StringBuilder();
            sb.append(string);
            str = "?";
        } else {
            sb = new StringBuilder();
            sb.append(string);
            str = "&";
        }
        sb.append(str);
        sb.append(b());
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SigmobSdkConfig sigmobSdkConfig, boolean z2) {
        SigmobCommon sigmobCommon;
        if (sigmobSdkConfig == null || (sigmobCommon = sigmobSdkConfig.sigmobCommon_config) == null) {
            return;
        }
        this.f36534l = sigmobSdkConfig;
        this.f36532j = ((Integer) Wire.get(sigmobCommon.configRefresh, 1800)).intValue() * 1000;
        int iK = k();
        if (iK <= 0) {
            com.sigmob.sdk.manager.d.a().c();
        } else {
            com.sigmob.sdk.manager.d.a().a(iK);
        }
        SigmobLog.d("config: " + sigmobSdkConfig);
        if (v.b(this.f36535m)) {
            this.f36535m.onUpdate(z2);
        }
        Config.sharedInstance().setEnable_okhttp3(Z());
        Config.sharedInstance().setNetworkTimeout(an());
        Config.sharedInstance().update(false, ac(), Y(), U(), r(), I(), H(), ak());
        TrackManager.getInstance().setRetryInterval(G());
        TrackManager.getInstance().setRetryExpiredTime(F());
    }

    public boolean a(String str) {
        List<String> list;
        SigmobCommon sigmobCommonP = p();
        if (!B() || (list = sigmobCommonP.anti_fraud_log.events) == null) {
            return false;
        }
        return list.contains(str);
    }
}
