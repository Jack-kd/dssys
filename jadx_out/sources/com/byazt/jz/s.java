package com.byazt.jz;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.content.pm.M;
import androidx.core.content.pm.Y;
import com.anythink.core.common.f.f;
import com.byazt.jt.j;
import com.byazt.jt.jx;
import com.byazt.pu.TTDownloadField;
import com.byazt.rz.PluginConstants;
import com.byazt.xci.mp;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.hp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.bg;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes.dex */
public class s {
    public static final com.byazt.jt.j hp = new hp();

    /* renamed from: a, reason: collision with root package name */
    public volatile String f21940a;
    public volatile com.byazt.ctq.jx as;

    /* renamed from: b, reason: collision with root package name */
    public HashMap<String, Object> f21941b;
    public volatile JSONObject cx;

    /* renamed from: d, reason: collision with root package name */
    public volatile Function<SparseArray<Object>, Object> f21942d;
    public boolean di;
    public w dy;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f21943e;
    public volatile String eb;
    public volatile boolean ec;
    public final Set<Integer> gu;
    public int hq;

    /* renamed from: j, reason: collision with root package name */
    public volatile boolean f21944j;
    public volatile boolean jl;
    public volatile String jx;

    /* renamed from: k, reason: collision with root package name */
    public volatile com.byazt.zn.hp f21945k;
    public com.byazt.gsd.j kg;
    public volatile boolean ky;

    /* renamed from: l, reason: collision with root package name */
    public volatile String f21946l;
    public boolean lv;
    public String mp;

    /* renamed from: ms, reason: collision with root package name */
    public boolean f21947ms;

    /* renamed from: n, reason: collision with root package name */
    public volatile boolean f21948n;
    public volatile int ns;
    public long nu;

    /* renamed from: o, reason: collision with root package name */
    public boolean f21949o;
    public jx pu;

    /* renamed from: q, reason: collision with root package name */
    public volatile int f21950q;

    /* renamed from: r, reason: collision with root package name */
    public volatile String f21951r;

    /* renamed from: s, reason: collision with root package name */
    public volatile com.byazt.unt.hp f21952s;
    public Function<SparseArray<Object>, Object> sz;

    /* renamed from: u, reason: collision with root package name */
    public String f21953u;
    public int ud;

    /* renamed from: v, reason: collision with root package name */
    public volatile com.byazt.jt.j f21954v;
    public volatile boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public volatile String f21955w;
    public int wv;
    public boolean xh;
    public String xs;
    public Bitmap zy;

    @com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static final class hp extends com.byazt.jt.j {
        public hp() {
            super(null);
        }

        @Override // com.byazt.jt.j
        public boolean alist() {
            return "1".equals(com.byazt.oz.jx.hp(17, "1"));
        }

        @Override // com.byazt.jt.j
        public String getDevImei() {
            return com.byazt.oz.jx.hp(10, "");
        }

        @Override // com.byazt.jt.j
        public String getDevOaid() {
            return com.byazt.oz.jx.hp(13, "");
        }

        @Override // com.byazt.jt.j
        public String getMacAddress() {
            return com.byazt.oz.jx.hp(18, "");
        }

        @Override // com.byazt.jt.j
        public com.byazt.jt.jx getTTLocation() {
            String[] strArrSplit;
            String strHp = com.byazt.oz.jx.hp(8, "");
            if (TextUtils.isEmpty(strHp) || (strArrSplit = strHp.split(",")) == null) {
                return null;
            }
            String str = strArrSplit.length > 0 ? strArrSplit[0] : "";
            String str2 = strArrSplit.length > 1 ? strArrSplit[1] : "";
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                return null;
            }
            return new jx.hp().hp(Double.valueOf(str).doubleValue()).l(Double.valueOf(str2).doubleValue()).hp();
        }

        @Override // com.byazt.jt.j
        public boolean isCanUseAndroidId() {
            return "1".equals(com.byazt.oz.jx.hp(22, "1"));
        }

        @Override // com.byazt.jt.j
        public boolean isCanUseLocation() {
            return "1".equals(com.byazt.oz.jx.hp(7, "1"));
        }

        @Override // com.byazt.jt.j
        public boolean isCanUseMessage() {
            return "1".equals(com.byazt.oz.jx.hp(24, "1"));
        }

        @Override // com.byazt.jt.j
        public boolean isCanUsePermissionRecordAudio() {
            return false;
        }

        @Override // com.byazt.jt.j
        public boolean isCanUsePhoneState() {
            return "1".equals(com.byazt.oz.jx.hp(9, "1"));
        }

        @Override // com.byazt.jt.j
        public boolean isCanUseWifiState() {
            return "1".equals(com.byazt.oz.jx.hp(11, "1"));
        }

        @Override // com.byazt.jt.j
        public boolean isCanUseWriteExternal() {
            return "1".equals(com.byazt.oz.jx.hp(12, "1"));
        }

        @Override // com.byazt.jt.j
        public boolean isDefaultController() {
            return true;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK})
    public static class jx {
        public Map<String, Object> hp;

        /* renamed from: l, reason: collision with root package name */
        public String f21957l;

        public jx(Map<String, Object> map, String str) {
            this.hp = map;
            this.f21957l = str;
        }

        public void hp(JSONObject jSONObject) throws JSONException {
            Map<String, Object> map;
            if (jSONObject == null || (map = this.hp) == null || map.size() == 0 || TextUtils.isEmpty(this.f21957l)) {
                return;
            }
            for (Map.Entry<String, Object> entry : this.hp.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            jSONObject.put("preview_ads", new JSONObject(this.f21957l));
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_FORCE_CLOSE_CODEC})
    public static class l {
        public static s hp = new s();
    }

    private com.byazt.ctq.jx qh() {
        if (this.as == null) {
            synchronized (this) {
                try {
                    if (this.as == null) {
                        this.as = com.byazt.ry.j.hp(this.f21946l, "sp_global_info");
                    }
                } finally {
                }
            }
        }
        return this.as;
    }

    private static com.byazt.jt.j t() {
        return new j.hp().l(true).hp(true).hp((com.byazt.jt.jx) null).jx(true).hp((String) null).j(true).l((String) null).w(true).jx((String) null).a(true).j((String) null).eb(false).hp();
    }

    public static Object tw() throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("currentActivityThread", null).invoke(null, null);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            Map map = (Map) declaredField.get(objInvoke);
            if (map != null && !map.isEmpty()) {
                for (Object obj : map.values()) {
                    Class<?> cls2 = obj.getClass();
                    Field declaredField2 = cls2.getDeclaredField("isTopResumedActivity");
                    declaredField2.setAccessible(true);
                    if (declaredField2.getBoolean(obj)) {
                        Field declaredField3 = cls2.getDeclaredField(TTDownloadField.TT_ACTIVITY);
                        declaredField3.setAccessible(true);
                        return declaredField3.get(obj);
                    }
                }
                return null;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static s u() {
        return l.hp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void unregisterReceiver() {
        DeviceUtils.gu();
        DeviceUtils.jl();
    }

    public boolean a() {
        return this.ky;
    }

    public Object an() {
        WeakReference<Activity> weakReferenceHp = this.f21945k.hp();
        if (weakReferenceHp != null) {
            return weakReferenceHp.get();
        }
        Object objApply = this.f21942d != null ? this.f21942d.apply(com.byazt.wi.j.hp().hp(14).hp(Activity.class).l()) : null;
        return objApply == null ? tw() : objApply;
    }

    public boolean as() {
        return com.byazt.lca.jx.hp().l() ? com.byazt.lca.j.hp().hp(false) : this.jl;
    }

    public boolean b() {
        return this.f21944j;
    }

    public String cx() {
        return this.jx;
    }

    public String d() {
        return !TextUtils.isEmpty(this.f21940a) ? this.f21940a : com.byazt.lca.j.hp().a("");
    }

    public String di() {
        return !TextUtils.isEmpty(this.f21955w) ? this.f21955w : com.byazt.lca.j.hp().j("");
    }

    public void dy() {
        com.byazt.lca.j.hp().l(this.ns);
        com.byazt.lca.j.hp().jx(this.f21955w);
        com.byazt.lca.j.hp().w(this.f21940a);
        com.byazt.lca.j.hp().eb(hp(this.f21941b));
        qh().put("title_bar_theme", this.f21950q);
        qh().put("allow_show_notify", this.f21943e);
        com.byazt.lca.j.hp().l(this.jl);
        Set<Integer> set = this.gu;
        if (set == null || set.isEmpty()) {
            qh().remove("network_state");
            return;
        }
        Iterator<Integer> it = this.gu.iterator();
        StringBuilder sb = new StringBuilder();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(",");
        }
        qh().put("network_state", sb.toString());
    }

    public boolean e() {
        return com.byazt.tn.jx.hp().s();
    }

    public String ea() {
        return this.eb;
    }

    public boolean eb() {
        return com.byazt.tn.jx.hp().eb();
    }

    public String ec() {
        return this.mp;
    }

    public boolean f() {
        return "5001121".equals(this.f21946l) && "com.union_test.toutiao".equals(ky.s());
    }

    public String fi() {
        return qh().get("toolsQueryHost", "api-access.pangolin-sdk-toutiao.com");
    }

    public String gd() {
        return qh().get("codeidDetailUrl", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/test-tool/0.0.4/html/codeid_detail.html");
    }

    public boolean gu() {
        return com.byazt.tn.jx.hp().q();
    }

    public boolean hd() {
        return this.ec;
    }

    public int hq() {
        return com.byazt.ton.l.hp() ? qh().get("title_bar_theme", 0) : this.f21950q;
    }

    public boolean j() {
        return com.byazt.tn.jx.hp().a();
    }

    public void jl() {
        com.byazt.tn.jx.hp().w();
    }

    public com.byazt.zn.hp jx() {
        if (this.f21945k == null) {
            jx(sz.getContext());
        }
        return this.f21945k;
    }

    public void k() {
        v();
        Context context = sz.getContext();
        this.gu.add(4);
        jx(context);
    }

    public Bitmap kg() {
        return com.byazt.ton.l.hp() ? com.byazt.ymw.j.hp(qh().get("pause_icon", "")) : this.zy;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void ky() throws org.json.JSONException {
        /*
            r8 = this;
            java.lang.String r0 = "gdt_version"
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
            java.lang.String r2 = com.byazt.vbz.w.eb()     // Catch: org.json.JSONException -> L16
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: org.json.JSONException -> L16
            if (r3 == 0) goto L13
            java.lang.String r2 = "2.0.0"
        L13:
            r1.put(r0, r2)     // Catch: org.json.JSONException -> L16
        L16:
            java.lang.String r2 = "2.0.0.0"
            com.byazt.dnb.zy.hp()
            int r3 = com.byazt.vbz.w.q()
            r4 = 1
            if (r3 == 0) goto L5f
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r6 = 0
        L34:
            int r7 = r3.length()
            if (r6 >= r7) goto L50
            char r7 = r3.charAt(r6)
            r5.append(r7)
            int r7 = r3.length()
            int r7 = r7 - r4
            if (r6 == r7) goto L4d
            java.lang.String r7 = "."
            r5.append(r7)
        L4d:
            int r6 = r6 + 1
            goto L34
        L50:
            java.lang.String r3 = r5.toString()
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L5f
            java.lang.String r3 = r5.toString()
            goto L61
        L5f:
            java.lang.String r3 = "0.0.0.0"
        L61:
            boolean r0 = r1.has(r0)
            if (r0 == 0) goto L8b
            java.lang.String r0 = "dex_status"
            com.byazt.vbz.w.hp(r0, r4)     // Catch: org.json.JSONException -> L8b
            java.lang.String r0 = "app_id"
            java.lang.String r4 = r8.f21946l     // Catch: org.json.JSONException -> L8b
            r1.put(r0, r4)     // Catch: org.json.JSONException -> L8b
            java.lang.String r0 = "plugin_version"
            r1.put(r0, r3)     // Catch: org.json.JSONException -> L8b
            java.lang.String r0 = "sdk_version"
            r1.put(r0, r2)     // Catch: org.json.JSONException -> L8b
            java.lang.String r0 = "plugin_update_network"
            java.lang.String r2 = "2"
            r1.put(r0, r2)     // Catch: org.json.JSONException -> L8b
            org.json.JSONObject r0 = r8.cx     // Catch: org.json.JSONException -> L8b
            java.lang.String r2 = "com.byted.mixed"
            r0.put(r2, r1)     // Catch: org.json.JSONException -> L8b
        L8b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jz.s.ky():void");
    }

    public boolean l() {
        if (!this.f21949o && Build.VERSION.SDK_INT >= 26) {
            this.f21949o = true;
            try {
                ShortcutManager shortcutManagerA = Y.a(sz.getContext().getSystemService(M.a()));
                if (shortcutManagerA != null) {
                    this.di = shortcutManagerA.isRequestPinShortcutSupported();
                }
            } catch (Throwable unused) {
            }
        }
        return this.di;
    }

    public boolean lv() {
        return this.xh;
    }

    public String m() {
        if (!com.byazt.lca.jx.hp().l()) {
            return TextUtils.isEmpty(this.f21953u) ? "" : this.f21953u;
        }
        String str = qh().get("tob_ab_sdk_version", "");
        return TextUtils.isEmpty(str) ? "" : str;
    }

    public int mp() {
        if (!com.byazt.lca.jx.hp().l()) {
            return this.ns;
        }
        int iJ = com.byazt.lca.j.hp().j();
        return iJ == Integer.MIN_VALUE ? this.ns : iJ;
    }

    public com.byazt.gsd.j ms() {
        if (this.kg == null) {
            this.kg = new com.byazt.gsd.j(10, 8);
        }
        return this.kg;
    }

    public boolean n() {
        return qh().get("sdk_activate_init", true);
    }

    public String nd() {
        if (!TextUtils.isEmpty(this.xs)) {
            return this.xs;
        }
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        String str = jxVarHp.get("any_door_id", (String) null);
        this.xs = str;
        if (!TextUtils.isEmpty(str)) {
            return this.xs;
        }
        String strValueOf = String.valueOf(System.currentTimeMillis());
        jxVarHp.put("any_door_id", strValueOf);
        this.xs = strValueOf;
        return strValueOf;
    }

    public String nr() {
        return qh().get("toolsAdPreviewUrl", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/test-tool/0.0.4/html/ad_preview.html");
    }

    public String ns() {
        return this.f21946l;
    }

    public boolean nu() {
        return this.vv;
    }

    public com.byazt.unt.hp o() {
        return this.f21952s;
    }

    public boolean pc() {
        if (qh().get("update_advance_preview_mode", false)) {
            long j2 = qh().get("update_advance_preview_mode_time", -1L);
            if (j2 != -1) {
                if (System.currentTimeMillis() - j2 <= bg.f30873s) {
                    return true;
                }
                gu(false);
            }
        }
        return false;
    }

    public JSONObject pu() {
        return this.cx;
    }

    public boolean q() {
        return !e() && eb();
    }

    public String qu() {
        try {
            if ((sz.l().g() & 1) == 1) {
                return com.byazt.lca.w.hp().w();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean r() {
        return this.f21947ms;
    }

    public String rk() {
        return qh().get("toolsBasicInfUrl", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/test-tool/0.0.4/html/basic_info.html");
    }

    public String ru() {
        return qh().get("ritDetailUrl", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/test-tool/0.0.4/html/rit_detail.html");
    }

    public long rv() {
        return this.nu;
    }

    public boolean rz() {
        try {
            if ("com.union_test.toutiao".equals(sz.getContext().getPackageName()) && "5001121".equals(this.f21946l)) {
                return true;
            }
            if ("com.pangolin_demo.toutiao".equals(sz.getContext().getPackageName()) && "5001121".equals(this.f21946l)) {
                return true;
            }
            if ("com.bytedance.mediation_demo".equals(sz.getContext().getPackageName()) && "5001121".equals(this.f21946l)) {
                return true;
            }
            if ("com.msdk.qa.monkey".equals(sz.getContext().getPackageName()) && "5001121".equals(this.f21946l)) {
                return true;
            }
            if (sz.getContext().getPackageName().contains("com.bytedance.mediation_demo_csj")) {
                return "5001121".equals(this.f21946l);
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean s() {
        return q() && com.byazt.wu.hp.jx();
    }

    public int su() {
        return this.ud;
    }

    public com.byazt.jt.j sz() {
        if (this.f21954v == null || this.f21954v.isDefaultController()) {
            this.f21954v = f() ? hp : t();
        }
        return this.f21954v;
    }

    public boolean ud() {
        return com.byazt.ton.l.hp() ? qh().get("allow_show_notify", true) : this.f21943e;
    }

    public void v() {
        this.ky = com.byazt.wu.hp.l();
    }

    public boolean vq() {
        return this.lv;
    }

    public di vv() {
        return new com.byazt.sii.eb(sz(), true);
    }

    public String w() {
        return com.byazt.tn.jx.hp().l();
    }

    public String wt() {
        return qh().get("adnDetailUrl", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/test-tool/0.0.4/html/adn_detail.html");
    }

    public Map<String, Object> wv() {
        if (!this.f21941b.isEmpty()) {
            return this.f21941b;
        }
        String strS = com.byazt.lca.j.hp().s("");
        this.f21941b.putAll(TextUtils.isEmpty(strS) ? k(strS) : new HashMap<>());
        return this.f21941b;
    }

    public Function<SparseArray<Object>, Object> xh() {
        Function<SparseArray<Object>, Object> function = this.sz;
        if (function != null) {
            return function;
        }
        com.byazt.po.u uVarInstance = com.byazt.po.u.instance(sz.getContext());
        this.sz = uVarInstance;
        return uVarInstance;
    }

    public com.byazt.sii.eb xs() {
        return new com.byazt.sii.eb(sz(), false);
    }

    public Function<SparseArray<Object>, Object> y() {
        return this.f21942d;
    }

    public jx yj() {
        return this.pu;
    }

    public boolean yr() {
        return "5001121".equals(this.f21946l);
    }

    public int zx() {
        return com.byazt.lca.j.hp().j(0);
    }

    public boolean zy() {
        return com.byazt.tn.jx.hp().jx();
    }

    private s() {
        this.f21952s = new com.byazt.unt.hp(2);
        this.f21950q = 0;
        this.f21943e = true;
        this.gu = Collections.synchronizedSet(new HashSet());
        this.jl = false;
        this.zy = null;
        this.vv = false;
        this.ec = true;
        this.f21948n = true;
        this.ns = 0;
        this.cx = new JSONObject();
        this.f21941b = new HashMap<>();
        this.di = false;
        this.f21949o = false;
        this.f21942d = null;
        this.wv = -1;
        this.hq = -1;
        this.ud = -1;
        this.nu = -1L;
        this.xh = false;
        this.f21947ms = false;
        this.mp = null;
    }

    private static void u(String str) {
        com.byazt.ymw.ec.hp(str, "name不能为空");
    }

    private static void v(String str) {
        com.byazt.ymw.ec.hp(str, "appid不能为空");
    }

    private static void vv(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.ymw.ec.hp(str.length() <= 20000, "data超长, 最长为20000");
    }

    private static void xs(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.ymw.ec.hp(str.length() <= 1000, "keyword超长, 最长为1000");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zy(String str) {
        JSONArray jSONArray;
        try {
            jSONArray = TextUtils.isEmpty(str) ? new JSONArray() : new JSONArray(str);
        } catch (Exception unused) {
            jSONArray = new JSONArray();
        }
        HashMap map = new HashMap();
        JSONArray jSONArray2 = new JSONArray();
        boolean z2 = false;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject != null) {
                if (!jSONObjectOptJSONObject.isNull("__name__")) {
                    String strOptString = jSONObjectOptJSONObject.optString("__name__");
                    String strOptString2 = jSONObjectOptJSONObject.optString(f.a.f3244d);
                    if (!TextUtils.isEmpty(strOptString)) {
                        map.put(strOptString, strOptString2);
                    }
                } else if ("csj_rit_list".equals(jSONObjectOptJSONObject.optString("name"))) {
                    q(jSONObjectOptJSONObject.optString(f.a.f3244d));
                    jSONArray.remove(i2);
                    z2 = true;
                } else {
                    jSONArray2.put(jSONObjectOptJSONObject);
                }
            }
        }
        if (z2) {
            this.f21940a = jSONArray.toString();
        } else {
            this.f21940a = str;
        }
        if ((jSONArray2.length() == 0 && map.isEmpty()) || jSONArray2.length() != 0) {
            this.f21940a = jSONArray2.toString();
        }
        if (map.isEmpty()) {
            return;
        }
        this.f21941b.putAll(map);
    }

    public void a(final String str) {
        vv(str);
        ((com.byazt.pg.r) com.byazt.ym.j.getService("thread_service")).executeFastTask(new Runnable() { // from class: com.byazt.jz.s.1
            @Override // java.lang.Runnable
            public void run() {
                s.this.zy(str);
            }
        });
    }

    public void e(boolean z2) {
        this.lv = z2;
    }

    public void eb(String str) {
        a(str);
        if (com.byazt.ton.l.hp()) {
            com.byazt.lca.j.hp().w(str);
            com.byazt.lca.j.hp().eb(hp(this.f21941b));
        }
    }

    public void gu(boolean z2) {
        qh().put("update_advance_preview_mode", z2);
        qh().put("update_advance_preview_mode_time", System.currentTimeMillis());
    }

    public boolean hp() {
        return this.f21945k != null && this.f21945k.l();
    }

    public void j(String str) {
        u(str);
        this.jx = str;
    }

    public void jl(String str) {
        qh().put("toolsBasicInfUrl", str);
    }

    public void s(String str) {
        w(str);
        com.byazt.lca.j.hp().jx(str);
    }

    public void w(String str) {
        xs(str);
        this.f21955w = str;
    }

    public void e(String str) {
        qh().put("toolsQueryHost", str);
    }

    public boolean hp(boolean z2) {
        return this.f21945k != null && this.f21945k.hp(z2);
    }

    public void q(boolean z2) {
        this.ec = z2;
    }

    private void jx(Context context) {
        if (this.f21945k != null) {
            return;
        }
        this.f21945k = new com.byazt.zn.hp();
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this.f21945k);
        } else {
            if (context == null || context.getApplicationContext() == null) {
                return;
            }
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(this.f21945k);
        }
    }

    public void a(boolean z2) {
        this.xh = z2;
    }

    public void gu(String str) {
        qh().put("toolsAdPreviewUrl", str);
    }

    public void hp(String str) {
        this.f21951r = str;
    }

    public void j(boolean z2) {
        this.f21943e = z2;
    }

    public void q(String str) {
        this.eb = str;
        com.byazt.jkd.s.hp((com.byazt.jkd.w) null).hp(true);
    }

    public void s(boolean z2) {
        d.f21858q = z2;
        this.jl = z2;
    }

    public void w(boolean z2) {
        jx(z2);
    }

    private static final HashMap<String, Object> k(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap<>();
        }
        HashMap<String, Object> map = new HashMap<>();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!TextUtils.isEmpty(next)) {
                    map.put(next, jSONObject.opt(next));
                }
            }
            return map;
        } catch (Exception unused) {
            return new HashMap<>();
        }
    }

    public Function<SparseArray<Object>, Object> a(int i2) {
        if (this.f21942d == null) {
            return null;
        }
        return (Function) this.f21942d.apply(com.byazt.wi.j.hp().hp(10).hp(Object.class).hp(0, Integer.valueOf(i2)).l());
    }

    public String hp(mp mpVar) {
        if (TextUtils.isEmpty(this.f21951r)) {
            this.f21951r = com.byazt.ff.q.hp(mpVar, false);
        }
        return this.f21951r;
    }

    public void j(int i2) {
        if (i2 < 0 || i2 > 2) {
            i2 = 0;
        }
        try {
            this.ns = i2;
        } catch (Throwable unused) {
        }
    }

    public void w(int i2) {
        com.byazt.lca.j.hp().jx(i2);
    }

    public void eb(boolean z2) {
        this.f21947ms = z2;
    }

    public void l(String str) {
        this.mp = str;
    }

    public void eb(int i2) {
        this.ud = i2;
    }

    public void l(boolean z2) {
        qh().put("sdk_activate_init", z2);
    }

    public boolean hp(Activity activity) {
        return this.f21945k != null && this.f21945k.hp(activity);
    }

    public void l(int i2) {
        this.f21950q = i2;
    }

    public void hp(com.byazt.jt.j jVar) {
        this.f21954v = jVar;
    }

    public boolean l(Context context) {
        if (com.byazt.cqt.hp.hp().w()) {
            this.hq = 2;
        } else {
            this.hq = 1;
        }
        return this.hq == 1;
    }

    public void hp(int i2) {
        this.f21952s = new com.byazt.unt.hp(i2, true);
    }

    public void hp(boolean z2, SparseArray<Object> sparseArray) {
        com.byazt.ymw.u.l("bstsdk", "bst(true) stat-quit, run new pl");
        this.vv = z2;
        com.byazt.wu.hp.hp(true);
        ((com.byazt.pg.r) com.byazt.ym.j.getService("thread_service")).postIOTask(new Runnable() { // from class: com.byazt.jz.s.2
            @Override // java.lang.Runnable
            public void run() {
                s.unregisterReceiver();
                com.byazt.wx.w.hp().l();
            }
        });
    }

    public void jx(String str) throws JSONException {
        v(str);
        this.f21946l = str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_id", str);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
            jSONObject.put("sdk_version", d.f21860w);
            this.cx.put("com.byted.pangle", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void hp(String str, String str2) throws JSONException {
        try {
            JSONObject jSONObjectOptJSONObject = this.cx.optJSONObject(str);
            if (jSONObjectOptJSONObject != null) {
                jSONObjectOptJSONObject.putOpt(PluginConstants.KEY_PLUGIN_VERSION, str2);
            }
        } catch (JSONException unused) {
            com.byazt.ymw.u.l("GlobalInfo", "JSONObject not found for name " + str + " when update plugin config.");
        }
    }

    public void hp(String str, String str2, String str3, String str4) throws JSONException {
        try {
            JSONObject jSONObjectOptJSONObject = this.cx.optJSONObject(str);
            if (TextUtils.isEmpty(str4)) {
                str4 = this.f21946l;
            }
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            jSONObjectOptJSONObject.put("app_id", str4);
            jSONObjectOptJSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, str3);
            jSONObjectOptJSONObject.put("sdk_version", str2);
            this.cx.put(str, jSONObjectOptJSONObject);
        } catch (JSONException e2) {
            e2.getMessage();
        }
    }

    public void jx(boolean z2) {
        this.f21944j = z2;
    }

    public boolean jx(int i2) {
        if (com.byazt.ton.l.hp()) {
            String str = qh().get("network_state", "");
            if (!TextUtils.isEmpty(str)) {
                String[] strArrSplit = str.split(",");
                if (strArrSplit.length > 0) {
                    for (String str2 : strArrSplit) {
                        if (!TextUtils.isEmpty(str2) && String.valueOf(i2).equals(str2)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        Set<Integer> set = this.gu;
        return set != null && set.contains(Integer.valueOf(i2));
    }

    public void hp(Bundle bundle) {
        if (bundle == null || bundle.keySet().size() <= 0) {
            return;
        }
        for (String str : bundle.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    Bundle bundle2 = bundle.getBundle(str);
                    if (bundle2 == null) {
                        return;
                    }
                    String string = bundle2.getString("app_id", this.f21946l);
                    hp(str, bundle2.getString("sdk_version"), bundle2.getString(PluginConstants.KEY_PLUGIN_VERSION), string);
                } catch (Exception unused) {
                    continue;
                }
            }
        }
    }

    public void hp(int... iArr) {
        if (iArr == null) {
            return;
        }
        try {
            this.gu.clear();
            for (int i2 : iArr) {
                this.gu.add(Integer.valueOf(i2));
            }
        } catch (Throwable unused) {
        }
    }

    private static final String hp(Map<String, Object> map) throws JSONException {
        if (map != null && !map.isEmpty()) {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (!TextUtils.isEmpty(entry.getKey())) {
                    try {
                        jSONObject.putOpt(entry.getKey(), entry.getValue());
                    } catch (Exception unused) {
                    }
                }
            }
            return jSONObject.toString();
        }
        return "";
    }

    public void hp(Bitmap bitmap) {
        if (com.byazt.ton.l.hp()) {
            String strHp = com.byazt.ymw.j.hp(bitmap);
            if (!TextUtils.isEmpty(strHp)) {
                qh().put("pause_icon", strHp);
            }
        }
        this.zy = bitmap;
    }

    public void hp(Function<SparseArray<Object>, Object> function) {
        if (this.f21942d != null) {
            return;
        }
        this.f21942d = function;
    }

    public boolean hp(Context context) {
        if (com.byazt.cqt.hp.hp().w()) {
            this.wv = 2;
        } else {
            this.wv = 1;
        }
        return this.wv == 1;
    }

    public void hp(long j2) {
        this.nu = j2;
    }

    public void hp(hp.l lVar) {
        if (this.f21942d != null) {
            if (this.dy == null) {
                w wVar = new w();
                this.dy = wVar;
                wVar.hp(this.f21942d);
            }
            this.dy.hp(lVar);
        }
    }

    public void hp(jx jxVar) {
        this.pu = jxVar;
    }
}
