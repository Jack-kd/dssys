package com.byazt.bcj;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.api.ATCustomRuleKeys;
import com.anythink.core.common.d.i;
import com.baidu.mobads.sdk.internal.d;
import com.byazt.bki.w;
import com.byazt.fct.j;
import com.byazt.jz.s;
import com.byazt.pg.jl;
import com.byazt.pg.r;
import com.byazt.rz.PluginConstants;
import com.byazt.ymw.ud;
import com.byazt.zg.a;
import com.byazt.zg.b;
import com.byazt.zg.ns;
import com.byazt.zg.nu;
import com.byazt.zg.o;
import com.byazt.zg.sz;
import com.byazt.zg.zy;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.ec;
import com.byazt.zn.ky;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kuaishou.weapon.p0.t;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import com.umeng.analytics.pro.bv;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 577, 34})
/* loaded from: classes2.dex */
public class l implements r.hp {

    /* renamed from: e, reason: collision with root package name */
    public static boolean f18511e = true;
    public static volatile boolean hp = false;

    /* renamed from: j, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile l f18512j;
    public final Context jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.bcj.hp f18514l;

    /* renamed from: s, reason: collision with root package name */
    public final ud f18516s;

    /* renamed from: w, reason: collision with root package name */
    public final AtomicInteger f18517w = new AtomicInteger(0);

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f18513a = new AtomicBoolean(false);
    public final AtomicBoolean eb = new AtomicBoolean(false);

    /* renamed from: q, reason: collision with root package name */
    public final AtomicBoolean f18515q = new AtomicBoolean(false);
    public int gu = -1;

    @com.byazt.kj.hp(hp = {0, 1, 577, 123})
    public class hp implements Runnable {

        /* renamed from: j, reason: collision with root package name */
        public final JSONObject f18530j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public final w f18531l;

        public hp(w wVar, int i2, JSONObject jSONObject) {
            this.f18531l = wVar;
            this.jx = i2;
            this.f18530j = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() throws JSONException {
            if (!ns.hp(l.this.jx)) {
                l.this.f18514l.hp(false, null);
                return;
            }
            l.this.f18513a.set(true);
            boolean zXh = com.byazt.di.l.l().xh();
            if (!l.hp) {
                boolean unused = l.hp = true;
                j.hp(zXh);
            }
            if (com.byazt.ri.l.hp()) {
                return;
            }
            l.this.hp(zXh, this.f18531l, this.jx, this.f18530j);
        }
    }

    public interface jx {
        public static final String hp = nu.hp() + ".openadsdk.permission.TT_PANGOLIN";
    }

    @com.byazt.kj.hp(hp = {0, 1, 577, 1376})
    /* renamed from: com.byazt.bcj.l$l, reason: collision with other inner class name */
    public class C0196l extends BroadcastReceiver {
        private C0196l() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || s.u().nu()) {
                return;
            }
            com.byazt.aw.l.hp("SdkSettingsHelper", "--==-- settings receiver");
            if (intent.getIntExtra("b_msg_id", -1) == 1) {
                if (TextUtils.equals(intent.getStringExtra("b_msg_process_name"), b.l(l.this.jx))) {
                    com.byazt.aw.l.hp("SdkSettingsHelper", "--==-- settings receiver, same process, return");
                } else if (l.this.f18514l != null) {
                    com.byazt.aw.l.hp("SdkSettingsHelper", "--==-- settings receiver loadData");
                    l.this.f18514l.hp(false, null);
                    com.byazt.dl.j.hp().l();
                    com.byazt.aw.l.hp("SdkSettingsHelper", "--==-- settings receiver loadData end");
                }
            }
        }
    }

    private l(com.byazt.bcj.hp hpVar) {
        this.f18514l = hpVar == null ? com.byazt.di.l.l() : hpVar;
        Context context = com.byazt.di.l.getContext();
        this.jx = context;
        this.f18516s = new ud(Looper.getMainLooper(), this);
        if (com.byazt.di.hp.jl().k()) {
            try {
                context.registerReceiver(new C0196l(), new IntentFilter("com.bytedance.msdk.core.setting.SettingsReceiver"), jx.hp, null);
            } catch (Throwable unused) {
            }
        }
    }

    private JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        List<String> listEb = eb();
        if (listEb != null) {
            for (String str : listEb) {
                com.byazt.gkj.j jVarHp = com.byazt.uhd.l.hp().hp(str);
                if (jVarHp != null) {
                    try {
                        jSONObject.put(str, jVarHp.getNetworkSdkVersion());
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        return jSONObject;
    }

    private static List<String> eb() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(MediationConstant.ADN_PANGLE);
        arrayList.add(MediationConstant.ADN_GDT);
        arrayList.add(MediationConstant.ADN_UNITY);
        arrayList.add("baidu");
        arrayList.add("sigmob");
        arrayList.add(MediationConstant.ADN_MINTEGRAL);
        arrayList.add(MediationConstant.ADN_KS);
        arrayList.add(MediationConstant.ADN_KLEVIN);
        arrayList.add(MediationConstant.ADN_XIAOMI);
        return arrayList;
    }

    private static void s() {
        if (s.u().nu() || com.byazt.di.l.getContext() == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setPackage(nu.hp());
        intent.setAction("com.bytedance.msdk.core.setting.SettingsReceiver");
        intent.putExtra("b_msg_id", 1);
        intent.putExtra("b_msg_process_name", b.l(com.byazt.di.l.getContext()));
        com.byazt.di.l.getContext().sendBroadcast(intent, jx.hp);
    }

    private boolean w() {
        long j2 = com.byazt.lto.hp.hp().getLong("max_expire_time", 0L);
        if (this.eb.get() && System.currentTimeMillis() > j2) {
            com.byazt.aw.l.l("SdkSettingsHelper", "setting 缓存过期，再次发起请求...");
            this.eb.set(false);
            hp();
        }
        return System.currentTimeMillis() > j2;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message.what != 1) {
            return;
        }
        int i2 = message.arg1;
        int i3 = message.arg2;
        if (i2 == 3) {
            this.f18515q.set(false);
        }
        com.byazt.aw.l.j("SdkSettingsHelper", "setting 发起尝试拉取配置请求... mLoadingSuccess:" + this.eb.get() + "tryCount:" + (i2 + 1));
        try {
            if (this.eb.get()) {
                return;
            }
            Object obj = message.obj;
            l(i3, obj instanceof JSONObject ? (JSONObject) obj : null);
        } catch (Throwable unused) {
        }
    }

    private String jx(JSONObject jSONObject) {
        JSONObject jSONObjectHp = nu.hp(jSONObject);
        if (jSONObjectHp != null) {
            return jSONObjectHp.toString();
        }
        return null;
    }

    public void l(int i2, JSONObject jSONObject) {
        ((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getDid();
        try {
            if (!w()) {
                com.byazt.aw.l.l("SdkSettingsHelper", "setting 缓存未过期，无需再次发起请求...");
            } else if (this.f18513a.get()) {
                com.byazt.aw.l.l("SdkSettingsHelper", "setting 正在加载，无需再次发起请求...");
            } else {
                com.byazt.aw.w.j(new hp(null, i2, jSONObject));
            }
        } catch (Throwable th) {
            com.byazt.aw.l.hp("SdkSettingsHelper", "load sdk settings error: ", th);
        }
    }

    public static l hp(com.byazt.bcj.hp hpVar) {
        if (f18512j == null) {
            synchronized (l.class) {
                try {
                    if (f18512j == null) {
                        f18512j = new l(hpVar);
                    }
                } finally {
                }
            }
        }
        return f18512j;
    }

    private JSONObject l(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("ts", System.currentTimeMillis());
            jSONObject2.put("media_sdk_version", com.byazt.rt.l.l());
            jSONObject2.put(PluginConstants.KEY_PLUGIN_VERSION, com.byazt.rt.l.j());
            jSONObject2.put("is_fusion", 1);
            jSONObject2.put("app_id", com.byazt.di.hp.jl().zy());
            jSONObject2.put("package_name", nu.hp());
            jSONObject2.put("app_version", nu.jx());
            jl jlVar = (jl) com.byazt.ym.j.getService("device_info_new");
            com.byazt.pg.jx jxVar = (com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog");
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("android_id", DeviceUtils.l());
            String strHp = DeviceUtils.hp((Boolean) null);
            jSONObject3.put("imei", strHp);
            jSONObject3.put("imei_md5", sz.hp(strHp));
            jSONObject3.put("oaid", jxVar.getOAID(false));
            jSONObject3.put("applog_did", jxVar.getDid());
            jSONObject3.put("publisher_did", com.byazt.di.hp.jl().vv());
            jSONObject3.put("conn_type", com.byazt.zn.ns.hp());
            jSONObject3.put(bv.f48923x, jlVar.getOs());
            jSONObject3.put(bv.f48924y, jlVar.getOsVersion());
            jSONObject3.put("vendor", jlVar.getVendor());
            jSONObject3.put("device_model", jlVar.getDeviceModel());
            jSONObject3.put("mcc", jlVar.getMcc());
            jSONObject3.put("mnc", jlVar.getMnc());
            jSONObject3.put("time_zone", jlVar.getTimeZone());
            jSONObject3.put("ip", ec.hp());
            jSONObject3.put("locale_language", jlVar.getLocalLanguage());
            jSONObject3.put("total_space", String.valueOf(ky.xs()));
            jSONObject3.put("carrier_name", jlVar.getCarrierName());
            jSONObject3.put(bv.f48883J, jlVar.getDeviceName());
            jSONObject3.put("pb", "");
            jSONObject3.put("boot", jlVar.getBoot());
            jSONObject3.put("country_code", com.byazt.di.l.l().jl());
            jSONObject3.put("total_mem", ky.jl());
            jSONObject3.put(bv.ac, jlVar.getDeviceModel());
            jSONObject3.put("language", jlVar.getLanguage());
            jSONObject3.put("android_os_version_int", Build.VERSION.SDK_INT);
            jSONObject2.put("device", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put(d.f11442a, com.byazt.di.hp.jl().jx());
            jSONObject2.put("app", jSONObject4);
            jSONObject2.put("grouping_params", hp(com.byazt.di.hp.jl().n()));
            JSONObject jSONObjectL = l(com.byazt.di.hp.jl().n());
            if (jSONObjectL != null) {
                jSONObject2.put("user_defined_grouping_params", jSONObjectL);
            }
            if (!com.byazt.di.hp.jl().eb()) {
                jSONObject2.put(f.f37325c, com.byazt.di.l.l().k());
            }
            if (a.hp(this.jx) != null) {
                jSONObject2.put("latitude", r1.hp);
                jSONObject2.put("longitude", r1.f28431l);
            }
            jSONObject2.put("adn_version_list", a());
            com.byazt.ney.w.j().hp(jSONObject2, jSONObject);
            com.byazt.ney.w.j().hp(jSONObject2);
            List<String> listO = com.byazt.di.hp.jl().o();
            if (listO != null && listO.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = listO.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                jSONObject2.put("primerit_list", jSONArray);
            }
            if (!zy.hp()) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("err_type", 1);
                jSONObject5.put("err_msg", "applog so加载失败");
                jSONObject2.put("monitor_alarm", jSONObject5);
            }
        } catch (Exception unused) {
        }
        return jSONObject2;
    }

    public l hp() {
        com.byazt.aw.l.j("SdkSettingsHelper", "setting resetRetryCount...");
        this.f18517w.set(0);
        this.f18515q.set(false);
        ud udVar = this.f18516s;
        if (udVar != null) {
            udVar.removeCallbacksAndMessages(null);
        }
        return this;
    }

    public void hp(int i2, JSONObject jSONObject) {
        try {
            if (this.f18513a.get()) {
                this.gu = i2;
                com.byazt.aw.l.l("SdkSettingsHelper", "setting 正在加载，无需再次发起请求...");
            } else {
                com.byazt.aw.w.j(new hp(null, i2, jSONObject));
            }
        } catch (Throwable th) {
            com.byazt.aw.l.hp("SdkSettingsHelper", "load sdk settings error: ", th);
        }
    }

    public void hp(int i2) {
        if (this.f18515q.get()) {
            com.byazt.aw.l.j("SdkSettingsHelper", "setting 正在尝试拉取配置中...");
            return;
        }
        com.byazt.aw.l.j("SdkSettingsHelper", "setting 尝试拉取配置...");
        hp();
        l(i2, null);
    }

    private void hp(w wVar, com.byazt.dq.hp hpVar, int i2, JSONObject jSONObject) throws Throwable {
        long j2;
        com.byazt.lto.hp.hp().remove("server_dist_host");
        hp(wVar, hpVar);
        com.byazt.fct.jx.a();
        com.byazt.aw.l.j("SdkSettingsHelper", "setting 配置拉取失败，尝试再次拉取... mLoadingSuccess:" + this.eb.get() + " mRetryCount:" + (this.f18517w.get() + 1));
        this.f18513a.set(false);
        if (this.eb.get()) {
            this.f18515q.set(false);
            this.f18516s.removeCallbacksAndMessages(null);
            return;
        }
        if (this.f18517w.get() > 3) {
            com.byazt.aw.l.j("SdkSettingsHelper", "setting 最多尝试四次拉取... ");
            return;
        }
        this.f18515q.set(true);
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.arg1 = this.f18517w.get();
        messageObtain.arg2 = i2;
        messageObtain.obj = jSONObject;
        int i3 = this.f18517w.get();
        if (i3 < 3) {
            long j3 = 1;
            for (int i4 = 0; i4 <= i3; i4++) {
                j3 *= 3;
            }
            j2 = j3 * 1000;
        } else {
            j2 = i.l.f2678c;
        }
        this.f18517w.incrementAndGet();
        this.f18516s.removeCallbacksAndMessages(null);
        this.f18516s.sendMessageDelayed(messageObtain, j2);
        com.byazt.aw.l.l("SdkSettingsHelper", "setting 重试次数:" + (i3 + 1) + "  重试间隔：" + j2);
    }

    private Map<String, String> hp(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        HashMap map2 = new HashMap();
        for (String str : map.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                map2.put(str.toLowerCase(), map.get(str));
            }
        }
        return map2;
    }

    private void hp(final w wVar, final com.byazt.dq.hp hpVar) {
        com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.bcj.l.1
            @Override // java.lang.Runnable
            public void run() {
            }
        });
    }

    public void hp(final w wVar) {
        int i2 = this.gu;
        if (i2 == 2 || i2 == 3) {
            this.gu = -1;
            hp(i2, (JSONObject) null);
        }
        if (wVar != null) {
            final List<String> listO = com.byazt.di.hp.jl().o();
            com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.bcj.l.2
                @Override // java.lang.Runnable
                public void run() {
                    wVar.hp(com.byazt.di.l.l().hp(listO));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(JSONObject jSONObject, String str, long j2) throws JSONException {
        try {
            jSONObject.put(str, SystemClock.elapsedRealtime() - j2);
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final boolean z2, final w wVar, final int i2, final JSONObject jSONObject) throws JSONException {
        com.byazt.aw.l.l("SdkSettingsHelper", "requestSetting requestType: ".concat(String.valueOf(i2)));
        final int[] iArr = {0};
        final int[] iArr2 = new int[1];
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        final JSONObject jSONObject2 = new JSONObject();
        Map<String, JSONObject> mapL = com.byazt.ney.w.j().l(i2);
        final JSONObject jSONObject3 = mapL.get("event_label_value_root");
        JSONObject jSONObject4 = mapL.get("config_req_label_value_root");
        com.byazt.ap.w wVarL = com.byazt.xr.l.hp().l().l();
        wVarL.hp(com.byazt.di.jx.hp());
        String strS = com.byazt.di.hp.jl().s();
        if (!TextUtils.isEmpty(strS)) {
            wVarL.l("X-Tt-Env", strS);
            wVarL.l("x-use-ppe", "1");
        }
        wVarL.l("User-Agent", com.byazt.rt.l.hp);
        try {
            JSONObject jSONObjectL = l(jSONObject4);
            hp(jSONObject2, "params", jElapsedRealtime);
            boolean zA = com.byazt.di.l.l().a();
            final boolean z3 = !zA;
            if (!zA) {
                wVarL.l("x-pglcypher", "4");
                wVarL.hp("application/octet-stream", nu.l(jSONObjectL.toString()));
                if (wVarL.w() != null && wVarL.w().f26222w != null) {
                    nu.hp(com.byazt.di.jx.hp(), wVarL.w().f26222w, true);
                }
            } else {
                wVarL.jx(jx(jSONObjectL));
                if (wVarL.w() != null && wVarL.w().f26220j != null) {
                    nu.hp(com.byazt.di.jx.hp(), wVarL.w().f26220j, true);
                }
            }
            hp(jSONObject2, "encrypt", jElapsedRealtime);
            wVarL.hp(new com.byazt.mnb.hp() { // from class: com.byazt.bcj.l.3
                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, final com.byazt.oyr.l lVar) throws JSONException {
                    l.this.hp(jSONObject2, TKDownloadReason.KSAD_TK_NET, jElapsedRealtime);
                    com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.bcj.l.3.1
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Removed duplicated region for block: B:80:0x025b  */
                        /* JADX WARN: Removed duplicated region for block: B:81:0x025e  */
                        /* JADX WARN: Type inference failed for: r16v0 */
                        /* JADX WARN: Type inference failed for: r16v1 */
                        /* JADX WARN: Type inference failed for: r16v14 */
                        /* JADX WARN: Type inference failed for: r16v15 */
                        /* JADX WARN: Type inference failed for: r16v16 */
                        /* JADX WARN: Type inference failed for: r16v2 */
                        /* JADX WARN: Type inference failed for: r3v10 */
                        /* JADX WARN: Type inference failed for: r3v11 */
                        /* JADX WARN: Type inference failed for: r3v13 */
                        /* JADX WARN: Type inference failed for: r3v15 */
                        /* JADX WARN: Type inference failed for: r3v17 */
                        /* JADX WARN: Type inference failed for: r3v22 */
                        /* JADX WARN: Type inference failed for: r3v23 */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public void run() throws org.json.JSONException {
                            /*
                                Method dump skipped, instructions count: 627
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.byazt.bcj.l.AnonymousClass3.AnonymousClass1.run():void");
                        }
                    });
                }

                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, final IOException iOException) {
                    com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.bcj.l.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            com.byazt.aw.l.j("SdkSettingsHelper", "----网络错误，服务器无响应，稍后会尝试重新拉取配置----，setting request failed..." + iOException.getMessage());
                            l.this.f18513a.set(false);
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            iArr[0] = 0;
                            iArr2[0] = -2;
                            l lVar = l.this;
                            w wVar2 = wVar;
                            int i3 = i2;
                            String str = "request fail：" + iOException.getMessage();
                            AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                            lVar.hp(wVar2, i3, -2, str, z3, jSONObject);
                            AnonymousClass3 anonymousClass33 = AnonymousClass3.this;
                            int i4 = iArr[0];
                            int i5 = iArr2[0];
                            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                            AnonymousClass3 anonymousClass34 = AnonymousClass3.this;
                            j.hp(i4, i5, jElapsedRealtime2 - jElapsedRealtime, z2, i2 == 0, jSONObject3, -1L, null);
                        }
                    });
                }
            });
        } catch (UnsatisfiedLinkError unused) {
            com.byazt.ky.hp.hp().hp(81017, "GM接口请求异常");
        }
    }

    private JSONObject l(PluginValueSet pluginValueSet) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (pluginValueSet != null) {
            try {
                com.byazt.bki.a aVarHp = com.byazt.owd.jx.hp(com.byazt.lz.hp.hp(pluginValueSet).xs());
                jSONObject.put("need_simple_req", 1);
                jSONObject.put("app_id", pluginValueSet.objectValue(261001, String.class));
                jSONObject.put("media_sdk_version", com.byazt.rt.l.l());
                jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, com.byazt.rt.l.j());
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(bv.f48923x, ((jl) com.byazt.ym.j.getService("device_info_new")).getOs());
                jSONObject2.put("android_id", DeviceUtils.l());
                jSONObject.put("device", jSONObject2);
                if (aVarHp != null) {
                    jSONObject.put("grouping_params", hp(aVarHp));
                    jSONObject.put("user_defined_grouping_params", l(aVarHp));
                }
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    public static JSONObject l(com.byazt.bki.a aVar) {
        Map<String, String> mapHp;
        JSONObject jSONObject = new JSONObject();
        if (aVar != null && (mapHp = aVar.hp()) != null) {
            try {
                for (String str : mapHp.keySet()) {
                    jSONObject.put(str, mapHp.get(str));
                }
                return jSONObject;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public void hp(PluginValueSet pluginValueSet, final JSONObject jSONObject) throws JSONException {
        hp(pluginValueSet);
        com.byazt.bcj.hp hpVar = this.f18514l;
        if (hpVar != null) {
            hpVar.hp();
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.byazt.lsx.a.l();
        com.byazt.ap.w wVarL = com.byazt.xr.l.hp().l().l();
        wVarL.hp(com.byazt.di.jx.hp());
        wVarL.l("User-Agent", com.byazt.rt.l.hp);
        try {
            JSONObject jSONObjectL = l(pluginValueSet);
            wVarL.l("x-pglcypher", "4");
            wVarL.hp("application/octet-stream", nu.l(jSONObjectL.toString()));
            wVarL.hp(new com.byazt.mnb.hp() { // from class: com.byazt.bcj.l.4
                /* JADX WARN: Removed duplicated region for block: B:20:0x005b  */
                @Override // com.byazt.mnb.hp
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void hp(com.byazt.ap.j r7, com.byazt.oyr.l r8) {
                    /*
                        r6 = this;
                        long r0 = java.lang.System.currentTimeMillis()
                        long r2 = r2
                        long r0 = r0 - r2
                        if (r8 != 0) goto Lb
                        goto L91
                    Lb:
                        boolean r7 = com.byazt.zg.nu.hp(r8)     // Catch: java.lang.Throwable -> L91
                        java.lang.String r2 = "message"
                        if (r7 == 0) goto L21
                        byte[] r7 = r8.gu()     // Catch: java.lang.Throwable -> L91
                        java.lang.String r7 = com.byazt.zg.nu.hp(r7)     // Catch: java.lang.Throwable -> L91
                        org.json.JSONObject r8 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L91
                        r8.<init>(r7)     // Catch: java.lang.Throwable -> L91
                        goto L5c
                    L21:
                        java.lang.String r7 = r8.w()     // Catch: java.lang.Throwable -> L91
                        boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L91
                        r3 = 0
                        if (r7 != 0) goto L5b
                        org.json.JSONObject r7 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L91
                        java.lang.String r8 = r8.w()     // Catch: java.lang.Throwable -> L91
                        r7.<init>(r8)     // Catch: java.lang.Throwable -> L91
                        java.lang.String r8 = "cypher"
                        r4 = -1
                        int r8 = r7.optInt(r8, r4)     // Catch: java.lang.Throwable -> L91
                        r4 = 4
                        if (r8 != r4) goto L5b
                        java.lang.String r7 = r7.optString(r2)     // Catch: java.lang.Throwable -> L91
                        com.byazt.pg.w r8 = com.byazt.zg.nu.a()     // Catch: java.lang.Throwable -> L91
                        if (r8 == 0) goto L4e
                        java.lang.String r7 = r8.decryptWithCBC(r7)     // Catch: java.lang.Throwable -> L91
                        goto L4f
                    L4e:
                        r7 = r3
                    L4f:
                        boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L91
                        if (r8 != 0) goto L5b
                        org.json.JSONObject r8 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L91
                        r8.<init>(r7)     // Catch: java.lang.Throwable -> L91
                        goto L5c
                    L5b:
                        r8 = r3
                    L5c:
                        if (r8 != 0) goto L5f
                        goto L91
                    L5f:
                        java.lang.String r7 = "state_code"
                        r3 = -80000(0xfffffffffffec780, float:NaN)
                        int r7 = r8.optInt(r7, r3)     // Catch: java.lang.Throwable -> L91
                        r3 = 20000(0x4e20, float:2.8026E-41)
                        if (r7 != r3) goto L7e
                        com.byazt.bcj.l r7 = com.byazt.bcj.l.this     // Catch: java.lang.Throwable -> L91
                        com.byazt.bcj.hp r7 = com.byazt.bcj.l.l(r7)     // Catch: java.lang.Throwable -> L91
                        org.json.JSONObject r2 = r4     // Catch: java.lang.Throwable -> L91
                        r3 = 1
                        r7.hp(r8, r2, r3)     // Catch: java.lang.Throwable -> L91
                        java.lang.String r7 = ""
                        com.byazt.lsx.a.hp(r0, r3, r7, r3)     // Catch: java.lang.Throwable -> L91
                        return
                    L7e:
                        com.byazt.bcj.l r3 = com.byazt.bcj.l.this     // Catch: java.lang.Throwable -> L91
                        com.byazt.bcj.hp r3 = com.byazt.bcj.l.l(r3)     // Catch: java.lang.Throwable -> L91
                        org.json.JSONObject r4 = r4     // Catch: java.lang.Throwable -> L91
                        r5 = 0
                        r3.hp(r8, r4, r5)     // Catch: java.lang.Throwable -> L91
                        java.lang.String r8 = r8.optString(r2)     // Catch: java.lang.Throwable -> L91
                        com.byazt.lsx.a.hp(r0, r5, r8, r7)     // Catch: java.lang.Throwable -> L91
                    L91:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.byazt.bcj.l.AnonymousClass4.hp(com.byazt.ap.j, com.byazt.oyr.l):void");
                }

                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, IOException iOException) {
                    com.byazt.lsx.a.hp(System.currentTimeMillis() - jCurrentTimeMillis, false, iOException.getMessage(), -2);
                }
            });
        } catch (UnsatisfiedLinkError unused) {
        }
    }

    public static JSONObject l() {
        JSONObject jSONObject = new JSONObject();
        List<String> listEb = eb();
        if (listEb != null) {
            for (String str : listEb) {
                com.byazt.gkj.j jVarHp = com.byazt.uhd.l.hp().hp(str);
                if (jVarHp != null) {
                    try {
                        String networkSdkVersion = jVarHp.getNetworkSdkVersion();
                        if (!TextUtils.isEmpty(networkSdkVersion)) {
                            jSONObject.put(str, networkSdkVersion);
                        }
                        String adapterVersion = jVarHp.getAdapterVersion();
                        if (!TextUtils.isEmpty(adapterVersion)) {
                            jSONObject.put(str + "Adapter", adapterVersion);
                        }
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        return jSONObject;
    }

    private void hp(PluginValueSet pluginValueSet) throws JSONException {
        String str = (String) pluginValueSet.objectValue(261001, String.class);
        com.byazt.di.hp.jl().jx(str);
        s.u().jx(str);
        SparseArray sparseArray = (SparseArray) pluginValueSet.objectValue(261012, SparseArray.class);
        if (sparseArray != null) {
            s.u().hp(new com.byazt.jt.j(sparseArray));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int[] iArr, int[] iArr2, com.byazt.oyr.l lVar, JSONObject jSONObject, String str, int[] iArr3, w wVar, JSONObject jSONObject2, int i2, boolean z2, long j2, JSONObject jSONObject3) throws JSONException {
        String str2;
        String str3;
        String str4;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j2;
        Map<String, String> mapHp = hp(lVar.j());
        if (mapHp != null) {
            str3 = mapHp.get("active-control");
            str4 = mapHp.get("ts");
            str2 = mapHp.get(t.f31277s);
        } else {
            str2 = null;
            str3 = null;
            str4 = null;
        }
        String strHp = sz.hp(str + str3 + str4);
        if (!TextUtils.isEmpty(strHp) && strHp.equalsIgnoreCase(str2)) {
            com.byazt.di.l.l().j(str3);
        }
        hp(jSONObject);
        int iOptInt = jSONObject.optInt("state_code", -80000);
        String strOptString = jSONObject.optString("message");
        if (iOptInt == 20000) {
            iArr[0] = 20000;
        }
        if (iOptInt == 30004) {
            iArr[0] = 30004;
            this.f18513a.set(false);
            this.f18515q.set(false);
            this.f18516s.removeCallbacksAndMessages(null);
            this.f18514l.hp(jSONObject);
            hp(wVar);
            com.byazt.fct.jx.w();
            hp(z2, jElapsedRealtime);
            return;
        }
        if (iOptInt == 20000 && !TextUtils.isEmpty(jSONObject.toString())) {
            iArr2[0] = 1;
            iArr[0] = 20000;
            String strW = lVar.w();
            if (strW != null) {
                iArr3[0] = strW.length();
            }
            this.f18515q.set(false);
            this.f18516s.removeCallbacksAndMessages(null);
            this.eb.set(true);
            this.f18514l.hp(jSONObject, false, false, jSONObject3);
            hp(jSONObject2, "parse_save", j2);
            this.f18513a.set(false);
            hp(wVar);
            com.byazt.fct.jx.w();
            if (com.byazt.di.hp.jl().k()) {
                s();
            }
            hp(z2, jElapsedRealtime);
            return;
        }
        if (iOptInt != -80000) {
            iArr[0] = iOptInt;
        }
        if (TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(jSONObject.optString("msg"))) {
            strOptString = jSONObject.optString("msg");
        }
        hp(wVar, i2, iArr[0], strOptString, z2, jSONObject3);
    }

    private void hp(boolean z2, long j2) {
        o.hp(z2 ? "v4Enc_config" : "v2Enc_config", true, j2, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(w wVar, int i2, int i3, String str, boolean z2, JSONObject jSONObject) {
        if (z2) {
            try {
                com.byazt.di.l.l().hp(true);
            } catch (Throwable unused) {
                return;
            }
        }
        o.hp(z2 ? "v4Enc_config" : "v2Enc_config", false, 0L, "code = " + i3 + "，msg = " + str);
        com.byazt.aw.l.j("SdkSettingsHelper", "----拉取配置失败: " + i3 + " msg = " + str);
        hp(wVar, new com.byazt.dq.hp(i3, str), i2, jSONObject);
        if (com.byazt.di.l.l().xh()) {
            return;
        }
        com.byazt.ky.hp.hp().hp(i3, "聚合config请求失败 code = " + i3 + " msg = " + str);
    }

    public static String hp(Throwable th) throws IOException {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            try {
                th.printStackTrace(printWriter);
                String string = stringWriter.toString();
                try {
                    stringWriter.close();
                } catch (IOException unused) {
                }
                printWriter.close();
                return string;
            } catch (IOException unused2) {
                printWriter.close();
                return null;
            }
        } catch (Exception unused3) {
            stringWriter.close();
            printWriter.close();
            return null;
        } catch (Throwable th2) {
            try {
                stringWriter.close();
            } catch (IOException unused4) {
            }
            printWriter.close();
            throw th2;
        }
    }

    private void hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.optBoolean("remote_log_enabled")) {
                com.byazt.aw.l.hp();
            }
        } catch (Throwable unused) {
        }
    }

    public static JSONObject hp(com.byazt.bki.a aVar) throws JSONException {
        String strL;
        JSONObject jSONObject = new JSONObject();
        if (aVar != null) {
            try {
                strL = aVar.l();
            } catch (JSONException unused) {
            }
        } else {
            strL = "";
        }
        jSONObject.put("user_id", strL);
        jSONObject.put("channel", aVar != null ? aVar.jx() : "");
        jSONObject.put("sub_channel", aVar != null ? aVar.j() : "");
        jSONObject.put(ATCustomRuleKeys.AGE, aVar != null ? aVar.w() : 0);
        jSONObject.put(ATCustomRuleKeys.GENDER, aVar != null ? aVar.a() : "");
        jSONObject.put("user_value_group", aVar != null ? aVar.eb() : "");
        return jSONObject;
    }
}
