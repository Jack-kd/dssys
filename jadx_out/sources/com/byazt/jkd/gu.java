package com.byazt.jkd;

import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.byazt.jz.d;
import com.byazt.jz.nu;
import com.byazt.jz.sz;
import com.byazt.lca.w;
import com.byazt.qk.n;
import com.byazt.vz.MultiWebview;
import com.byazt.xci.cx;
import com.byazt.xci.ea;
import com.byazt.xci.hd;
import com.byazt.xci.kg;
import com.byazt.xci.ky;
import com.byazt.xci.lv;
import com.byazt.xci.r;
import com.byazt.xci.t;
import com.byazt.xci.ud;
import com.byazt.xt.hp;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.byazt.zn.b;
import com.byazt.zn.di;
import com.byazt.zn.dy;
import com.byazt.zn.o;
import com.byazt.zn.wv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.kwad.sdk.core.response.model.SdkConfigData;
import com.umeng.analytics.pro.cl;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes.dex */
public class gu implements w {

    /* renamed from: j, reason: collision with root package name */
    public static int f21531j = Integer.MAX_VALUE;
    public static int jx = Integer.MAX_VALUE;
    public static final String qk = null;

    /* renamed from: w, reason: collision with root package name */
    public static int f21532w = Integer.MAX_VALUE;

    /* renamed from: a, reason: collision with root package name */
    public volatile com.byazt.ctq.w f21533a;
    public int ad;
    public int ae;
    public boolean ai;
    public JSONObject aj;
    public com.byazt.vfd.hp an;
    public int ba;
    public String be;
    public int bf;
    public JSONObject bj;
    public boolean bk;
    public volatile int bt;
    public JSONObject bv;
    public JSONObject bx;
    public int cd;
    public int ce;
    public Boolean cg;
    public int ci;
    public Boolean cm;
    public String cs;
    public int ct;
    public JSONObject cu;
    public Boolean cv;
    public kg db;
    public int dg;
    public boolean dh;
    public boolean ds;
    public boolean dz;
    public volatile com.byazt.ctq.jx eb;
    public volatile SharedPreferences ei;
    public int el;
    public JSONObject eq;
    public a er;
    public boolean eu;
    public int fa;
    public int fe;
    public int fu;
    public JSONObject fv;

    /* renamed from: g, reason: collision with root package name */
    public String f21539g;
    public int gh;
    public int gi;
    public int gs;
    public String gv;
    public float gy;

    /* renamed from: h, reason: collision with root package name */
    public final int f21540h;
    public volatile SharedPreferences hb;
    public int hc;
    public int hf;
    public JSONObject hl;
    public String hx;
    public boolean hy;

    /* renamed from: i, reason: collision with root package name */
    public int f21541i;
    public String id;
    public jl ij;
    public String in;
    public String ja;
    public int jb;
    public Object jc;
    public int jm;
    public boolean jq;
    public int ju;
    public int jv;
    public String jw;
    public boolean ke;
    public final AtomicInteger kf;
    public boolean ki;
    public int kp;
    public int kq;
    public int ks;
    public int kx;
    public boolean la;
    public int ld;
    public int ll;
    public String lr;
    public int lu;
    public float ly;
    public int lz;
    public JSONObject me;
    public long mk;
    public float mm;
    public volatile int mn;
    public JSONObject mt;
    public n mz;
    public String nc;
    public int nf;
    public String nl;
    public boolean nn;
    public JSONObject nq;
    public JSONObject og;
    public Map<String, Object> oh;
    public int oi;
    public float on;
    public int or;

    /* renamed from: p, reason: collision with root package name */
    public int f21548p;
    public float pf;
    public boolean pj;
    public float pk;
    public JSONObject pn;
    public String pp;
    public String qa;
    public final Object qb;
    public int qd;
    public boolean qe;
    public JSONObject qj;
    public Boolean qn;
    public JSONObject qo;
    public boolean qq;
    public ky qu;
    public volatile com.byazt.ctq.jx qy;
    public int rf;
    public String ri;
    public List<Integer> rl;
    public final AtomicBoolean rm;
    public String ro;
    public long rp;
    public boolean rt;
    public String rv;
    public int rw;
    public String rz;

    /* renamed from: s, reason: collision with root package name */
    public int f21551s;
    public boolean sf;
    public float sh;
    public int sq;
    public boolean td;
    public boolean ti;
    public boolean tn;
    public JSONArray tq;
    public float tr;
    public int tx;
    public int ty;
    public String ub;
    public int uc;
    public String ud;
    public boolean uf;
    public int uj;
    public JSONArray ut;
    public int vd;
    public SharedPreferences vg;
    public JSONObject vi;
    public Boolean vk;
    public final Object vp;
    public String vq;
    public int vr;
    public boolean vt;
    public int vx;
    public boolean wc;
    public JSONObject wf;
    public volatile boolean wg;
    public int wi;
    public boolean wj;
    public JSONObject wk;
    public int wu;
    public l xe;
    public int xj;
    public int xm;
    public int xn;
    public eb xq;
    public int xr;

    /* renamed from: y, reason: collision with root package name */
    public long f21556y;
    public int yl;
    public String yr;
    public int yt;
    public boolean yu;
    public int yz;

    /* renamed from: z, reason: collision with root package name */
    public final String f21557z;
    public int zd;
    public int zh;
    public int zp;
    public volatile boolean zv;
    public JSONObject zx;
    public static final int[] sv = {1, 3, 5};
    public static volatile boolean yi = false;
    public static volatile boolean fp = true;

    /* renamed from: q, reason: collision with root package name */
    public int f21549q = Integer.MAX_VALUE;

    /* renamed from: e, reason: collision with root package name */
    public Set<String> f21537e = Collections.synchronizedSet(new HashSet());
    public int gu = Integer.MAX_VALUE;
    public int jl = Integer.MAX_VALUE;
    public int zy = Integer.MAX_VALUE;

    /* renamed from: k, reason: collision with root package name */
    public int f21542k = Integer.MAX_VALUE;

    /* renamed from: v, reason: collision with root package name */
    public String f21554v = null;

    /* renamed from: u, reason: collision with root package name */
    public int f21553u = Integer.MAX_VALUE;
    public int xs = Integer.MAX_VALUE;
    public int vv = Integer.MAX_VALUE;
    public int ec = Integer.MIN_VALUE;
    public int sz = Integer.MIN_VALUE;

    /* renamed from: n, reason: collision with root package name */
    public int f21546n = Integer.MIN_VALUE;
    public int ns = Integer.MIN_VALUE;
    public int cx = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f21534b = Integer.MAX_VALUE;
    public int di = Integer.MAX_VALUE;

    /* renamed from: o, reason: collision with root package name */
    public int f21547o = Integer.MAX_VALUE;

    /* renamed from: d, reason: collision with root package name */
    public int f21536d = -1;
    public int wv = Integer.MIN_VALUE;
    public int hq = Integer.MIN_VALUE;
    public String nu = null;
    public int hp = 0;
    public int dy = Integer.MIN_VALUE;
    public int lv = Integer.MAX_VALUE;

    /* renamed from: r, reason: collision with root package name */
    public int f21550r = -1;

    /* renamed from: l, reason: collision with root package name */
    public int f21543l = 10;
    public int pu = Integer.MAX_VALUE;
    public com.byazt.kl.l ky = null;
    public int xh = 1;

    /* renamed from: ms, reason: collision with root package name */
    public com.byazt.jde.j f21545ms = null;
    public boolean as = false;
    public int kg = Integer.MAX_VALUE;
    public int mp = Integer.MIN_VALUE;

    /* renamed from: m, reason: collision with root package name */
    public final Map<String, hp> f21544m = new ConcurrentHashMap();

    /* renamed from: f, reason: collision with root package name */
    public Map<String, com.byazt.gr.j> f21538f = new HashMap();
    public Set<String> nd = Collections.synchronizedSet(new HashSet());
    public final List<Object> hd = new CopyOnWriteArrayList();
    public JSONObject ea = null;
    public String su = "";
    public int pc = Integer.MAX_VALUE;
    public int fi = Integer.MAX_VALUE;
    public long nr = 0;
    public Set<String> rk = new ConcurrentSkipListSet();
    public Set<String> wt = new ConcurrentSkipListSet();
    public Set<String> ru = new ConcurrentSkipListSet();
    public int gd = Integer.MAX_VALUE;
    public int yj = Integer.MAX_VALUE;
    public long tw = 2147483647L;
    public int jd = Integer.MAX_VALUE;
    public int qh = Integer.MAX_VALUE;

    /* renamed from: t, reason: collision with root package name */
    public int f21552t = Integer.MAX_VALUE;

    /* renamed from: x, reason: collision with root package name */
    public int f21555x = Integer.MAX_VALUE;
    public int bu = Integer.MAX_VALUE;
    public int zb = 0;
    public long df = 0;
    public int ux = 0;
    public long pi = 0;
    public int ed = Integer.MAX_VALUE;
    public JSONObject lp = null;

    /* renamed from: c, reason: collision with root package name */
    public JSONObject f21535c = null;
    public Set<String> ku = null;
    public Set<String> ov = null;
    public JSONObject gb = null;
    public int xv = 3;
    public int pg = Integer.MAX_VALUE;

    public gu() {
        int iJx = com.byazt.eq.l.jx();
        this.f21540h = iJx;
        this.ad = iJx;
        this.f21557z = "live_sdk_conf";
        this.gh = Integer.MAX_VALUE;
        this.f21541i = Integer.MAX_VALUE;
        this.qa = null;
        this.nc = null;
        this.jb = Integer.MAX_VALUE;
        this.vx = Integer.MAX_VALUE;
        this.fu = Integer.MAX_VALUE;
        this.ld = 0;
        this.ly = 0.0f;
        this.gy = 0.0f;
        this.tn = false;
        this.tr = 8.5f;
        this.pf = 7.3f;
        this.cs = null;
        this.gv = null;
        this.be = null;
        this.nl = "apps.bytesfield.com";
        this.ae = Integer.MAX_VALUE;
        this.fe = Integer.MAX_VALUE;
        this.ty = 0;
        this.ci = 2;
        this.zv = false;
        this.on = -1.0f;
        this.sh = 2.1474836E9f;
        this.mt = null;
        this.cd = Integer.MAX_VALUE;
        this.bf = 2;
        this.me = null;
        this.eq = null;
        this.dh = false;
        this.lu = 3;
        this.nf = 0;
        this.xn = 1;
        this.ba = Integer.MAX_VALUE;
        this.bv = null;
        this.or = 0;
        this.id = null;
        this.cu = null;
        this.ll = 0;
        this.yt = 0;
        this.ja = null;
        this.hc = 1;
        this.ai = true;
        this.hy = false;
        this.pn = null;
        this.lz = 1;
        this.hx = "跳过";
        this.uj = 0;
        this.er = new a();
        this.sq = 0;
        this.rf = 0;
        this.lr = "";
        this.in = "95d9ae8de4e66aaf458fdd49879c67fa";
        this.ri = "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/uchain/20108/uchain_dsl.bin";
        this.f21548p = -1;
        this.rp = -1L;
        this.el = 0;
        this.mk = 2147483647L;
        this.rw = Integer.MAX_VALUE;
        this.jv = Integer.MAX_VALUE;
        this.ks = Integer.MAX_VALUE;
        this.ju = Integer.MAX_VALUE;
        this.vr = Integer.MAX_VALUE;
        this.ct = Integer.MAX_VALUE;
        this.gs = Integer.MAX_VALUE;
        this.mn = Integer.MAX_VALUE;
        this.hb = null;
        this.wf = null;
        this.qo = null;
        this.bx = null;
        this.ei = null;
        this.qb = new Object();
        this.jc = new Object();
        this.rm = new AtomicBoolean(false);
        this.f21533a = null;
        this.aj = null;
        this.qq = false;
        this.nn = false;
        this.rt = false;
        this.pj = false;
        this.rl = new ArrayList();
        this.ds = false;
        this.pk = -1.0f;
        this.uc = -1;
        this.mm = -1.0f;
        this.vd = -1;
        this.zp = 0;
        this.f21551s = 0;
        this.xq = new eb();
        this.ij = null;
        this.qe = true;
        this.la = false;
        this.gi = 0;
        this.qd = Integer.MAX_VALUE;
        this.yu = false;
        this.ke = false;
        this.uf = false;
        this.kq = 0;
        this.wi = 1;
        this.oh = new HashMap();
        this.ro = "";
        this.cv = null;
        this.vk = null;
        this.bj = null;
        this.wc = true;
        this.jq = true;
        this.ki = false;
        this.wj = false;
        this.sf = false;
        this.jm = Integer.MAX_VALUE;
        this.wg = true;
        this.bt = Integer.MAX_VALUE;
        this.bk = true;
        this.xr = 0;
        this.fa = 0;
        this.kf = new AtomicInteger(-1);
        this.hf = -1;
        this.wu = -1;
        this.ce = -1;
        this.cg = null;
        this.cm = null;
        this.zh = 1000;
        this.yl = 1;
        this.kx = 0;
        this.tx = 0;
        this.kp = -1;
        this.td = false;
        this.eu = true;
        this.oi = Integer.MAX_VALUE;
        this.yz = Integer.MAX_VALUE;
        this.dg = Integer.MAX_VALUE;
        this.vp = new Object();
        this.ud = com.byazt.el.hp.j();
    }

    public static String a() {
        return com.byazt.wu.hp.s() ? "tt_sdk_lp_w_list_bst" : "tt_sdk_lp_w_list";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bj() {
        if (this.hb == null) {
            synchronized (this.qb) {
                try {
                    if (this.hb == null) {
                        this.hb = com.byazt.rz.l.l(sz.getContext(), com.byazt.pz.hp.l(com.byazt.el.hp.hp().hp(this.ud), eb()), 0);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void dz() {
        jx();
        this.f21533a.put("open_mini_game", this.wi);
        if (!"https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/".equals(this.f21539g) && !TextUtils.isEmpty(this.f21539g)) {
            this.f21533a.put("img_bucket", this.f21539g);
        }
        SharedPreferences.Editor editorEdit = wc().edit();
        this.f21533a.put("url_stats", this.jw);
        this.f21533a.put("url_alog", this.nc);
        editorEdit.putString("url_stats", this.jw);
        editorEdit.putString("url_alog", this.nc);
        this.f21533a.put("xpath", this.vq);
        if (this.zx != null) {
            this.f21533a.put("digest", this.zx.toString());
        }
        this.f21533a.put("data_time", this.f21556y);
        this.f21533a.put("fetch_template", this.f21541i);
        this.f21533a.put("pyload_h5", this.rv);
        com.byazt.ctq.w wVar = this.f21533a;
        ky kyVar = this.qu;
        wVar.put("insert_js_config", kyVar != null ? kyVar.toString() : "");
        com.byazt.ctq.w wVar2 = this.f21533a;
        com.byazt.vfd.hp hpVar = this.an;
        wVar2.put("white_check_config", hpVar != null ? hpVar.toString() : "");
        this.f21533a.put("splash_check_type", this.pc);
        this.f21533a.put("if_both_open", this.gd);
        this.f21533a.put("adlog_exception_batch", this.qh);
        this.f21533a.put("adlog_interval", this.tw);
        this.f21533a.put("enable_kite", this.vv);
        this.f21533a.put("adlog_batch", this.jd);
        this.f21533a.put("adlog_debug", this.f21552t);
        this.f21533a.put("adlog_monitor", this.f21555x);
        this.f21533a.put("enable_ttvideo", this.f21536d);
        this.f21533a.put("enable_zaid", this.wv);
        this.f21533a.put("player_stats_check_switch", this.hq);
        this.f21533a.put("enable_cdn_opt", this.f21534b);
        this.f21533a.put("download_button_effect", this.f21547o);
        this.f21533a.put("ext_use_type", this.pi);
        this.f21533a.put("enable_glgpu", 0);
        this.f21533a.put("enable_dl_ext", this.ux);
        this.f21533a.put("enable_oaid_frequency", this.mp);
        this.f21533a.put("download_receiver_enable", this.pu);
        this.f21533a.put("launch_strategy", this.hp);
        this.f21533a.put("dl_popup_duration", this.dy);
        this.f21533a.put("switch_audio_focus", this.ed);
        this.f21533a.put("opt_show_check", this.lv);
        this.f21533a.put("disable_feed_video_play_by_visible_check", this.f21550r);
        if (this.lp != null) {
            this.f21533a.put("pitaya_general_settings", this.lp.toString());
        }
        if (this.hl != null) {
            this.f21533a.put("live_stream_cof", this.hl.toString());
        }
        if (this.vi != null) {
            this.f21533a.put("video_start", this.vi.toString());
        }
        if (this.fv != null) {
            this.f21533a.put("volume", this.fv.toString());
        }
        if (this.qj != null) {
            this.f21533a.put("brightness", this.qj.toString());
        }
        if (this.nq != null) {
            this.f21533a.put("dl_notification", this.nq.toString());
        }
        this.f21533a.put("disable_show_url", this.ba);
        if (this.bv != null) {
            this.f21533a.put("sensor_direction", this.bv.toString());
        }
        if (this.og != null) {
            this.f21533a.put("pitaya_business_conf", this.og.toString());
        }
        if (this.tq != null) {
            this.f21533a.put("pitaya_applog_event_filter", this.tq.toString());
        }
        com.byazt.ctq.w wVar3 = this.f21533a;
        JSONObject jSONObject = this.gb;
        wVar3.put("http_drop", jSONObject == null ? "" : jSONObject.toString());
        this.f21533a.put("stats_batch", this.xv);
        this.f21533a.put("max_memory_event_count", this.pg);
        this.f21533a.put("event_switch", this.ad);
        this.f21533a.put("pre_fetch_cnt", this.f21543l);
        this.f21533a.put("web_upload_enable", this.f21549q);
        this.f21533a.put("web_upload_content_type", this.f21537e);
        this.f21533a.put("web_upload_send_restowv", this.gu);
        this.f21533a.put("web_upload_max_retry", this.xs);
        this.f21533a.put("web_upload_max_single_file", this.jl);
        this.f21533a.put("web_upload_max_zip_file", this.zy);
        this.f21533a.put("web_upload_report_url", this.f21554v);
        this.f21533a.put("web_upload_storage_type", this.f21553u);
        this.f21533a.put("web_upload_report_only_wifi", this.f21542k);
        this.f21533a.put("app_list_control", this.fi);
        this.f21533a.put("max_tpl_cnts", this.jb);
        this.f21533a.put("fetch_tpl_timeout_ctrl", this.vx);
        this.f21533a.put("interact_show_after_time", this.fu);
        this.f21533a.put("fetch_tpl_timeout_ctrl_bad_device", this.ld);
        this.f21533a.put("tpl_render_error_rate_h5", this.ly);
        this.f21533a.put("tpl_render_error_rate_native", this.gy);
        this.f21533a.put("mid_value", this.tr);
        this.f21533a.put("low_value", this.pf);
        this.f21533a.put("tpl_enable_render_timeout_opt", this.tn);
        this.f21533a.put("open_single_abi", this.ti);
        com.byazt.ctq.w wVar4 = this.f21533a;
        int i2 = this.jm;
        if (i2 == Integer.MAX_VALUE) {
            i2 = 0;
        }
        wVar4.put("show_callback_mult", i2);
        this.f21533a.put("webview_cache_count", this.fe);
        this.f21533a.put("webview_cache_count_v3", this.ty);
        this.f21533a.put("webview_render_concurrent_count", this.ci);
        this.f21533a.put("enable_apm_pv", this.vt);
        this.f21533a.put("hit_app_list_time", this.nr);
        this.f21533a.put("hit_app_list_data", this.rk);
        this.f21533a.put("scheme_list_data", this.wt);
        this.f21533a.put("top_scheme_list_data", this.ru);
        this.f21533a.put("policy_url", this.pp);
        com.byazt.ctq.w wVar5 = this.f21533a;
        Boolean bool = this.cv;
        wVar5.put("use_mediation_map", bool != null ? bool.booleanValue() : false);
        this.f21533a.put("apm_pv_config", this.nu);
        this.f21533a.put("dyn_draw_engine_url", this.cs);
        this.f21533a.put("play_component_ugen_engine_url", this.gv);
        this.f21533a.put("local_res_zip_url", this.be);
        this.f21533a.put("ad_pkg_info_url", this.nl);
        this.f21533a.put("sp_key_if_sp_cache", this.ae);
        this.f21533a.put("download_sdk_config", this.su);
        com.byazt.ctq.w wVar6 = this.f21533a;
        JSONObject jSONObject2 = this.eq;
        wVar6.put("thread_config", jSONObject2 != null ? jSONObject2.toString() : "");
        this.f21533a.put("npth_enable_type", this.f21551s);
        this.f21533a.put("is_sp_send_meta", this.qe);
        this.f21533a.put("opt_config", this.xq.toString());
        com.byazt.ctq.w wVar7 = this.f21533a;
        jl jlVar = this.ij;
        wVar7.put("user_interaction_config", jlVar != null ? jlVar.toString() : "");
        this.f21533a.put("kv_config", this.er.toString());
        this.f21533a.put("is_first_plugin_resources", this.la);
        this.f21533a.put("vbtt", this.gh);
        this.f21533a.put("preload_switch", this.yu);
        this.f21533a.put("cache_ana_lru_switch", this.ke);
        this.f21533a.put("cache_ana_expire_switch", this.uf);
        this.f21533a.put("preload_time_point", this.kq);
        this.f21533a.put("app_info_cache_switch", this.dz);
        this.f21533a.put("is_adapt_density", this.wc);
        this.f21533a.put("is_adapt_landscape", this.jq);
        this.f21533a.put("disable_easy_playable", this.wg);
        this.f21533a.put("enable_target_34", this.bt);
        com.byazt.ctq.w wVar8 = this.f21533a;
        JSONObject jSONObject3 = this.bj;
        wVar8.put("dex_strategy", jSONObject3 == null ? "" : jSONObject3.toString());
        this.f21533a.put("disable_repeat_render", this.bk);
        this.f21533a.put("status_bar_adapt", this.xr);
        this.f21533a.put("jump_shield_short_duration", this.zh);
        this.f21533a.put("replace_dummy_video", this.yl);
        this.f21533a.put("template_pull_timeout", this.xm);
        this.f21533a.put("template_pull_type", this.xj);
        if (!TextUtils.isEmpty(this.rz)) {
            this.f21533a.put("template_ids", this.rz);
        }
        if (!TextUtils.isEmpty(this.yr)) {
            this.f21533a.put("tpl_infos", this.yr);
        }
        com.byazt.ctq.w wVar9 = this.f21533a;
        n nVar = this.mz;
        wVar9.put("tpl_timeout_ctrl", nVar != null ? nVar.toString() : "");
        this.f21533a.put("call_stack_rate", this.on);
        this.f21533a.put("gnd_prefetch_cache_ttl", this.rp);
        this.f21533a.put("gnd_prefetch_cache_size", this.f21548p);
        this.f21533a.put("global_sample", this.sh);
        this.f21533a.put("read_video_from_cache", this.cd);
        this.f21533a.put("brand_video_cache_count", this.bf);
        this.f21533a.put("enable_bw_screen_detection", this.dh);
        this.f21533a.put("splash_card_show_max_count", this.lu);
        com.byazt.ctq.w wVar10 = this.f21533a;
        com.byazt.kl.l lVar = this.ky;
        wVar10.put("clog_config", lVar != null ? lVar.toString() : "");
        com.byazt.ctq.w wVar11 = this.f21533a;
        com.byazt.jde.j jVar = this.f21545ms;
        wVar11.put("oncall_upload", jVar != null ? jVar.toString() : "");
        this.f21533a.put("feedback_opt", this.xh);
        this.f21533a.put("check_live_room", this.as);
        this.f21533a.put("can_init_live", this.ai);
        this.f21533a.put("new_app_list", this.hy);
        com.byazt.ctq.w wVar12 = this.f21533a;
        l lVar2 = this.xe;
        wVar12.put("app_live_config", lVar2 != null ? lVar2.toString() : "");
        com.byazt.ctq.w wVar13 = this.f21533a;
        JSONObject jSONObject4 = this.pn;
        wVar13.put("plugin_update_state", jSONObject4 != null ? jSONObject4.toString() : "");
        com.byazt.ctq.w wVar14 = this.f21533a;
        JSONObject jSONObject5 = this.wf;
        wVar14.put("antispam_autoclick_detect", jSONObject5 != null ? jSONObject5.toString() : "");
        com.byazt.ctq.w wVar15 = this.f21533a;
        JSONObject jSONObject6 = this.qo;
        wVar15.put("plugin_retry_opt", jSONObject6 != null ? jSONObject6.toString() : "");
        com.byazt.ctq.w wVar16 = this.f21533a;
        JSONObject jSONObject7 = this.bx;
        wVar16.put("plugin_downloader_settings", jSONObject7 != null ? jSONObject7.toString() : "");
        com.byazt.ctq.w wVar17 = this.f21533a;
        JSONObject jSONObject8 = this.cu;
        wVar17.put("pglam", jSONObject8 != null ? jSONObject8.toString() : "");
        this.f21533a.put("pglam_main_enable", this.ll);
        this.f21533a.put("pglam_dns_check_enable", this.yt);
        this.f21533a.put("pglam_clazz_check", this.ja);
        this.f21533a.put("ud_enable", this.hc);
        this.f21533a.put("is_open_isw", this.lz);
        editorEdit.putInt("pgl_soIntegrity_check", f21531j);
        editorEdit.putInt("pgl_soverfailstrategy_enable", f21532w);
        editorEdit.putInt("is_kv_cache_type", this.uj);
        editorEdit.putInt("kv_init_type", this.sq);
        editorEdit.putString(TKDownloadReason.KSAD_TK_MD5, this.in);
        editorEdit.putString("url", this.ri);
        editorEdit.apply();
        if (this.qn != null) {
            this.f21533a.put("rule_engine_enable", this.qn.booleanValue());
            if (this.qn.booleanValue() && this.ut != null) {
                this.f21533a.put("rule_engine_list", this.ut.toString());
            }
        }
        this.f21533a.put("lp_url_sw", this.rf);
        if (this.rf == 1 && (com.byazt.lca.jx.hp().e() || !com.byazt.jz.s.u().nu())) {
            vk().put("lp_list", this.lr);
        }
        if (this.db != null) {
            this.f21533a.put("live_sdk_conf", this.db.toString());
        }
        this.f21533a.put("open_dl_type", this.gi);
        this.f21533a.put("app_dl_scheme_list", this.ub);
        this.f21533a.put("scheme_get_type", this.nf);
        this.f21533a.put("scheme_get_num", this.xn);
        this.f21533a.put("if_query_all_package", this.or);
        if (this.me != null) {
            this.f21533a.put("video_cache_config", this.me.toString());
        }
        if (this.mt != null) {
            this.f21533a.put("log_rate_conf", this.mt.toString());
        }
        this.f21533a.put("splash_close_text", this.hx);
        this.f21533a.put("network_module", this.kg);
        this.f21533a.put("m_vids_join", this.qd);
        this.f21533a.put("mini_event_upload_version", this.el);
        this.f21533a.put("bg_web_readd_t", this.mk);
        this.f21533a.put("title_priority", this.rw);
        this.f21533a.put("splash_video_opt_enable", this.jv);
        this.f21533a.put("support_live_code", this.di);
        this.f21533a.put("gesture_through_enable", this.ks);
        this.f21533a.put("disable_effects", this.ju);
        this.f21533a.put("enable_layout_restrict", this.vr);
        this.f21533a.put("refresh_req_num", this.ct);
        this.f21533a.put("refresh_max_times", this.gs);
        this.f21533a.put("shake_trigger_control", this.zd);
        this.f21533a.put("net_rating", this.qq);
        this.f21533a.put("device_rating", this.nn);
        this.f21533a.put("bytebench_rating", this.rt);
        com.byazt.ctq.w wVar18 = this.f21533a;
        JSONObject jSONObject9 = this.aj;
        wVar18.put("net_rating_config", jSONObject9 != null ? jSONObject9.toString() : "");
        this.f21533a.put("express_gesture_enable", this.ec);
        this.f21533a.put("opt_click_chain", this.f21546n);
        this.f21533a.put("main_start_downloader", this.ns);
        this.f21533a.put("app_express_gesture_priority", this.sz);
        this.f21533a.put("ad_slot_conf_block", this.ro);
        this.f21533a.put("view_check_by_window", this.ki);
        this.f21533a.put("shake_twist_bind_show", this.wj);
        this.f21533a.put("view_check_by_click", this.sf);
        this.f21533a.put("node_line_enable", this.cg.booleanValue());
        this.f21533a.put("node_line_detail_enable", this.cm.booleanValue());
        this.f21533a.put("dynamic_ugen_v3", this.oi);
        this.f21533a.put("creative_ugen_v3", this.yz);
        this.f21533a.put("creative_ugen_v2", this.dg);
        this.f21533a.put(cl.f49062q, this.pj);
        this.f21533a.put("session_enable", this.ds);
        this.f21533a.put("feature_stack_rate", this.pk);
        this.f21533a.put("view_traverse_depth", this.uc);
        this.f21533a.put("feature_chain_factor", this.mm);
        this.f21533a.put("feature_req_switch", this.vd);
        this.f21533a.put("endcard_lazy", this.kx);
        this.f21533a.put("is_adapt_two_finger", this.tx);
        this.f21533a.put("stats_report_register_info", this.kp);
        this.f21533a.put("lottie_disable_os7_and_below", this.fa);
        this.f21533a.put("ignore_query_result", this.td);
        this.f21533a.put("splash_enable_rotate", this.cx);
        this.f21533a.put("enable_dynamic_clear_cache", this.eu);
        if (this.f21535c != null) {
            this.f21533a.put("app_common_config", this.f21535c.toString());
        }
        r.hp(this.f21533a);
        ea.hp(this.f21533a);
        com.byazt.xci.s.l(this.f21533a);
        ud.l(this.f21533a);
        lv.l(this.f21533a);
        hd.hp(this.f21533a);
        cx.l(this.f21533a);
    }

    public static String eb() {
        return com.byazt.wu.hp.s() ? "tt_sdk_settings_slot_bst" : "tt_sdk_settings_slot";
    }

    private void ec(final String str) {
        com.byazt.uid.w.l(new com.byazt.uid.eb("") { // from class: com.byazt.jkd.gu.3
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.ani.hp.hp(str);
            }
        });
    }

    private void jl(int i2) {
        if (i2 <= 0) {
            i2 = 1;
        }
        com.byazt.na.eb.hp(i2);
    }

    private JSONObject jq() {
        JSONObject jSONObjectMz = mz();
        if (jSONObjectMz == null) {
            return null;
        }
        return jSONObjectMz.optJSONObject("privacy_config");
    }

    private Set<String> ki() {
        Set<String> setSynchronizedSet = Collections.synchronizedSet(new HashSet());
        try {
            String str = jx().get("bottom_tab_white_list", "");
            if (str != null && !str.isEmpty()) {
                JSONArray jSONArray = new JSONArray(str);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    String strOptString = jSONArray.optString(i2);
                    if (strOptString != null && !strOptString.isEmpty()) {
                        setSynchronizedSet.add(strOptString);
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return setSynchronizedSet;
    }

    public static String s() {
        return com.byazt.wu.hp.s() ? "tt_sdk_settings_slot_splash_bst" : "tt_sdk_settings_slot_splash";
    }

    private String sz(String str) {
        return "ad_slot_conf_".concat(String.valueOf(str));
    }

    private com.byazt.ctq.jx vk() {
        if (this.eb == null) {
            this.eb = com.byazt.ry.j.hp(this.ud, a());
        }
        return this.eb;
    }

    public static String w() {
        return "tt_sdk_settings_other_bst";
    }

    private SharedPreferences wc() {
        if (this.vg == null) {
            this.vg = com.byazt.rz.l.l(sz.getContext(), w(), 0);
        }
        return this.vg;
    }

    private Set<String> wj() {
        Set<String> setSynchronizedSet = Collections.synchronizedSet(new HashSet());
        try {
            String str = jx().get("bottom_tab_black_list", "");
            if (str != null && !str.isEmpty()) {
                JSONArray jSONArray = new JSONArray(str);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    String strOptString = jSONArray.optString(i2);
                    if (strOptString != null && !strOptString.isEmpty()) {
                        setSynchronizedSet.add(strOptString);
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return setSynchronizedSet;
    }

    public static void xs() {
        gu guVarL = sz.l();
        if (guVarL != null) {
            boolean zEd = guVarL.ed();
            if (com.byazt.wi.jx.l(com.byazt.jz.s.u().xh()).booleanValue(1) != zEd) {
                com.byazt.jz.s.u().xh().apply(com.byazt.wi.j.hp().hp(10).hp(Void.class).hp(0, new dy().hp("downloadPath", com.byazt.ff.q.hp(zEd))).l());
            }
            if (guVarL.ai && guVarL.db != null) {
                com.byazt.yx.l.hp().l();
            }
            nu.jx();
            com.byazt.xy.hp.hp().hp(sz.getContext());
            com.byazt.ymw.e.jx().postDelayed(new Runnable() { // from class: com.byazt.jkd.gu.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.rdt.jx.hp().hp(sz.l().gb());
                }
            }, 3000L);
        }
    }

    public JSONObject ad() {
        return this.og;
    }

    public boolean ae() {
        if (this.ju == Integer.MAX_VALUE) {
            this.ju = jx().get("disable_effects", 0);
        }
        return this.ju == 1;
    }

    public boolean ai() {
        return this.zv;
    }

    public String aj() {
        if (TextUtils.isEmpty(this.ri)) {
            this.ri = wc().getString("url", "");
        }
        return this.ri;
    }

    public float an() {
        if (this.on < 0.0f) {
            this.on = jx().get("call_stack_rate", 0.0f);
        }
        return this.on;
    }

    public int as() {
        if (this.xv == 3) {
            this.xv = jx().get("stats_batch", 5);
        }
        int i2 = this.xv;
        if (i2 <= 0 || i2 > 100) {
            return 5;
        }
        return i2;
    }

    public int b() {
        if (this.sz == Integer.MIN_VALUE) {
            this.sz = jx().get("app_express_gesture_priority", -1);
        }
        return this.sz;
    }

    public boolean ba() {
        if (!this.tn) {
            this.tn = jx().get("tpl_enable_render_timeout_opt", false);
        }
        return this.tn;
    }

    public boolean be() {
        if (this.jv == Integer.MAX_VALUE) {
            this.jv = jx().get("splash_video_opt_enable", 0);
        }
        return this.jv == 1;
    }

    public JSONObject bf() {
        if (this.me == null) {
            try {
                String str = jx().get("video_cache_config", "");
                if (!TextUtils.isEmpty(str)) {
                    this.me = new JSONObject(str);
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return this.me;
    }

    public int bu() {
        if (this.pc == Integer.MAX_VALUE) {
            this.pc = jx().get("splash_check_type", 1);
        }
        return this.pc;
    }

    public float bv() {
        if (this.mm < 0.0f) {
            this.mm = jx().get("feature_chain_factor", 1.0f);
        }
        float f2 = this.mm;
        if (f2 <= 0.0f) {
            return 1.0f;
        }
        if (f2 > 100.0f) {
            return 100.0f;
        }
        return f2;
    }

    public int bx() {
        if (this.uj == 0) {
            this.uj = wc().getInt("is_kv_cache_type", 0);
        }
        return this.uj;
    }

    public JSONObject c() {
        if (this.gb == null) {
            String str = jx().get("http_drop", "");
            if (!TextUtils.isEmpty(str)) {
                try {
                    this.gb = new JSONObject(str);
                } catch (Exception unused) {
                }
            }
        }
        return this.gb;
    }

    public int cd() {
        if (this.ae == Integer.MAX_VALUE) {
            this.ae = jx().get("sp_key_if_sp_cache", 1);
        }
        return this.ae;
    }

    public boolean ci() {
        if (this.yz == Integer.MAX_VALUE) {
            this.yz = jx().get("creative_ugen_v3", 0);
        }
        return this.yz == 1;
    }

    public long cs() {
        if (this.mk == 2147483647L) {
            this.mk = jx().get("bg_web_readd_t", 3000L);
        }
        return this.mk;
    }

    public int ct() {
        return this.yt;
    }

    public int cu() {
        if (this.fe == Integer.MAX_VALUE) {
            this.fe = jx().get("webview_cache_count", 0);
        }
        int i2 = this.fe;
        if (i2 < 0) {
            return 0;
        }
        return i2;
    }

    public boolean cv() {
        return this.eu;
    }

    public boolean cx() {
        if (this.ec == Integer.MIN_VALUE) {
            this.ec = jx().get("express_gesture_enable", 0);
        }
        return this.ec == 1;
    }

    public String d() {
        if (TextUtils.isEmpty(this.jw)) {
            String str = jx().get("url_stats", "api-access.pangolin-sdk-toutiao1.com");
            this.jw = str;
            if (TextUtils.isEmpty(str)) {
                this.jw = "api-access.pangolin-sdk-toutiao1.com";
            }
        }
        return this.jw;
    }

    public kg db() {
        return this.db;
    }

    public boolean df() {
        if (this.sh == 2.1474836E9f) {
            this.sh = jx().get("global_sample", 1.0f);
        }
        return com.byazt.evz.l.hp(this.sh, false);
    }

    public boolean dh() {
        if (this.fi == Integer.MAX_VALUE) {
            this.fi = jx().get("app_list_control", 0);
        }
        return this.fi == 1;
    }

    public boolean di() {
        if (this.ns == Integer.MIN_VALUE) {
            this.ns = jx().get("main_start_downloader", 0);
        }
        return this.ns == 1;
    }

    public int ds() {
        return this.zp;
    }

    public boolean dy() {
        if (this.f21552t == Integer.MAX_VALUE) {
            this.f21552t = jx().get("adlog_debug", 0);
        }
        return this.f21552t == 1;
    }

    public boolean e() {
        if (this.kp == -1) {
            this.kp = jx().getInt("stats_report_register_info", 0);
        }
        return this.kp == 1;
    }

    public boolean ea() {
        if (this.yj == Integer.MAX_VALUE) {
            this.yj = 1;
        }
        return this.yj == 1;
    }

    public boolean ed() {
        return com.byazt.lca.w.hp().s();
    }

    public int ei() {
        return this.uj;
    }

    public eb el() {
        return this.xq;
    }

    public Set<String> eq() {
        if (this.ru.size() == 0) {
            return null;
        }
        return this.ru;
    }

    public boolean er() {
        return this.yl != 1;
    }

    public boolean f() {
        if (this.ad == this.f21540h) {
            this.ad = jx().get("event_switch", this.f21540h);
        }
        return this.ad == 1;
    }

    public boolean fe() {
        if (this.vr == Integer.MAX_VALUE) {
            this.vr = jx().get("enable_layout_restrict", 0);
        }
        return this.vr == 1;
    }

    public Set<String> fi() {
        Set<String> set;
        if (this.f21537e.isEmpty() && (set = jx().get("web_upload_content_type", Collections.synchronizedSet(new HashSet()))) != null && set.size() != 0) {
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                this.f21537e.add(it.next());
            }
        }
        return this.f21537e;
    }

    public String fu() {
        if (TextUtils.isEmpty(this.hx)) {
            this.hx = jx().get("splash_close_text", "跳过");
        }
        if (TextUtils.isEmpty(this.hx)) {
            this.hx = "跳过";
        }
        return this.hx;
    }

    public boolean fv() {
        if (!this.ds) {
            this.ds = jx().get("session_enable", false);
        }
        return this.ds;
    }

    public int g() {
        if (this.qd == Integer.MAX_VALUE) {
            this.qd = jx().get("m_vids_join", 0);
        }
        int i2 = this.qd;
        if (i2 == Integer.MAX_VALUE) {
            return 0;
        }
        return i2;
    }

    public JSONObject gb() {
        return this.qj;
    }

    public int gd() {
        if (this.f21542k == Integer.MAX_VALUE) {
            this.f21542k = jx().get("web_upload_report_only_wifi", 0);
        }
        return this.f21542k;
    }

    public com.byazt.jde.j gh() {
        return this.f21545ms;
    }

    public boolean gi() {
        return this.sf;
    }

    public String[] gs() {
        String str = this.ja;
        if (str == null || str.length() <= 0) {
            return null;
        }
        return this.ja.split("//");
    }

    public boolean gu() {
        if (this.kf.get() == -1) {
            this.kf.set(jx().get("lottie_disable_os7_and_below", 0));
        }
        return this.kf.get() == 1;
    }

    public boolean gv() {
        if (this.rw == Integer.MAX_VALUE) {
            this.rw = jx().get("title_priority", 0);
        }
        return this.rw == 1;
    }

    public boolean gy() {
        if (this.f21534b == Integer.MAX_VALUE) {
            this.f21534b = jx().getInt("enable_cdn_opt", 0);
        }
        return this.f21534b == 1;
    }

    public JSONObject h() {
        return this.bv;
    }

    public JSONObject hb() {
        return this.pn;
    }

    public void hc() {
        if (this.ei == null) {
            synchronized (this.jc) {
                try {
                    if (this.ei == null) {
                        this.ei = com.byazt.rz.l.l(sz.getContext(), com.byazt.pz.hp.l(com.byazt.el.hp.hp().hp(this.ud), s()), 0);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public boolean hd() {
        if (this.hp == 0) {
            this.hp = jx().get("launch_strategy", 0);
        }
        return this.hp == 1;
    }

    public float hl() {
        if (this.ly == 0.0f) {
            this.ly = jx().get("tpl_render_error_rate_h5", 4.5f);
        }
        return this.ly;
    }

    public boolean hq() {
        boolean z2 = jx().get("enable_apm_pv", false);
        this.vt = z2;
        return z2;
    }

    public int hx() {
        return this.xr;
    }

    public int hy() {
        if (this.f21548p == -1) {
            this.f21548p = jx().get("gnd_prefetch_cache_size", 5);
        }
        return this.f21548p;
    }

    public boolean i() {
        if (this.ba == Integer.MAX_VALUE) {
            this.ba = this.f21533a.get("disable_show_url", 0);
        }
        return this.ba == 1;
    }

    public List<Integer> id() {
        return new ArrayList(this.rl);
    }

    public boolean ij() {
        return this.jq;
    }

    public int in() {
        return this.lu;
    }

    public void ja() {
        if (this.rm.compareAndSet(false, true)) {
            com.byazt.uid.w.l(new com.byazt.uid.eb("preloadSlotSp") { // from class: com.byazt.jkd.gu.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        gu.this.bj();
                        if (gu.this.hb != null) {
                            gu.this.hb.contains("");
                        }
                        gu.this.hc();
                        if (gu.this.ei != null) {
                            gu.this.ei.contains("");
                        }
                    } finally {
                        try {
                        } finally {
                        }
                    }
                }
            });
        }
    }

    public String jb() {
        if (TextUtils.isEmpty(this.be)) {
            this.be = jx().get("local_res_zip_url", "");
        }
        return this.be;
    }

    public String jc() {
        if (this.rf != 1) {
            return "";
        }
        if (!TextUtils.isEmpty(this.lr)) {
            return this.lr;
        }
        String str = vk().get("lp_list", this.lr);
        this.lr = str;
        return str;
    }

    public ky jd() {
        if (this.qu == null) {
            this.qu = ky.hp(jx().get("insert_js_config", ""));
        }
        return this.qu;
    }

    public int ju() {
        if (f21531j == Integer.MAX_VALUE) {
            f21531j = wc().getInt("pgl_soIntegrity_check", 0);
        }
        return f21531j;
    }

    public boolean jv() {
        return this.as;
    }

    public boolean jw() {
        return this.or == 1;
    }

    public boolean k() {
        if (this.ce == -1) {
            this.ce = jx().getInt("video_size_gap_report", 0);
        }
        return this.ce == 1;
    }

    public Set<String> ke() {
        if (this.ov == null) {
            this.ov = wj();
        }
        return this.ov;
    }

    public int kg() {
        if (this.pg == Integer.MAX_VALUE) {
            this.pg = jx().get("max_memory_event_count", 10000);
        }
        int i2 = this.pg;
        if (i2 < 100) {
            return 10000;
        }
        return i2;
    }

    public boolean kq() {
        return this.kx == 1;
    }

    public int ks() {
        if (jx == Integer.MAX_VALUE) {
            String str = this.f21533a.get("pglam", "");
            if (!TextUtils.isEmpty(str)) {
                try {
                    jx = new JSONObject(str).optInt("pgl_4TypeEncrypt_close", 0);
                } catch (JSONException unused) {
                    return 0;
                }
            }
        }
        return jx;
    }

    public JSONObject ku() {
        return this.hl;
    }

    public int ky() {
        if (this.jd == Integer.MAX_VALUE) {
            this.jd = jx().get("adlog_batch", 10);
        }
        return this.jd;
    }

    public boolean la() {
        return this.wj;
    }

    public int ld() {
        return com.byazt.lca.w.hp().q();
    }

    public int ll() {
        if (this.ty == Integer.MAX_VALUE) {
            this.ty = jx().get("webview_cache_count_v3", 0);
        }
        int i2 = this.ty;
        if (i2 < 0) {
            return 0;
        }
        return i2;
    }

    public JSONObject lp() {
        return this.lp;
    }

    public boolean lr() {
        if (this.cd == Integer.MAX_VALUE) {
            this.cd = jx().get("read_video_from_cache", 1);
        }
        return this.cd == 1;
    }

    public int lu() {
        if (this.jb == Integer.MAX_VALUE) {
            this.jb = jx().get("max_tpl_cnts", 100);
        }
        return this.jb;
    }

    public boolean lv() {
        if (this.f21555x == Integer.MAX_VALUE) {
            this.f21555x = jx().get("adlog_monitor", 1);
        }
        return this.f21555x != 0;
    }

    public boolean ly() {
        int iLd = ld();
        com.byazt.pg.w wVarL = b.l();
        return (iLd == 40001 || iLd == 40002 || iLd == 4) && wVarL != null && wVarL.getArmorLoadStatus();
    }

    public boolean lz() {
        return this.bk;
    }

    public boolean m() {
        if (this.ed == Integer.MAX_VALUE) {
            this.ed = jx().get("switch_audio_focus", 0);
        }
        return this.ed == 1;
    }

    public List<String> me() {
        if (this.nr + bn.f11192e < System.currentTimeMillis()) {
            return null;
        }
        Map<String, Boolean> mapL = o.l(86400000L);
        ArrayList arrayList = new ArrayList();
        synchronized (this.wt) {
            try {
                for (String str : this.wt) {
                    if (!mapL.containsKey(str.replaceAll("[&\\?]?tt_csj_scheme_priority=[^&]*", ""))) {
                        arrayList.add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Collections.sort(arrayList, new Comparator<String>() { // from class: com.byazt.jkd.gu.4
            @Override // java.util.Comparator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int compare(String str2, String str3) {
                try {
                    return Integer.parseInt(Uri.parse(str2).getQueryParameter("tt_csj_scheme_priority")) - Integer.parseInt(Uri.parse(str3).getQueryParameter("tt_csj_scheme_priority"));
                } catch (Throwable unused) {
                    return 0;
                }
            }
        });
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.set(i2, ((String) arrayList.get(i2)).replaceAll("[&\\?]?tt_csj_scheme_priority=[^&]*", ""));
        }
        return arrayList;
    }

    public a mk() {
        return this.er;
    }

    public boolean mm() {
        return this.nn;
    }

    public boolean mn() {
        return this.hy;
    }

    public boolean mp() {
        if (this.pu == Integer.MAX_VALUE) {
            this.pu = jx().get("download_receiver_enable", 1);
        }
        return this.pu != 0;
    }

    public boolean ms() {
        if (this.mp == Integer.MIN_VALUE) {
            this.mp = jx().get("enable_oaid_frequency", 0);
        }
        return this.mp == 1;
    }

    public List<String> mt() {
        if (this.nr + bn.f11192e < System.currentTimeMillis()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.rk.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public JSONObject mz() {
        if (this.f21535c == null) {
            try {
                this.f21535c = new JSONObject(jx().get("app_common_config", ""));
            } catch (JSONException unused) {
            }
        }
        return this.f21535c;
    }

    public boolean n() {
        if (this.wv == Integer.MIN_VALUE) {
            this.wv = jx().get("enable_zaid", 0);
        }
        return this.wv != 0;
    }

    public String nc() {
        if (TextUtils.isEmpty(this.gv)) {
            this.gv = jx().get("play_component_ugen_engine_url", "");
        }
        return this.gv;
    }

    public boolean nd() {
        if (this.bu == Integer.MAX_VALUE) {
            this.bu = jx().get("enable_glgpu", 0);
        }
        return this.bu == 1;
    }

    public int nf() {
        if (this.fu == Integer.MAX_VALUE) {
            this.fu = jx().get("interact_show_after_time", 500);
        }
        return this.fu;
    }

    public boolean nl() {
        if (this.ks == Integer.MAX_VALUE) {
            this.ks = jx().get("gesture_through_enable", 0);
        }
        return this.ks == 1;
    }

    public boolean nn() {
        return this.yu;
    }

    public float nq() {
        if (this.gy == 0.0f) {
            this.gy = jx().get("tpl_render_error_rate_native", 1.0f);
        }
        return this.gy;
    }

    public int nr() {
        if (this.gu == Integer.MAX_VALUE) {
            this.gu = jx().get("web_upload_send_restowv", 0);
        }
        return this.gu;
    }

    public boolean ns() {
        if (this.hq == Integer.MIN_VALUE) {
            this.hq = jx().get("player_stats_check_switch", 1);
        }
        return this.hq == 1;
    }

    public String nu() {
        if (TextUtils.isEmpty(this.nc)) {
            String str = jx().get("url_alog", "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/");
            this.nc = str;
            if (TextUtils.isEmpty(str)) {
                this.nc = "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/";
            }
        }
        return this.nc;
    }

    public int o() {
        return this.cx;
    }

    public float og() {
        if (this.pf == 0.0f) {
            this.pf = jx().get("low_value", 7.3f);
        }
        return this.pf;
    }

    public boolean oh() {
        return this.tx == 1;
    }

    public int on() {
        if (this.ct == Integer.MAX_VALUE) {
            this.ct = jx().get("refresh_req_num", 2);
        }
        if (this.ct <= 0) {
            this.ct = 2;
        }
        return this.ct;
    }

    public int or() {
        if (this.vd < 0) {
            this.vd = jx().get("feature_req_switch", 0);
        }
        int i2 = this.vd;
        if (i2 == 0 || i2 == 1) {
            return i2;
        }
        return 0;
    }

    public JSONObject ov() {
        return this.fv;
    }

    public boolean p() {
        return this.xq.jx;
    }

    public int pc() {
        if (this.f21549q == Integer.MAX_VALUE) {
            this.f21549q = jx().get("web_upload_enable", 0);
        }
        return this.f21549q;
    }

    public boolean pf() {
        return this.nf != 1;
    }

    public JSONObject pg() {
        return this.nq;
    }

    public JSONObject pi() {
        if (this.mt == null) {
            try {
                this.mt = new JSONObject(jx().get("log_rate_conf", ""));
            } catch (Exception unused) {
            }
        }
        return this.mt;
    }

    public int pj() {
        return this.kq;
    }

    public JSONObject pk() {
        return this.bx;
    }

    public int pn() {
        if (this.bt == Integer.MAX_VALUE) {
            this.bt = jx().get("enable_target_34", 1);
        }
        return this.bt;
    }

    public boolean pp() {
        return this.ti;
    }

    public boolean pu() {
        if (this.vv == Integer.MAX_VALUE) {
            this.vv = jx().get("enable_kite", 0);
        }
        return this.vv == 1;
    }

    public com.byazt.ctq.jx q() {
        if (this.qy == null) {
            this.qy = com.byazt.ry.j.hp(this.ud, eb());
        }
        if (com.byazt.zn.nu.l() != 1) {
            return null;
        }
        return this.qy;
    }

    public String qa() {
        if (TextUtils.isEmpty(this.cs)) {
            this.cs = jx().get("dyn_draw_engine_url", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/renderer/package.json");
        }
        return this.cs;
    }

    public int qb() {
        if (this.sq == 0) {
            this.sq = wc().getInt("kv_init_type", 0);
        }
        return this.sq;
    }

    public boolean qd() {
        if (this.cg == null) {
            this.cg = Boolean.valueOf(jx().get("node_line_enable", false));
        }
        return this.cg.booleanValue();
    }

    public boolean qe() {
        return this.ki;
    }

    public com.byazt.vfd.hp qh() {
        if (this.an == null) {
            this.an = com.byazt.vfd.hp.hp(jx().get("white_check_config", ""));
        }
        return this.an;
    }

    public int qj() {
        if (this.uc <= 0) {
            this.uc = jx().get("view_traverse_depth", 20);
        }
        int i2 = this.uc;
        if (i2 <= 0) {
            return 20;
        }
        return i2;
    }

    public boolean qk() {
        if (this.jm == Integer.MAX_VALUE) {
            this.jm = jx().get("show_callback_mult", 0);
        }
        return this.jm == 1;
    }

    public int qn() {
        int i2 = jx().get("npth_enable_type", 0);
        this.f21551s = i2;
        return i2;
    }

    public boolean qo() {
        return d.s() && this.lz == 1;
    }

    public boolean qq() {
        if (this.qn == null) {
            this.qn = Boolean.valueOf(jx().get("rule_engine_enable", false));
        }
        return this.qn.booleanValue();
    }

    public long qu() {
        if (this.f21556y == 0) {
            this.f21556y = jx().get("data_time", 0L);
        }
        return this.f21556y;
    }

    public int qy() {
        if (this.gs == Integer.MAX_VALUE) {
            this.gs = jx().get("refresh_max_times", 1);
        }
        if (this.gs < 0) {
            this.gs = 1;
        }
        return this.gs;
    }

    public long r() {
        if (this.tw == 2147483647L) {
            this.tw = jx().get("adlog_interval", 5000L);
        }
        return this.tw;
    }

    public int rf() {
        return this.xj;
    }

    public int ri() {
        return this.bf;
    }

    public int rk() {
        if (this.jl == Integer.MAX_VALUE) {
            this.jl = jx().get("web_upload_max_single_file", 2);
        }
        return this.jl;
    }

    public JSONObject rl() {
        return this.qo;
    }

    public String rm() {
        if (TextUtils.isEmpty(this.in)) {
            this.in = wc().getString(TKDownloadReason.KSAD_TK_MD5, "");
        }
        return this.in;
    }

    public jl ro() {
        return this.ij;
    }

    public boolean rp() {
        return this.xq.hp;
    }

    public boolean rt() {
        return this.ke;
    }

    public int ru() {
        if (this.xs == Integer.MAX_VALUE) {
            this.xs = jx().get("web_upload_max_retry", 0);
        }
        return this.xs;
    }

    public JSONObject rv() {
        if (this.zx == null) {
            String str = jx().get("digest", "");
            if (!TextUtils.isEmpty(str)) {
                try {
                    this.zx = new JSONObject(str);
                } catch (Exception unused) {
                }
            }
        }
        return this.zx;
    }

    public boolean rw() {
        if (!yi) {
            synchronized (this.vp) {
                try {
                    if (!yi) {
                        fp = jx().get("disable_easy_playable", true);
                        yi = true;
                    }
                } finally {
                }
            }
        }
        return fp;
    }

    public long rz() {
        if (this.pi == this.df) {
            this.pi = jx().get("ext_use_type", this.df);
        }
        return this.pi;
    }

    public boolean sh() {
        if (!TextUtils.isEmpty(d.f21860w) && d.f21860w.compareTo(d.f21855e) < 0) {
            return false;
        }
        Boolean bool = this.vk;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this.cv == null) {
            this.cv = Boolean.valueOf(jx().get("use_mediation_map", false));
        }
        Boolean bool2 = this.cv;
        this.vk = bool2;
        return bool2.booleanValue();
    }

    public int sq() {
        return this.xm;
    }

    public String su() {
        if (TextUtils.isEmpty(this.vq)) {
            this.vq = jx().get("xpath", "");
        }
        return this.vq;
    }

    public boolean sv() {
        return this.uf;
    }

    public JSONObject t() {
        if (this.ea == null) {
            String str = jx().get("download_sdk_config", "");
            this.su = str;
            if (!TextUtils.isEmpty(str)) {
                try {
                    this.ea = new JSONObject(this.su);
                } catch (JSONException unused) {
                }
            }
        }
        return this.ea;
    }

    public int ti() {
        int i2 = this.xn;
        if (i2 <= 0) {
            return 1;
        }
        return i2;
    }

    public int tn() {
        if (this.f21547o == Integer.MAX_VALUE) {
            this.f21547o = jx().getInt("download_button_effect", 0);
        }
        return this.f21547o;
    }

    public boolean tq() {
        if (!this.pj) {
            this.pj = jx().get(cl.f49062q, true);
        }
        return this.pj;
    }

    public boolean tr() {
        if (this.mn == Integer.MAX_VALUE) {
            this.mn = jx().get("settings_open", 1);
        }
        return this.mn == 1;
    }

    public int tw() {
        if (this.f21553u == Integer.MAX_VALUE) {
            this.f21553u = jx().get("web_upload_storage_type", 0);
        }
        return this.f21553u;
    }

    public boolean ty() {
        if (this.oi == Integer.MAX_VALUE) {
            this.oi = jx().get("dynamic_ugen_v3", 0);
        }
        return this.oi == 1;
    }

    public void u() {
        com.byazt.am.a.hp().hp(this.f21533a.get("req_exemption_cfg", ""));
    }

    public boolean ub() {
        return this.xh == 1;
    }

    public boolean uc() {
        if (this.hc == 1) {
            this.hc = jx().get("ud_enable", 1);
        }
        return this.hc == 1;
    }

    public void ud() {
        this.qa = "api-access.pangolin-sdk-toutiao-b.com";
    }

    public boolean uf() {
        if (this.cm == null) {
            this.cm = Boolean.valueOf(jx().get("node_line_detail_enable", false));
        }
        return this.cm.booleanValue();
    }

    public int uj() {
        return this.zh;
    }

    public boolean ut() {
        return this.qe;
    }

    public String ux() {
        if (TextUtils.isEmpty(this.nu)) {
            this.nu = jx().get("apm_pv_config", "");
        }
        return this.nu;
    }

    public JSONObject v() {
        if (this.wk == null) {
            String str = jx().get("settings_json_str", "");
            if (!TextUtils.isEmpty(str)) {
                String strJx = com.byazt.ymw.hp.jx(str);
                if (!TextUtils.isEmpty(strJx)) {
                    try {
                        this.wk = new JSONObject(strJx);
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        return this.wk;
    }

    public boolean vd() {
        return this.rt;
    }

    public String vg() {
        if (TextUtils.isEmpty(this.pp)) {
            this.pp = jx().get("policy_url", qk);
        }
        return this.pp;
    }

    public float vi() {
        if (this.pk < 0.0f) {
            this.pk = jx().get("feature_stack_rate", 0.0f);
        }
        float f2 = this.pk;
        if (f2 < 0.0f || f2 > 1.0f) {
            return 0.0f;
        }
        return f2;
    }

    public int vq() {
        if (this.qh == Integer.MAX_VALUE) {
            this.qh = jx().get("adlog_exception_batch", 100);
        }
        return this.qh;
    }

    public int vr() {
        if (f21532w == Integer.MAX_VALUE) {
            f21532w = wc().getInt("pgl_soverfailstrategy_enable", 0);
        }
        return f21532w;
    }

    public boolean vt() {
        return Build.VERSION.SDK_INT < this.el;
    }

    public boolean vv() {
        return this.zd == 1;
    }

    public String vx() {
        if (TextUtils.isEmpty(this.nl)) {
            this.nl = jx().get("ad_pkg_info_url", "apps.bytesfield.com");
        }
        if (TextUtils.isEmpty(this.nl)) {
            this.nl = "apps.bytesfield.com";
        }
        return this.nl;
    }

    public l wf() {
        return this.xe;
    }

    public boolean wi() {
        return this.td;
    }

    public int wt() {
        if (this.zy == Integer.MAX_VALUE) {
            this.zy = jx().get("web_upload_max_zip_file", 5);
        }
        return this.zy;
    }

    public String wv() {
        if (TextUtils.isEmpty(this.f21539g)) {
            this.f21539g = jx().get("img_bucket", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/");
        }
        return this.f21539g;
    }

    public JSONObject x() {
        return this.eq;
    }

    public long xe() {
        if (this.rp == -1) {
            this.rp = jx().get("gnd_prefetch_cache_ttl", 0L);
        }
        return this.rp;
    }

    public boolean xh() {
        if (this.ux == this.zb) {
            this.ux = jx().get("enable_dl_ext", this.zb);
        }
        return this.ux == 1;
    }

    public int xn() {
        if (this.ld == 0) {
            this.ld = jx().get("fetch_tpl_timeout_ctrl_bad_device", 300);
        }
        return this.ld;
    }

    public boolean xq() {
        return this.wc;
    }

    public JSONObject xv() {
        return this.vi;
    }

    public boolean y() {
        if (this.f21550r == -1) {
            this.f21550r = jx().get("disable_feed_video_play_by_visible_check", 0);
        }
        return this.f21550r == 1;
    }

    public String yj() {
        if (TextUtils.equals(this.f21554v, "https://api-access.pangolin-sdk-toutiao.com/v2/inspect/aegis/client/page/")) {
            this.f21554v = jx().get("web_upload_report_url", "https://api-access.pangolin-sdk-toutiao.com/v2/inspect/aegis/client/page/");
        }
        return this.f21554v;
    }

    public int yr() {
        if (this.f21543l == 10) {
            this.f21543l = jx().get("pre_fetch_cnt", 10);
        }
        return this.f21543l;
    }

    public int yt() {
        if (this.gh == Integer.MAX_VALUE) {
            this.gh = jx().get("vbtt", 5);
        }
        return this.gh;
    }

    public Set<String> yu() {
        if (this.ku == null) {
            this.ku = ki();
        }
        return this.ku;
    }

    public JSONArray z() {
        return this.tq;
    }

    public boolean zb() {
        return bu() == 1;
    }

    public boolean zd() {
        return this.ai;
    }

    public JSONObject zp() {
        if (this.bj == null) {
            String str = jx().get("dex_strategy", "");
            if (!TextUtils.isEmpty(str)) {
                try {
                    this.bj = new JSONObject(str);
                } catch (JSONException unused) {
                }
            }
        }
        return this.bj;
    }

    public boolean zv() {
        if (this.dg == Integer.MAX_VALUE) {
            this.dg = jx().get("creative_ugen_v2", 0);
        }
        return this.dg == 1;
    }

    public boolean zx() {
        if (this.lv == Integer.MAX_VALUE) {
            this.lv = jx().get("opt_show_check", 0);
        }
        return this.lv == 1;
    }

    public boolean zy() {
        if (this.wu == -1) {
            this.wu = jx().get("lottie_zip_download_disable", false) ? 1 : 0;
        }
        return this.wu == 1;
    }

    private void w(JSONObject jSONObject) throws JSONException {
        Object objRemove = jSONObject.remove("ad_slot_conf_list");
        Object objRemove2 = jSONObject.remove("ad_slot_conf_block");
        String string = jSONObject.toString();
        try {
            jSONObject.putOpt("ad_slot_conf_list", objRemove);
            jSONObject.putOpt("ad_slot_conf_block", objRemove2);
            this.wk = new JSONObject(string);
            jx().put("settings_json_str", com.byazt.ymw.hp.l(string));
        } catch (JSONException unused) {
        }
    }

    public String ec() {
        if (TextUtils.isEmpty(this.qa)) {
            this.qa = com.byazt.lca.jx.hp().j();
        }
        return this.qa;
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x0800 A[Catch: all -> 0x01c2, TryCatch #11 {, blocks: (B:3:0x0001, B:5:0x01ba, B:9:0x01c5, B:11:0x01d5, B:12:0x01dc, B:14:0x01ec, B:15:0x01f3, B:17:0x0203, B:21:0x0223, B:23:0x0233, B:24:0x023a, B:26:0x024a, B:27:0x0251, B:29:0x0261, B:30:0x0268, B:32:0x0282, B:36:0x02a2, B:38:0x02b2, B:42:0x02d2, B:44:0x02e2, B:48:0x0302, B:50:0x0312, B:51:0x0319, B:55:0x04f5, B:57:0x051a, B:59:0x0520, B:60:0x0524, B:62:0x052a, B:63:0x0536, B:65:0x0591, B:67:0x0597, B:68:0x059b, B:70:0x05a1, B:71:0x05ad, B:72:0x05af, B:84:0x05e8, B:85:0x05ea, B:97:0x0623, B:99:0x0635, B:103:0x0645, B:105:0x0655, B:109:0x0666, B:111:0x06f2, B:112:0x06f9, B:114:0x0709, B:116:0x0716, B:117:0x071b, B:119:0x072b, B:120:0x0732, B:122:0x0742, B:123:0x0749, B:125:0x0759, B:126:0x0764, B:128:0x0774, B:129:0x079c, B:131:0x0800, B:132:0x080e, B:136:0x085b, B:138:0x0875, B:139:0x087b, B:140:0x09c5, B:142:0x09d5, B:143:0x09dc, B:145:0x0b2d, B:146:0x0b37, B:148:0x0b47, B:149:0x0b4e, B:151:0x0b67, B:152:0x0b70, B:154:0x0b76, B:156:0x0b86, B:108:0x0661, B:102:0x0640, B:160:0x0b8f, B:162:0x0b91, B:47:0x02eb, B:41:0x02bb, B:35:0x028b, B:20:0x020c, B:73:0x05b0, B:75:0x05c8, B:77:0x05ce, B:78:0x05d2, B:80:0x05d8, B:83:0x05e7, B:86:0x05eb, B:88:0x0603, B:90:0x0609, B:91:0x060d, B:93:0x0613, B:96:0x0622), top: B:205:0x0001, inners: #0, #1, #4, #13, #14, #18, #20, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0845 A[Catch: all -> 0x085b, TRY_LEAVE, TryCatch #24 {all -> 0x085b, blocks: (B:133:0x083f, B:135:0x0845), top: B:230:0x083f }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0875 A[Catch: all -> 0x01c2, TryCatch #11 {, blocks: (B:3:0x0001, B:5:0x01ba, B:9:0x01c5, B:11:0x01d5, B:12:0x01dc, B:14:0x01ec, B:15:0x01f3, B:17:0x0203, B:21:0x0223, B:23:0x0233, B:24:0x023a, B:26:0x024a, B:27:0x0251, B:29:0x0261, B:30:0x0268, B:32:0x0282, B:36:0x02a2, B:38:0x02b2, B:42:0x02d2, B:44:0x02e2, B:48:0x0302, B:50:0x0312, B:51:0x0319, B:55:0x04f5, B:57:0x051a, B:59:0x0520, B:60:0x0524, B:62:0x052a, B:63:0x0536, B:65:0x0591, B:67:0x0597, B:68:0x059b, B:70:0x05a1, B:71:0x05ad, B:72:0x05af, B:84:0x05e8, B:85:0x05ea, B:97:0x0623, B:99:0x0635, B:103:0x0645, B:105:0x0655, B:109:0x0666, B:111:0x06f2, B:112:0x06f9, B:114:0x0709, B:116:0x0716, B:117:0x071b, B:119:0x072b, B:120:0x0732, B:122:0x0742, B:123:0x0749, B:125:0x0759, B:126:0x0764, B:128:0x0774, B:129:0x079c, B:131:0x0800, B:132:0x080e, B:136:0x085b, B:138:0x0875, B:139:0x087b, B:140:0x09c5, B:142:0x09d5, B:143:0x09dc, B:145:0x0b2d, B:146:0x0b37, B:148:0x0b47, B:149:0x0b4e, B:151:0x0b67, B:152:0x0b70, B:154:0x0b76, B:156:0x0b86, B:108:0x0661, B:102:0x0640, B:160:0x0b8f, B:162:0x0b91, B:47:0x02eb, B:41:0x02bb, B:35:0x028b, B:20:0x020c, B:73:0x05b0, B:75:0x05c8, B:77:0x05ce, B:78:0x05d2, B:80:0x05d8, B:83:0x05e7, B:86:0x05eb, B:88:0x0603, B:90:0x0609, B:91:0x060d, B:93:0x0613, B:96:0x0622), top: B:205:0x0001, inners: #0, #1, #4, #13, #14, #18, #20, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x09d5 A[Catch: all -> 0x01c2, JSONException -> 0x09dc, TRY_LEAVE, TryCatch #11 {, blocks: (B:3:0x0001, B:5:0x01ba, B:9:0x01c5, B:11:0x01d5, B:12:0x01dc, B:14:0x01ec, B:15:0x01f3, B:17:0x0203, B:21:0x0223, B:23:0x0233, B:24:0x023a, B:26:0x024a, B:27:0x0251, B:29:0x0261, B:30:0x0268, B:32:0x0282, B:36:0x02a2, B:38:0x02b2, B:42:0x02d2, B:44:0x02e2, B:48:0x0302, B:50:0x0312, B:51:0x0319, B:55:0x04f5, B:57:0x051a, B:59:0x0520, B:60:0x0524, B:62:0x052a, B:63:0x0536, B:65:0x0591, B:67:0x0597, B:68:0x059b, B:70:0x05a1, B:71:0x05ad, B:72:0x05af, B:84:0x05e8, B:85:0x05ea, B:97:0x0623, B:99:0x0635, B:103:0x0645, B:105:0x0655, B:109:0x0666, B:111:0x06f2, B:112:0x06f9, B:114:0x0709, B:116:0x0716, B:117:0x071b, B:119:0x072b, B:120:0x0732, B:122:0x0742, B:123:0x0749, B:125:0x0759, B:126:0x0764, B:128:0x0774, B:129:0x079c, B:131:0x0800, B:132:0x080e, B:136:0x085b, B:138:0x0875, B:139:0x087b, B:140:0x09c5, B:142:0x09d5, B:143:0x09dc, B:145:0x0b2d, B:146:0x0b37, B:148:0x0b47, B:149:0x0b4e, B:151:0x0b67, B:152:0x0b70, B:154:0x0b76, B:156:0x0b86, B:108:0x0661, B:102:0x0640, B:160:0x0b8f, B:162:0x0b91, B:47:0x02eb, B:41:0x02bb, B:35:0x028b, B:20:0x020c, B:73:0x05b0, B:75:0x05c8, B:77:0x05ce, B:78:0x05d2, B:80:0x05d8, B:83:0x05e7, B:86:0x05eb, B:88:0x0603, B:90:0x0609, B:91:0x060d, B:93:0x0613, B:96:0x0622), top: B:205:0x0001, inners: #0, #1, #4, #13, #14, #18, #20, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0b67 A[Catch: all -> 0x01c2, Exception -> 0x0b86, TryCatch #11 {, blocks: (B:3:0x0001, B:5:0x01ba, B:9:0x01c5, B:11:0x01d5, B:12:0x01dc, B:14:0x01ec, B:15:0x01f3, B:17:0x0203, B:21:0x0223, B:23:0x0233, B:24:0x023a, B:26:0x024a, B:27:0x0251, B:29:0x0261, B:30:0x0268, B:32:0x0282, B:36:0x02a2, B:38:0x02b2, B:42:0x02d2, B:44:0x02e2, B:48:0x0302, B:50:0x0312, B:51:0x0319, B:55:0x04f5, B:57:0x051a, B:59:0x0520, B:60:0x0524, B:62:0x052a, B:63:0x0536, B:65:0x0591, B:67:0x0597, B:68:0x059b, B:70:0x05a1, B:71:0x05ad, B:72:0x05af, B:84:0x05e8, B:85:0x05ea, B:97:0x0623, B:99:0x0635, B:103:0x0645, B:105:0x0655, B:109:0x0666, B:111:0x06f2, B:112:0x06f9, B:114:0x0709, B:116:0x0716, B:117:0x071b, B:119:0x072b, B:120:0x0732, B:122:0x0742, B:123:0x0749, B:125:0x0759, B:126:0x0764, B:128:0x0774, B:129:0x079c, B:131:0x0800, B:132:0x080e, B:136:0x085b, B:138:0x0875, B:139:0x087b, B:140:0x09c5, B:142:0x09d5, B:143:0x09dc, B:145:0x0b2d, B:146:0x0b37, B:148:0x0b47, B:149:0x0b4e, B:151:0x0b67, B:152:0x0b70, B:154:0x0b76, B:156:0x0b86, B:108:0x0661, B:102:0x0640, B:160:0x0b8f, B:162:0x0b91, B:47:0x02eb, B:41:0x02bb, B:35:0x028b, B:20:0x020c, B:73:0x05b0, B:75:0x05c8, B:77:0x05ce, B:78:0x05d2, B:80:0x05d8, B:83:0x05e7, B:86:0x05eb, B:88:0x0603, B:90:0x0609, B:91:0x060d, B:93:0x0613, B:96:0x0622), top: B:205:0x0001, inners: #0, #1, #4, #13, #14, #18, #20, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x05b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x02e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x06f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x072b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0b2d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0312 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0261 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0b47 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0759 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0282 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0709 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0774 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0655 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x024a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x02b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0233 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0742 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x02a2 A[Catch: all -> 0x01c2, TRY_LEAVE, TryCatch #11 {, blocks: (B:3:0x0001, B:5:0x01ba, B:9:0x01c5, B:11:0x01d5, B:12:0x01dc, B:14:0x01ec, B:15:0x01f3, B:17:0x0203, B:21:0x0223, B:23:0x0233, B:24:0x023a, B:26:0x024a, B:27:0x0251, B:29:0x0261, B:30:0x0268, B:32:0x0282, B:36:0x02a2, B:38:0x02b2, B:42:0x02d2, B:44:0x02e2, B:48:0x0302, B:50:0x0312, B:51:0x0319, B:55:0x04f5, B:57:0x051a, B:59:0x0520, B:60:0x0524, B:62:0x052a, B:63:0x0536, B:65:0x0591, B:67:0x0597, B:68:0x059b, B:70:0x05a1, B:71:0x05ad, B:72:0x05af, B:84:0x05e8, B:85:0x05ea, B:97:0x0623, B:99:0x0635, B:103:0x0645, B:105:0x0655, B:109:0x0666, B:111:0x06f2, B:112:0x06f9, B:114:0x0709, B:116:0x0716, B:117:0x071b, B:119:0x072b, B:120:0x0732, B:122:0x0742, B:123:0x0749, B:125:0x0759, B:126:0x0764, B:128:0x0774, B:129:0x079c, B:131:0x0800, B:132:0x080e, B:136:0x085b, B:138:0x0875, B:139:0x087b, B:140:0x09c5, B:142:0x09d5, B:143:0x09dc, B:145:0x0b2d, B:146:0x0b37, B:148:0x0b47, B:149:0x0b4e, B:151:0x0b67, B:152:0x0b70, B:154:0x0b76, B:156:0x0b86, B:108:0x0661, B:102:0x0640, B:160:0x0b8f, B:162:0x0b91, B:47:0x02eb, B:41:0x02bb, B:35:0x028b, B:20:0x020c, B:73:0x05b0, B:75:0x05c8, B:77:0x05ce, B:78:0x05d2, B:80:0x05d8, B:83:0x05e7, B:86:0x05eb, B:88:0x0603, B:90:0x0609, B:91:0x060d, B:93:0x0613, B:96:0x0622), top: B:205:0x0001, inners: #0, #1, #4, #13, #14, #18, #20, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x02d2 A[Catch: all -> 0x01c2, TRY_LEAVE, TryCatch #11 {, blocks: (B:3:0x0001, B:5:0x01ba, B:9:0x01c5, B:11:0x01d5, B:12:0x01dc, B:14:0x01ec, B:15:0x01f3, B:17:0x0203, B:21:0x0223, B:23:0x0233, B:24:0x023a, B:26:0x024a, B:27:0x0251, B:29:0x0261, B:30:0x0268, B:32:0x0282, B:36:0x02a2, B:38:0x02b2, B:42:0x02d2, B:44:0x02e2, B:48:0x0302, B:50:0x0312, B:51:0x0319, B:55:0x04f5, B:57:0x051a, B:59:0x0520, B:60:0x0524, B:62:0x052a, B:63:0x0536, B:65:0x0591, B:67:0x0597, B:68:0x059b, B:70:0x05a1, B:71:0x05ad, B:72:0x05af, B:84:0x05e8, B:85:0x05ea, B:97:0x0623, B:99:0x0635, B:103:0x0645, B:105:0x0655, B:109:0x0666, B:111:0x06f2, B:112:0x06f9, B:114:0x0709, B:116:0x0716, B:117:0x071b, B:119:0x072b, B:120:0x0732, B:122:0x0742, B:123:0x0749, B:125:0x0759, B:126:0x0764, B:128:0x0774, B:129:0x079c, B:131:0x0800, B:132:0x080e, B:136:0x085b, B:138:0x0875, B:139:0x087b, B:140:0x09c5, B:142:0x09d5, B:143:0x09dc, B:145:0x0b2d, B:146:0x0b37, B:148:0x0b47, B:149:0x0b4e, B:151:0x0b67, B:152:0x0b70, B:154:0x0b76, B:156:0x0b86, B:108:0x0661, B:102:0x0640, B:160:0x0b8f, B:162:0x0b91, B:47:0x02eb, B:41:0x02bb, B:35:0x028b, B:20:0x020c, B:73:0x05b0, B:75:0x05c8, B:77:0x05ce, B:78:0x05d2, B:80:0x05d8, B:83:0x05e7, B:86:0x05eb, B:88:0x0603, B:90:0x0609, B:91:0x060d, B:93:0x0613, B:96:0x0622), top: B:205:0x0001, inners: #0, #1, #4, #13, #14, #18, #20, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0302 A[Catch: all -> 0x01c2, TRY_LEAVE, TryCatch #11 {, blocks: (B:3:0x0001, B:5:0x01ba, B:9:0x01c5, B:11:0x01d5, B:12:0x01dc, B:14:0x01ec, B:15:0x01f3, B:17:0x0203, B:21:0x0223, B:23:0x0233, B:24:0x023a, B:26:0x024a, B:27:0x0251, B:29:0x0261, B:30:0x0268, B:32:0x0282, B:36:0x02a2, B:38:0x02b2, B:42:0x02d2, B:44:0x02e2, B:48:0x0302, B:50:0x0312, B:51:0x0319, B:55:0x04f5, B:57:0x051a, B:59:0x0520, B:60:0x0524, B:62:0x052a, B:63:0x0536, B:65:0x0591, B:67:0x0597, B:68:0x059b, B:70:0x05a1, B:71:0x05ad, B:72:0x05af, B:84:0x05e8, B:85:0x05ea, B:97:0x0623, B:99:0x0635, B:103:0x0645, B:105:0x0655, B:109:0x0666, B:111:0x06f2, B:112:0x06f9, B:114:0x0709, B:116:0x0716, B:117:0x071b, B:119:0x072b, B:120:0x0732, B:122:0x0742, B:123:0x0749, B:125:0x0759, B:126:0x0764, B:128:0x0774, B:129:0x079c, B:131:0x0800, B:132:0x080e, B:136:0x085b, B:138:0x0875, B:139:0x087b, B:140:0x09c5, B:142:0x09d5, B:143:0x09dc, B:145:0x0b2d, B:146:0x0b37, B:148:0x0b47, B:149:0x0b4e, B:151:0x0b67, B:152:0x0b70, B:154:0x0b76, B:156:0x0b86, B:108:0x0661, B:102:0x0640, B:160:0x0b8f, B:162:0x0b91, B:47:0x02eb, B:41:0x02bb, B:35:0x028b, B:20:0x020c, B:73:0x05b0, B:75:0x05c8, B:77:0x05ce, B:78:0x05d2, B:80:0x05d8, B:83:0x05e7, B:86:0x05eb, B:88:0x0603, B:90:0x0609, B:91:0x060d, B:93:0x0613, B:96:0x0622), top: B:205:0x0001, inners: #0, #1, #4, #13, #14, #18, #20, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x052a A[Catch: all -> 0x01c2, LOOP:0: B:60:0x0524->B:62:0x052a, LOOP_END, TryCatch #11 {, blocks: (B:3:0x0001, B:5:0x01ba, B:9:0x01c5, B:11:0x01d5, B:12:0x01dc, B:14:0x01ec, B:15:0x01f3, B:17:0x0203, B:21:0x0223, B:23:0x0233, B:24:0x023a, B:26:0x024a, B:27:0x0251, B:29:0x0261, B:30:0x0268, B:32:0x0282, B:36:0x02a2, B:38:0x02b2, B:42:0x02d2, B:44:0x02e2, B:48:0x0302, B:50:0x0312, B:51:0x0319, B:55:0x04f5, B:57:0x051a, B:59:0x0520, B:60:0x0524, B:62:0x052a, B:63:0x0536, B:65:0x0591, B:67:0x0597, B:68:0x059b, B:70:0x05a1, B:71:0x05ad, B:72:0x05af, B:84:0x05e8, B:85:0x05ea, B:97:0x0623, B:99:0x0635, B:103:0x0645, B:105:0x0655, B:109:0x0666, B:111:0x06f2, B:112:0x06f9, B:114:0x0709, B:116:0x0716, B:117:0x071b, B:119:0x072b, B:120:0x0732, B:122:0x0742, B:123:0x0749, B:125:0x0759, B:126:0x0764, B:128:0x0774, B:129:0x079c, B:131:0x0800, B:132:0x080e, B:136:0x085b, B:138:0x0875, B:139:0x087b, B:140:0x09c5, B:142:0x09d5, B:143:0x09dc, B:145:0x0b2d, B:146:0x0b37, B:148:0x0b47, B:149:0x0b4e, B:151:0x0b67, B:152:0x0b70, B:154:0x0b76, B:156:0x0b86, B:108:0x0661, B:102:0x0640, B:160:0x0b8f, B:162:0x0b91, B:47:0x02eb, B:41:0x02bb, B:35:0x028b, B:20:0x020c, B:73:0x05b0, B:75:0x05c8, B:77:0x05ce, B:78:0x05d2, B:80:0x05d8, B:83:0x05e7, B:86:0x05eb, B:88:0x0603, B:90:0x0609, B:91:0x060d, B:93:0x0613, B:96:0x0622), top: B:205:0x0001, inners: #0, #1, #4, #13, #14, #18, #20, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x05a1 A[Catch: all -> 0x01c2, LOOP:1: B:68:0x059b->B:70:0x05a1, LOOP_END, TryCatch #11 {, blocks: (B:3:0x0001, B:5:0x01ba, B:9:0x01c5, B:11:0x01d5, B:12:0x01dc, B:14:0x01ec, B:15:0x01f3, B:17:0x0203, B:21:0x0223, B:23:0x0233, B:24:0x023a, B:26:0x024a, B:27:0x0251, B:29:0x0261, B:30:0x0268, B:32:0x0282, B:36:0x02a2, B:38:0x02b2, B:42:0x02d2, B:44:0x02e2, B:48:0x0302, B:50:0x0312, B:51:0x0319, B:55:0x04f5, B:57:0x051a, B:59:0x0520, B:60:0x0524, B:62:0x052a, B:63:0x0536, B:65:0x0591, B:67:0x0597, B:68:0x059b, B:70:0x05a1, B:71:0x05ad, B:72:0x05af, B:84:0x05e8, B:85:0x05ea, B:97:0x0623, B:99:0x0635, B:103:0x0645, B:105:0x0655, B:109:0x0666, B:111:0x06f2, B:112:0x06f9, B:114:0x0709, B:116:0x0716, B:117:0x071b, B:119:0x072b, B:120:0x0732, B:122:0x0742, B:123:0x0749, B:125:0x0759, B:126:0x0764, B:128:0x0774, B:129:0x079c, B:131:0x0800, B:132:0x080e, B:136:0x085b, B:138:0x0875, B:139:0x087b, B:140:0x09c5, B:142:0x09d5, B:143:0x09dc, B:145:0x0b2d, B:146:0x0b37, B:148:0x0b47, B:149:0x0b4e, B:151:0x0b67, B:152:0x0b70, B:154:0x0b76, B:156:0x0b86, B:108:0x0661, B:102:0x0640, B:160:0x0b8f, B:162:0x0b91, B:47:0x02eb, B:41:0x02bb, B:35:0x028b, B:20:0x020c, B:73:0x05b0, B:75:0x05c8, B:77:0x05ce, B:78:0x05d2, B:80:0x05d8, B:83:0x05e7, B:86:0x05eb, B:88:0x0603, B:90:0x0609, B:91:0x060d, B:93:0x0613, B:96:0x0622), top: B:205:0x0001, inners: #0, #1, #4, #13, #14, #18, #20, #26 }] */
    @Override // com.byazt.jkd.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void hp() {
        /*
            Method dump skipped, instructions count: 2964
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jkd.gu.hp():void");
    }

    public boolean j() {
        return this.wi == 1;
    }

    public int jl() {
        if (this.hf == -1) {
            this.hf = jx().get("lottie_image_cache_resource_limit", 30);
        }
        return this.hf;
    }

    public com.byazt.ctq.w jx() {
        if (this.f21533a == null) {
            this.f21533a = com.byazt.ry.j.l(this.ud, w());
        }
        return this.f21533a;
    }

    public String l() {
        return this.ud;
    }

    public boolean sz() {
        if (this.f21536d == -1) {
            this.f21536d = jx().get("enable_ttvideo", -1);
        }
        int i2 = this.f21536d;
        if (i2 == 0) {
            return false;
        }
        return (i2 == 1 && (di.u() || di.v())) ? false : true;
    }

    public hp u(String str) throws JSONException {
        if (str == null) {
            return j(new JSONObject());
        }
        hp hpVarN = this.f21544m.get(str);
        if (hpVarN == null) {
            hpVarN = n(str);
        }
        if (hpVarN != null) {
            return hpVarN;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code_id", str);
            return j(jSONObject);
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean vv(String str) {
        if (TextUtils.isEmpty(str) || str.equals("http") || str.equals("https")) {
            return false;
        }
        if (this.gi == 0) {
            this.gi = jx().get("open_dl_type", 0);
        }
        int i2 = this.gi;
        if (i2 == 0) {
            return false;
        }
        if (i2 == 2) {
            return true;
        }
        return cx(str);
    }

    private static hp j(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("code_id");
        boolean zHp = wv.hp(jSONObject, "enable_bidding_cache", false);
        long jHp = wv.hp(jSONObject, "bidding_cache_skip_time", 0L);
        boolean zHp2 = wv.hp(jSONObject, "enable_bidding_pre_fetch", false);
        int iHp = wv.hp(jSONObject, "auto_play", 1);
        int iHp2 = wv.hp(jSONObject, "rv_preload", 2);
        int iHp3 = wv.hp(jSONObject, "nv_preload", 1);
        int iHp4 = wv.hp(jSONObject, "sp_preload", 0);
        int iHp5 = wv.hp(jSONObject, "skip_time_displayed", 0);
        int iHp6 = wv.hp(jSONObject, "reg_creative_control", 1);
        int iHp7 = wv.hp(jSONObject, "rv_skip_time", 0);
        int iHp8 = wv.hp(jSONObject, "iv_skip_time", 0);
        int iHp9 = wv.hp(jSONObject, "stop_time", TTAdConstant.STYLE_SIZE_RADIO_3_2);
        boolean zHp3 = wv.hp(jSONObject, "close_on_click", false);
        int iHp10 = wv.hp(jSONObject, "splash_load_type", 2);
        int iHp11 = wv.hp(jSONObject, "splash_buffer_time", 100);
        int iHp12 = wv.hp(jSONObject, "time_out_control", 2000);
        int iHp13 = wv.hp(jSONObject, "time_out_control_type", 0);
        int iHp14 = wv.hp(jSONObject, "slot_type", -1);
        return hp.hp().hp(strOptString).s(iHp).q(iHp2).e(iHp3).gu(iHp5).jl(iHp6).a(iHp7).j(iHp4).w(iHp9).jx(iHp12).zy(iHp10).k(iHp11).eb(iHp8).jx(zHp3).v(iHp13).hp(jHp).l(zHp).hp(zHp2).l(iHp14).hp(wv.hp(jSONObject, "refresh_rit_sw", 0));
    }

    @Override // com.byazt.jkd.w
    public void l(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject2 != null) {
            this.ai = jSONObjectOptJSONObject2.optBoolean("can_init_live", true);
        }
        if (!this.ai || (jSONObjectOptJSONObject = jSONObject.optJSONObject("live_sdk_conf")) == null) {
            return;
        }
        this.db = kg.hp(jSONObjectOptJSONObject);
        com.byazt.yx.l.hp().l();
    }

    private void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.f21549q = jSONObject.optInt(cl.f49062q, 0);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("content_type");
            this.f21537e.clear();
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i2);
                    if (!TextUtils.isEmpty(strOptString)) {
                        this.f21537e.add(strOptString);
                    }
                }
            }
            this.gu = jSONObject.optInt("send_response_to_webview", 0);
            this.jl = jSONObject.optInt("max_report_size_single", 2);
            this.zy = jSONObject.optInt("max_report_size_total", 5);
            this.xs = jSONObject.optInt("max_report_times", 0);
            this.f21554v = jSONObject.optString("report_url", "https://api-access.pangolin-sdk-toutiao.com/v2/inspect/aegis/client/page/");
            this.f21553u = jSONObject.optInt("storage_type", 0);
            this.f21542k = jSONObject.optInt("report_only_wifi_enable", 0);
            return;
        }
        this.f21549q = 0;
        this.f21537e.clear();
        this.gu = 0;
        this.jl = 2;
        this.zy = 5;
        this.xs = 0;
        this.f21554v = "https://api-access.pangolin-sdk-toutiao.com/v2/inspect/aegis/client/page/";
        this.f21553u = 0;
        this.f21542k = 0;
    }

    private boolean b(String str) {
        JSONObject jSONObjectJq = jq();
        return jSONObjectJq != null && jSONObjectJq.optInt(str, 0) == 1;
    }

    private boolean cx(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!TextUtils.isEmpty(this.ub)) {
            this.ub = jx().get("app_dl_scheme_list", "");
        }
        if (TextUtils.isEmpty(this.ub)) {
            return false;
        }
        String[] strArrSplit = this.ub.split(",");
        if (strArrSplit.length == 0) {
            return false;
        }
        for (String str2 : strArrSplit) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private int eb(JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt("splash_check_type", 1);
        this.pc = iOptInt;
        if (iOptInt == 0 || iOptInt == 1) {
            return iOptInt;
        }
        return 1;
    }

    private hp n(String str) {
        hp hpVarJ = null;
        try {
            hc();
            String string = this.ei.getString(sz(str), null);
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            hpVarJ = j(new JSONObject(string));
            this.f21544m.put(str, hpVarJ);
            return hpVarJ;
        } catch (Throwable th) {
            th.getMessage();
            return hpVarJ;
        }
    }

    private hp ns(String str) {
        String string;
        com.byazt.ctq.jx jxVarQ = q();
        hp hpVarJ = null;
        try {
            if (jxVarQ != null) {
                string = jxVarQ.get(sz(str), "");
            } else {
                bj();
                string = this.hb.getString(sz(str), "");
            }
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            hpVarJ = j(new JSONObject(string));
            this.f21544m.put(str, hpVarJ);
            return hpVarJ;
        } catch (Throwable th) {
            th.getMessage();
            return hpVarJ;
        }
    }

    private void s(JSONObject jSONObject) {
        int length;
        SharedPreferences.Editor editorEdit;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ad_slot_conf_list");
        if (jSONArrayOptJSONArray == null || (length = jSONArrayOptJSONArray.length()) <= 0) {
            return;
        }
        this.f21544m.clear();
        hc();
        com.byazt.ctq.jx jxVarQ = q();
        SharedPreferences.Editor editorEdit2 = null;
        if (jxVarQ == null) {
            bj();
            editorEdit = this.hb.edit();
        } else {
            editorEdit = null;
        }
        for (int i2 = 0; i2 < length; i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
            hp hpVarJ = j(jSONObjectOptJSONObject);
            if (hpVarJ != null) {
                this.f21544m.put(hpVarJ.hp, hpVarJ);
                if (com.byazt.lca.j.hp().eb(hpVarJ.jx())) {
                    if (editorEdit2 == null && this.ei != null) {
                        editorEdit2 = this.ei.edit();
                    }
                    if (editorEdit2 != null) {
                        editorEdit2.putString(sz(hpVarJ.hp), jSONObjectOptJSONObject.toString());
                    }
                }
                if (jxVarQ != null) {
                    jxVarQ.put(sz(hpVarJ.hp), jSONObjectOptJSONObject.toString());
                } else if (editorEdit != null) {
                    editorEdit.putString(sz(hpVarJ.hp), jSONObjectOptJSONObject.toString());
                }
                com.byazt.oz.jx.hp(hpVarJ.hp, jSONObjectOptJSONObject);
            }
        }
        if (editorEdit2 != null) {
            try {
                editorEdit2.commit();
            } catch (Throwable th) {
                th.getMessage();
                return;
            }
        }
        if (editorEdit != null) {
            editorEdit.commit();
        }
    }

    public boolean e(String str) {
        try {
            hp hpVarU = sz.l().u(String.valueOf(str));
            if (hpVarU != null) {
                return hpVarU.f21563k != null;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public int gu(String str) {
        return xs(str).eb;
    }

    public int k(String str) {
        return u(String.valueOf(str)).xs;
    }

    public boolean eb(String str) {
        return str == null || sz.l().u(str).f21561e == 0;
    }

    public int jl(String str) {
        int iL;
        if (this.mz == null) {
            return 5000;
        }
        str.getClass();
        switch (str) {
            case "banner_ad":
                iL = this.mz.l("banner");
                break;
            case "rewarded_video":
                iL = this.mz.l("rewarded");
                break;
            case "fullscreen_interstitial_ad":
                iL = this.mz.l("fullscreen");
                break;
            case "embeded_ad":
                iL = this.mz.l("feed");
                break;
            case "draw_ad":
                iL = this.mz.l(MediationConstant.RIT_TYPE_DRAW);
                break;
            default:
                iL = 5000;
                break;
        }
        if (iL <= 0) {
            return 5000;
        }
        return iL;
    }

    @Override // com.byazt.jkd.w
    public void jx(final JSONObject jSONObject) throws JSONException {
        Integer num;
        w.l lVar;
        w.l lVar2;
        w(jSONObject);
        this.cs = hp(jSONObject, "dyn_draw_engine_url", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/renderer/package.json");
        this.gv = jSONObject.optString("play_component_ugen_engine_url", "");
        this.qa = jSONObject.optString("ads_url", "api-access.pangolin-sdk-toutiao.com");
        this.nc = jSONObject.optString("app_log_url", "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/");
        this.vq = jSONObject.optString("xpath");
        this.zx = jSONObject.optJSONObject("digest");
        this.f21556y = jSONObject.optLong("data_time");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("feq_policy");
        w.l lVar3 = new w.l();
        if (jSONObjectOptJSONObject != null) {
            lVar3.hp(jSONObjectOptJSONObject.optLong("duration") * 1000);
            lVar3.hp(jSONObjectOptJSONObject.optInt("max"));
            lVar3.hp((float) jSONObjectOptJSONObject.optDouble("agg_multiple"));
        }
        this.gh = jSONObject.optInt("vbtt", 5);
        this.f21541i = jSONObject.optInt("fetch_tpl_interval", SdkConfigData.DEFAULT_REQUEST_INTERVAL);
        this.pp = jSONObject.optString("privacy_url", qk);
        this.cv = Boolean.valueOf(jSONObject.optBoolean("use_mediation_map"));
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("abtest");
        if (jSONObjectOptJSONObject2 != null) {
            lVar3.hp(jSONObjectOptJSONObject2.optString(cl.f49059n));
            lVar3.l(jSONObjectOptJSONObject2.optString("param"));
        } else {
            com.byazt.lca.w.hp().eb();
        }
        this.cd = jSONObject.optInt("read_video_from_cache", 1);
        this.dh = jSONObject.optBoolean("enable_bw_screen_detection", false);
        a(jSONObject.optJSONObject("web_upload"));
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("log_rate_conf");
        this.mt = jSONObjectOptJSONObject3;
        if (jSONObjectOptJSONObject3 != null) {
            this.sh = (float) jSONObjectOptJSONObject3.optDouble("global_sample", 1.0d);
            if (this.mt.has("call_stack_rate")) {
                this.on = (float) this.mt.optDouble("call_stack_rate");
            } else {
                this.on = this.sh;
            }
        } else {
            this.sh = 1.0f;
        }
        this.pk = 0.0f;
        this.uc = 20;
        this.mm = 1.0f;
        this.vd = 0;
        JSONObject jSONObject2 = this.mt;
        if (jSONObject2 != null) {
            num = 3;
            this.pk = (float) jSONObject2.optDouble("feature_stack_rate", 0.0d);
            this.uc = this.mt.optInt("view_traverse_depth", 20);
            this.mm = (float) this.mt.optDouble("feature_chain_factor", 1.0d);
            this.vd = this.mt.optInt("feature_req_switch", 0);
        } else {
            num = 3;
        }
        this.rv = jSONObject.optString("pyload_h5");
        this.qu = ky.hp(jSONObject.optJSONObject("insert_js_config"));
        this.pc = eb(jSONObject);
        u.l("splashLoad", "setting-》mSplashCheckType=" + this.pc);
        this.gd = jSONObject.optInt("if_both_open", 0);
        this.yj = jSONObject.optInt("support_tnc", Integer.MAX_VALUE);
        this.fi = jSONObject.optInt("al", 1);
        this.jb = jSONObject.optInt("max_tpl_cnts", 100);
        com.byazt.lca.jx.hp().l(jSONObject);
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject4 != null) {
            this.jw = jSONObjectOptJSONObject4.optString("stats_url", "api-access.pangolin-sdk-toutiao1.com");
            this.wi = jSONObjectOptJSONObject4.optInt("mini_game_preload", 1);
            this.f21539g = jSONObjectOptJSONObject4.optString("img_bucket", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/");
            this.vt = jSONObjectOptJSONObject4.optBoolean("enable_apm_pv", false);
            this.ti = jSONObjectOptJSONObject4.optBoolean("open_single_abi", false);
            this.jm = jSONObjectOptJSONObject4.optBoolean("show_callback_mult", false) ? 1 : 0;
            this.vx = jSONObjectOptJSONObject4.optInt("fetch_tpl_timeout_ctrl", 5000);
            this.fu = jSONObjectOptJSONObject4.optInt("interact_show_after_time", 500);
            this.ld = jSONObjectOptJSONObject4.optInt("fetch_tpl_timeout_ctrl_bad_device", 300);
            this.ly = (float) jSONObjectOptJSONObject4.optDouble("tpl_render_error_rate_h5", 4.5d);
            this.gy = (float) jSONObjectOptJSONObject4.optDouble("tpl_render_error_rate_native", 1.0d);
            this.tn = jSONObjectOptJSONObject4.optBoolean("tpl_enable_render_timeout_opt", false);
            String strOptString = jSONObjectOptJSONObject4.optString("tpl_timeout_ctrl");
            if (!TextUtils.isEmpty(strOptString)) {
                this.mz = n.hp(strOptString, this.ud);
            }
            this.ae = jSONObjectOptJSONObject4.optInt("if_sp_cache", 1);
            lVar3.hp(jSONObjectOptJSONObject4.optBoolean("is_spl_cache_remove_change", false));
            this.ec = jSONObjectOptJSONObject4.optInt("express_gesture_enable", 0);
            this.f21546n = jSONObjectOptJSONObject4.optInt("opt_click_chain", 0);
            this.ns = jSONObjectOptJSONObject4.optInt("main_start_downloader", 0);
            this.sz = jSONObjectOptJSONObject4.optInt("app_express_gesture_priority", -1);
            this.fe = jSONObjectOptJSONObject4.optInt("webview_cache_count", 0);
            this.ty = jSONObjectOptJSONObject4.optInt("webview_cache_count_v3", 0);
            this.ci = jSONObjectOptJSONObject4.optInt("webview_render_concurrent_count", 2);
            this.cx = jSONObjectOptJSONObject4.optInt("splash_enable_rotate", 0);
            this.nl = jSONObjectOptJSONObject4.optString("ad_pkg_info_url", "apps.bytesfield.com");
            this.hx = jSONObjectOptJSONObject4.optString("splash_close_text", "跳过");
            this.kg = jSONObjectOptJSONObject4.optInt("network_module", 1);
            lVar3.l(jSONObjectOptJSONObject4.optInt("cypher_version", 40001));
            com.byazt.nml.hp.hp().hp(this.kg != 2);
            this.f21552t = jSONObjectOptJSONObject4.optInt("adlog_debug", 0);
            this.jd = jSONObjectOptJSONObject4.optInt("adlog_batch", 10);
            this.tw = jSONObjectOptJSONObject4.optLong("adlog_interval", 5000L);
            this.vv = jSONObjectOptJSONObject4.optInt("enable_kite", 0);
            this.qh = jSONObjectOptJSONObject4.optInt("adlog_exception_batch", 100);
            this.f21555x = jSONObjectOptJSONObject4.optInt("adlog_monitor", 1);
            this.f21536d = jSONObjectOptJSONObject4.optInt("enable_ttvideo", -1);
            this.wv = jSONObjectOptJSONObject4.optInt("enable_zaid", 0);
            this.hq = jSONObjectOptJSONObject4.optInt("player_stats_check_switch", 1);
            this.f21534b = jSONObjectOptJSONObject4.optInt("enable_cdn_opt", 0);
            this.f21547o = jSONObjectOptJSONObject4.optInt("download_button_effect", 0);
            this.pi = jSONObjectOptJSONObject4.optLong("ext_use_type", this.df);
            this.bu = jSONObjectOptJSONObject4.optInt("enable_glgpu", 0);
            this.ux = jSONObjectOptJSONObject4.optInt("enable_dl_ext", this.zb);
            this.mp = jSONObjectOptJSONObject4.optInt("enable_oaid_frequency", 0);
            this.pu = jSONObjectOptJSONObject4.optInt("download_receiver_enable", 1);
            this.hp = jSONObjectOptJSONObject4.optInt("launch_strategy", 0);
            this.dy = jSONObjectOptJSONObject4.optInt("dl_popup_duration", 1000);
            this.lv = jSONObjectOptJSONObject4.optInt("opt_show_check", 0);
            this.f21550r = jSONObjectOptJSONObject4.optInt("disable_feed_video_play_by_visible_check", 0);
            this.zd = jSONObjectOptJSONObject4.optInt("shake_trigger_control", 0);
            this.lp = jSONObjectOptJSONObject4.optJSONObject("pitaya_general_settings");
            this.gb = jSONObjectOptJSONObject4.optJSONObject("http_drop");
            this.xv = jSONObjectOptJSONObject4.optInt("stats_batch", 5);
            this.pg = jSONObjectOptJSONObject4.optInt("max_memory_event_count", 10000);
            this.hl = jSONObjectOptJSONObject4.optJSONObject("live_stream_cof");
            this.nq = jSONObjectOptJSONObject4.optJSONObject("dl_notification");
            this.ba = jSONObjectOptJSONObject4.optInt("disable_show_url", 0);
            this.fv = jSONObjectOptJSONObject4.optJSONObject("volume");
            this.qj = jSONObjectOptJSONObject4.optJSONObject("brightness");
            this.vi = jSONObjectOptJSONObject4.optJSONObject("video_start");
            this.bv = jSONObjectOptJSONObject4.optJSONObject("sensor_direction");
            this.og = jSONObjectOptJSONObject4.optJSONObject("pitaya_business_conf");
            this.tq = jSONObjectOptJSONObject4.optJSONArray("pitaya_applog_event_filter");
            lVar3.jx(jSONObjectOptJSONObject4.optInt("spl_cache_conf", 30));
            lVar3.j(jSONObjectOptJSONObject4.optInt("spl_thread_conf", 1));
            lVar3.w(jSONObjectOptJSONObject4.optInt("spl_common_conf", 0));
            lVar3.a(jSONObjectOptJSONObject4.optInt("spl_cache_expired", 0));
            lVar3.jx(jSONObjectOptJSONObject4.optString("drop_cache_black_conf", ""));
            lVar3.hp(this.og);
            lVar3.eb(jSONObjectOptJSONObject4.optInt("splash_render_timeout_backup", 100));
            hp.C0412hp c0412hp = new hp.C0412hp();
            c0412hp.hp(jSONObjectOptJSONObject4.optInt("store_isolate_conf", 3));
            c0412hp.hp();
            JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4.optJSONObject("client_intelligence_conf");
            if (jSONObjectOptJSONObject5 != null) {
                this.qq = jSONObjectOptJSONObject5.optBoolean("net_rating");
                this.aj = jSONObjectOptJSONObject5.optJSONObject("net_rating_config");
                this.nn = jSONObjectOptJSONObject5.optBoolean("device_rating");
            }
            JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject4.optJSONObject("bytebench_rating");
            if (jSONObjectOptJSONObject6 != null) {
                this.rt = jSONObjectOptJSONObject6.optBoolean(cl.f49062q);
                lVar = lVar3;
                this.tr = (float) jSONObjectOptJSONObject6.optDouble("mid_value");
                this.pf = (float) jSONObjectOptJSONObject6.optDouble("low_value");
            } else {
                lVar = lVar3;
            }
            this.pj = true;
            this.rl.add(1);
            Integer num2 = num;
            this.rl.add(num2);
            this.rl.add(5);
            this.ds = true;
            JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject4.optJSONObject("realtime_feature");
            if (jSONObjectOptJSONObject7 != null) {
                this.pj = jSONObjectOptJSONObject7.optBoolean(cl.f49062q, true);
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject7.optJSONArray("time_window");
                this.rl.clear();
                if (jSONArrayOptJSONArray == null) {
                    this.rl.add(1);
                    this.rl.add(num2);
                    this.rl.add(5);
                } else {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        this.rl.add(Integer.valueOf(jSONArrayOptJSONArray.optInt(i2)));
                    }
                }
                this.ds = jSONObjectOptJSONObject7.optBoolean("session_enable", false);
            }
            JSONObject jSONObject3 = this.mt;
            if (jSONObject3 == null || !jSONObject3.has("feature_stack_rate")) {
                this.pk = (float) jSONObjectOptJSONObject4.optDouble("feature_stack_rate", this.pk);
            }
            JSONObject jSONObject4 = this.mt;
            if (jSONObject4 == null || !jSONObject4.has("view_traverse_depth")) {
                this.uc = jSONObjectOptJSONObject4.optInt("view_traverse_depth", this.uc);
            }
            JSONObject jSONObject5 = this.mt;
            if (jSONObject5 == null || !jSONObject5.has("feature_chain_factor")) {
                this.mm = (float) jSONObjectOptJSONObject4.optDouble("feature_chain_factor", this.mm);
            }
            JSONObject jSONObject6 = this.mt;
            if (jSONObject6 == null || !jSONObject6.has("feature_req_switch")) {
                this.vd = jSONObjectOptJSONObject4.optInt("feature_req_switch", this.vd);
            }
            this.ad = jSONObjectOptJSONObject4.optInt("event_switch", this.f21540h);
            this.ed = jSONObjectOptJSONObject4.optInt("switch_audio_focus", 0);
            this.nu = jSONObjectOptJSONObject4.optString("apm_pv_config", "");
            this.lu = jSONObjectOptJSONObject4.optInt("splash_card_show_max_count", 3);
            this.f21543l = jSONObjectOptJSONObject4.optInt("pre_fetch_cnt", 10);
            this.f21548p = jSONObjectOptJSONObject4.optInt("gnd_prefetch_cache_size", 5);
            this.rp = jSONObjectOptJSONObject4.optLong("gnd_prefetch_cache_ttl", 0L);
            this.an = com.byazt.vfd.hp.hp(jSONObjectOptJSONObject4.optJSONObject("white_check_config"));
            this.nf = jSONObjectOptJSONObject4.optInt("scheme_get_type", 0);
            this.xn = jSONObjectOptJSONObject4.optInt("scheme_get_num", 1);
            this.or = jSONObjectOptJSONObject4.optInt("if_query_all_package", 0);
            this.ky = com.byazt.kl.l.hp(jSONObjectOptJSONObject4.optJSONObject("clog_config"));
            this.f21545ms = com.byazt.jde.j.hp(jSONObjectOptJSONObject4.optJSONObject("oncall_upload"));
            this.xh = jSONObjectOptJSONObject4.optInt("feedback_opt", 1);
            this.as = jSONObjectOptJSONObject4.optBoolean("check_live_room", false);
            JSONObject jSONObjectOptJSONObject8 = jSONObjectOptJSONObject4.optJSONObject("pglam");
            this.cu = jSONObjectOptJSONObject8;
            if (jSONObjectOptJSONObject8 != null) {
                com.byazt.zn.jx.hp(jSONObjectOptJSONObject8);
                this.ll = this.cu.optInt("pglam_main_enable", 0);
                this.yt = this.cu.optInt("pglam_dns_check_enable", 0);
                this.ja = this.cu.optString("pglam_clazz_check", "");
                jx = this.cu.optInt("pgl_4TypeEncrypt_close", 0);
                f21531j = this.cu.optInt("pgl_soIntegrity_check", 0);
                f21532w = this.cu.optInt("pgl_soverfailstrategy_enable", 0);
            }
            this.hc = jSONObjectOptJSONObject4.optInt("ud_enable", 1);
            this.eq = jSONObjectOptJSONObject4.optJSONObject("thread_config");
            com.byazt.nnr.hp.l();
            this.hy = jSONObjectOptJSONObject4.optBoolean("new_app_list", false);
            this.xe = l.hp(jSONObjectOptJSONObject4.optJSONObject("app_live_config"));
            this.pn = jSONObjectOptJSONObject4.optJSONObject("plugin_update_state");
            this.wf = jSONObjectOptJSONObject4.optJSONObject("antispam_autoclick_detect");
            com.byazt.pg.w wVarL = b.l();
            if (wVarL != null) {
                wVarL.updateHARSettings(this.wf);
            }
            this.lz = jSONObjectOptJSONObject4.optInt("is_open_isw", 1);
            this.uj = jSONObjectOptJSONObject4.optInt("is_kv_cache_type", 0);
            this.sq = jSONObjectOptJSONObject4.optInt("kv_init_type", 0);
            this.gi = jSONObjectOptJSONObject4.optInt("open_dl_type", 0);
            this.ub = jSONObjectOptJSONObject4.optString("app_dl_scheme_list", "");
            int iOptInt = jSONObjectOptJSONObject4.optInt("lp_url_sw", 0);
            this.rf = iOptInt;
            if (iOptInt == 1) {
                this.lr = jSONObjectOptJSONObject4.optString("lp_list", "");
            }
            JSONObject jSONObjectOptJSONObject9 = jSONObjectOptJSONObject4.optJSONObject("uchain");
            if (jSONObjectOptJSONObject9 != null) {
                String strOptString2 = jSONObjectOptJSONObject9.optString(TKDownloadReason.KSAD_TK_MD5, "");
                String strOptString3 = jSONObjectOptJSONObject9.optString("url", "");
                if (!TextUtils.isEmpty(strOptString2) && !TextUtils.isEmpty(strOptString3)) {
                    this.in = strOptString2;
                    this.ri = strOptString3;
                }
            }
            com.byazt.rj.jx.hp(this.in, this.ri, this.ud);
            JSONObject jSONObjectOptJSONObject10 = jSONObjectOptJSONObject4.optJSONObject("ruleEngine");
            if (jSONObjectOptJSONObject10 != null) {
                Boolean boolValueOf = Boolean.valueOf(jSONObjectOptJSONObject10.optBoolean(cl.f49062q));
                this.qn = boolValueOf;
                if (boolValueOf.booleanValue()) {
                    JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject10.optJSONArray("rules");
                    this.ut = jSONArrayOptJSONArray2;
                    com.byazt.dfp.l.hp(jSONArrayOptJSONArray2, this.ud);
                }
            }
            this.qd = jSONObjectOptJSONObject4.optInt("m_vids_join", 0);
            this.el = jSONObjectOptJSONObject4.optInt("mini_event_upload_version", 0);
            this.mk = jSONObjectOptJSONObject4.optLong("bg_web_readd_t", 3000L);
            this.rw = jSONObjectOptJSONObject4.optInt("title_priority", 0);
            this.jv = jSONObjectOptJSONObject4.optInt("splash_video_opt_enable", 0);
            this.di = jSONObjectOptJSONObject4.optInt("support_live_code", -1);
            this.ks = jSONObjectOptJSONObject4.optInt("gesture_through_enable", 0);
            this.ju = jSONObjectOptJSONObject4.optInt("disable_effects", 0);
            this.vr = jSONObjectOptJSONObject4.optInt("enable_layout_restrict", 0);
            this.ct = jSONObjectOptJSONObject4.optInt("refresh_req_num", 2);
            this.gs = jSONObjectOptJSONObject4.optInt("refresh_max_times", 1);
            this.f21551s = jSONObjectOptJSONObject4.optInt("npth_enable_type", 0);
            this.qe = jSONObjectOptJSONObject4.optBoolean("is_sp_send_meta", true);
            this.xq = eb.hp(jSONObjectOptJSONObject4.optString("opt_config"));
            this.ij = jl.hp(jSONObjectOptJSONObject4.optString("user_interaction_config"));
            this.er = a.hp(jSONObjectOptJSONObject4.optString("kv_config"));
            this.yu = jSONObjectOptJSONObject4.optBoolean("preload_switch", false);
            this.ke = jSONObjectOptJSONObject4.optBoolean("cache_ana_lru_switch", false);
            this.uf = jSONObjectOptJSONObject4.optBoolean("cache_ana_expire_switch", false);
            this.kq = jSONObjectOptJSONObject4.optInt("preload_time_point", 0);
            this.wc = jSONObjectOptJSONObject4.optBoolean("is_adapt_density", true);
            this.jq = jSONObjectOptJSONObject4.optBoolean("is_adapt_landscape", true);
            this.wg = jSONObjectOptJSONObject4.optBoolean("disable_easy_playable", true);
            this.bt = jSONObjectOptJSONObject4.optInt("enable_target_34", 1);
            this.dz = jSONObjectOptJSONObject4.optBoolean("app_info_cache_switch", false);
            this.bk = jSONObjectOptJSONObject4.optBoolean("disable_repeat_render", true);
            this.xr = jSONObjectOptJSONObject4.optInt("status_bar_adapt", 0);
            this.bj = jSONObjectOptJSONObject4.optJSONObject("dex_strategy");
            this.zh = jSONObjectOptJSONObject4.optInt("jump_shield_short_duration", 1000);
            this.yl = jSONObjectOptJSONObject4.optInt("replace_dummy_video", 1);
            this.xm = jSONObjectOptJSONObject4.optInt("template_pull_timeout", -1);
            this.xj = jSONObjectOptJSONObject4.optInt("template_pull_type", 0);
            JSONObject jSONObjectOptJSONObject11 = jSONObjectOptJSONObject4.optJSONObject("view_report_opt");
            if (jSONObjectOptJSONObject11 != null) {
                this.ki = jSONObjectOptJSONObject11.optBoolean("view_check_by_window", false);
                this.wj = jSONObjectOptJSONObject11.optBoolean("shake_twist_bind_show", false);
                this.sf = jSONObjectOptJSONObject11.optBoolean("view_check_by_click", false);
            }
            JSONObject jSONObjectOptJSONObject12 = jSONObjectOptJSONObject4.optJSONObject("tt_csj_lifecycle_opt");
            if (jSONObjectOptJSONObject12 != null) {
                this.cg = Boolean.valueOf(jSONObjectOptJSONObject12.optBoolean("node_line_enable", false));
                this.cm = Boolean.valueOf(jSONObjectOptJSONObject12.optBoolean("node_line_detail_enable", false));
            }
            com.byazt.zn.r.hp();
            JSONObject jSONObjectOptJSONObject13 = jSONObjectOptJSONObject4.optJSONObject("ugen_event_center_config");
            if (jSONObjectOptJSONObject13 == null) {
                jSONObjectOptJSONObject13 = new JSONObject();
            }
            this.oi = jSONObjectOptJSONObject13.optInt("dynamic_ugen_v3", 0);
            this.yz = jSONObjectOptJSONObject13.optInt("creative_ugen_v3", 0);
            this.dg = jSONObjectOptJSONObject13.optInt("creative_ugen_v2", 0);
            this.la = jSONObjectOptJSONObject4.optBoolean("is_first_plugin_resources", false);
            int iOptInt2 = jSONObjectOptJSONObject4.optInt("open_webview_count");
            MultiWebview.setMaxWebViewCount(iOptInt2);
            jx().put("open_webview_count", iOptInt2);
            new com.byazt.xp.l().hp(jSONObjectOptJSONObject4);
            int iOptInt3 = jSONObjectOptJSONObject4.optInt("lottie_composition_cache_size", 20);
            jl(iOptInt3);
            jx().put("lottie_composition_cache_size", iOptInt3);
            this.hf = jSONObjectOptJSONObject4.optInt("lottie_image_cache_resource_limit", 30);
            jx().put("lottie_image_cache_resource_limit", this.hf);
            this.wu = jSONObjectOptJSONObject4.optBoolean("lottie_zip_download_disable", false) ? 1 : 0;
            jx().put("lottie_zip_download_disable", this.wu == 1);
            com.byazt.wv.hp.hp(this.hf, this.wu == 1);
            JSONObject jSONObjectOptJSONObject14 = jSONObjectOptJSONObject4.optJSONObject("video_opt");
            if (jSONObjectOptJSONObject14 != null) {
                this.ce = jSONObjectOptJSONObject14.optInt("video_size_gap_report", 0);
                jx().put("video_size_gap_report", this.ce);
            }
            JSONObject jSONObjectOptJSONObject15 = jSONObjectOptJSONObject4.optJSONObject("req_exemption_cfg");
            com.byazt.am.a.hp().hp(jSONObjectOptJSONObject15);
            if (jSONObjectOptJSONObject15 != null) {
                jx().put("req_exemption_cfg", jSONObjectOptJSONObject15.toString());
            } else {
                jx().remove("req_exemption_cfg");
            }
            this.kx = jSONObjectOptJSONObject4.optInt("endcard_lazy", 0);
            this.tx = jSONObjectOptJSONObject4.optInt("is_adapt_two_finger", 0);
            this.fa = jSONObjectOptJSONObject4.optInt("lottie_disable_os7_and_below", 0);
            this.kp = jSONObjectOptJSONObject4.optInt("stats_report_register_info", 0);
            this.td = jSONObjectOptJSONObject4.optBoolean("ignore_query_result", false);
            this.eu = jSONObjectOptJSONObject4.optBoolean("enable_dynamic_clear_cache", true);
            String strOptString4 = jSONObjectOptJSONObject4.optString("local_res_zip_url", "");
            com.byazt.ij.w.hp().hp(strOptString4);
            this.be = strOptString4;
            this.zp = jSONObjectOptJSONObject4.optInt("enableUChainDownLoad", 0);
        } else {
            lVar = lVar3;
        }
        JSONObject jSONObjectOptJSONObject16 = jSONObject.optJSONObject("download_config");
        if (jSONObjectOptJSONObject16 != null) {
            lVar2 = lVar;
            lVar2.s(jSONObjectOptJSONObject16.optInt("if_storage_internal", 1));
        } else {
            lVar2 = lVar;
        }
        lVar2.hp();
        r.l(jSONObject);
        ea.hp(jSONObject);
        lv.hp(jSONObject);
        com.byazt.xci.s.hp(jSONObject);
        hd.hp(jSONObject);
        cx.hp(jSONObject);
        new com.byazt.wu.l(128).hp(new Runnable() { // from class: com.byazt.jkd.gu.2
            @Override // java.lang.Runnable
            public void run() {
                ud.hp(jSONObject, new ud.hp() { // from class: com.byazt.jkd.gu.2.1
                    @Override // com.byazt.xci.ud.hp
                    public void hp(ud.jx jxVar) {
                        ud.hp(gu.this.f21533a, jxVar);
                    }

                    @Override // com.byazt.xci.ud.hp
                    public void l(ud.jx jxVar) {
                        ud.l(gu.this.f21533a, jxVar);
                    }
                });
            }
        });
        t.hp(jSONObject);
        this.nr = System.currentTimeMillis();
        this.rk.clear();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("spam_app_list");
        if (jSONArrayOptJSONArray3 != null) {
            int length = jSONArrayOptJSONArray3.length();
            for (int i3 = 0; i3 < length; i3++) {
                String strOptString5 = jSONArrayOptJSONArray3.optString(i3);
                if (!TextUtils.isEmpty(strOptString5)) {
                    this.rk.add(strOptString5);
                }
            }
        }
        synchronized (this.wt) {
            try {
                this.wt.clear();
                JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("scheme_check_list");
                if (jSONArrayOptJSONArray4 != null) {
                    int length2 = jSONArrayOptJSONArray4.length();
                    for (int i4 = 0; i4 < length2; i4++) {
                        String strOptString6 = jSONArrayOptJSONArray4.optString(i4);
                        if (!TextUtils.isEmpty(strOptString6)) {
                            this.wt.add(strOptString6);
                        }
                    }
                }
            } finally {
            }
        }
        synchronized (this.ru) {
            try {
                this.ru.clear();
                JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray("top_scheme_list");
                if (jSONArrayOptJSONArray5 != null) {
                    int length3 = jSONArrayOptJSONArray5.length();
                    for (int i5 = 0; i5 < length3; i5++) {
                        String strOptString7 = jSONArrayOptJSONArray5.optString(i5);
                        if (!TextUtils.isEmpty(strOptString7)) {
                            this.ru.add(strOptString7);
                        }
                    }
                }
            } finally {
            }
        }
        JSONObject jSONObjectOptJSONObject17 = jSONObject.optJSONObject("download_sdk_config");
        if (jSONObjectOptJSONObject17 != null) {
            this.su = jSONObjectOptJSONObject17.toString();
        } else {
            this.su = "";
        }
        this.ea = jSONObjectOptJSONObject17;
        try {
            JSONObject jSONObjectOptJSONObject18 = jSONObject.optJSONObject("ad_slot_conf_block");
            if (jSONObjectOptJSONObject18 != null) {
                this.ro = jSONObjectOptJSONObject18.toString();
                this.oh.clear();
                Iterator<String> itKeys = jSONObjectOptJSONObject18.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    this.oh.put(next, jSONObjectOptJSONObject18.opt(next));
                }
            }
        } catch (Exception unused) {
        }
        if (com.byazt.lca.jx.hp().e() || !com.byazt.jz.s.u().nu()) {
            s(jSONObject);
        }
        com.byazt.oz.jx.jx(15, this.qa);
        if (com.byazt.oz.jx.hp()) {
            JSONObject jSONObjectOptJSONObject19 = jSONObjectOptJSONObject4 != null ? jSONObjectOptJSONObject4.optJSONObject("test_tool_urls") : null;
            if (jSONObjectOptJSONObject19 != null) {
                if (jSONObjectOptJSONObject19.has("qa_tool_host")) {
                    try {
                        String host = new URL(jSONObjectOptJSONObject19.optString("qa_tool_host")).getHost();
                        if (!TextUtils.isEmpty(host)) {
                            com.byazt.jz.s.u().e(host);
                        }
                    } catch (MalformedURLException unused2) {
                    }
                }
                if (!TextUtils.isEmpty(com.byazt.jz.s.u().fi())) {
                    if (jSONObjectOptJSONObject19.has("ad_preview_url")) {
                        com.byazt.jz.s.u().gu(jSONObjectOptJSONObject19.optString("ad_preview_url"));
                    }
                    if (jSONObjectOptJSONObject19.has("basic_info_url")) {
                        com.byazt.jz.s.u().jl(jSONObjectOptJSONObject19.optString("basic_info_url"));
                    }
                }
            }
        }
        this.bf = jSONObject.optInt("pre_cache_brand_count", this.bf);
        JSONObject jSONObjectOptJSONObject20 = jSONObject.optJSONObject("video_cache_config");
        this.me = jSONObjectOptJSONObject20;
        if (jSONObjectOptJSONObject20 != null) {
            com.byazt.fx.hp.hp(jSONObjectOptJSONObject20);
        }
        xs();
        dz();
        com.byazt.kl.jx.hp(this.ky);
        ec(this.ud);
        com.byazt.gq.hp.hp(false);
    }

    public boolean q(String str) {
        try {
            hp hpVarXs = sz.l().xs(String.valueOf(str));
            if (hpVarXs != null) {
                return hpVarXs.f21563k != null;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public int zy(String str) {
        int iHp;
        if (this.mz == null) {
            return 5000;
        }
        str.getClass();
        switch (str) {
            case "banner_ad":
                iHp = this.mz.hp("banner");
                break;
            case "rewarded_video":
                iHp = this.mz.hp("rewarded");
                break;
            case "fullscreen_interstitial_ad":
                iHp = this.mz.hp("fullscreen");
                break;
            case "embeded_ad":
                iHp = this.mz.hp("feed");
                break;
            case "draw_ad":
                iHp = this.mz.hp(MediationConstant.RIT_TYPE_DRAW);
                break;
            default:
                iHp = 5000;
                break;
        }
        if (iHp <= 0) {
            return 5000;
        }
        return iHp;
    }

    public boolean e(int i2) {
        return xs(String.valueOf(i2)).zy;
    }

    public boolean gu(int i2) {
        if (i2 == 0) {
            return b("imei");
        }
        if (i2 == 1) {
            return b("imsi");
        }
        if (i2 == 2) {
            return b("mac");
        }
        if (i2 != 3) {
            return false;
        }
        return b("serial");
    }

    public int eb(int i2) {
        return xs(String.valueOf(i2)).f21560a;
    }

    public int q(int i2) {
        return u(String.valueOf(i2)).f21568u;
    }

    public boolean v(String str) {
        return xs(str).l() == 1;
    }

    private void q(JSONObject jSONObject) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("bottom_tab_white_list");
            if (jSONArrayOptJSONArray != null) {
                Set<String> setSynchronizedSet = Collections.synchronizedSet(new HashSet());
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i2);
                    if (strOptString != null && !strOptString.isEmpty()) {
                        setSynchronizedSet.add(strOptString);
                    }
                }
                this.ku = setSynchronizedSet;
                jx().put("bottom_tab_white_list", jSONArrayOptJSONArray.toString());
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("bottom_tab_black_list");
            if (jSONArrayOptJSONArray2 != null) {
                Set<String> setSynchronizedSet2 = Collections.synchronizedSet(new HashSet());
                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                    String strOptString2 = jSONArrayOptJSONArray2.optString(i3);
                    if (strOptString2 != null && !strOptString2.isEmpty()) {
                        setSynchronizedSet2.add(strOptString2);
                    }
                }
                this.ov = setSynchronizedSet2;
                jx().put("bottom_tab_black_list", jSONArrayOptJSONArray2.toString());
            }
        } catch (Throwable unused) {
        }
    }

    public boolean l(int i2) {
        return s(i2) != 0;
    }

    public boolean l(String str) {
        return xs(str).ec;
    }

    public boolean w(String str) {
        return xs(String.valueOf(str)).f21570w == 1;
    }

    public int w(int i2) {
        return Math.max(xs(String.valueOf(i2)).f21566q, 0);
    }

    public hp xs(String str) throws JSONException {
        if (str == null) {
            return j(new JSONObject());
        }
        hp hpVarNs = this.f21544m.get(str);
        if (hpVarNs == null) {
            hpVarNs = ns(str);
        }
        if (hpVarNs != null) {
            return hpVarNs;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code_id", str);
            return j(jSONObject);
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public int s(String str) {
        return str == null ? TTAdConstant.STYLE_SIZE_RADIO_3_2 : sz.l().xs(str).gu;
    }

    public int s(int i2) {
        int i3 = u(String.valueOf(i2)).f21569v;
        if (i3 == 0 || i3 == 1 || i3 == 2 || i3 == 3 || i3 == 4) {
            return i3;
        }
        return 2;
    }

    public int a(String str) {
        return u(str).jl;
    }

    public int a(int i2) {
        int i3 = xs(String.valueOf(i2)).f21564l;
        if (i3 <= 0 || i3 > 5) {
            return 1;
        }
        return i3;
    }

    public boolean j(String str) {
        int i2 = sz.l().xs(String.valueOf(str)).f21562j;
        if (i2 != 1) {
            return i2 == 2 && vv.jx(sz.getContext()) != 0;
        }
        return vv.j(sz.getContext());
    }

    public int j(int i2) {
        return Math.max(xs(String.valueOf(i2)).f21567s, 0);
    }

    private String hp(JSONObject jSONObject, String str, String str2) {
        String strOptString = jSONObject.optString(str, str2);
        if (com.byazt.jz.s.u().rz()) {
            String string = jx().getString(str + "_qa_modify_setting", "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
        }
        return strOptString;
    }

    @Override // com.byazt.jkd.w
    public void hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
        this.f21535c = jSONObjectOptJSONObject;
        if (jSONObjectOptJSONObject != null) {
            this.qo = jSONObjectOptJSONObject.optJSONObject("plugin_retry_opt");
            this.bx = jSONObjectOptJSONObject.optJSONObject("plugin_downloader_settings");
            com.byazt.lca.jx.hp().hp(jSONObjectOptJSONObject);
            q(jSONObjectOptJSONObject);
            this.ux = jSONObjectOptJSONObject.optInt("enable_dl_ext", this.zb);
            this.pi = jSONObjectOptJSONObject.optLong("ext_use_type", this.df);
            nu.jx();
        }
    }

    public <T> T hp(String str, T t2) {
        try {
            if (this.oh.containsKey(str)) {
                T t3 = (T) this.oh.get(str);
                if (t3 != null) {
                    return t3;
                }
            }
        } catch (Exception unused) {
        }
        return t2;
    }

    public void hp(int i2) {
        this.yj = i2;
    }

    public boolean hp(String str) {
        return xs(str).vv;
    }

    public int hp(String str, int i2) {
        if (i2 != 0 && i2 != 9) {
            return jl(str);
        }
        return zy(str);
    }

    public long jx(String str) {
        return xs(str).sz;
    }

    public void jx(int i2) {
        if (this.mn != i2) {
            this.mn = i2;
            jx().put("settings_open", this.mn);
        }
    }
}
