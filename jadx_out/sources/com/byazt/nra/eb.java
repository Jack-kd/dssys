package com.byazt.nra;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.common.d.i;
import com.anythink.core.common.f.n;
import com.baidu.mobads.sdk.internal.aw;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.dnb.s;
import com.byazt.dnb.zy;
import com.byazt.jdb.hp;
import com.byazt.jkd.gu;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.nra.a;
import com.byazt.pg.jl;
import com.byazt.rx.BaseConstants;
import com.byazt.xci.as;
import com.byazt.xci.kg;
import com.byazt.xci.mp;
import com.byazt.xci.rv;
import com.byazt.xgv.jx;
import com.byazt.xgv.w;
import com.byazt.ymw.e;
import com.byazt.ymw.u;
import com.byazt.yrp.q;
import com.byazt.zn.cx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF, 94})
/* loaded from: classes3.dex */
public class eb extends a {

    /* renamed from: e, reason: collision with root package name */
    public volatile Set<String> f23770e;
    public volatile com.byazt.xgv.w<Boolean> ec;

    /* renamed from: s, reason: collision with root package name */
    public final AtomicBoolean f23773s = new AtomicBoolean(false);
    public volatile com.byazt.tn.j eb = null;

    /* renamed from: q, reason: collision with root package name */
    public volatile int f23772q = -5;
    public volatile boolean gu = false;
    public final long jl = System.currentTimeMillis();
    public volatile boolean zy = false;

    /* renamed from: k, reason: collision with root package name */
    public volatile boolean f23771k = false;

    /* renamed from: v, reason: collision with root package name */
    public long f23775v = -1;

    /* renamed from: u, reason: collision with root package name */
    public long f23774u = -1;
    public long xs = -1;
    public boolean vv = false;
    public final AtomicInteger sz = new AtomicInteger(0);

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF, MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION})
    /* renamed from: com.byazt.nra.eb$3, reason: invalid class name */
    public class AnonymousClass3 implements jx.l {
        public AnonymousClass3() {
        }

        @Override // com.byazt.xgv.jx.l
        public void hp() throws Exception {
            if (eb.this.f23772q != -3) {
                return;
            }
            e.jx().postDelayed(new Runnable() { // from class: com.byazt.nra.eb.3.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.uid.w.l(new com.byazt.uid.eb("live pl retry") { // from class: com.byazt.nra.eb.3.1.1
                        @Override // java.lang.Runnable
                        public void run() throws JSONException {
                            if (eb.this.f23772q != -3) {
                                return;
                            }
                            eb.this.f23773s.set(false);
                            eb.this.hp();
                        }
                    });
                }
            }, 10000L);
        }
    }

    public eb() throws JSONException {
        if (s.hp()) {
            s.j(new Runnable() { // from class: com.byazt.nra.eb.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    eb.this.q();
                }
            });
        } else {
            q();
        }
    }

    private void e() {
        if (!this.zy && jl()) {
            this.zy = true;
            e.jx().postDelayed(new Runnable() { // from class: com.byazt.nra.eb.2
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.uid.w.l(new com.byazt.uid.eb("doInitLive") { // from class: com.byazt.nra.eb.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            eb.this.zy();
                        }
                    });
                }
            }, gu());
        }
    }

    private void ec() {
        if (com.byazt.jkd.e.j() && this.ec != null) {
            this.ec.jx();
        }
    }

    private long gu() {
        com.byazt.jkd.l lVarWf = sz.l().wf();
        long jL = com.byazt.jkd.j.hp;
        if (lVarWf != null) {
            jL = lVarWf.l();
        }
        if (System.currentTimeMillis() - this.jl > jL) {
            return 0L;
        }
        return jL;
    }

    private boolean jl() {
        if (com.byazt.jz.s.u().q() && this.eb == null) {
            return false;
        }
        com.byazt.jkd.l lVarWf = sz.l().wf();
        if (lVarWf != null) {
            if (lVarWf.w()) {
                return this.gu;
            }
            return true;
        }
        if (com.byazt.jkd.j.f21573l) {
            return this.gu;
        }
        return true;
    }

    private void k() {
        Function<SparseArray<Object>, Object> functionY = com.byazt.jz.s.u().y();
        if (functionY == null) {
            return;
        }
        a_((String) hp(functionY, 8, String.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() throws JSONException {
        k();
        com.byazt.jz.s.u().hp("com.byted.live.lite", jx(zy.l("com.byted.live.lite")), this.f23756w, null);
        if (!sz.l().zd()) {
            this.f23772q = -4;
        } else {
            e();
            this.f23775v = com.byazt.jz.l.hp().get("live_last_init_time", 0L);
        }
    }

    private Map u() throws JSONException {
        String strL;
        Map map = new HashMap();
        map.put("app_name", sz.getContext().getPackageName());
        kg kgVarDb = sz.l().db();
        if (kgVarDb != null) {
            map.put("partner", kgVarDb.jx());
            map.put("p_secret", kgVarDb.j());
            map.put("g_appid", String.valueOf(kgVarDb.l()));
        }
        map.put("channel", "csj_channel");
        map.put(aw.f11060a, Boolean.valueOf(u.jx()));
        map.put("ec_host_appid", "1371");
        HashMap map2 = new HashMap();
        map2.put("device_score", com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", com.byazt.el.hp.j()));
        if (!com.byazt.jz.s.u().eb()) {
            map2.put("enable_init_oaid", "false");
        }
        if (!com.byazt.jz.s.u().zy()) {
            map2.put("can_use_ip", "false");
        }
        if (!com.byazt.jz.s.u().j()) {
            map2.put("can_use_sensor", "false");
        }
        if (com.byazt.jz.s.u().q()) {
            String oaid = ((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getOAID(false);
            if (!com.byazt.wu.hp.jx() || TextUtils.isEmpty(oaid)) {
                strL = cx.l(this.eb);
            } else {
                map2.remove("enable_init_oaid");
                strL = cx.l(oaid);
            }
            if (!TextUtils.isEmpty(strL)) {
                map2.put("oaid_object", strL);
            }
        }
        com.byazt.jkd.l lVarWf = sz.l().wf();
        if (lVarWf != null) {
            map.put("sub_process", Boolean.valueOf(lVarWf.hp()));
        }
        map.put("c_control", com.byazt.jz.s.u().vv());
        j(map2);
        com.byazt.jkd.l lVarWf2 = sz.l().wf();
        if (lVarWf2 == null) {
            hp(map, map2);
            return map;
        }
        JSONObject jSONObjectJx = lVarWf2.jx();
        if (jSONObjectJx == null) {
            hp(map, map2);
            return map;
        }
        Iterator<String> itKeys = jSONObjectJx.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map2.put(next, String.valueOf(jSONObjectJx.opt(next)));
        }
        map.put("live_tob_init_extra", map2);
        return map;
    }

    private boolean v() throws NumberFormatException {
        try {
            if (d.f21856j >= 7000) {
                int iJx = Integer.parseInt(this.f23756w.replaceAll("\\.", ""));
                if (iJx == 0) {
                    iJx = zy.jx("com.byted.live.lite");
                }
                if (iJx <= 211413) {
                    return false;
                }
            }
        } catch (Exception unused) {
        }
        gu guVarL = sz.l();
        kg kgVarDb = guVarL.db();
        int iL = com.byazt.jz.s.u().o().l();
        return (kgVarDb == null || !kgVarDb.w() || !guVarL.zd() || iL == 4 || iL == 5) ? false : true;
    }

    private void vv() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("init_max_count", Integer.valueOf(com.byazt.jkd.e.l()));
            jSONObject.put("uuid", com.byazt.lca.hp.jx());
            jSONObject.putOpt("has_install", Boolean.valueOf(this.vv));
            jSONObject.put(n.b.f3359h, this.sz.get());
            jSONObject.putOpt("live_plugin_version", this.f23756w);
        } catch (JSONException unused) {
        }
        k.hp().w(jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xs() {
        Object objL = l("getLiveSdkConfig");
        if (objL == null || !(objL instanceof JSONObject)) {
            return;
        }
        this.jx = (JSONObject) objL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zy() {
        Object objApply;
        this.xs = SystemClock.elapsedRealtime();
        if (this.hp == null) {
            this.hp = com.byazt.jz.s.u().a(2);
        }
        boolean zBooleanValue = false;
        if (this.hp != null) {
            this.hp.apply(com.byazt.wi.j.hp().hp(9).hp(Void.class).hp(0, new com.byazt.cp.hp(this)).l());
        }
        Function<SparseArray<Object>, Object> functionY = com.byazt.jz.s.u().y();
        if (functionY != null && (objApply = functionY.apply(com.byazt.wi.j.hp().hp(6).hp(Boolean.class).hp(0, "com.byted.live.lite").l())) != null) {
            zBooleanValue = ((Boolean) objApply).booleanValue();
        }
        if (zBooleanValue && this.f23772q != 2) {
            this.f23772q = 1;
        }
        com.byazt.oz.jx.jx(21, l() > 0 ? "1" : "0");
        com.byazt.oz.jx.jx(20, l() == 2 ? "1" : "0");
    }

    @Override // com.byazt.nra.j
    public boolean a() {
        return this.f23772q == 2;
    }

    @Override // com.byazt.nra.j
    public JSONObject s() {
        return this.jx;
    }

    private void j(Map<String, Object> map) {
        com.byazt.sii.eb ebVarXs = com.byazt.jz.s.u().xs();
        map.put("can_read_imei", hp(com.byazt.sii.eb.canRead(ebVarXs, 0)));
        map.put("can_read_imsi", hp(com.byazt.sii.eb.canRead(ebVarXs, 1)));
        map.put("can_read_mac", hp(com.byazt.sii.eb.canRead(ebVarXs, 2)));
        map.put("can_read_serial", hp(com.byazt.sii.eb.canRead(ebVarXs, 3)));
        map.put("can_read_meid", "false");
        map.put("can_read_iccid", "false");
        map.put("can_read_imeisv", "false");
    }

    private String jx(int i2) {
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

    @Override // com.byazt.nra.j
    public int l() {
        return this.f23772q;
    }

    @Override // com.byazt.nra.j
    public int w() {
        Object objL;
        return (this.hp == null || !a() || (objL = l("hasAuthenticated")) == null || !(objL instanceof Boolean)) ? false : ((Boolean) objL).booleanValue() ? 2 : 1;
    }

    private <T> T hp(Function<SparseArray<Object>, Object> function, int i2, Class<T> cls) {
        T t2 = (T) function.apply(com.byazt.wi.j.hp().hp(i2).hp((Class<?>) cls).hp(0, "com.byted.live.lite").l());
        if (t2 != null) {
            return t2;
        }
        return null;
    }

    private Object l(String str) {
        if (this.f23772q != 2) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("expand_method_name", str);
        if (this.hp != null) {
            return this.hp.apply(com.byazt.wi.j.hp().hp(7).hp(Void.class).hp(0, map).l());
        }
        return null;
    }

    @Override // com.byazt.nra.hp, com.byazt.nra.j
    public void hp() throws JSONException {
        if (com.byazt.jkd.e.j() && this.f23773s.get()) {
            if (this.f23772q != -3) {
                return;
            }
        } else if (this.f23773s.get()) {
            return;
        }
        if (com.byazt.jkd.e.j()) {
            if (!this.f23771k) {
                return;
            }
        } else if (this.f23772q != 5) {
            return;
        }
        if (this.f23772q != 2 && v()) {
            if (!com.byazt.zls.l.jx(this.f23756w)) {
                com.byazt.zls.l.j(this.f23756w);
                return;
            }
            this.vv = zy.s("com.byted.live.lite");
            this.f23774u = SystemClock.elapsedRealtime();
            this.f23773s.set(true);
            com.byazt.zls.l.hp(this.f23756w);
            this.f23772q = 4;
            if (this.hp != null) {
                this.hp.apply(com.byazt.wi.j.hp().hp(5).hp(Void.class).hp(0, u()).l());
                this.sz.incrementAndGet();
                vv();
            }
            com.byazt.zls.l.l(this.f23756w);
        }
    }

    private void jx(String str) {
        if (com.byazt.jkd.e.j() && !TextUtils.isEmpty(str)) {
            if (str.contains("UnknownHostException") || str.contains("SocketException")) {
                if (((jl) com.byazt.ym.j.getService("device_info_new")).getRealNetworkType(0L) == 0) {
                    com.byazt.xgv.jx.hp().hp(new AnonymousClass3());
                } else if (this.ec == null) {
                    this.ec = new w.hp(new Callable<Boolean>() { // from class: com.byazt.nra.eb.4
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // java.util.concurrent.Callable
                        public Boolean call() throws Exception {
                            com.byazt.uid.w.l(new com.byazt.uid.eb("live pl retry") { // from class: com.byazt.nra.eb.4.1
                                @Override // java.lang.Runnable
                                public void run() throws JSONException {
                                    eb.this.f23773s.set(false);
                                    eb.this.hp();
                                }
                            });
                            return Boolean.FALSE;
                        }
                    }).hp(10000L).hp(com.byazt.jkd.e.l()).hp();
                    this.ec.l();
                }
            }
        }
    }

    private JSONObject l(int i2, String str) {
        as asVarGu;
        JSONArray jSONArrayS;
        if (this.f23754a != null && this.f23754a.get() != null) {
            mp mpVar = this.f23754a.get();
            if (TextUtils.equals(mpVar.n(), str) && (asVarGu = mpVar.gu()) != null && (jSONArrayS = asVarGu.s()) != null && jSONArrayS.length() != 0) {
                int length = jSONArrayS.length();
                for (int i3 = 0; i3 < length; i3++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayS.optJSONObject(i3);
                    if (jSONObjectOptJSONObject.optInt("type") == i2) {
                        return jSONObjectOptJSONObject;
                    }
                }
            }
        }
        return null;
    }

    @Override // com.byazt.nra.j
    public void j() {
        if (this.hp == null || !a()) {
            return;
        }
        l("warmingUpBeforeEnter");
    }

    private boolean j(String str) {
        if (str.startsWith("csj_saas")) {
            return true;
        }
        if (this.f23770e == null) {
            this.f23770e = new HashSet(11);
            this.f23770e.add("saas_easyplayable");
            this.f23770e.add("real_auth_status");
            this.f23770e.add("live_panel");
            this.f23770e.add("live_exit");
            this.f23770e.add("mnpl_user_close");
            this.f23770e.add("clickarea");
            this.f23770e.add("enterSection");
            this.f23770e.add("mini_playable_real_show");
            this.f23770e.add("mnpl_user_close");
            this.f23770e.add("mnpl_sdk_lifecycle_status");
        }
        return this.f23770e.contains(str);
    }

    @Override // com.byazt.nra.hp, com.byazt.nra.j
    public void jx(q qVar) throws JSONException {
        if (qVar == null || this.gu || !j(qVar)) {
            return;
        }
        this.gu = true;
        q();
    }

    public void l(Map<String, String> map) {
        com.byazt.gu.l lVar;
        if (map == null || map.size() == 0) {
            return;
        }
        String str = map.get("type");
        String str2 = map.get("status");
        String str3 = map.get("open_uid");
        String str4 = map.get("task_key");
        if (!"1".equals(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = l(Integer.parseInt(str), str4).optJSONObject("extra");
            if (jSONObjectOptJSONObject == null) {
                return;
            }
            String strOptString = jSONObjectOptJSONObject.optString("callback");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strOptString);
            if (!TextUtils.isEmpty(jSONObject.optString("name")) && (lVar = (com.byazt.gu.l) com.byazt.jz.n.hp(this.f23755j, com.byazt.gu.l.class)) != null) {
                HashMap map2 = new HashMap();
                map2.put("open_uid", str3);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map2.put(next, jSONObject.opt(next));
                }
                lVar.hp(3, map2);
            }
        } catch (Exception unused) {
        }
    }

    public void jx(Map<String, String> map) {
        com.byazt.gu.l lVar = (com.byazt.gu.l) com.byazt.jz.n.hp(this.f23755j, com.byazt.gu.l.class);
        if (lVar == null) {
            return;
        }
        lVar.hp(4, map);
    }

    @Override // com.byazt.nra.hp, com.byazt.nra.j
    public long jx() {
        return this.f23775v;
    }

    private boolean j(q qVar) {
        JSONObject jSONObjectQ_ = qVar.q_();
        if (jSONObjectQ_ == null) {
            return false;
        }
        if (jSONObjectQ_.optInt("landing_type", 0) != 4 && TextUtils.isEmpty(qVar.e())) {
            return com.byazt.zls.hp.hp(qVar);
        }
        return true;
    }

    private void hp(Map map, Map<String, Object> map2) {
        map2.put("allow_apm_init", com.byazt.jkd.j.jx);
        map2.put("allow_npth_init", com.byazt.jkd.j.f21572j);
        map2.put("allow_vlog_init", com.byazt.jkd.j.f21574w);
        map2.put("sec_init_use_thread", com.byazt.jkd.j.f21571a);
        map.put("live_tob_init_extra", map2);
    }

    private String hp(boolean z2) {
        return z2 ? "true" : "false";
    }

    public void hp(int i2, String str, boolean z2, boolean z3) throws JSONException {
        int i3 = this.f23772q;
        this.f23772q = i2;
        if (i2 == -3) {
            if (!z2 && this.f23772q != i3) {
                hp(str, z3, false);
            }
            jx(str);
            return;
        }
        if (i2 == 5) {
            this.f23771k = true;
            return;
        }
        if (i2 == 1) {
            com.byazt.oz.jx.jx(21, "1");
            return;
        }
        if (i2 != 2) {
            return;
        }
        ec();
        this.f23775v = SystemClock.elapsedRealtime();
        if (!z2 && this.f23772q != i3) {
            hp(str, z3, true);
        }
        com.byazt.oz.jx.jx(21, "1");
        com.byazt.oz.jx.jx(20, "1");
        k();
        xs();
        com.byazt.jz.l.hp().put("live_last_init_time", this.f23775v);
    }

    private void hp(String str, boolean z2, boolean z3) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("msg", str);
            jSONObject.putOpt("has_install", Boolean.valueOf(this.vv));
            jSONObject.putOpt("fake_init", Boolean.valueOf(z2));
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            jSONObject.putOpt("init_cost", Long.valueOf(jElapsedRealtime - this.f23774u));
            jSONObject.putOpt("cost", Long.valueOf(jElapsedRealtime - this.xs));
            jSONObject.putOpt(cb.f11292o, Boolean.valueOf(z3));
            jSONObject.putOpt("init_max_count", Integer.valueOf(com.byazt.jkd.e.l()));
            jSONObject.put("uuid", com.byazt.lca.hp.jx());
            jSONObject.put(n.b.f3359h, this.sz.get());
            jSONObject.putOpt("live_plugin_version", this.f23756w);
        } catch (JSONException unused) {
        }
        k.hp().j(jSONObject);
    }

    public void hp(boolean z2, String str) throws JSONException {
        String str2;
        com.byazt.gu.l lVar;
        s.hp(new com.byazt.uid.eb("getLiveSdk") { // from class: com.byazt.nra.eb.5
            @Override // java.lang.Runnable
            public void run() {
                eb.this.xs();
            }
        });
        if (this.f23754a != null && this.f23754a.get() != null) {
            com.byazt.jdb.j.hp(z2 ? 2 : 1, this.f23788l != null ? this.f23788l : "", this.f23754a.get());
        }
        if (!z2 || (str2 = this.f23755j) == null || (lVar = (com.byazt.gu.l) com.byazt.jz.n.hp(str2, com.byazt.gu.l.class)) == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("open_uid", str);
        lVar.hp(1, map);
        hp(10002, this.f23755j);
    }

    private JSONObject hp(int i2, String str) throws JSONException {
        JSONObject jSONObjectL = l(i2, str);
        if (jSONObjectL != null) {
            try {
                jSONObjectL.putOpt("status", 1);
            } catch (JSONException unused) {
            }
            mp mpVar = this.f23754a.get();
            if (mpVar != null) {
                com.byazt.by.hp.hp(str, mpVar.j() + "_" + i2);
            }
        }
        return jSONObjectL;
    }

    public void hp(Map<String, String> map) throws JSONException {
        String str = map.get("label");
        final String str2 = map.get("req_id");
        if (!TextUtils.isEmpty(str) && j(str)) {
            mp mpVar = this.f23754a != null ? this.f23754a.get() : null;
            final String str3 = map.get(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
            com.byazt.dhy.hp hpVar = new com.byazt.dhy.hp() { // from class: com.byazt.nra.eb.6
                @Override // com.byazt.dhy.hp
                public void onSend(JSONObject jSONObject) throws JSONException {
                    if (TextUtils.isEmpty(str3)) {
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject(str3);
                    jSONObject2.put("req_id", str2);
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2);
                }
            };
            if (mpVar != null) {
                com.byazt.jdb.j.hp(mpVar, this.f23788l, str, hpVar);
                String strNs = mpVar.ns();
                if (TextUtils.equals(strNs, str2)) {
                    return;
                }
                hp(str2, str, "mate req is " + strNs);
                return;
            }
            new hp.C0281hp().hp(this.f23788l).l(str).hp(hpVar);
            hp(str2, str, TTAdConstant.MATE_IS_NULL_MSG);
        }
    }

    private void hp(String str, String str2, String str3) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("req_id", str);
            jSONObject.putOpt("label", str2);
            jSONObject.putOpt("mesage", str3);
        } catch (JSONException unused) {
        }
        k.hp().hp("reportPangleEvent", jSONObject, (Throwable) null);
    }

    @Override // com.byazt.nra.a, com.byazt.nra.j
    public int hp(final q qVar, final jx jxVar, final String str, final Map<String, Object> map) throws JSONException {
        if (qVar == null) {
            return 0;
        }
        final String strT_ = qVar.t_();
        if (TextUtils.isEmpty(strT_)) {
            return 0;
        }
        if (this.f23772q != 2) {
            return -1;
        }
        this.f23788l = str;
        this.f23754a = new SoftReference<>(com.byazt.rj.jx.hp(qVar, map));
        rv rvVarC_ = qVar.C_();
        if (2 != w() && rvVarC_ != null) {
            final boolean z2 = rvVarC_.j() == 1;
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final long jCurrentTimeMillis = System.currentTimeMillis();
            if (hp(qVar, new a.hp() { // from class: com.byazt.nra.eb.7
                @Override // com.byazt.nra.a.hp
                public void hp(boolean z3) throws JSONException {
                    boolean z4;
                    if (atomicBoolean.compareAndSet(false, true)) {
                        eb.this.hp(qVar, jxVar, strT_, z3, z2, str, 1, map);
                        z4 = false;
                    } else {
                        z4 = true;
                    }
                    k.hp().hp(com.byazt.rj.jx.hp(qVar, (Map<String, Object>) map), System.currentTimeMillis() - jCurrentTimeMillis, z3, z4);
                }
            }, true, map)) {
                long jW = rvVarC_.w();
                if (jW > 0) {
                    e.l().postDelayed(new Runnable() { // from class: com.byazt.nra.eb.8
                        @Override // java.lang.Runnable
                        public void run() throws JSONException {
                            if (atomicBoolean.compareAndSet(false, true)) {
                                eb.this.hp(qVar, jxVar, strT_, false, z2, str, 2, map);
                            }
                        }
                    }, jW);
                }
                return 2;
            }
        }
        int iHp = hp(strT_);
        hp(iHp, qVar, false, 0);
        return iHp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(q qVar, jx jxVar, String str, boolean z2, boolean z3, String str2, int i2, Map<String, Object> map) throws JSONException {
        int iHp = hp(str);
        hp(iHp, qVar, z2, i2);
        if (iHp != 1) {
            if (jxVar != null) {
                jxVar.hp(iHp);
            }
        } else {
            if (z2 || !z3) {
                return;
            }
            new com.byazt.jf.hp().hp(str2).hp(sz.getContext(), map, qVar);
        }
    }

    private void hp(int i2, q qVar, boolean z2, int i3) throws JSONException {
        if (qVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("handle_result", Integer.valueOf(i2));
            jSONObject.put("req_id", qVar.ns());
            jSONObject.put("auth", z2);
            rv rvVarC_ = qVar.C_();
            if (rvVarC_ != null) {
                jSONObject.put("saas_info", rvVarC_.hp());
            }
            jSONObject.put("status", i3);
            jSONObject.put(com.sigmob.sdk.base.n.f36450m, qVar.w_());
            jSONObject.put("ec_scheme", qVar.t_());
        } catch (Exception unused) {
        }
        k.hp().l(jSONObject);
    }

    @Override // com.byazt.nra.j
    public void hp(com.byazt.tn.j jVar) throws JSONException {
        this.eb = jVar;
        q();
    }
}
