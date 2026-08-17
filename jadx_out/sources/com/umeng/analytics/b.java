package com.umeng.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.ab;
import com.umeng.analytics.pro.g;
import com.umeng.analytics.pro.l;
import com.umeng.analytics.pro.m;
import com.umeng.analytics.pro.n;
import com.umeng.analytics.pro.o;
import com.umeng.analytics.pro.p;
import com.umeng.analytics.pro.q;
import com.umeng.analytics.pro.r;
import com.umeng.analytics.pro.s;
import com.umeng.analytics.pro.v;
import com.umeng.analytics.pro.w;
import com.umeng.analytics.pro.x;
import com.umeng.analytics.pro.y;
import com.umeng.common.ISysListener;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.commonsdk.utils.d;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class b implements q, w {

    /* renamed from: A, reason: collision with root package name */
    private static final String f48582A = "umsp_2";

    /* renamed from: B, reason: collision with root package name */
    private static final String f48583B = "umsp_3";

    /* renamed from: C, reason: collision with root package name */
    private static final String f48584C = "umsp_4";

    /* renamed from: D, reason: collision with root package name */
    private static final String f48585D = "umsp_5";

    /* renamed from: a, reason: collision with root package name */
    private static Context f48586a = null;

    /* renamed from: h, reason: collision with root package name */
    private static final String f48587h = "sp_uapp";

    /* renamed from: i, reason: collision with root package name */
    private static final String f48588i = "prepp_uapp";

    /* renamed from: o, reason: collision with root package name */
    private static final int f48589o = 128;

    /* renamed from: p, reason: collision with root package name */
    private static final int f48590p = 256;

    /* renamed from: q, reason: collision with root package name */
    private static String f48591q = "";

    /* renamed from: r, reason: collision with root package name */
    private static String f48592r = "";

    /* renamed from: t, reason: collision with root package name */
    private static final String f48594t = "ekv_bl_ver";

    /* renamed from: w, reason: collision with root package name */
    private static final String f48596w = "ekv_wl_ver";

    /* renamed from: z, reason: collision with root package name */
    private static final String f48597z = "umsp_1";

    /* renamed from: b, reason: collision with root package name */
    private ISysListener f48598b;

    /* renamed from: c, reason: collision with root package name */
    private s f48599c;

    /* renamed from: d, reason: collision with root package name */
    private y f48600d;

    /* renamed from: e, reason: collision with root package name */
    private n f48601e;

    /* renamed from: f, reason: collision with root package name */
    private x f48602f;

    /* renamed from: g, reason: collision with root package name */
    private o f48603g;

    /* renamed from: j, reason: collision with root package name */
    private boolean f48604j;

    /* renamed from: k, reason: collision with root package name */
    private volatile JSONObject f48605k;

    /* renamed from: l, reason: collision with root package name */
    private volatile JSONObject f48606l;

    /* renamed from: m, reason: collision with root package name */
    private volatile JSONObject f48607m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f48608n;

    /* renamed from: u, reason: collision with root package name */
    private com.umeng.analytics.filter.a f48609u;

    /* renamed from: x, reason: collision with root package name */
    private com.umeng.analytics.filter.b f48610x;

    /* renamed from: y, reason: collision with root package name */
    private p f48611y;

    /* renamed from: s, reason: collision with root package name */
    private static final String f48593s = g.ar;

    /* renamed from: v, reason: collision with root package name */
    private static final String f48595v = g.as;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final b f48612a = new b();

        private a() {
        }
    }

    static {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            f48586a = appContext.getApplicationContext();
        }
    }

    public static b a() {
        return a.f48612a;
    }

    private void i(Context context) {
        try {
            if (context == null) {
                MLog.e("unexpected null context in getNativeSuperProperties");
                return;
            }
            if (f48586a == null) {
                f48586a = context.getApplicationContext();
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (this.f48605k == null) {
                this.f48605k = new JSONObject();
            }
            if (this.f48606l == null) {
                this.f48606l = new JSONObject();
            }
            String string = sharedPreferences.getString(f48588i, null);
            if (!TextUtils.isEmpty(string)) {
                try {
                    this.f48607m = new JSONObject(string);
                } catch (JSONException unused) {
                }
            }
            if (this.f48607m == null) {
                this.f48607m = new JSONObject();
            }
        } catch (Throwable unused2) {
        }
    }

    public JSONObject b() {
        return this.f48605k;
    }

    public JSONObject c() {
        return this.f48607m;
    }

    public JSONObject d() {
        return this.f48606l;
    }

    public void e() {
        this.f48606l = null;
    }

    public String f() {
        if (UMUtils.isMainProgress(f48586a)) {
            return f48591q;
        }
        MLog.e("getOnResumedActivityName can not be called in child process");
        return null;
    }

    public String g() {
        if (UMUtils.isMainProgress(f48586a)) {
            return f48592r;
        }
        MLog.e("getOnPausedActivityName can not be called in child process");
        return null;
    }

    public void h() {
        try {
            Context context = f48586a;
            if (context != null) {
                if (!UMUtils.isMainProgress(context)) {
                    MLog.e("onStartSessionInternal can not be called in child process");
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                Context context2 = f48586a;
                UMWorkDispatch.sendEvent(context2, r.a.f49630k, CoreProtocol.getInstance(context2), Long.valueOf(jCurrentTimeMillis));
                Context context3 = f48586a;
                UMWorkDispatch.sendEvent(context3, r.a.f49626g, CoreProtocol.getInstance(context3), Long.valueOf(jCurrentTimeMillis));
            }
            ISysListener iSysListener = this.f48598b;
            if (iSysListener != null) {
                iSysListener.onAppResume();
            }
        } catch (Throwable unused) {
        }
    }

    public void j() {
        try {
            Context context = f48586a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("onProfileSignOff can not be called in child process");
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", jCurrentTimeMillis);
            Context context2 = f48586a;
            UMWorkDispatch.sendEvent(context2, r.a.f49625f, CoreProtocol.getInstance(context2), jSONObject);
            Context context3 = f48586a;
            UMWorkDispatch.sendEvent(context3, r.a.f49634o, CoreProtocol.getInstance(context3), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    public synchronized void k() {
        Context context;
        try {
            context = f48586a;
        } catch (Throwable unused) {
        }
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("unregisterSuperPropertyByCoreProtocol can not be called in child process");
            return;
        }
        if (this.f48605k != null) {
            SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(f48586a).edit();
            editorEdit.putString(f48587h, this.f48605k.toString());
            editorEdit.commit();
        } else {
            this.f48605k = new JSONObject();
        }
    }

    public synchronized JSONObject l() {
        Context context;
        try {
            context = f48586a;
        } catch (Throwable unused) {
        }
        if (context == null) {
            return null;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("getSuperPropertiesJSONObject can not be called in child process");
            return null;
        }
        if (this.f48605k == null) {
            this.f48605k = new JSONObject();
        }
        return this.f48605k;
    }

    public synchronized void m() {
        try {
            Context context = f48586a;
            if (context != null) {
                if (!UMUtils.isMainProgress(context)) {
                    MLog.e("clearSuperPropertiesByCoreProtocol can not be called in child process");
                } else {
                    SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(f48586a).edit();
                    editorEdit.remove(f48587h);
                    editorEdit.commit();
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.umeng.analytics.pro.q
    public void n() {
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onIntoBackground triggered.");
        if (AnalyticsConfig.enable && FieldManager.b()) {
            if (!FieldManager.allow(d.f50468D)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 退出发送策略: 云控控制字关闭。功能不生效");
            } else {
                if (UMWorkDispatch.eventHasExist(r.a.f49614B)) {
                    return;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 退出时发送策略 被触发！");
                Context context = f48586a;
                UMWorkDispatch.sendEvent(context, r.a.f49614B, CoreProtocol.getInstance(context), null);
            }
        }
    }

    private b() {
        this.f48599c = new s();
        this.f48600d = new y();
        this.f48601e = new n();
        this.f48602f = x.a();
        this.f48603g = null;
        this.f48604j = false;
        this.f48605k = null;
        this.f48606l = null;
        this.f48607m = null;
        this.f48608n = false;
        this.f48609u = null;
        this.f48610x = null;
        this.f48611y = null;
        this.f48599c.a(this);
    }

    private boolean e(String str) {
        if (this.f48609u.enabled() && this.f48609u.matchHit(str)) {
            return true;
        }
        if (!this.f48610x.enabled()) {
            return false;
        }
        if (!this.f48610x.matchHit(str)) {
            return true;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> white list match! id = " + str);
        return false;
    }

    public void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (f48586a == null) {
                f48586a = context.getApplicationContext();
            }
            if (this.f48609u == null) {
                com.umeng.analytics.filter.a aVar = new com.umeng.analytics.filter.a(f48593s, "ekv_bl_ver");
                this.f48609u = aVar;
                aVar.register(f48586a);
            }
            if (this.f48610x == null) {
                com.umeng.analytics.filter.b bVar = new com.umeng.analytics.filter.b(f48595v, "ekv_wl_ver");
                this.f48610x = bVar;
                bVar.register(f48586a);
            }
            if (UMUtils.isMainProgress(f48586a)) {
                if (!this.f48604j) {
                    this.f48604j = true;
                    i(f48586a);
                }
                synchronized (this) {
                    try {
                        if (!this.f48608n) {
                            o oVarA = o.a(context);
                            this.f48603g = oVarA;
                            if (oVarA.a()) {
                                this.f48608n = true;
                            }
                            this.f48611y = p.a();
                            try {
                                p.a(context);
                                this.f48611y.a(this);
                            } catch (Throwable unused) {
                            }
                        }
                    } finally {
                    }
                }
                if (UMConfigure.isDebugLog()) {
                    UMLog.mutlInfo(m.f49462B, 3, "", null, null);
                }
                UMWorkDispatch.registerConnStateObserver(CoreProtocol.getInstance(f48586a));
            }
        } catch (Throwable unused2) {
        }
    }

    public void b(String str) {
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("onPageEnd can not be called in child process");
            return;
        }
        try {
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_AUTO) {
                this.f48600d.b(str);
            }
        } catch (Throwable unused) {
        }
    }

    public void c(Context context) {
        if (context == null) {
            UMLog.aq(m.f49502p, 0, "\\|");
            return;
        }
        if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("onPause can not be called in child process");
            return;
        }
        if (UMConfigure.isDebugLog() && !(context instanceof Activity)) {
            UMLog.aq(m.f49503q, 2, "\\|");
        }
        try {
            if (!this.f48604j || !this.f48608n) {
                a(context);
            }
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_MANUAL) {
                this.f48601e.b(context.getClass().getName());
            }
            i();
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e("Exception occurred in Mobclick.onRause(). ", th);
            }
        }
        if (UMConfigure.isDebugLog() && (context instanceof Activity)) {
            f48592r = context.getClass().getName();
        }
    }

    public void d(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (f48586a == null) {
                f48586a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f48586a)) {
                MLog.e("onKillProcess can not be called in child process");
                return;
            }
            o oVar = this.f48603g;
            if (oVar != null) {
                oVar.e();
            }
            o.a(context, "onKillProcess");
            n nVar = this.f48601e;
            if (nVar != null) {
                nVar.b();
            }
            y yVar = this.f48600d;
            if (yVar != null) {
                yVar.b();
            }
            Context context2 = f48586a;
            if (context2 != null) {
                x xVar = this.f48602f;
                if (xVar != null) {
                    xVar.c(context2, Long.valueOf(System.currentTimeMillis()));
                }
                r.a(f48586a).d();
                y.a(f48586a);
                if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
                    o.c(f48586a);
                }
                PreferenceWrapper.getDefault(f48586a).edit().commit();
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized void f(Context context) {
        if (context == null) {
            UMLog.aq(m.ah, 0, "\\|");
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("clearSuperProperties can not be called in child process");
            return;
        }
        if (!this.f48604j || !this.f48608n) {
            a(f48586a);
        }
        this.f48605k = new JSONObject();
        Context context2 = f48586a;
        UMWorkDispatch.sendEvent(context2, r.a.f49640u, CoreProtocol.getInstance(context2), null);
    }

    public synchronized void g(Context context) {
        if (context == null) {
            UMLog.aq(m.ap, 0, "\\|");
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("clearPreProperties can not be called in child process");
            return;
        }
        if (!this.f48604j || !this.f48608n) {
            a(f48586a);
        }
        if (this.f48607m.length() > 0) {
            Context context2 = f48586a;
            UMWorkDispatch.sendEvent(context2, r.a.f49644y, CoreProtocol.getInstance(context2), null);
        }
        this.f48607m = new JSONObject();
    }

    public void b(Context context) {
        if (context == null) {
            MLog.e("unexpected null context in onResume");
            return;
        }
        if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("onResume can not be called in child process");
            return;
        }
        if (UMConfigure.isDebugLog() && !(context instanceof Activity)) {
            UMLog.aq(m.f49501o, 2, "\\|");
        }
        try {
            if (!this.f48604j || !this.f48608n) {
                a(context);
            }
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_MANUAL) {
                this.f48601e.a(context.getClass().getName());
            }
            h();
            if (UMConfigure.isDebugLog() && (context instanceof Activity)) {
                f48591q = context.getClass().getName();
            }
        } catch (Throwable th) {
            MLog.e("Exception occurred in Mobclick.onResume(). ", th);
        }
    }

    public synchronized Object e(Context context, String str) {
        if (context == null) {
            UMLog.aq(m.ai, 0, "\\|");
            return null;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("getSuperProperty can not be called in child process");
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            UMLog.aq(m.ag, 0, "\\|");
            return null;
        }
        if (!str.equals(f48597z) && !str.equals(f48582A) && !str.equals(f48583B) && !str.equals(f48584C) && !str.equals(f48585D)) {
            MLog.e("please check key or value, must be correct!");
            return null;
        }
        if (this.f48605k != null) {
            if (this.f48605k.has(str)) {
                return this.f48605k.opt(str);
            }
        } else {
            this.f48605k = new JSONObject();
        }
        return null;
    }

    public synchronized JSONObject h(Context context) {
        if (context == null) {
            UMLog.aq(m.aq, 0, "\\|");
            return null;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("getPreProperties can not be called in child process");
            return null;
        }
        if (!this.f48604j || !this.f48608n) {
            a(f48586a);
        }
        if (this.f48607m == null) {
            this.f48607m = new JSONObject();
        }
        JSONObject jSONObject = new JSONObject();
        if (this.f48607m.length() > 0) {
            try {
                jSONObject = new JSONObject(this.f48607m.toString());
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    public void i() {
        try {
            Context context = f48586a;
            if (context != null) {
                if (!UMUtils.isMainProgress(context)) {
                    MLog.e("onEndSessionInternal can not be called in child process");
                    return;
                }
                Context context2 = f48586a;
                UMWorkDispatch.sendEvent(context2, r.a.f49627h, CoreProtocol.getInstance(context2), Long.valueOf(System.currentTimeMillis()));
                Context context3 = f48586a;
                UMWorkDispatch.sendEvent(context3, 4100, CoreProtocol.getInstance(context3), null);
                Context context4 = f48586a;
                UMWorkDispatch.sendEvent(context4, 4099, CoreProtocol.getInstance(context4), null);
                Context context5 = f48586a;
                UMWorkDispatch.sendEvent(context5, r.a.f49628i, CoreProtocol.getInstance(context5), null);
            }
        } catch (Throwable unused) {
        }
        ISysListener iSysListener = this.f48598b;
        if (iSysListener != null) {
            iSysListener.onAppPause();
        }
    }

    public synchronized void f(Context context, String str) {
        if (context == null) {
            UMLog.aq(m.an, 0, "\\|");
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("unregisterPreProperty can not be called in child process");
            return;
        }
        if (!this.f48604j || !this.f48608n) {
            a(f48586a);
        }
        if (this.f48607m == null) {
            this.f48607m = new JSONObject();
        }
        if (str != null && str.length() > 0) {
            if (this.f48607m.has(str)) {
                this.f48607m.remove(str);
                Context context2 = f48586a;
                UMWorkDispatch.sendEvent(context2, r.a.f49643x, CoreProtocol.getInstance(context2), this.f48607m.toString());
            } else if (UMConfigure.isDebugLog()) {
                UMLog.aq(m.ao, 0, "\\|");
            }
            return;
        }
        MLog.e("please check propertics, property is null!");
    }

    private boolean g(String str) {
        if (str != null) {
            try {
                int length = str.trim().getBytes().length;
                if (length >= 0 && length < 256) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        MLog.e("The length of profile value must be less than 256 bytes.");
        return false;
    }

    public synchronized void d(Context context, String str) {
        try {
        } finally {
        }
        if (context == null) {
            UMLog.aq(m.ah, 0, "\\|");
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("unregisterSuperProperty can not be called in child process");
            return;
        }
        if (!this.f48604j || !this.f48608n) {
            a(f48586a);
        }
        if (TextUtils.isEmpty(str)) {
            UMLog.aq(m.ag, 0, "\\|");
            return;
        }
        if (!str.equals(f48597z) && !str.equals(f48582A) && !str.equals(f48583B) && !str.equals(f48584C) && !str.equals(f48585D)) {
            MLog.e("please check key or value, must be correct!");
            return;
        }
        if (this.f48605k == null) {
            this.f48605k = new JSONObject();
        }
        if (this.f48605k.has(str)) {
            this.f48605k.remove(str);
            Context context2 = f48586a;
            UMWorkDispatch.sendEvent(context2, 8197, CoreProtocol.getInstance(context2), str);
        }
    }

    public void c(Context context, String str) {
        if (context == null) {
            UMLog.aq(m.f49512z, 0, "\\|");
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("setSecret can not be called in child process");
            return;
        }
        if (!this.f48604j || !this.f48608n) {
            a(f48586a);
        }
        AnalyticsConfig.a(f48586a, str);
    }

    public void b(Context context, String str) {
        try {
            if (context == null) {
                UMLog.aq(m.f49474N, 0, "\\|");
                return;
            }
            if (f48586a == null) {
                f48586a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f48586a)) {
                MLog.e("onDeepLinkReceived can not be called in child process");
                return;
            }
            if (!this.f48604j || !this.f48608n) {
                a(f48586a);
            }
            if (TextUtils.isEmpty(str)) {
                UMLog.aq(m.f49475O, 0, "\\|");
                return;
            }
            HashMap map = new HashMap();
            map.put(g.aK, str);
            a(f48586a, g.aJ, (Map<String, Object>) map, -1L, false);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public void a(String str) {
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("onPageStart can not be called in child process");
            return;
        }
        try {
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_AUTO) {
                this.f48600d.a(str);
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized String e(Context context) {
        if (context == null) {
            UMLog.aq(m.ai, 0, "\\|");
            return null;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("getSuperProperties can not be called in child process");
            return null;
        }
        if (this.f48605k != null) {
            return this.f48605k.toString();
        }
        this.f48605k = new JSONObject();
        return null;
    }

    private boolean c(String str, Object obj) {
        int length;
        if (TextUtils.isEmpty(str)) {
            MLog.e("key is " + str + ", please check key, illegal");
            return false;
        }
        try {
            length = str.getBytes("UTF-8").length;
        } catch (UnsupportedEncodingException unused) {
            length = 0;
        }
        if (length > 128) {
            MLog.e("key length is " + length + ", please check key, illegal");
            return false;
        }
        if (obj instanceof String) {
            if (((String) obj).getBytes("UTF-8").length <= 256) {
                return true;
            }
            MLog.e("value length is " + ((String) obj).getBytes("UTF-8").length + ", please check value, illegal");
            return false;
        }
        if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof Float)) {
            return true;
        }
        MLog.e("value is " + obj + ", please check value, type illegal");
        return false;
    }

    public void a(ISysListener iSysListener) {
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("setSysListener can not be called in child process");
        } else {
            this.f48598b = iSysListener;
        }
    }

    public void a(Context context, int i2) {
        if (context == null) {
            MLog.e("unexpected null context in setVerticalType");
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("setVerticalType can not be called in child process");
            return;
        }
        if (!this.f48604j || !this.f48608n) {
            a(f48586a);
        }
        AnalyticsConfig.a(f48586a, i2);
    }

    private void b(String str, Object obj) {
        try {
            if (this.f48605k == null) {
                this.f48605k = new JSONObject();
            }
            int i2 = 0;
            if (obj.getClass().isArray()) {
                if (obj instanceof String[]) {
                    String[] strArr = (String[]) obj;
                    if (strArr.length > 10) {
                        return;
                    }
                    JSONArray jSONArray = new JSONArray();
                    while (i2 < strArr.length) {
                        String str2 = strArr[i2];
                        if (str2 != null && !HelperUtils.checkStrLen(str2, 256)) {
                            jSONArray.put(strArr[i2]);
                        }
                        i2++;
                    }
                    this.f48605k.put(str, jSONArray);
                    return;
                }
                if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    JSONArray jSONArray2 = new JSONArray();
                    while (i2 < jArr.length) {
                        jSONArray2.put(jArr[i2]);
                        i2++;
                    }
                    this.f48605k.put(str, jSONArray2);
                    return;
                }
                if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    JSONArray jSONArray3 = new JSONArray();
                    while (i2 < iArr.length) {
                        jSONArray3.put(iArr[i2]);
                        i2++;
                    }
                    this.f48605k.put(str, jSONArray3);
                    return;
                }
                if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    JSONArray jSONArray4 = new JSONArray();
                    while (i2 < fArr.length) {
                        jSONArray4.put(fArr[i2]);
                        i2++;
                    }
                    this.f48605k.put(str, jSONArray4);
                    return;
                }
                if (obj instanceof double[]) {
                    double[] dArr = (double[]) obj;
                    JSONArray jSONArray5 = new JSONArray();
                    while (i2 < dArr.length) {
                        jSONArray5.put(dArr[i2]);
                        i2++;
                    }
                    this.f48605k.put(str, jSONArray5);
                    return;
                }
                if (obj instanceof short[]) {
                    short[] sArr = (short[]) obj;
                    JSONArray jSONArray6 = new JSONArray();
                    while (i2 < sArr.length) {
                        jSONArray6.put((int) sArr[i2]);
                        i2++;
                    }
                    this.f48605k.put(str, jSONArray6);
                    return;
                }
                return;
            }
            if (obj instanceof List) {
                List list = (List) obj;
                JSONArray jSONArray7 = new JSONArray();
                while (i2 < list.size()) {
                    Object obj2 = list.get(i2);
                    if ((obj2 instanceof String) || (obj2 instanceof Long) || (obj2 instanceof Integer) || (obj2 instanceof Float) || (obj2 instanceof Double) || (obj2 instanceof Short)) {
                        jSONArray7.put(list.get(i2));
                    }
                    i2++;
                }
                this.f48605k.put(str, jSONArray7);
                return;
            }
            if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                this.f48605k.put(str, obj);
            }
        } catch (Throwable unused) {
        }
    }

    private boolean f(String str) {
        if (str != null) {
            try {
                int length = str.trim().getBytes().length;
                if (length > 0 && length < 128) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        MLog.e("The length of profile key must be less than 128 bytes.");
        return false;
    }

    public void a(Context context, String str, HashMap<String, Object> map) {
        if (context == null) {
            return;
        }
        try {
            if (f48586a == null) {
                f48586a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f48586a)) {
                MLog.e("onGKVEvent can not be called in child process");
                return;
            }
            if (!this.f48604j || !this.f48608n) {
                a(f48586a);
            }
            String string = "";
            if (this.f48605k == null) {
                this.f48605k = new JSONObject();
            } else {
                string = this.f48605k.toString();
            }
            v.a(f48586a).a(str, map, string);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public void c(String str) {
        if (g(str)) {
            a(g.f49328O, (Object) str);
        }
    }

    public void d(String str) {
        if (g(str)) {
            a(g.f49329P, (Object) str);
        }
    }

    public void a(Context context, String str) {
        if (context == null) {
            UMLog.aq(m.f49509w, 0, "\\|");
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("reportError can not be called in child process");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            if (UMConfigure.isDebugLog()) {
                UMLog.aq(m.f49510x, 0, "\\|");
                return;
            }
            return;
        }
        try {
            if (!this.f48604j || !this.f48608n) {
                a(f48586a);
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put(g.f49336W, 2);
            jSONObject.put(g.f49337X, str);
            jSONObject.put("__ii", this.f48602f.c());
            Context context2 = f48586a;
            UMWorkDispatch.sendEvent(context2, r.a.f49629j, CoreProtocol.getInstance(context2), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public void a(Context context, Throwable th) {
        if (context != null && th != null) {
            if (f48586a == null) {
                f48586a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f48586a)) {
                MLog.e("reportError can not be called in child process");
                return;
            }
            try {
                if (!this.f48604j || !this.f48608n) {
                    a(f48586a);
                }
                a(f48586a, DataHelper.convertExceptionToString(th));
                return;
            } catch (Exception e2) {
                if (MLog.DEBUG) {
                    MLog.e(e2);
                    return;
                }
                return;
            }
        }
        UMLog.aq(m.f49511y, 0, "\\|");
    }

    public void a(Context context, String str, String str2, long j2, int i2) {
        if (context == null) {
            return;
        }
        try {
            if (f48586a == null) {
                f48586a = context.getApplicationContext();
            }
            if (!this.f48604j || !this.f48608n) {
                a(f48586a);
            }
            if (e(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            String string = "";
            if (this.f48605k == null) {
                this.f48605k = new JSONObject();
            } else {
                string = this.f48605k.toString();
            }
            v.a(f48586a).a(str, str2, j2, i2, string);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public synchronized void b(Object obj) {
        Context context;
        try {
            context = f48586a;
        } catch (Throwable unused) {
        }
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("updateNativePrePropertiesByCoreProtocol can not be called in child process");
            return;
        }
        SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(f48586a).edit();
        if (obj != null) {
            String str = (String) obj;
            if (editorEdit != null && !TextUtils.isEmpty(str)) {
                editorEdit.putString(f48588i, str).commit();
            }
        } else if (editorEdit != null) {
            editorEdit.remove(f48588i).commit();
        }
    }

    public void a(Context context, String str, Map<String, Object> map, long j2) {
        try {
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
        if (!TextUtils.isEmpty(str)) {
            if (Arrays.asList(g.aL).contains(str)) {
                UMLog.aq(m.f49488b, 0, "\\|");
                return;
            }
            if (map.isEmpty()) {
                UMLog.aq(m.f49490d, 0, "\\|");
                return;
            }
            Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                if (Arrays.asList(g.aL).contains(it.next().getKey())) {
                    UMLog.aq(m.f49491e, 0, "\\|");
                    return;
                }
            }
            a(context, str, map, j2, false);
            return;
        }
        UMLog.aq(m.f49489c, 0, "\\|");
    }

    public void a(Context context, String str, Map<String, Object> map) {
        a(context, str, map, -1L, true);
    }

    private void a(Context context, String str, Map<String, Object> map, long j2, boolean z2) {
        try {
            if (context == null) {
                MLog.e("context is null in onEventNoCheck, please check!");
                return;
            }
            if (f48586a == null) {
                f48586a = context.getApplicationContext();
            }
            if (!this.f48604j || !this.f48608n) {
                a(f48586a);
            }
            if (e(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            String string = "";
            if (this.f48605k == null) {
                this.f48605k = new JSONObject();
            } else {
                string = this.f48605k.toString();
            }
            v.a(f48586a).a(str, map, j2, string, z2);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    @Override // com.umeng.analytics.pro.w
    public void a(Throwable th) throws JSONException {
        try {
            Context context = f48586a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("onAppCrash can not be called in child process");
                return;
            }
            if (AnalyticsConfig.enable) {
                y yVar = this.f48600d;
                if (yVar != null) {
                    yVar.b();
                }
                o.a(f48586a, "onAppCrash");
                n nVar = this.f48601e;
                if (nVar != null) {
                    nVar.b();
                }
                o oVar = this.f48603g;
                if (oVar != null) {
                    oVar.e();
                }
                x xVar = this.f48602f;
                if (xVar != null) {
                    xVar.c(f48586a, Long.valueOf(System.currentTimeMillis()));
                }
                if (th != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONObject.put(g.f49336W, 1);
                    jSONObject.put(g.f49337X, DataHelper.convertExceptionToString(th));
                    l.a(f48586a).a(this.f48602f.c(), jSONObject.toString(), 1);
                }
                r.a(f48586a).d();
                y.a(f48586a);
                if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
                    o.c(f48586a);
                }
                PreferenceWrapper.getDefault(f48586a).edit().commit();
            }
        } catch (Exception e2) {
            if (MLog.DEBUG) {
                MLog.e("Exception in onAppCrash", e2);
            }
        }
    }

    public void a(String str, String str2) {
        try {
            Context context = f48586a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("onProfileSignIn can not be called in child process");
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(g.f49326M, str);
            jSONObject.put("uid", str2);
            jSONObject.put("ts", jCurrentTimeMillis);
            Context context2 = f48586a;
            UMWorkDispatch.sendEvent(context2, r.a.f49624e, CoreProtocol.getInstance(context2), jSONObject);
            Context context3 = f48586a;
            UMWorkDispatch.sendEvent(context3, r.a.f49634o, CoreProtocol.getInstance(context3), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignIn", th);
            }
        }
    }

    public void a(boolean z2) {
        Context context = f48586a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setCatchUncaughtExceptions can not be called in child process");
        } else {
            if (AnalyticsConfig.CHANGE_CATCH_EXCEPTION_NOTALLOW) {
                return;
            }
            AnalyticsConfig.CATCH_EXCEPTION = z2;
        }
    }

    public void a(GL10 gl10) {
        String[] gpu = UMUtils.getGPU(gl10);
        if (gpu.length == 2) {
            AnalyticsConfig.GPU_VENDER = gpu[0];
            AnalyticsConfig.GPU_RENDERER = gpu[1];
        }
    }

    public void a(double d2, double d3) {
        Context context = f48586a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setLocation can not be called in child process");
            return;
        }
        if (AnalyticsConfig.f48559a == null) {
            AnalyticsConfig.f48559a = new double[2];
        }
        double[] dArr = AnalyticsConfig.f48559a;
        dArr[0] = d2;
        dArr[1] = d3;
    }

    public void a(Context context, MobclickAgent.EScenarioType eScenarioType) {
        if (context == null) {
            MLog.e("unexpected null context in setScenarioType");
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("setScenarioType can not be called in child process");
            return;
        }
        if (eScenarioType != null) {
            a(f48586a, eScenarioType.toValue());
        }
        if (this.f48604j && this.f48608n) {
            return;
        }
        a(f48586a);
    }

    public void a(long j2) {
        Context context = f48586a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setSessionContinueMillis can not be called in child process");
        } else {
            AnalyticsConfig.kContinueSessionMillis = j2;
            ab.a().a(AnalyticsConfig.kContinueSessionMillis);
        }
    }

    public synchronized void a(Context context, String str, Object obj) {
        int i2 = 0;
        if (context == null) {
            UMLog.aq(m.af, 0, "\\|");
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("registerSuperProperty can not be called in child process");
            return;
        }
        if (!this.f48604j || !this.f48608n) {
            a(f48586a);
        }
        if (!TextUtils.isEmpty(str) && obj != null) {
            if (!str.equals(f48597z) && !str.equals(f48582A) && !str.equals(f48583B) && !str.equals(f48584C) && !str.equals(f48585D)) {
                MLog.e("property name is " + str + ", please check key, must be correct!");
                return;
            }
            if ((obj instanceof String) && !HelperUtils.checkStrLen(obj.toString(), 256)) {
                MLog.e("property value is " + obj + ", please check value, lawless!");
                return;
            }
            try {
                if (this.f48605k == null) {
                    this.f48605k = new JSONObject();
                }
                if (obj.getClass().isArray()) {
                    if (obj instanceof String[]) {
                        String[] strArr = (String[]) obj;
                        if (strArr.length > 10) {
                            MLog.e("please check value, size is " + strArr.length + ", overstep 10!");
                            return;
                        }
                        JSONArray jSONArray = new JSONArray();
                        while (i2 < strArr.length) {
                            String str2 = strArr[i2];
                            if (str2 != null && HelperUtils.checkStrLen(str2, 256)) {
                                jSONArray.put(strArr[i2]);
                                i2++;
                            }
                            MLog.e("please check value, length is " + strArr[i2].length() + ", overlength 256!");
                            return;
                        }
                        this.f48605k.put(str, jSONArray);
                    } else if (obj instanceof long[]) {
                        long[] jArr = (long[]) obj;
                        if (jArr.length > 10) {
                            MLog.e("please check value, size is " + jArr.length + ", overstep 10!");
                            return;
                        }
                        JSONArray jSONArray2 = new JSONArray();
                        while (i2 < jArr.length) {
                            jSONArray2.put(jArr[i2]);
                            i2++;
                        }
                        this.f48605k.put(str, jSONArray2);
                    } else if (obj instanceof int[]) {
                        int[] iArr = (int[]) obj;
                        if (iArr.length > 10) {
                            MLog.e("please check value, size is " + iArr.length + ", overstep 10!");
                            return;
                        }
                        JSONArray jSONArray3 = new JSONArray();
                        while (i2 < iArr.length) {
                            jSONArray3.put(iArr[i2]);
                            i2++;
                        }
                        this.f48605k.put(str, jSONArray3);
                    } else if (obj instanceof float[]) {
                        float[] fArr = (float[]) obj;
                        if (fArr.length > 10) {
                            MLog.e("please check value, size is " + fArr.length + ", overstep 10!");
                            return;
                        }
                        JSONArray jSONArray4 = new JSONArray();
                        while (i2 < fArr.length) {
                            jSONArray4.put(fArr[i2]);
                            i2++;
                        }
                        this.f48605k.put(str, jSONArray4);
                    } else if (obj instanceof double[]) {
                        double[] dArr = (double[]) obj;
                        if (dArr.length > 10) {
                            MLog.e("please check value, size is " + dArr.length + ", overstep 10!");
                            return;
                        }
                        JSONArray jSONArray5 = new JSONArray();
                        while (i2 < dArr.length) {
                            jSONArray5.put(dArr[i2]);
                            i2++;
                        }
                        this.f48605k.put(str, jSONArray5);
                    } else if (obj instanceof short[]) {
                        short[] sArr = (short[]) obj;
                        if (sArr.length > 10) {
                            MLog.e("please check value, size is " + sArr.length + ", overstep 10!");
                            return;
                        }
                        JSONArray jSONArray6 = new JSONArray();
                        while (i2 < sArr.length) {
                            jSONArray6.put((int) sArr[i2]);
                            i2++;
                        }
                        this.f48605k.put(str, jSONArray6);
                    } else {
                        MLog.e("please check value, illegal type!");
                        return;
                    }
                } else {
                    if (!(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Integer) && !(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof Short)) {
                        MLog.e("please check value, illegal type!");
                        return;
                    }
                    this.f48605k.put(str, obj);
                }
            } catch (Throwable unused) {
            }
            Context context2 = f48586a;
            UMWorkDispatch.sendEvent(context2, r.a.f49639t, CoreProtocol.getInstance(context2), this.f48605k.toString());
            return;
        }
        UMLog.aq(m.ag, 0, "\\|");
    }

    public synchronized void a(Object obj) {
        Context context;
        try {
            context = f48586a;
        } catch (Throwable unused) {
        }
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("registerSuperPropertyByCoreProtocol can not be called in child process");
            return;
        }
        if (obj != null) {
            String str = (String) obj;
            SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(f48586a).edit();
            if (editorEdit != null && !TextUtils.isEmpty(str)) {
                editorEdit.putString(f48587h, this.f48605k.toString()).commit();
            }
        }
    }

    public synchronized void a(Context context, List<String> list) {
        try {
        } finally {
        }
        if (context == null) {
            UMLog.aq(m.aj, 0, "\\|");
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("setFirstLaunchEvent can not be called in child process");
            return;
        }
        if (!this.f48604j || !this.f48608n) {
            a(f48586a);
        }
        v.a(f48586a).a(list);
    }

    public synchronized void a(Context context, JSONObject jSONObject) {
        JSONObject jSONObject2;
        String string;
        Object obj;
        if (context == null) {
            UMLog.aq(m.al, 0, "\\|");
            return;
        }
        if (f48586a == null) {
            f48586a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f48586a)) {
            MLog.e("registerPreProperties can not be called in child process");
            return;
        }
        if (!this.f48604j || !this.f48608n) {
            a(f48586a);
        }
        if (this.f48607m == null) {
            this.f48607m = new JSONObject();
        }
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                jSONObject2 = new JSONObject(this.f48607m.toString());
            } catch (Exception unused) {
                jSONObject2 = null;
            }
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            Iterator<String> itKeys = jSONObject.keys();
            if (itKeys != null) {
                while (itKeys.hasNext()) {
                    try {
                        string = itKeys.next().toString();
                        obj = jSONObject.get(string);
                    } catch (Exception unused2) {
                    }
                    if (c(string, obj)) {
                        jSONObject2.put(string, obj);
                        if (jSONObject2.length() > 10) {
                            MLog.e("please check propertics, size overlength!");
                            return;
                        }
                        continue;
                    } else {
                        return;
                    }
                }
            }
            this.f48607m = jSONObject2;
            if (this.f48607m.length() > 0) {
                Context context2 = f48586a;
                UMWorkDispatch.sendEvent(context2, r.a.f49642w, CoreProtocol.getInstance(context2), this.f48607m.toString());
            }
            return;
        }
        UMLog.aq(m.am, 0, "\\|");
    }

    public void a(String str, Object obj) {
        if (f(str)) {
            if (!(obj instanceof String) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Short) && !(obj instanceof Float) && !(obj instanceof Double)) {
                MLog.e("userProfile: Invalid value type, please check!");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(g.f49332S, str);
                if (obj instanceof String) {
                    String strTrim = (String) obj;
                    if (strTrim.length() > 0) {
                        strTrim = strTrim.trim();
                    }
                    if (!g(strTrim)) {
                        return;
                    } else {
                        jSONObject.put(g.f49333T, strTrim);
                    }
                } else {
                    jSONObject.put(g.f49333T, obj);
                }
                Context context = f48586a;
                UMWorkDispatch.sendEvent(context, r.a.f49636q, CoreProtocol.getInstance(context), jSONObject);
            } catch (Throwable unused) {
            }
        }
    }
}
