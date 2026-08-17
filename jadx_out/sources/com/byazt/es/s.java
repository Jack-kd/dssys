package com.byazt.es;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.ValueCallback;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.anythink.core.common.f.f;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.rx.BaseConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.g;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 155, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public final String f19459a;
    public float ad;
    public List<JSONObject> ae;
    public int an;
    public String as;

    /* renamed from: b, reason: collision with root package name */
    public boolean f19460b;
    public String be;
    public int bu;

    /* renamed from: c, reason: collision with root package name */
    public JSONObject f19461c;
    public String cs;
    public boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public long f19462d;
    public int db;
    public JSONObject df;
    public boolean di;
    public long dy;

    /* renamed from: e, reason: collision with root package name */
    public Runnable f19463e;
    public String ea;
    public final String eb;
    public Set<String> ec;
    public String ed;

    /* renamed from: f, reason: collision with root package name */
    public int f19464f;
    public ViewTreeObserver.OnGlobalLayoutListener fe;
    public long fi;
    public int fu;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19465g;
    public String gb;
    public hp gd;
    public int gh;
    public Runnable gu;
    public String gv;
    public String gy;

    /* renamed from: h, reason: collision with root package name */
    public float f19466h;
    public int hd;
    public final String hp;
    public int hq;

    /* renamed from: i, reason: collision with root package name */
    public int f19467i;

    /* renamed from: j, reason: collision with root package name */
    public final String f19468j;
    public int jb;
    public WeakReference<View> jd;
    public final Handler jl;
    public boolean jw;
    public final String jx;

    /* renamed from: k, reason: collision with root package name */
    public Runnable f19469k;
    public String kg;
    public String ku;
    public long ky;

    /* renamed from: l, reason: collision with root package name */
    public final String f19470l;
    public int ld;
    public Map<String, String> lp;
    public long lv;
    public int ly;

    /* renamed from: m, reason: collision with root package name */
    public String f19471m;
    public String mp;

    /* renamed from: ms, reason: collision with root package name */
    public long f19472ms;

    /* renamed from: n, reason: collision with root package name */
    public String f19473n;
    public int nc;
    public int nd;
    public boolean nl;
    public long nr;
    public boolean ns;
    public long nu;

    /* renamed from: o, reason: collision with root package name */
    public String f19474o;
    public String ov;
    public int pc;
    public boolean pf;
    public JSONObject pg;
    public String pi;
    public long pu;

    /* renamed from: q, reason: collision with root package name */
    public Runnable f19475q;
    public int qa;
    public a qh;
    public int qu;

    /* renamed from: r, reason: collision with root package name */
    public long f19476r;
    public JSONObject rk;
    public int ru;
    public int rv;
    public boolean rz;

    /* renamed from: s, reason: collision with root package name */
    public final Handler f19477s;
    public boolean su;
    public String sz;

    /* renamed from: t, reason: collision with root package name */
    public com.byazt.es.hp f19478t;
    public boolean ti;
    public boolean tn;
    public boolean tr;
    public com.byazt.ikh.j tw;

    /* renamed from: u, reason: collision with root package name */
    public boolean f19479u;
    public long ud;
    public String ux;

    /* renamed from: v, reason: collision with root package name */
    public l f19480v;
    public int vq;
    public String vt;
    public boolean vv;
    public int vx;

    /* renamed from: w, reason: collision with root package name */
    public final String f19481w;
    public int wt;
    public long wv;

    /* renamed from: x, reason: collision with root package name */
    public jx f19482x;
    public long xh;
    public boolean xs;
    public String xv;

    /* renamed from: y, reason: collision with root package name */
    public int f19483y;
    public Context yj;
    public int yr;

    /* renamed from: z, reason: collision with root package name */
    public float f19484z;
    public int zb;
    public int zx;
    public Runnable zy;

    public enum hp {
        LAND_PAGE,
        FEED,
        OTHER,
        FEED_AWEME
    }

    private s(Context context, com.byazt.ikh.j jVar, jx jxVar, com.byazt.es.hp hpVar, hp hpVar2, boolean z2) {
        this.f19459a = "playable_stuck_check_ping";
        this.eb = "playable_apply_media_permission_callback";
        this.f19477s = new Handler(Looper.getMainLooper());
        this.jl = new Handler(Looper.getMainLooper());
        this.f19479u = true;
        this.xs = true;
        this.vv = true;
        this.hp = "PL_sdk_playable_global_viewable";
        this.f19470l = "PL_sdk_page_screen_blank";
        this.jx = "PL_sdk_playable_destroy_analyze_summary";
        this.f19468j = "PL_sdk_playable_hardware_dialog_cancel";
        this.f19481w = "PL_sdk_playable_hardware_dialog_setting";
        this.ec = new HashSet(Arrays.asList("adInfo", "appInfo", "subscribe_app_ad", "download_app_ad"));
        this.sz = null;
        this.f19473n = com.byazt.ih.l.AD_TAG_FEED;
        this.ns = true;
        this.cx = true;
        this.f19460b = true;
        this.di = false;
        this.f19474o = "";
        this.f19462d = 10L;
        this.wv = 10L;
        this.hq = 700;
        this.ud = 0L;
        this.nu = 0L;
        this.dy = -1L;
        this.lv = -1L;
        this.f19476r = -1L;
        this.pu = -1L;
        this.ky = -1L;
        this.xh = -1L;
        this.f19472ms = -1L;
        this.as = "";
        this.kg = "";
        this.mp = "";
        this.f19471m = "";
        this.f19464f = 0;
        this.yr = 0;
        this.rz = false;
        this.nd = 0;
        this.hd = -1;
        this.zx = 0;
        this.f19483y = 0;
        this.vq = 0;
        this.ea = null;
        this.su = false;
        this.rv = 0;
        this.qu = 0;
        this.an = 0;
        this.pc = 0;
        this.fi = 0L;
        this.nr = 0L;
        this.wt = -2;
        this.ru = 0;
        this.bu = 0;
        this.zb = 0;
        this.df = new JSONObject();
        this.lp = new HashMap();
        this.f19461c = new JSONObject();
        this.xv = "";
        this.f19466h = 0.0f;
        this.ad = 0.0f;
        this.pf = false;
        this.f19465g = false;
        this.nl = false;
        this.ae = new ArrayList();
        this.fe = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.es.s.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                try {
                    View view = (View) s.this.jd.get();
                    if (view == null) {
                        return;
                    }
                    s.this.l(view);
                } catch (Throwable th) {
                    eb.hp("PlayablePlugin", "onSizeChanged error", th);
                }
            }
        };
        this.wt = 0;
        this.gd = hpVar2;
        this.tw = jVar;
        q.hp(jVar);
        if (!z2) {
            hp(jVar.getView());
        }
        hp(context, jxVar, hpVar);
    }

    public static /* synthetic */ int jl(s sVar) {
        int i2 = sVar.f19464f;
        sVar.f19464f = i2 + 1;
        return i2;
    }

    private void ky() {
        String str;
        if (this.f19461c == null || (str = this.ku) == null || str.contains("/cid_")) {
            return;
        }
        String strOptString = this.f19461c.optString("cid");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        String host = Uri.parse(this.ku).getHost();
        if (TextUtils.isEmpty(host)) {
            this.ku += "/cid_" + strOptString;
            return;
        }
        this.ku = this.ku.replace(host, host + "/cid_" + strOptString);
    }

    private void pu() {
        this.f19480v = new l(this, this.hq);
        this.f19475q = new Runnable() { // from class: com.byazt.es.s.3
            @Override // java.lang.Runnable
            public void run() {
                if (s.this.cx) {
                    s.this.cx = false;
                    s.this.f19477s.removeCallbacks(s.this.f19463e);
                    s.this.hp(2, "容器加载超时");
                }
            }
        };
        this.f19463e = new Runnable() { // from class: com.byazt.es.s.4
            @Override // java.lang.Runnable
            public void run() {
                if (s.this.cx) {
                    s.this.cx = false;
                    s.this.f19477s.removeCallbacks(s.this.f19475q);
                    s.this.hp(3, "JSSDK加载超时");
                }
            }
        };
        this.zy = new Runnable() { // from class: com.byazt.es.s.5
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                if (s.this.tw != null) {
                    s.this.tw.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.byazt.es.s.5.1
                        @Override // android.webkit.ValueCallback
                        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                        public void onReceiveValue(String str) {
                            if (s.this.f19480v != null) {
                                s.this.f19480v.hp(System.currentTimeMillis());
                            }
                        }
                    });
                }
                if (s.this.jl != null) {
                    s.this.jl.postDelayed(this, 500L);
                }
            }
        };
        this.f19469k = new Runnable() { // from class: com.byazt.es.s.6
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                s.this.hp("playable_stuck_check_ping", new JSONObject());
                if (s.this.jl != null) {
                    s.this.jl.postDelayed(this, 500L);
                }
            }
        };
        this.gu = new Runnable() { // from class: com.byazt.es.s.7
            @Override // java.lang.Runnable
            public void run() {
                if (s.this.nr <= 0) {
                    s.this.l(1, "点击热区卡死");
                } else {
                    if (s.this.nr - s.this.fi > s.this.hq) {
                        s.this.l(1, "点击热区卡死");
                        return;
                    }
                    s.this.ud();
                    s.this.fi = 0L;
                    s.this.nr = 0L;
                }
            }
        };
    }

    private void xh() {
        Runnable runnable;
        Runnable runnable2;
        this.f19480v.hp(System.currentTimeMillis());
        Handler handler = this.jl;
        if (handler != null) {
            int i2 = this.wt;
            if (i2 == 0 && (runnable2 = this.zy) != null) {
                handler.post(runnable2);
            } else if ((i2 == 1 || i2 == 2) && (runnable = this.f19469k) != null) {
                handler.post(runnable);
            }
            this.f19480v.hp(500);
        }
    }

    public static /* synthetic */ int zy(s sVar) {
        int i2 = sVar.yr;
        sVar.yr = i2 + 1;
        return i2;
    }

    public void b() {
        this.su = true;
    }

    public void cx() {
        this.hd = 2;
    }

    public void d() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.ky > 0) {
                jSONObject.put("playable_material_first_frame_show_duration", System.currentTimeMillis() - this.ky);
            } else {
                jSONObject.put("playable_material_first_frame_show_duration", 0L);
            }
            if (this.f19476r > 0) {
                jSONObject.put("playable_material_first_frame_load_duration", System.currentTimeMillis() - this.f19476r);
            } else {
                jSONObject.put("playable_material_first_frame_load_duration", 0L);
            }
            jx("PL_sdk_material_first_frame_show", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void di() {
        if (this.f19478t != null) {
            hp hpVar = hp.LAND_PAGE;
        }
    }

    public void dy() {
        this.bu = 0;
        this.zb = 0;
        this.f19484z = 0.0f;
        this.db = 0;
        this.gh = 0;
        this.f19467i = 0;
        this.qa = 0;
        this.nc = 0;
        this.jb = 0;
        this.vx = 0;
        this.fu = 0;
        this.ld = 0;
        this.ly = 0;
    }

    public JSONObject ec() {
        return this.f19461c;
    }

    public Context getContext() {
        return this.yj;
    }

    public void hq() {
        this.f19477s.removeCallbacks(this.f19475q);
        this.f19477s.removeCallbacks(this.f19463e);
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.f19476r > 0) {
                jSONObject.put("playable_jssdk_load_success_duration", System.currentTimeMillis() - this.f19476r);
            } else {
                jSONObject.put("playable_jssdk_load_success_duration", 0L);
            }
            jx("PL_sdk_jssdk_load_success", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public JSONObject k() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("scene_type", this.gd.ordinal());
            jSONObject.put("safe_area_top_height", this.f19466h);
            jSONObject.put("safe_area_bottom_height", this.ad);
            jSONObject.put("playable_enter_from", this.f19483y);
            jSONObject.put("playable_retry_count", this.zx);
            jSONObject.put("playable_card_session", this.as);
            jSONObject.put("playable_video_session", this.kg);
            jSONObject.put("playable_network_type", u());
            jSONObject.put("aweme_id", this.f19471m);
            return jSONObject;
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "playableInfo error", th);
            return new JSONObject();
        }
    }

    public void lv() {
        if (this.nl) {
            return;
        }
        this.nl = true;
        this.nu = 0L;
        this.xs = true;
        dy();
        try {
            View view = this.jd.get();
            if (view != null) {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this.fe);
            }
        } catch (Throwable unused) {
        }
        try {
            this.qh.l();
        } catch (Throwable unused2) {
        }
        try {
            l lVar = this.f19480v;
            if (lVar != null) {
                lVar.hp();
                this.f19480v = null;
            }
            Handler handler = this.jl;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable unused3) {
        }
        try {
            if (!TextUtils.isEmpty(this.ku)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("playable_all_times", this.f19464f);
                jSONObject.put("playable_hit_times", this.yr);
                int i2 = this.f19464f;
                if (i2 > 0) {
                    jSONObject.put("playable_hit_ratio", this.yr / (i2 * 1.0d));
                } else {
                    jSONObject.put("playable_hit_ratio", 0);
                }
                jx("PL_sdk_preload_times", jSONObject);
            }
        } catch (Throwable unused4) {
        }
        try {
            if (!TextUtils.isEmpty(this.ku)) {
                if (this.dy != -1) {
                    this.ud += System.currentTimeMillis() - this.dy;
                    this.dy = -1L;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_user_play_duration", this.ud);
                jx("PL_sdk_user_play_duration", jSONObject2);
            }
        } catch (Throwable unused5) {
        }
        this.f19477s.removeCallbacks(this.f19475q);
        this.f19477s.removeCallbacks(this.f19463e);
        this.f19477s.removeCallbacksAndMessages(null);
    }

    public void n() {
        com.byazt.es.hp hpVar = this.f19478t;
        if (hpVar != null) {
            hpVar.hp();
        }
    }

    public void ns() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.ky > 0) {
                jSONObject.put("playable_material_interactable_duration", System.currentTimeMillis() - this.ky);
            } else {
                jSONObject.put("playable_material_interactable_duration", 0L);
            }
            if (this.f19476r > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f19476r;
                this.f19472ms = jCurrentTimeMillis;
                jSONObject.put("playable_material_interactable_load_duration", jCurrentTimeMillis);
            } else {
                jSONObject.put("playable_material_interactable_load_duration", 0L);
            }
            jx("PL_sdk_material_interactable", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void nu() {
        try {
            l lVar = this.f19480v;
            if (lVar != null) {
                lVar.hp();
            }
            Handler handler = this.jl;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable unused) {
        }
    }

    public void o() {
        if (this.f19478t != null) {
            hp hpVar = hp.LAND_PAGE;
        }
    }

    public String r() {
        return "function playable_callJS(){return \"Android调用了JS的callJS方法\";}";
    }

    public JSONObject sz() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("devicePixelRatio", this.f19484z);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", this.db);
            jSONObject2.put("height", this.gh);
            jSONObject.put("screen", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("x", this.qa);
            jSONObject3.put("y", this.f19467i);
            jSONObject3.put("width", this.nc);
            jSONObject3.put("height", this.jb);
            jSONObject.put("webview", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("x", this.fu);
            jSONObject4.put("y", this.vx);
            jSONObject4.put("width", this.ld);
            jSONObject4.put("height", this.ly);
            jSONObject.put("visible", jSONObject4);
            return jSONObject;
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "getViewport error", th);
            return jSONObject;
        }
    }

    public String u() {
        com.byazt.es.hp hpVar;
        if (TextUtils.isEmpty(this.mp) && (hpVar = this.f19478t) != null) {
            this.mp = hpVar.j().toString();
        }
        return this.mp;
    }

    public void ud() {
        if (this.f19460b) {
            this.xh = System.currentTimeMillis();
            if (this.gd == hp.FEED_AWEME) {
                if (this.tr && this.ru == 3) {
                    l lVar = this.f19480v;
                    if (lVar != null && lVar.l()) {
                        xh();
                        return;
                    } else {
                        if (this.f19480v == null) {
                            this.f19480v = new l(this, this.hq);
                            xh();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (this.tr && this.ru == 2) {
                l lVar2 = this.f19480v;
                if (lVar2 != null && lVar2.l()) {
                    xh();
                } else if (this.f19480v == null) {
                    this.f19480v = new l(this, this.hq);
                    xh();
                }
            }
        }
    }

    public Intent v() throws IOException {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        File fileHp = w.hp();
        if (fileHp == null) {
            return null;
        }
        intent.putExtra("output", FileProvider.getUriForFile(this.yj, this.yj.getPackageName() + ".playable.fileProvider", fileHp));
        return intent;
    }

    public JSONObject vv() {
        if (this.df.isNull("width")) {
            View view = this.jd.get();
            if (view == null) {
                return this.df;
            }
            l(view);
        }
        return this.df;
    }

    public void wv() {
        l lVar;
        this.nr = System.currentTimeMillis();
        int i2 = this.wt;
        if ((i2 == 1 || i2 == 2) && (lVar = this.f19480v) != null) {
            lVar.hp(System.currentTimeMillis());
        }
    }

    public com.byazt.es.hp xs() {
        return this.f19478t;
    }

    private boolean e(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("/union-fe/playable/") || str.contains("/union-fe-sg/playable/") || str.contains("/union-fe-i18n/playable/");
    }

    public String a() {
        return this.gy;
    }

    public boolean eb() {
        return this.tn;
    }

    public JSONObject gu() {
        try {
            boolean zHp = w.hp(this.yj, "android.permission.RECORD_AUDIO");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("result", zHp);
            return jSONObject;
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public String j() {
        return this.ux;
    }

    public JSONObject jl() {
        try {
            boolean zHp = w.hp(this.yj, "android.permission.CAMERA");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("result", zHp);
            return jSONObject;
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public String jx() {
        return this.pi;
    }

    public JSONObject q() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.ti);
            return jSONObject;
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "getPlayableClickStatus error", th);
            return new JSONObject();
        }
    }

    public boolean s() {
        return this.tr;
    }

    public String w() {
        return this.ed;
    }

    public JSONObject zy() {
        boolean zHp;
        boolean zHp2;
        try {
            boolean z2 = true;
            if (Build.VERSION.SDK_INT >= 33) {
                zHp = w.hp(this.yj, "android.permission.READ_MEDIA_IMAGES");
                zHp2 = true;
            } else {
                zHp = w.hp(this.yj, g.f31167i);
                zHp2 = w.hp(this.yj, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isHasRead", zHp);
            jSONObject.put("isHasWrite", zHp2);
            if (!zHp || !zHp2) {
                z2 = false;
            }
            jSONObject.put("result", z2);
            return jSONObject;
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(View view) {
        if (view == null) {
            return;
        }
        try {
            if (this.bu == view.getWidth() && this.zb == view.getHeight()) {
                return;
            }
            this.bu = view.getWidth();
            this.zb = view.getHeight();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.bu);
            jSONObject.put("height", this.zb);
            hp("resize", jSONObject);
            this.df = jSONObject;
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "resetViewDataJsonByView error", th);
        }
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.ea = jSONObject.optString("section");
        }
    }

    public Set<String> e() {
        Set<String> setHp = this.qh.hp();
        Set<String> set = this.ec;
        if (set == null || set.size() <= 0) {
            return setHp;
        }
        HashSet hashSet = new HashSet();
        for (String str : setHp) {
            if (!this.ec.contains(str)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    public void eb(JSONObject jSONObject) {
        this.rk = jSONObject;
        this.vq++;
        nu();
        this.f19477s.removeCallbacks(this.gu);
        if (this.f19460b) {
            this.xh = System.currentTimeMillis();
            this.fi = System.currentTimeMillis();
            this.nr = 0L;
            int i2 = this.wt;
            if (i2 == 0) {
                com.byazt.ikh.j jVar = this.tw;
                if (jVar != null) {
                    jVar.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.byazt.es.s.8
                        @Override // android.webkit.ValueCallback
                        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                        public void onReceiveValue(String str) {
                            s.this.nr = System.currentTimeMillis();
                        }
                    });
                }
            } else if (i2 == 1 || i2 == 2) {
                hp("playable_stuck_check_ping", new JSONObject());
            }
            this.f19477s.postDelayed(this.gu, this.hq);
        }
    }

    public s j(String str) {
        this.gy = str;
        return this;
    }

    public s jx(String str) {
        this.ed = str;
        return this;
    }

    public void s(JSONObject jSONObject) {
        l(2, jSONObject != null ? jSONObject.optString("error_msg", "素材直接调用端上异常兜底蒙层") : "素材直接调用端上异常兜底蒙层");
    }

    public s w(JSONObject jSONObject) {
        this.f19461c = jSONObject;
        return this;
    }

    public void a(String str) {
        int i2;
        int i3;
        this.ru = 1;
        JSONObject jSONObject = new JSONObject();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f19476r = jCurrentTimeMillis;
            long j2 = this.lv;
            jSONObject.put("playable_page_show_duration", j2 != -1 ? jCurrentTimeMillis - j2 : 0L);
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "reportUrlLoadStart error", th);
        }
        jx("PL_sdk_html_load_start", jSONObject);
        if (this.ns && ((i2 = this.wt) == 0 || i2 == 1 || i2 == 2)) {
            this.f19477s.postDelayed(this.f19475q, this.f19462d * 1000);
            if (e(this.ku) || (i3 = this.wt) == 1 || i3 == 2) {
                this.f19477s.postDelayed(this.f19463e, this.wv * 1000);
            }
            this.ns = false;
        }
        if (this.xs) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                StringBuffer stringBuffer2 = new StringBuffer();
                StringBuffer stringBuffer3 = new StringBuffer();
                if (w.hp(this.yj, w.jl)) {
                    stringBuffer.append("Microphone_");
                    stringBuffer2.append("1");
                    if (w.l(this.yj, "android.permission.RECORD_AUDIO")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (w.hp(this.yj, w.gu)) {
                    stringBuffer.append("Magetometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (w.hp(this.yj, w.f19489e)) {
                    stringBuffer.append("Accelerometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (w.hp(this.yj, w.f19492q)) {
                    stringBuffer.append("Gyro_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (w.hp(this.yj, w.f19493s)) {
                    stringBuffer.append("Camera_");
                    stringBuffer2.append("1");
                    if (w.l(this.yj, "android.permission.CAMERA")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (w.hp(this.yj, w.eb)) {
                    stringBuffer.append("Photo");
                    stringBuffer2.append("1");
                    if (w.hp(this.yj)) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_available_hardware_name", stringBuffer.toString());
                jSONObject2.put("playable_available_hardware_code", stringBuffer2.toString());
                jSONObject2.put("playable_available_hardware_auth_code", stringBuffer3.toString());
                jx("PL_sdk_hardware_detect", jSONObject2);
                this.xs = false;
            } catch (Throwable th2) {
                eb.hp("PlayablePlugin", "Hardware detect error", th2);
            }
        }
    }

    public void j(JSONObject jSONObject) {
        if (this.f19478t != null) {
            try {
                jSONObject.optBoolean("isPrevent", false);
            } catch (Exception unused) {
            }
        }
    }

    public s jx(boolean z2) {
        this.ti = z2;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.ti);
            hp("change_playable_click", jSONObject);
            return this;
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "setPlayableClick error", th);
            return this;
        }
    }

    public s w(String str) {
        int iIndexOf;
        String strDecode;
        this.xv = str;
        try {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
                String host = uri.getHost();
                if (!"webview".equalsIgnoreCase(host) && (host == null || !host.contains("webview"))) {
                    if ("lynxview".equalsIgnoreCase(host) || (host != null && host.contains("lynxview"))) {
                        if (this.wt == -1) {
                            l(2);
                        } else {
                            l(1);
                        }
                    }
                } else {
                    l(0);
                    String queryParameter = uri.getQueryParameter("url");
                    if (!TextUtils.isEmpty(queryParameter) && (strDecode = Uri.decode(queryParameter)) != null) {
                        int iIndexOf2 = strDecode.indexOf("?");
                        str = iIndexOf2 != -1 ? strDecode.substring(0, iIndexOf2) : strDecode;
                    }
                }
            } else {
                l(0);
                if (str != null && (iIndexOf = str.indexOf("?")) != -1) {
                    str = str.substring(0, iIndexOf);
                }
            }
        } catch (Throwable unused) {
        }
        this.ku = str;
        return this;
    }

    private void hp(Context context, jx jxVar, com.byazt.es.hp hpVar) {
        this.sz = UUID.randomUUID().toString();
        this.yj = context;
        this.f19478t = hpVar;
        this.f19482x = jxVar;
        e.hp(hpVar);
        this.qh = new a(this);
        pu();
    }

    public s j(boolean z2) {
        this.f19460b = z2;
        return this;
    }

    public JSONObject q(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int iOptInt = jSONObject.optInt("type", 0);
        JSONObject jSONObject2 = new JSONObject();
        if (iOptInt == 1) {
            return gu();
        }
        if (iOptInt != 2) {
            return iOptInt != 3 ? jSONObject2 : zy();
        }
        return jl();
    }

    public void s(String str) {
        this.f19477s.post(new Runnable() { // from class: com.byazt.es.s.10
            @Override // java.lang.Runnable
            public void run() {
                s.jl(s.this);
            }
        });
    }

    private String j(String str, String str2) {
        String queryParameter;
        String queryParameter2;
        if (TextUtils.isEmpty(this.gb) && !TextUtils.isEmpty(this.xv)) {
            Uri uri = Uri.parse(this.xv);
            String host = uri.getHost();
            if (!"lynxview".equalsIgnoreCase(host) && (host == null || !host.contains("lynxview"))) {
                queryParameter = "";
                queryParameter2 = "";
            } else {
                queryParameter = uri.getQueryParameter("surl");
                queryParameter2 = uri.getQueryParameter("playable_hash");
            }
            Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme(uri.getScheme()).authority(host).appendQueryParameter("surl", queryParameter);
            if (!TextUtils.isEmpty(queryParameter2)) {
                builderAppendQueryParameter.appendQueryParameter("playable_hash", queryParameter2);
            }
            this.gb = builderAppendQueryParameter.toString();
        }
        return this.gb;
    }

    public void gu(JSONObject jSONObject) {
        if (jSONObject != null) {
            boolean zOptBoolean = jSONObject.optBoolean(cb.f11292o, true);
            if (zOptBoolean) {
                this.ru = 3;
                ud();
            } else {
                this.ru = -2;
            }
            if (zOptBoolean || !this.cx) {
                return;
            }
            this.cx = false;
            this.f19477s.removeCallbacks(this.f19475q);
            this.f19477s.removeCallbacks(this.f19463e);
            hp(4, "素材渲染失败");
        }
    }

    public JSONObject e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int iOptInt = jSONObject.optInt("type", 0);
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (iOptInt == 1) {
                jSONObject2.put("result", w.l(this.yj, "android.permission.RECORD_AUDIO"));
            } else {
                if (iOptInt == 2) {
                    jSONObject2.put("result", w.l(this.yj, "android.permission.CAMERA"));
                    return jSONObject2;
                }
                if (iOptInt == 3) {
                    jSONObject2.put("result", w.hp(this.yj));
                    return jSONObject2;
                }
            }
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public void jx(JSONObject jSONObject) {
        com.byazt.es.hp hpVar = this.f19478t;
        if (hpVar == null || hpVar.hp(jSONObject) || jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("resource_base64");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        int iOptInt = jSONObject.optInt("resource_type", -1);
        String strOptString2 = jSONObject.optString("resource_name", "playable_media");
        if (iOptInt == 1) {
            l(strOptString2, strOptString);
        } else if (iOptInt == 2) {
            jx(strOptString2, strOptString);
        }
    }

    public void hp(View view) {
        if (view == null) {
            return;
        }
        try {
            this.jd = new WeakReference<>(view);
            l(view);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this.fe);
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "setViewForScreenSize error", th);
        }
    }

    public s l(String str) {
        this.pi = str;
        return this;
    }

    public void q(String str) {
        this.f19477s.post(new Runnable() { // from class: com.byazt.es.s.2
            @Override // java.lang.Runnable
            public void run() {
                s.zy(s.this);
            }
        });
    }

    public JSONObject l() {
        return this.pg;
    }

    public s l(long j2) {
        if (j2 <= 0) {
            this.wv = 10L;
            return this;
        }
        this.wv = j2;
        return this;
    }

    public void eb(String str) {
        com.byazt.ikh.j jVar;
        this.ru = 2;
        this.ov = str;
        JSONObject jSONObject = new JSONObject();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.pu = jCurrentTimeMillis;
            long j2 = this.f19476r;
            jSONObject.put("playable_html_load_start_duration", j2 != -1 ? jCurrentTimeMillis - j2 : 0L);
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "reportUrlLoadFinish error", th);
        }
        jx("PL_sdk_html_load_finish", jSONObject);
        this.f19477s.removeCallbacks(this.f19475q);
        try {
            if (this.wt == 0) {
                if (this.f19479u && (jVar = this.tw) != null) {
                    this.f19479u = false;
                    jVar.evaluateJavascript(r(), new ValueCallback<String>() { // from class: com.byazt.es.s.9
                        @Override // android.webkit.ValueCallback
                        public /* bridge */ /* synthetic */ void onReceiveValue(String str2) {
                        }
                    });
                }
                ud();
            }
        } catch (Throwable th2) {
            eb.hp("PlayablePlugin", "crashMonitor error", th2);
        }
    }

    public s hp(String str, String str2) {
        this.lp.put(str, str2);
        return this;
    }

    public s l(boolean z2) throws JSONException {
        if (this.tr != z2) {
            this.tr = z2;
            JSONObject jSONObject = new JSONObject();
            try {
                if (!this.tr) {
                    jSONObject.put("playable_background_show_type", this.qu);
                }
            } catch (JSONException unused) {
            }
            jx(this.tr ? "PL_sdk_viewable_true" : "PL_sdk_viewable_false", jSONObject);
            if (this.lv == -1 && this.tr) {
                this.lv = System.currentTimeMillis();
                jx("PL_sdk_page_show", (JSONObject) null);
            }
            if (this.lv != -1 && !this.tr && !this.pf) {
                this.pf = true;
            }
            if (this.tr) {
                this.dy = System.currentTimeMillis();
            } else if (this.dy != -1) {
                this.ud += System.currentTimeMillis() - this.dy;
                this.dy = -1L;
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("viewStatus", this.tr);
                hp("viewableChange", jSONObject2);
            } catch (Throwable th) {
                eb.hp("PlayablePlugin", "setViewable error", th);
            }
            if (this.tr) {
                ud();
            } else {
                nu();
            }
        }
        return this;
    }

    public Map<String, String> hp() {
        return this.lp;
    }

    public void jx(String str, String str2) throws Throwable {
        if (TextUtils.isEmpty(str2)) {
            Toast.makeText(this.yj, "视频保存失败", 0).show();
            return;
        }
        File fileHp = w.hp(str, str2);
        if (fileHp != null && fileHp.exists()) {
            Uri uriFromFile = Uri.fromFile(fileHp);
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(uriFromFile);
            this.yj.sendBroadcast(intent);
            Toast.makeText(this.yj, "视频已保存到相册", 0).show();
            return;
        }
        Toast.makeText(this.yj, "视频保存失败", 0).show();
    }

    public s hp(String str) {
        this.ux = str;
        return this;
    }

    public s hp(boolean z2) {
        this.tn = z2;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", this.tn);
            hp("volumeChange", jSONObject);
            return this;
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "setIsMute error", th);
            return this;
        }
    }

    public JSONObject j(String str, JSONObject jSONObject) {
        System.currentTimeMillis();
        JSONObject jSONObjectHp = this.qh.hp(str, jSONObject);
        if (eb.hp()) {
            System.currentTimeMillis();
        }
        return jSONObjectHp;
    }

    private String w(String str, String str2) {
        String str3 = String.format("rubeex://playable-minigamelite?id=%1s&schema=%2s", str, Uri.encode(str2));
        this.ku = str3;
        return str3;
    }

    public s hp(long j2) {
        if (j2 <= 0) {
            this.f19462d = 10L;
            return this;
        }
        this.f19462d = j2;
        return this;
    }

    private void w(String str, JSONObject jSONObject) throws JSONException {
        try {
            int i2 = this.wt;
            if (i2 == 0) {
                if (this.gd != hp.LAND_PAGE && !e(this.ku)) {
                    ky();
                }
                jSONObject.put("playable_url", this.ku);
            } else if (i2 == 3 || i2 == 4) {
                jSONObject.put("playable_url", w(this.gv, this.be));
            } else if (i2 == 1 || i2 == 2) {
                jSONObject.put("playable_url", j(this.vt, this.cs));
            }
            jSONObject.put("playable_render_type", this.wt);
            if (this.f19478t != null && this.wt == 0 && this.gd == hp.LAND_PAGE) {
                e(this.ku);
            }
        } catch (JSONException unused) {
        }
    }

    public void hp(JSONObject jSONObject) {
        if (this.f19478t != null) {
            v();
        }
    }

    private void jx(int i2, String str) {
        com.byazt.es.hp hpVar = this.f19478t;
        if (hpVar != null) {
            hpVar.hp(i2, str);
        }
    }

    public Intent hp(int i2) {
        Intent intent = new Intent("android.intent.action.PICK");
        if (i2 == 0) {
            intent.setType("*/*");
            return intent;
        }
        if (i2 == 1) {
            intent.setType("image/*");
            return intent;
        }
        if (i2 == 2) {
            intent.setType(DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_MPEG_4);
            return intent;
        }
        intent.setType("*/*");
        return intent;
    }

    public void jx(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            if (!this.rz && this.yr > 0) {
                this.rz = true;
            }
            jSONObject.put("playable_event", str);
            jSONObject.put("playable_ts", System.currentTimeMillis());
            jSONObject.put("playable_viewable", this.tr);
            jSONObject.put("playable_session_id", this.sz);
            int i2 = this.wt;
            if (i2 == 0) {
                if (this.gd != hp.LAND_PAGE && !e(this.ku)) {
                    ky();
                }
                jSONObject.put("playable_url", this.ku);
            } else if (i2 == 3 || i2 == 4) {
                jSONObject.put("playable_url", w(this.gv, this.be));
            } else if (i2 == 1 || i2 == 2) {
                jSONObject.put("playable_url", j(this.vt, this.cs));
            }
            jSONObject.put("playable_full_url", this.xv);
            jSONObject.put("playable_replay_count", this.nd);
            jSONObject.put("playable_is_prerender", this.jw);
            jSONObject.put("playable_is_preload", this.rz);
            jSONObject.put("playable_render_type", this.wt);
            jSONObject.put("playable_scenes_type", this.gd.ordinal());
            String str2 = "";
            jSONObject.put("playable_gecko_key", TextUtils.isEmpty(this.vt) ? "" : this.vt);
            if (!TextUtils.isEmpty(this.cs)) {
                str2 = this.cs;
            }
            jSONObject.put("playable_gecko_channel", str2);
            jSONObject.put("playable_sdk_version", "6.5.1");
            jSONObject.put("playable_minigamelite_id", this.gv);
            jSONObject.put("playable_minigamelite_schema", this.be);
            jSONObject.put("playable_is_debug", this.f19465g);
            jSONObject.put("playable_retry_count", this.zx);
            jSONObject.put("playable_enter_from", this.f19483y);
            jSONObject.put("playable_sequence", this.vq);
            jSONObject.put("playable_current_section", this.ea);
            jSONObject.put("is_playable_finish", this.su);
            jSONObject.put("playable_card_session", this.as);
            jSONObject.put("playable_video_session", this.kg);
            jSONObject.put("playable_network_type", u());
            jSONObject.put("playable_lynx_version", this.f19474o);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject);
            jSONObject2.put("tag", this.f19473n);
            jSONObject2.put("nt", 4);
            jSONObject2.put(PointParamKey.CATEGORY, BaseConstants.CATEGORY_UMENG);
            jSONObject2.put(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
            jSONObject2.put("refer", "playable");
            jSONObject2.put(f.a.f3244d, this.f19461c.opt("cid"));
            jSONObject2.put("log_extra", this.f19461c.opt("log_extra"));
            int i3 = this.wt;
            if (i3 != -1 && i3 != -2) {
                if (this.f19478t != null) {
                    List<JSONObject> list = this.ae;
                    if (list != null && !list.isEmpty()) {
                        Iterator<JSONObject> it = this.ae.iterator();
                        while (it.hasNext()) {
                            JSONObject jSONObjectOptJSONObject = it.next().optJSONObject(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                            if (jSONObjectOptJSONObject != null) {
                                jSONObjectOptJSONObject.put("playable_render_type", this.wt);
                                jSONObjectOptJSONObject.put("playable_url", this.ku);
                            }
                        }
                        this.ae.clear();
                    }
                    if (this.wt == 0 && this.gd == hp.LAND_PAGE) {
                        e(this.ku);
                        return;
                    }
                    return;
                }
                return;
            }
            if (this.ae == null) {
                this.ae = new ArrayList();
            }
            this.ae.add(jSONObject2);
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "reportEvent error", th);
        }
    }

    public void hp(String str, JSONObject jSONObject) {
        jx jxVar = this.f19482x;
        if (jxVar != null) {
            jxVar.hp(str, jSONObject);
        }
    }

    public void hp(int i2, String str) {
        nu();
        jx(i2, str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i2);
            jSONObject.put("playable_msg", str);
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "reportRenderFatal error", th);
        }
        jx("PL_sdk_global_faild", jSONObject);
    }

    public void l(JSONObject jSONObject) {
        int iOptInt = 0;
        if (jSONObject != null) {
            iOptInt = jSONObject.optInt("resource_type", 0);
            w.jx = jSONObject.optInt("video_min_duration", 1);
            w.f19490j = jSONObject.optInt("video_max_duration", 20);
            w.f19494w = Math.min(jSONObject.optLong("video_max_size", 15360L), 15360L);
        }
        if (this.f19478t != null) {
            hp(iOptInt);
        }
    }

    public void hp(int i2, String str, String str2) {
        this.ru = -1;
        this.ov = str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i2);
            jSONObject.put("playable_msg", str);
            jSONObject.put("playable_fail_url", str2);
        } catch (Throwable th) {
            eb.hp("PlayablePlugin", "onWebReceivedError error", th);
        }
        jx("PL_sdk_html_load_error", jSONObject);
        if (this.cx) {
            this.cx = false;
            this.f19477s.removeCallbacks(this.f19475q);
            this.f19477s.removeCallbacks(this.f19463e);
            hp(1, "容器加载失败");
        }
    }

    public void l(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            Toast.makeText(this.yj, "照片保存失败", 0).show();
            return;
        }
        Bitmap bitmapL = w.l(str2);
        if (bitmapL != null) {
            MediaStore.Images.Media.insertImage(this.yj.getContentResolver(), bitmapL, str, "");
            Toast.makeText(this.yj, "照片已保存到相册", 0).show();
        } else {
            Toast.makeText(this.yj, "照片保存失败", 0).show();
        }
    }

    public s l(int i2) {
        this.wt = i2;
        return this;
    }

    public void l(int i2, String str) {
        this.hd = i2;
        if (this.rk == null) {
            this.rk = new JSONObject();
        }
        try {
            this.rk.put("playable_stuck_type", i2);
            this.rk.put("playable_stuck_reason", str);
            if (this.xh > 0) {
                this.rk.put("playable_stuck_duration", System.currentTimeMillis() - this.xh);
            } else {
                this.rk.put("playable_stuck_duration", 0L);
            }
        } catch (Throwable unused) {
        }
        jx("PL_sdk_page_stuck", this.rk);
        nu();
        if (this.f19478t == null || i2 != 2) {
            return;
        }
        this.rk = new JSONObject();
    }

    public void hp(boolean z2, String str, int i2) {
        if (z2) {
            this.ru = -1;
            this.ov = str;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("playable_code", i2);
                jSONObject.put("playable_msg", "url load error");
                jSONObject.put("playable_fail_url", str);
            } catch (Throwable th) {
                eb.hp("PlayablePlugin", "onWebReceivedHttpError error", th);
            }
            jx("PL_sdk_html_load_error", jSONObject);
            if (this.cx) {
                this.cx = false;
                this.f19477s.removeCallbacks(this.f19475q);
                this.f19477s.removeCallbacks(this.f19463e);
                hp(1, "容器加载失败");
            }
        }
    }

    public void l(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        w(str, jSONObject);
    }

    public static s hp(Context context, com.byazt.ikh.j jVar, jx jxVar, com.byazt.es.hp hpVar, Set<String> set, hp hpVar2, boolean z2) {
        if (jVar == null || jxVar == null || hpVar == null) {
            return null;
        }
        return new s(context, jVar, jxVar, hpVar, set, hpVar2, z2);
    }

    private s(Context context, com.byazt.ikh.j jVar, jx jxVar, com.byazt.es.hp hpVar, Set<String> set, hp hpVar2, boolean z2) {
        this(context, jVar, jxVar, hpVar, hpVar2, z2);
        this.ec = set;
    }
}
