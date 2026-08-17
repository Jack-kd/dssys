package com.byazt.di;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.byazt.bki.a;
import com.byazt.bki.k;
import com.byazt.uhd.w;
import com.byazt.wi.j;
import com.byazt.ymw.eb;
import com.byazt.zg.cx;
import com.byazt.zg.ec;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, 28})
/* loaded from: classes2.dex */
public class hp {
    public static final hp kg = new hp();
    public final Map<String, Float> as;

    /* renamed from: b, reason: collision with root package name */
    public boolean f19131b;
    public List<String> cx;

    /* renamed from: d, reason: collision with root package name */
    public String f19132d;
    public JSONObject di;
    public boolean dy;

    /* renamed from: e, reason: collision with root package name */
    public String f19133e;
    public a ec;
    public Map<String, String> gu;
    public boolean hq;

    /* renamed from: j, reason: collision with root package name */
    public String f19134j;
    public String jl;
    public String jx;
    public Object ky;

    /* renamed from: l, reason: collision with root package name */
    public String[] f19136l;
    public PluginValueSet lv;

    /* renamed from: m, reason: collision with root package name */
    public k f19137m;
    public int[] mp;

    /* renamed from: ms, reason: collision with root package name */
    public final Map<String, Integer> f19138ms;
    public com.byazt.htw.hp nu;

    /* renamed from: o, reason: collision with root package name */
    public boolean f19140o;
    public com.byazt.fr.jx pu;

    /* renamed from: q, reason: collision with root package name */
    public boolean f19141q;

    /* renamed from: s, reason: collision with root package name */
    public String f19143s;
    public String ud;
    public boolean wv;
    public long xh;
    public String zy;
    public int hp = 0;

    /* renamed from: w, reason: collision with root package name */
    public boolean f19146w = true;

    /* renamed from: a, reason: collision with root package name */
    public boolean f19130a = false;
    public boolean eb = false;

    /* renamed from: k, reason: collision with root package name */
    public Set<String> f19135k = new HashSet();

    /* renamed from: v, reason: collision with root package name */
    public Map<String, Map<String, String>> f19145v = new HashMap();

    /* renamed from: u, reason: collision with root package name */
    public Map<String, Map<String, String>> f19144u = new HashMap();
    public boolean xs = false;
    public final Map<String, Object> vv = new ec();
    public long sz = -1;

    /* renamed from: n, reason: collision with root package name */
    public Map<String, Object> f19139n = new ConcurrentHashMap();
    public Map<String, Object> ns = new ConcurrentHashMap();

    /* renamed from: r, reason: collision with root package name */
    public int f19142r = -1;

    private hp() {
        HashMap map = new HashMap();
        this.f19138ms = map;
        this.as = new ConcurrentHashMap();
        if (l.l().rz()) {
            map.put(MediationConstant.KEY_USE_POLICY_AD_GAP, 1);
            map.put(MediationConstant.KEY_USE_POLICY_AD_LOAD, 1);
            map.put(MediationConstant.KEY_USE_POLICY_SECTION_ID, 1);
            map.put(MediationConstant.KEY_USE_POLICY_PAGE_ID, 1);
            map.put("custom", 1);
        }
    }

    public static hp jl() {
        return kg;
    }

    public String a() {
        return this.ud;
    }

    public Map<String, Object> b() {
        return this.f19139n;
    }

    public void cx() {
        this.f19137m = k.hp(jl().l());
    }

    public boolean d() {
        return this.f19131b;
    }

    public Map<String, Object> di() {
        return this.ns;
    }

    public boolean dy() {
        return this.hq;
    }

    public boolean e() {
        try {
            if ("com.msdk.qa.monkey".equals(l.getContext().getPackageName())) {
                return "5001121".equals(this.jx);
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean eb() {
        return this.f19141q;
    }

    public String ec() {
        return this.f19134j;
    }

    public boolean gu() {
        String path = eb.j(l.getContext(), false, null).getPath();
        if (this.f19142r < 0) {
            if (new File(path + "/e2e.text").exists()) {
                this.f19142r = 1;
            } else {
                this.f19142r = 0;
            }
        }
        return this.f19142r > 0;
    }

    public void hp(boolean z2) {
        this.xs = z2;
    }

    public boolean hq() {
        return this.f19140o;
    }

    public Map<String, Integer> j() {
        return this.f19138ms;
    }

    public long jx() {
        long j2 = this.sz;
        if (j2 != -1) {
            return j2;
        }
        long jL = com.byazt.fqv.hp.hp().l();
        this.sz = jL;
        return jL;
    }

    public boolean k() {
        return this.dy;
    }

    public Object ky() {
        return this.ky;
    }

    public com.byazt.fr.jx l() {
        if (this.pu == null) {
            j jVarHp = j.hp();
            w.l(jVarHp);
            this.pu = com.byazt.fr.jx.hp(jVarHp.l());
        }
        return this.pu;
    }

    public Map<String, Object> lv() {
        this.vv.put(MediationConstant.KEY_GM_USB, com.byazt.ney.w.w());
        return this.vv;
    }

    public a n() {
        return this.ec;
    }

    public k ns() {
        if (this.f19137m == null) {
            this.f19137m = k.hp(jl().l());
        }
        return this.f19137m;
    }

    public boolean nu() {
        return this.wv;
    }

    public List<String> o() {
        return this.cx;
    }

    public com.byazt.htw.hp pu() {
        return this.nu;
    }

    public boolean q() {
        Context context = l.getContext();
        return context != null && "com.bytedance.mediation_demo_csj".equals(context.getPackageName()) && gu();
    }

    public PluginValueSet r() {
        PluginValueSet pluginValueSet = this.lv;
        return pluginValueSet != null ? pluginValueSet : com.byazt.xi.hp.hp().l();
    }

    public String s() {
        Context context = l.getContext();
        if (context == null) {
            return null;
        }
        if (("com.union_test.toutiao".equals(context.getPackageName()) && "5001121".equals(this.jx)) || ("com.bytedance.mediation_demo".equals(context.getPackageName()) && "5001121".equals(this.jx))) {
            try {
                return com.byazt.ry.j.hp(null, "gm_tt_mediation_ppe_info").getString("tt_ppe_content", "");
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public String sz() {
        if (!TextUtils.isEmpty(this.zy)) {
            return this.zy;
        }
        com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(null, "gm_tt_ad_mediation_sdk_sp");
        String string = jxVarHp.getString("any_door_id", "");
        this.zy = string;
        if (!TextUtils.isEmpty(string)) {
            return this.zy;
        }
        String strValueOf = String.valueOf(System.currentTimeMillis());
        jxVarHp.put("any_door_id", strValueOf);
        this.zy = strValueOf;
        return strValueOf;
    }

    public String u() {
        return this.f19133e;
    }

    public String ud() {
        return this.f19132d;
    }

    public boolean v() {
        return this.eb;
    }

    public String vv() {
        return this.f19143s;
    }

    public long w() {
        return this.xh;
    }

    public JSONObject wv() {
        return this.di;
    }

    public Map<String, String> xs() {
        return this.gu;
    }

    public String zy() {
        return this.jx;
    }

    public void a(boolean z2) {
        this.f19130a = z2;
    }

    public void e(boolean z2) {
        this.hq = z2;
    }

    public void eb(String str) {
        this.jl = str;
    }

    public boolean hp() {
        return this.xs;
    }

    public void j(boolean z2) {
        this.eb = z2;
    }

    public void w(String str) {
        this.f19133e = str;
    }

    private static void q(String str) {
        cx.hp(str, "appid不能为空");
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            str = hp(l.getContext());
        }
        this.f19134j = str;
    }

    public void eb(boolean z2) {
        this.f19131b = z2;
    }

    public void hp(String str, float f2) {
        this.as.put(str, Float.valueOf(f2));
    }

    public void j(String str) {
        this.f19143s = str;
    }

    public void jx(String str) {
        q(str);
        this.jx = str;
    }

    public void w(boolean z2) {
        this.f19146w = z2;
    }

    public float hp(String str) {
        return this.as.get(str).floatValue();
    }

    public void q(boolean z2) {
        this.wv = z2;
    }

    public void hp(long j2) {
        com.byazt.fqv.hp.hp().hp(j2);
    }

    public void jx(boolean z2) {
        this.dy = z2;
    }

    public void s(boolean z2) {
        this.f19140o = z2;
    }

    public void hp(Map<String, String> map) {
        this.gu = map;
    }

    public void jx(Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        this.ns.putAll(map);
    }

    public void l(long j2) {
        this.xh = j2;
    }

    public void s(String str) {
        this.f19132d = str;
    }

    public void hp(int... iArr) {
        this.mp = iArr;
    }

    public void l(String str) {
        this.ud = str;
    }

    public static String hp(Context context) {
        CharSequence applicationLabel;
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getApplicationInfo().packageName, 0);
            if (applicationInfo == null) {
                applicationLabel = "";
            } else {
                applicationLabel = packageManager.getApplicationLabel(applicationInfo);
            }
            return (String) applicationLabel;
        } catch (Throwable unused) {
            return "";
        }
    }

    public void l(boolean z2) {
        this.f19141q = z2;
    }

    public void l(Map<String, Object> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        this.f19139n.putAll(map);
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    public void hp(String[] strArr) {
        this.f19136l = strArr;
    }

    public void hp(a aVar, boolean z2) {
        boolean zEquals;
        if (!z2) {
            a aVar2 = this.ec;
            if (aVar2 == null && aVar == null) {
                zEquals = true;
            } else {
                zEquals = (aVar2 == null || aVar == null) ? false : aVar2.equals(aVar);
            }
            this.ec = aVar;
            if (zEquals) {
                return;
            }
            com.byazt.bcj.l.hp(l.l()).hp().hp(3, (JSONObject) null);
            return;
        }
        this.ec = aVar;
    }

    public void hp(List<String> list) {
        this.cx = list;
    }

    public void hp(JSONObject jSONObject) {
        this.di = jSONObject;
    }

    public void hp(PluginValueSet pluginValueSet) {
        this.lv = pluginValueSet;
    }

    public void hp(com.byazt.htw.hp hpVar) {
        this.nu = hpVar;
    }

    public void hp(Object obj) {
        this.ky = obj;
    }
}
