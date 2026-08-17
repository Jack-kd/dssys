package com.byazt.jz;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.core.content.FileProvider;
import com.anythink.core.common.d.i;
import com.byazt.rz.PluginConstants;
import com.byazt.zn.DeviceUtils;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import kotlin.Result;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 40, 30})
/* loaded from: classes.dex */
public final class jx implements Function<SparseArray<Object>, Object> {
    public static final int VALUE_SET_AD_CONFIG_BUILDER_TIME = 25;
    public static final int VALUE_SET_BOOST_INIT_START_TIME = 27;
    public static final int VALUE_SET_PANGLE_CALL_INIT_TIME = 24;
    public static final int VALUE_SET_PANGLE_INIT_START_TIME = 1;

    /* renamed from: a, reason: collision with root package name */
    public static AtomicBoolean f21893a;
    public static int hp;

    /* renamed from: l, reason: collision with root package name */
    public static Boolean f21894l;
    public com.byazt.jq.hp eb;
    public final wv jx = new wv();

    /* renamed from: j, reason: collision with root package name */
    public volatile boolean f21895j = false;

    /* renamed from: w, reason: collision with root package name */
    public AtomicBoolean f21896w = new AtomicBoolean(false);

    public jx(Bundle bundle) {
        if (bundle == null || !bundle.containsKey(PluginConstants.KEY_PL_UPDATE_EVENT_LISTENER)) {
            return;
        }
        Serializable serializable = bundle.getSerializable(PluginConstants.KEY_PL_UPDATE_EVENT_LISTENER);
        if (serializable instanceof Function) {
            com.byazt.oo.jx.hp().hp((Function<SparseArray<Object>, Object>) serializable);
        }
    }

    public static boolean isDebug(com.byazt.jt.hp hpVar) {
        AtomicBoolean atomicBoolean = f21893a;
        if (atomicBoolean != null) {
            return atomicBoolean.get();
        }
        boolean z2 = hpVar.s() && com.byazt.zn.eb.hp();
        f21893a = new AtomicBoolean(z2);
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean j() {
        if (f21894l == null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                f21894l = Boolean.TRUE;
            } catch (Throwable unused) {
                f21894l = Boolean.FALSE;
            }
        }
        return f21894l.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int jx() {
        if (hp == 0) {
            try {
                try {
                    int i2 = FileProvider.f840b;
                    hp = 1;
                } catch (Throwable unused) {
                    hp = -1;
                }
            } catch (Throwable unused2) {
                int i3 = FileProvider.f840b;
                hp = 2;
            }
        }
        return hp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String w() {
        try {
            Class.forName("com.unity3d.player.UnityPlayer");
            try {
                Class.forName("com.bytedance.android.NativeAdManager");
                return MediationConstant.ADN_UNITY;
            } catch (Throwable unused) {
                return "unity_pure";
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public wv getManager() {
        return this.jx;
    }

    public Map<String, Object> getReuseServiceMap() {
        com.byazt.jq.hp hpVar = this.eb;
        if (hpVar == null) {
            return null;
        }
        return hpVar.hp();
    }

    public void init(final Context context, @ForbidWrapParam final PluginValueSet pluginValueSet, @ForbidWrapParam final com.byazt.hde.jx jxVar) throws ClassNotFoundException {
        long jElapsedRealtime;
        final long jLongValue;
        String name;
        int priority;
        try {
            try {
                jElapsedRealtime = pluginValueSet.longValue(1, SystemClock.elapsedRealtime());
                jLongValue = pluginValueSet.longValue(27, 0L);
            } catch (Exception unused) {
                jElapsedRealtime = SystemClock.elapsedRealtime();
                jLongValue = 0;
            }
            long jElapsedRealtime2 = jElapsedRealtime == 0 ? SystemClock.elapsedRealtime() : jElapsedRealtime;
            if (jLongValue <= 0) {
                jLongValue = jElapsedRealtime;
            }
            final ns nsVarHp = ns.hp("duration");
            final com.byazt.jt.hp hpVar = new com.byazt.jt.hp(pluginValueSet != null ? pluginValueSet.sparseArray() : new SparseArray<>());
            sz.hp(context);
            Thread threadCurrentThread = Thread.currentThread();
            try {
                name = pluginValueSet.stringValue(2, threadCurrentThread.getName());
            } catch (Exception unused2) {
                name = threadCurrentThread.getName();
            }
            final String str = name;
            try {
                priority = pluginValueSet.intValue(3, threadCurrentThread.getPriority());
            } catch (Exception unused3) {
                priority = threadCurrentThread.getPriority();
            }
            final int i2 = priority;
            l(pluginValueSet);
            if (this.f21895j) {
                hp(jxVar);
                return;
            }
            s.u().k();
            hp(hpVar, pluginValueSet);
            long jElapsedRealtime3 = SystemClock.elapsedRealtime();
            hp(pluginValueSet);
            nsVarHp.hp("init_thread_cost", SystemClock.elapsedRealtime() - jElapsedRealtime3);
            long jElapsedRealtime4 = SystemClock.elapsedRealtime();
            this.eb = new com.byazt.jq.hp(pluginValueSet);
            nsVarHp.hp("init_autoservice_cost", SystemClock.elapsedRealtime() - jElapsedRealtime4);
            final long jElapsedRealtime5 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
            nsVarHp.l("sync_cost");
            final long j2 = jElapsedRealtime2;
            ((com.byazt.pg.r) com.byazt.ym.j.getService("thread_service")).getScheduledThreadPool().execute(new Runnable() { // from class: com.byazt.jz.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    nsVarHp.l("async_wait_cost");
                    if (jx.this.hp(context, hpVar, jxVar, nsVarHp)) {
                        nsVarHp.l("async_done_cost");
                        long jElapsedRealtime6 = SystemClock.elapsedRealtime() - j2;
                        nsVarHp.hp();
                        long jElapsedRealtime7 = SystemClock.elapsedRealtime() - j2;
                        jx.this.hp(context, jElapsedRealtime5, SystemClock.elapsedRealtime() - jLongValue, jElapsedRealtime6, jElapsedRealtime7, nsVarHp, true, hpVar, str, i2, pluginValueSet, sz.l().el());
                    }
                }
            });
            com.byazt.eq.l.hp();
            com.byazt.uid.w.l(new com.byazt.uid.eb("init Async") { // from class: com.byazt.jz.jx.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (jx.this.f21896w.get()) {
                            return;
                        }
                        jx.this.f21896w.set(true);
                        a.hp();
                        DeviceUtils.jx();
                        com.byazt.lk.hp.hp(false);
                        com.byazt.tn.l.hp(context);
                        com.byazt.tn.l.hp();
                        com.byazt.as.hp.hp().registerReceiver(context);
                        com.byazt.mb.jx.jx().j();
                    } catch (Throwable unused4) {
                    }
                }
            });
            vv.hp = true;
        } catch (Throwable th) {
            hp(jxVar, th);
            hp(new com.byazt.jt.hp(pluginValueSet != null ? pluginValueSet.sparseArray() : new SparseArray<>()), this.f21895j);
        }
    }

    public boolean isInitSuccess() {
        return this.f21895j;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) throws ClassNotFoundException {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        switch (pluginValueSetL.intValue(-99999987)) {
            case -999002:
                return Boolean.valueOf(isInitSuccess());
            case -999001:
                init((Context) pluginValueSetL.objectValue(-998000, Context.class), pluginValueSetL, new com.byazt.hde.jx((Function) pluginValueSetL.objectValue(15, Function.class)));
                return null;
            case -999000:
                return this.jx;
            default:
                return null;
        }
    }

    private void l(@ForbidWrapParam PluginValueSet pluginValueSet) {
        try {
            Boolean bool = (Boolean) pluginValueSet.objectValue(14, Boolean.class);
            if (bool != null) {
                d.jx = bool.booleanValue();
            }
        } catch (Exception unused) {
        }
    }

    private static void hp(com.byazt.jt.hp hpVar, boolean z2) throws ClassNotFoundException {
        if (isDebug(hpVar)) {
            com.byazt.oz.jx.jx(1, z2 ? "1" : "0");
            hp(hpVar.gu());
            com.byazt.oz.jx.l(2, hpVar.hp());
            try {
                Thread.currentThread().getContextClassLoader().loadClass("com.bytedance.sdk.openadsdk.core.GlobalInfo");
                com.byazt.oz.jx.jx(2, "0");
            } catch (Exception unused) {
                com.byazt.oz.jx.jx(2, "1");
            }
            com.byazt.oz.jx.l(0, d.f21860w);
        }
    }

    private void l(@ForbidWrapParam com.byazt.jt.hp hpVar, @ForbidWrapParam PluginValueSet pluginValueSet) throws JSONException {
        if (hpVar == null) {
            return;
        }
        String strL = hpVar.l();
        if (strL == null || strL.isEmpty()) {
            strL = com.byazt.ij.hp.e();
        }
        s.u().hp((Function<SparseArray<Object>, Object>) pluginValueSet.objectValue(16, Function.class));
        s.u().j(strL);
        s.u().jx(hpVar.hp());
        s.u().jx(hpVar.jx());
        s.u().w(hpVar.j());
        s.u().a(hpVar.w());
        s.u().l(hpVar.a());
        s.u().w(hpVar.k());
        s.u().j(hpVar.eb());
        s.u().hp(hpVar.q());
        s.u().s(hpVar.u());
        s.u().hp(hpVar.gu());
        s.u().j(hpVar.zy());
        s.u().hp(hpVar.jl());
        if (isDebug(hpVar)) {
            com.byazt.ymw.u.l();
            com.byazt.oz.jx.l();
            com.byazt.nu.hp.hp(2);
        }
    }

    private static void hp(com.byazt.jt.j jVar) {
        String str;
        String strTrim;
        String strTrim2;
        if (jVar == null || jVar.isDefaultController()) {
            jVar = s.hp;
        }
        com.byazt.oz.jx.jx(19, jVar.isDefaultController() ? "1" : "0");
        com.byazt.oz.jx.jx(7, String.valueOf(jVar.isCanUseLocation() ? 1 : 0));
        com.byazt.jt.jx tTLocation = jVar.getTTLocation();
        String strTrim3 = "";
        if (tTLocation == null) {
            str = "";
        } else {
            str = tTLocation.hp() + "," + tTLocation.l();
        }
        com.byazt.oz.jx.jx(8, str);
        com.byazt.oz.jx.jx(9, String.valueOf(jVar.isCanUsePhoneState() ? 1 : 0));
        String devImei = jVar.getDevImei();
        if (devImei == null) {
            strTrim = "";
        } else {
            strTrim = devImei.trim();
        }
        com.byazt.oz.jx.jx(10, strTrim);
        com.byazt.oz.jx.jx(11, String.valueOf(jVar.isCanUseWifiState() ? 1 : 0));
        com.byazt.oz.jx.jx(12, String.valueOf(jVar.isCanUseWriteExternal() ? 1 : 0));
        com.byazt.oz.jx.jx(17, String.valueOf(jVar.alist() ? 1 : 0));
        com.byazt.oz.jx.jx(22, String.valueOf(jVar.isCanUseAndroidId() ? 1 : 0));
        if (d.f21856j >= 7000) {
            com.byazt.oz.jx.jx(24, String.valueOf(jVar.isCanUseMessage() ? 1 : 0));
        }
        String macAddress = jVar.getMacAddress();
        if (macAddress == null) {
            strTrim2 = "";
        } else {
            strTrim2 = macAddress.trim();
        }
        com.byazt.oz.jx.jx(18, strTrim2);
        try {
            if (jVar.getDevOaid() != null) {
                strTrim3 = jVar.getDevOaid().trim();
            }
            com.byazt.oz.jx.jx(13, strTrim3);
        } catch (Exception unused) {
            com.byazt.ymw.u.hp("Get oaid from controller failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(@ForbidWrapParam final Context context, final long j2, final long j3, final long j4, final long j5, final ns nsVar, final boolean z2, final com.byazt.jt.hp hpVar, final String str, final int i2, @ForbidWrapParam final PluginValueSet pluginValueSet, @ForbidWrapParam final com.byazt.jkd.eb ebVar) {
        vv.jx();
        if (sz.l().df()) {
            com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.jz.jx.6
                /* JADX WARN: Removed duplicated region for block: B:7:0x00b6  */
                @Override // com.byazt.fq.hp
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.byazt.jlb.hp hp() throws java.lang.Exception {
                    /*
                        Method dump skipped, instructions count: 448
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.byazt.jz.jx.AnonymousClass6.hp():com.byazt.jlb.hp");
                }
            }, "pangle_sdk_init");
        }
    }

    private void hp(@ForbidWrapParam com.byazt.hde.jx jxVar, Throwable th) {
        if (jxVar != null) {
            message = th != null ? th.getMessage() : null;
            if (message == null) {
                message = "init error";
            }
            jxVar.hp(1, com.byazt.wi.w.hp().hp(false).hp(TTAdConstant.INIT_LOCAL_FAIL_CODE).hp(message).l());
            com.byazt.ymw.u.hp("TTAdSdk", " init fail, msg = ", message);
        }
        if (d.f21856j < 7300) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("message", message);
                Boolean bool = Boolean.TRUE;
                jSONObject.putOpt("is_plugin", bool);
                jSONObject.putOpt("api", bool);
                jSONObject.putOpt("install_version", 7643);
                jSONObject.putOpt("code", Integer.valueOf(TTAdConstant.INIT_LOCAL_FAIL_CODE));
                com.byazt.lf.k.hp().hp("init", jSONObject, th);
            } catch (Throwable unused) {
            }
        }
        this.f21895j = false;
    }

    private void hp(@ForbidWrapParam PluginValueSet pluginValueSet) {
        try {
            com.byazt.nnr.hp.hp();
        } catch (Exception unused) {
        }
    }

    private void hp(com.byazt.hde.jx jxVar) {
        com.byazt.lca.hp.hp();
        if (jxVar != null) {
            ThreadPoolExecutor threadPoolExecutorQ = com.byazt.uid.q.f26242l.q();
            com.byazt.wi.w wVarHp = com.byazt.wi.w.hp().hp(true);
            com.byazt.wi.j jVarHp = com.byazt.wi.j.hp().hp(20, threadPoolExecutorQ);
            if (d.f21856j < 7500) {
                jVarHp.hp(23, getReuseServiceMap());
            }
            jxVar.hp(8001, wVarHp.hp(jVarHp.l()).l());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(@ForbidWrapParam Context context, @ForbidWrapParam com.byazt.jt.hp hpVar, @ForbidWrapParam com.byazt.hde.jx jxVar, ns nsVar) throws ClassNotFoundException {
        if (this.f21895j) {
            hp(jxVar);
            return false;
        }
        try {
        } catch (Throwable th) {
            hp(jxVar, th);
        }
        if (com.byazt.wu.hp.jx()) {
            hp(jxVar, new Exception("load maparmor fail"));
            return false;
        }
        hp(context, hpVar, nsVar);
        this.f21895j = true;
        hp(hpVar);
        hp(context, hpVar);
        nsVar.l("async_init_cost");
        com.byazt.pg.w wVarL = com.byazt.zn.b.l();
        if (wVarL != null) {
            wVarL.initPglCryptUtils();
        }
        nsVar.l("armor_load_cost");
        com.byazt.ymw.u.l("TTAdSdk", "Init done finish: 7643");
        hp(jxVar);
        hp(hpVar, this.f21895j);
        return true;
    }

    private void hp(@ForbidWrapParam com.byazt.jt.hp hpVar) {
        if (s.u().rz()) {
            com.byazt.gq.l.hp(hpVar);
        }
    }

    private void hp(@ForbidWrapParam Context context, @ForbidWrapParam com.byazt.jt.hp hpVar, ns nsVar) {
        try {
            if (isDebug(hpVar)) {
                com.byazt.zn.xs.hp();
                com.byazt.qm.l.hp();
                com.byazt.oyr.hp.hp();
                com.byazt.oz.jx.l();
            }
        } catch (Throwable unused) {
        }
        nsVar.l("debug_set_cost");
        com.byazt.ton.j.hp(context);
        nsVar.l("web_dir_cost");
        com.byazt.aq.hp.hp((ThreadPoolExecutor) com.byazt.uid.w.hp());
        nsVar.l("thread_pool_cost");
        com.byazt.fw.l.hp(hpVar.e());
        if (hpVar.e()) {
            com.byazt.ton.l.hp(hpVar.hp());
            s.u().dy();
        } else {
            com.byazt.ton.l.l(hpVar.hp());
        }
        nsVar.l("multi_cost");
        com.byazt.fw.l.hp(context, null);
        com.byazt.fx.hp.hp(context);
        nsVar.l("video_config_cost");
        vv.w();
        nsVar.l("dyna_init_cost");
        com.byazt.zn.b.jx();
        nsVar.l("armor_init_cost");
    }

    private void hp(@ForbidWrapParam com.byazt.jt.hp hpVar, @ForbidWrapParam PluginValueSet pluginValueSet) throws JSONException {
        l(hpVar, pluginValueSet);
        vv.j();
        com.byazt.lf.l.l();
        try {
            com.byazt.la.w.hp();
        } catch (Throwable unused) {
        }
        if (hpVar.e()) {
            com.byazt.zn.nu.hp();
        }
        com.byazt.lca.jx.hp().hp(hpVar.e());
    }

    private void hp(@ForbidWrapParam final Context context, @ForbidWrapParam final com.byazt.jt.hp hpVar) {
        com.byazt.uid.w.hp(new com.byazt.uid.eb("init sync") { // from class: com.byazt.jz.jx.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.byazt.ff.q.j();
                    com.byazt.jkd.gu guVarL = sz.l();
                    if (!guVarL.ai()) {
                        synchronized (guVarL) {
                            try {
                                if (!guVarL.ai()) {
                                    guVarL.hp();
                                }
                            } finally {
                            }
                        }
                    }
                    jx.this.hp(hpVar.e(), context, true, 10000L);
                    com.byazt.ymw.e.hp().postDelayed(new Runnable() { // from class: com.byazt.jz.jx.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (s.u().nu()) {
                                return;
                            }
                            com.byazt.tn.l.hp(hpVar.hp());
                        }
                    }, i.l.f2678c);
                    com.byazt.fw.l.hp(com.byazt.cm.w.hp().l().a());
                    com.byazt.lf.l.hp(context, hpVar.e());
                    com.byazt.ff.l.hp();
                    nu.jx();
                    com.byazt.vbz.w.hp();
                    com.byazt.fx.hp.hp(com.byazt.dnb.gu.hp(0));
                    if (guVarL.sz()) {
                        final com.byazt.um.hp hpVarHp = com.byazt.dnb.gu.hp(1);
                        com.byazt.uid.w.l(new com.byazt.uid.eb("preloadTTVideo") { // from class: com.byazt.jz.jx.3.2
                            @Override // java.lang.Runnable
                            public void run() {
                                com.byazt.cwe.l.hp().preloadTTVideo(context, hpVarHp.getOtherCacheDir(), 52428800, com.byazt.dnb.gu.l(), com.byazt.dnb.gu.jx(), jx.isDebug(hpVar));
                            }
                        });
                    }
                    DeviceUtils.eb();
                    vv.hp(context);
                    com.byazt.jde.l.hp();
                    com.byazt.eq.l.jx(context);
                    com.byazt.qg.j.hp(context);
                    if (Build.VERSION.SDK_INT >= 29) {
                        try {
                            com.byazt.ymw.ns.hp();
                        } catch (Exception unused) {
                        }
                    }
                    com.byazt.zn.gu.hp();
                    com.byazt.zn.eb.hp(hpVar);
                    com.byazt.zn.b.hp();
                    com.byazt.xy.hp.hp().hp(context);
                    com.byazt.zn.r.hp();
                    com.byazt.hwo.j.hp(hpVar.hp());
                    com.byazt.ij.w.hp().l();
                    com.byazt.wv.hp.hp(context, hpVar.hp(), guVarL);
                    s.u().jx().hp(com.byazt.rk.w.f25226j);
                    com.byazt.rk.w.hp(1);
                } catch (Throwable unused2) {
                }
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final boolean z2, @ForbidWrapParam final Context context, final boolean z3, long j2) {
        com.byazt.ymw.e.hp().postDelayed(new Runnable() { // from class: com.byazt.jz.jx.4
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.yx.l.hp();
                if (!z2 || com.byazt.ymw.sz.hp(context)) {
                    com.byazt.jkd.s.hp(sz.l()).j();
                }
                if (z3) {
                    com.byazt.lf.l.j();
                }
            }
        }, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(@ForbidWrapParam final Context context, final long j2, final long j3, final long j4, final long j5, final ns nsVar, final boolean z2, final com.byazt.jt.hp hpVar, final String str, final int i2, @ForbidWrapParam final PluginValueSet pluginValueSet, @ForbidWrapParam final com.byazt.jkd.eb ebVar) {
        com.byazt.ymw.e.hp().postDelayed(new Runnable() { // from class: com.byazt.jz.jx.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    jx.this.l(context, j2, j3, j4, j5, nsVar, z2, hpVar, str, i2, pluginValueSet, ebVar);
                } catch (Throwable unused) {
                }
            }
        }, 5000L);
    }
}
