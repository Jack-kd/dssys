package com.byazt.nw;

import com.anythink.core.common.f.f;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.layout.LayoutModel;
import com.beizi.fusion.widget.ScrollClickView;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, 54})
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public float f23792a;
    public boolean ad;
    public boolean an;
    public int as;

    /* renamed from: b, reason: collision with root package name */
    public String f23793b;
    public String be;
    public int bu;

    /* renamed from: c, reason: collision with root package name */
    public int f23794c;
    public List<String> cs;
    public String cx;

    /* renamed from: d, reason: collision with root package name */
    public int f23795d;
    public int db;
    public int df;
    public boolean di;
    public String dy;

    /* renamed from: e, reason: collision with root package name */
    public float f23796e;
    public boolean ea;
    public float eb;
    public String ec;
    public boolean ed;

    /* renamed from: f, reason: collision with root package name */
    public boolean f23797f;
    public int fi;
    public boolean fu;

    /* renamed from: g, reason: collision with root package name */
    public String f23798g;
    public JSONObject gb;
    public String gd;
    public int gh;
    public double gu;
    public boolean gv;
    public int gy;

    /* renamed from: h, reason: collision with root package name */
    public String f23799h;
    public String hd;
    public float hp;
    public double hq;

    /* renamed from: i, reason: collision with root package name */
    public int f23800i;

    /* renamed from: j, reason: collision with root package name */
    public float f23801j;
    public String jb;
    public int jd;
    public double jl;
    public long jw = -1;
    public float jx;

    /* renamed from: k, reason: collision with root package name */
    public String f23802k;
    public int kg;
    public boolean ku;
    public int ky;

    /* renamed from: l, reason: collision with root package name */
    public float f23803l;
    public String ld;
    public boolean lp;
    public String lv;
    public boolean ly;

    /* renamed from: m, reason: collision with root package name */
    public int f23804m;
    public double mp;

    /* renamed from: ms, reason: collision with root package name */
    public int f23805ms;

    /* renamed from: n, reason: collision with root package name */
    public String f23806n;
    public int nc;
    public int nd;
    public int nr;
    public String ns;
    public String nu;

    /* renamed from: o, reason: collision with root package name */
    public int f23807o;
    public double ov;
    public int pc;
    public String pf;
    public int pg;
    public boolean pi;
    public boolean pu;

    /* renamed from: q, reason: collision with root package name */
    public float f23808q;
    public int qa;
    public int qh;
    public int qu;

    /* renamed from: r, reason: collision with root package name */
    public String f23809r;
    public int rk;
    public int ru;
    public JSONObject rv;
    public boolean rz;

    /* renamed from: s, reason: collision with root package name */
    public float f23810s;
    public String su;
    public String sz;

    /* renamed from: t, reason: collision with root package name */
    public int f23811t;
    public String ti;
    public int tn;
    public int tr;
    public boolean tw;

    /* renamed from: u, reason: collision with root package name */
    public String f23812u;
    public String ud;
    public int ux;

    /* renamed from: v, reason: collision with root package name */
    public String f23813v;
    public boolean vq;
    public String vt;
    public String vv;
    public int vx;

    /* renamed from: w, reason: collision with root package name */
    public boolean f23814w;
    public int wt;
    public double wv;

    /* renamed from: x, reason: collision with root package name */
    public List<hp> f23815x;
    public int xh;
    public String xs;
    public JSONObject xv;

    /* renamed from: y, reason: collision with root package name */
    public boolean f23816y;
    public String yj;
    public int yr;

    /* renamed from: z, reason: collision with root package name */
    public JSONObject f23817z;
    public int zb;
    public boolean zx;
    public String zy;

    public static a hp(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        aVar.l(jSONObject.optString("adType", "embeded"));
        aVar.v(jSONObject.optString("clickArea", "creative"));
        aVar.u(jSONObject.optString("clickTigger", "click"));
        aVar.jx(jSONObject.optString("fontFamily", "PingFangSC"));
        aVar.j(jSONObject.optString("textAlign", ScrollClickView.DIR_LEFT));
        aVar.w(jSONObject.optString("color", "#999999"));
        aVar.a(jSONObject.optString("bgColor", "transparent"));
        aVar.eb(jSONObject.optString("bgImgUrl", ""));
        aVar.wv(jSONObject.optString("bgImgData", ""));
        aVar.s(jSONObject.optString("borderColor", "#000000"));
        aVar.q(jSONObject.optString("borderStyle", "solid"));
        aVar.e(jSONObject.optString("heightMode", LiveConfigKey.AUTO));
        aVar.gu(jSONObject.optString("widthMode", "fixed"));
        aVar.jl(jSONObject.optString("interactText", ""));
        aVar.jx(jSONObject.optBoolean("isShowBgControl", false));
        aVar.zy(jSONObject.optString("interactBgColor", ""));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("interactPosition");
        if (jSONObjectOptJSONObject != null) {
            aVar.eb(jSONObjectOptJSONObject.optInt("translateY", 0));
            aVar.s(jSONObjectOptJSONObject.optInt("translateX", 0));
            aVar.j(jSONObjectOptJSONObject.optDouble("scaleX", 0.0d));
            aVar.w(jSONObjectOptJSONObject.optDouble("scaleY", 0.0d));
        }
        aVar.k(jSONObject.optString("interactType", ""));
        aVar.w(jSONObject.optInt("interactSlideDirection", -1));
        aVar.xs(jSONObject.optString("justifyHorizontal", "space-around"));
        aVar.vv(jSONObject.optString("justifyVertical", "flex-start"));
        aVar.l(jSONObject.optDouble("timingStart"));
        aVar.jx(jSONObject.optDouble("timingEnd"));
        aVar.j((float) jSONObject.optDouble("width", 0.0d));
        aVar.jx((float) jSONObject.optDouble("height", 0.0d));
        aVar.hp((float) jSONObject.optDouble("borderRadius", 0.0d));
        aVar.l((float) jSONObject.optDouble("borderSize", 0.0d));
        aVar.l(jSONObject.optBoolean("interactValidate", false));
        aVar.q((float) jSONObject.optDouble("fontSize", 0.0d));
        aVar.w((float) jSONObject.optDouble("paddingBottom", 0.0d));
        aVar.a((float) jSONObject.optDouble("paddingLeft", 0.0d));
        aVar.eb((float) jSONObject.optDouble("paddingRight", 0.0d));
        aVar.s((float) jSONObject.optDouble("paddingTop", 0.0d));
        aVar.j(jSONObject.optBoolean("lineFeed", false));
        aVar.q(jSONObject.optInt("lineCount", 0));
        aVar.a(jSONObject.optDouble("lineHeight", 1.2d));
        aVar.k(jSONObject.optInt("letterSpacing", 0));
        aVar.w(jSONObject.optBoolean("isDataFixed", false));
        aVar.v(jSONObject.optInt("fontWeight"));
        aVar.a(jSONObject.optBoolean("lineLimit"));
        aVar.u(jSONObject.optInt("position"));
        aVar.ec(jSONObject.optString("align"));
        aVar.eb(jSONObject.optBoolean("useLeft"));
        aVar.s(jSONObject.optBoolean("useRight"));
        aVar.q(jSONObject.optBoolean("useTop"));
        aVar.e(jSONObject.optBoolean("useBottom"));
        aVar.sz(jSONObject.optString("data"));
        aVar.l(jSONObject.optJSONObject("i18n"));
        aVar.jl(jSONObject.optInt(LayoutModel.MODEL_KEY_MARGIN_LEFT));
        aVar.zy(jSONObject.optInt(LayoutModel.MODEL_KEY_MARGIN_RIGHT));
        aVar.e(jSONObject.optInt(LayoutModel.MODEL_KEY_MARGIN_TOP));
        aVar.gu(jSONObject.optInt(LayoutModel.MODEL_KEY_MARGIN_BOTTOM));
        aVar.xs(jSONObject.optInt("tagMaxCount"));
        aVar.gu(jSONObject.optBoolean("allowTextFlow"));
        aVar.vv(jSONObject.optInt("textFlowType"));
        aVar.ec(jSONObject.optInt("textFlowDuration"));
        aVar.sz(jSONObject.optInt(ScrollClickView.DIR_LEFT));
        aVar.n(jSONObject.optInt(ScrollClickView.DIR_RIGHT));
        aVar.ns(jSONObject.optInt("top"));
        aVar.cx(jSONObject.optInt("bottom"));
        aVar.n(jSONObject.optString("alignItems", "flex-start"));
        aVar.ns(jSONObject.optString("direction", ""));
        aVar.hp(jSONObject.optBoolean("loop", false));
        aVar.b(jSONObject.optInt("zIndex"));
        aVar.hq(jSONObject.optInt("interactVisibleTime"));
        aVar.di(jSONObject.optInt("interactHiddenTime"));
        aVar.zy(jSONObject.optBoolean("interactEnableMask"));
        aVar.k(jSONObject.optBoolean("interactWontHide"));
        aVar.hp(jSONObject.optString("bgGradient"));
        aVar.nu(jSONObject.optInt("areaType"));
        aVar.dy(jSONObject.optInt("interactSlideThreshold", 0));
        aVar.pu(jSONObject.optInt("interactBottomDistance", com.byazt.wkx.j.hp() ? 0 : 120));
        aVar.vv(jSONObject.optBoolean("openPlayableLandingPage", false));
        aVar.jx(jSONObject.optJSONObject("video"));
        aVar.j(jSONObject.optJSONObject("image"));
        aVar.lv(jSONObject.optInt("borderShadowExtent"));
        aVar.v(jSONObject.optBoolean("bgGauseBlur"));
        aVar.r(jSONObject.optInt("bgGauseBlurRadius"));
        aVar.u(jSONObject.optBoolean("showTimeProgress", false));
        aVar.xs(jSONObject.optBoolean("showPlayButton", false));
        aVar.hp(jSONObject.optDouble("bgColorCg", 0.0d));
        aVar.a(jSONObject.optInt("bgMaterialCenterCalcColor", 0));
        aVar.l(jSONObject.optInt("borderTopLeftRadius", 0));
        aVar.hp(jSONObject.optInt("borderTopRightRadius", 0));
        aVar.j(jSONObject.optInt("borderBottomLeftRadius", 0));
        aVar.jx(jSONObject.optInt("borderBottomRightRadius", 0));
        aVar.w(jSONObject.optJSONObject("interactI18n"));
        aVar.b(jSONObject.optString("imageObjectFit"));
        aVar.di(jSONObject.optString("interactTitle"));
        aVar.ud(jSONObject.optInt("interactTextPositionTop"));
        aVar.cx(jSONObject.optString("imageLottieTosPath"));
        aVar.jl(jSONObject.optBoolean("animationsLoop"));
        aVar.o(jSONObject.optInt("lottieAppNameMaxLength"));
        aVar.wv(jSONObject.optInt("lottieAdDescMaxLength"));
        aVar.d(jSONObject.optInt("lottieAdTitleMaxLength"));
        aVar.d(jSONObject.optString("imageFlipSlideType"));
        aVar.ec(jSONObject.optBoolean("isClickEventIntercept"));
        if (jSONObject.has("filterColor")) {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("filterColor");
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    arrayList.add(jSONArrayOptJSONArray.optString(i2));
                }
                aVar.l(arrayList);
            }
        }
        try {
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("animations");
            if (jSONArrayOptJSONArray2 != null) {
                ArrayList arrayList2 = new ArrayList();
                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray2.getJSONObject(i3);
                    hp hpVar = new hp();
                    hpVar.jx(jSONObject2.optString("animationType"));
                    hpVar.hp(jSONObject2.optDouble("animationDuration"));
                    hpVar.l(jSONObject2.optDouble("animationScaleX"));
                    hpVar.jx(jSONObject2.optDouble("animationScaleY"));
                    hpVar.j(jSONObject2.optString("animationTimeFunction"));
                    hpVar.j(jSONObject2.optDouble("animationDelay"));
                    hpVar.a(jSONObject2.optInt("animationIterationCount"));
                    hpVar.w(jSONObject2.optString("animationDirection"));
                    hpVar.w(jSONObject2.optDouble("animationInterval"));
                    hpVar.hp(jSONObject2.optInt("animationBorderWidth"));
                    hpVar.hp(jSONObject2.optLong(f.a.f3242b));
                    hpVar.l(jSONObject2.optInt("animationEffectWidth"));
                    hpVar.jx(jSONObject2.optInt("animationSwing", 1));
                    hpVar.j(jSONObject2.optInt("animationTranslateX"));
                    hpVar.w(jSONObject2.optInt("animationTranslateY"));
                    hpVar.l(jSONObject2.optString("animationRippleBackgroundColor"));
                    hpVar.hp(jSONObject2.optString("animationScaleDirection"));
                    hpVar.eb(jSONObject2.optInt("animationFadeStart"));
                    hpVar.s(jSONObject2.optInt("animationFadeEnd"));
                    hpVar.a(jSONObject2.optString("animationFillMode"));
                    hpVar.q(jSONObject2.optInt("animationBounceHeight"));
                    if (aVar.ec() > 0.0d) {
                        hpVar.j(hpVar.k() + aVar.ec());
                    }
                    arrayList2.add(hpVar);
                }
                aVar.hp(arrayList2);
            }
            if (jSONObject.has("triggerSlideMinDistance")) {
                aVar.o(jSONObject.optString("triggerSlideDirection", "0"));
                aVar.hp(jSONObject.optLong("triggerSlideMinDistance", 0L));
            }
        } catch (Exception unused) {
        }
        return aVar;
    }

    private void wv(String str) {
        this.f23798g = str;
    }

    public JSONObject a() {
        return this.f23817z;
    }

    public int ad() {
        List<hp> list = this.f23815x;
        if (list == null) {
            return 0;
        }
        for (hp hpVar : list) {
            if ("translate".equals(hpVar.q()) && hpVar.eb() < 0) {
                return -hpVar.eb();
            }
        }
        return 0;
    }

    public boolean an() {
        return this.f23816y;
    }

    public String as() {
        return this.lv;
    }

    public String b() {
        return this.vv;
    }

    public String bu() {
        return this.yj;
    }

    public int c() {
        return this.tr;
    }

    public String cx() {
        return this.xs;
    }

    public String d() {
        return this.f23806n;
    }

    public int db() {
        return this.zb;
    }

    public int df() {
        return this.qh;
    }

    public String di() {
        return this.f23798g;
    }

    public int dy() {
        return this.f23807o;
    }

    public String e() {
        return this.be;
    }

    public boolean ea() {
        return this.rz;
    }

    public int eb() {
        return this.pg;
    }

    public double ec() {
        return this.gu;
    }

    public int ed() {
        return this.gy;
    }

    public int f() {
        return this.xh;
    }

    public boolean fi() {
        return this.ea;
    }

    public String fu() {
        return this.f23799h;
    }

    public List<String> g() {
        return this.cs;
    }

    public boolean gb() {
        return this.ad;
    }

    public int gd() {
        return this.pc;
    }

    public int gh() {
        return this.df;
    }

    public float gu() {
        return this.hp;
    }

    public String gy() {
        return this.pf;
    }

    public List<hp> h() {
        return this.f23815x;
    }

    public double hd() {
        return this.mp;
    }

    public String hq() {
        return this.cx;
    }

    public boolean i() {
        return this.pi;
    }

    public int j() {
        return this.qa;
    }

    public boolean jb() {
        return this.lp;
    }

    public int jd() {
        return this.rk;
    }

    public float jl() {
        return this.f23803l;
    }

    public String jw() {
        return ("flip".equals(this.vt) || "slide".equals(this.vt)) ? this.vt : "slide";
    }

    public int jx() {
        return this.f23800i;
    }

    public float k() {
        return this.f23792a;
    }

    public String kg() {
        return this.f23809r;
    }

    public boolean ku() {
        return this.fu;
    }

    public String ky() {
        return this.ud;
    }

    public int l() {
        return this.gh;
    }

    public boolean ld() {
        return this.ku;
    }

    public int lp() {
        return this.tn;
    }

    public int lv() {
        return this.f23795d;
    }

    public JSONObject ly() {
        return this.xv;
    }

    public int m() {
        return this.ky;
    }

    public boolean mp() {
        return this.pu;
    }

    public String ms() {
        return this.dy;
    }

    public String n() {
        return this.f23813v;
    }

    public boolean nc() {
        return this.ed;
    }

    public int nd() {
        return this.kg;
    }

    public String nr() {
        return this.su;
    }

    public String ns() {
        return this.f23812u;
    }

    public boolean nu() {
        return this.di;
    }

    public String o() {
        return this.ec;
    }

    public int ov() {
        return this.f23811t;
    }

    public boolean pc() {
        return this.vq;
    }

    public String pf() {
        return this.ti;
    }

    public int pg() {
        return this.vx;
    }

    public boolean pi() {
        return this.ly;
    }

    public double pu() {
        return this.hq;
    }

    public int q() {
        return this.db;
    }

    public int qa() {
        return this.ux;
    }

    public int qh() {
        return this.wt;
    }

    public boolean qu() {
        return this.zx;
    }

    public double r() {
        return this.wv;
    }

    public JSONObject rk() {
        return this.rv;
    }

    public boolean ru() {
        return this.an;
    }

    public String rv() {
        return this.hd;
    }

    public int rz() {
        return this.as;
    }

    public double s() {
        return this.ov;
    }

    public int su() {
        return this.nd;
    }

    public double sz() {
        return this.jl;
    }

    public int t() {
        return this.ru;
    }

    public long ti() {
        return this.jw;
    }

    public void tn() {
        hp(this, this.gb);
    }

    public void tr() {
        hp(this, this.xv);
    }

    public int tw() {
        return this.nr;
    }

    public float u() {
        return this.f23810s;
    }

    public String ud() {
        return this.f23793b;
    }

    public String ux() {
        return this.ld;
    }

    public float v() {
        return this.eb;
    }

    public int vq() {
        return this.yr;
    }

    public boolean vt() {
        return this.gv;
    }

    public float vv() {
        return this.f23796e;
    }

    public int vx() {
        return this.f23794c;
    }

    public int w() {
        return this.nc;
    }

    public int wt() {
        return this.qu;
    }

    public String x() {
        return this.gd;
    }

    public String xh() {
        return this.nu;
    }

    public float xs() {
        return this.f23808q;
    }

    public String xv() {
        return this.jb;
    }

    public boolean y() {
        return this.f23797f;
    }

    public int yj() {
        return this.fi;
    }

    public int yr() {
        return this.f23805ms;
    }

    public int z() {
        return this.bu;
    }

    public int zb() {
        return this.jd;
    }

    public int zx() {
        return this.f23804m;
    }

    public boolean zy() {
        return this.f23814w;
    }

    public void a(int i2) {
        this.db = i2;
    }

    public void b(int i2) {
        this.jd = i2;
    }

    public void cx(int i2) {
        this.ru = i2;
    }

    public void d(int i2) {
        this.tn = i2;
    }

    public void di(int i2) {
        this.qh = i2;
    }

    public void dy(int i2) {
        this.zb = i2;
    }

    public void e(String str) {
        this.f23806n = str;
    }

    public void eb(float f2) {
        this.f23810s = f2;
    }

    public void ec(String str) {
        this.hd = str;
    }

    public void gu(String str) {
        this.ns = str;
    }

    public void hq(int i2) {
        this.f23811t = i2;
    }

    public void j(int i2) {
        this.nc = i2;
    }

    public void jl(String str) {
        this.cx = str;
    }

    public void jx(int i2) {
        this.qa = i2;
    }

    public void k(String str) {
        this.ud = str;
    }

    public void l(int i2) {
        this.f23800i = i2;
    }

    public void lv(int i2) {
        this.df = i2;
    }

    public void n(int i2) {
        this.rk = i2;
    }

    public void ns(int i2) {
        this.wt = i2;
    }

    public void nu(int i2) {
        this.bu = i2;
    }

    public void o(int i2) {
        this.gy = i2;
    }

    public void pu(int i2) {
        this.f23794c = i2;
    }

    public void q(float f2) {
        this.f23796e = f2;
    }

    public void r(int i2) {
        this.ux = i2;
    }

    public void s(float f2) {
        this.f23808q = f2;
    }

    public void sz(String str) {
        this.su = str;
    }

    public void u(String str) {
        this.dy = str;
    }

    public void ud(int i2) {
        this.vx = i2;
    }

    public void v(String str) {
        this.nu = str;
    }

    public void vv(String str) {
        this.f23809r = str;
    }

    public void w(int i2) {
        this.pg = i2;
    }

    public String wv() {
        return this.ns;
    }

    public void xs(String str) {
        this.lv = str;
    }

    public void zy(String str) {
        this.f23793b = str;
    }

    public void a(float f2) {
        this.eb = f2;
    }

    public void b(String str) {
        this.jb = str;
    }

    public void cx(String str) {
        this.ld = str;
    }

    public void d(String str) {
        this.vt = str;
    }

    public void di(String str) {
        this.pf = str;
    }

    public void e(int i2) {
        this.xh = i2;
    }

    public void eb(String str) {
        this.vv = str;
    }

    public void ec(int i2) {
        this.fi = i2;
    }

    public void gu(int i2) {
        this.f23805ms = i2;
    }

    public void j(float f2) {
        this.f23801j = f2;
    }

    public void jl(int i2) {
        this.as = i2;
    }

    public void jx(float f2) {
        this.jx = f2;
    }

    public void k(int i2) {
        this.f23804m = i2;
    }

    public void l(float f2) {
        this.f23803l = f2;
    }

    public void n(String str) {
        this.gd = str;
    }

    public void ns(String str) {
        this.yj = str;
    }

    public void o(String str) {
        this.ti = str;
    }

    public void q(String str) {
        this.sz = str;
    }

    public void s(String str) {
        this.ec = str;
    }

    public void sz(int i2) {
        this.nr = i2;
    }

    public void u(int i2) {
        this.nd = i2;
    }

    public void v(int i2) {
        this.yr = i2;
    }

    public void vv(int i2) {
        this.pc = i2;
    }

    public void w(float f2) {
        this.f23792a = f2;
    }

    public void wv(int i2) {
        this.tr = i2;
    }

    public void xs(int i2) {
        this.qu = i2;
    }

    public void zy(int i2) {
        this.kg = i2;
    }

    public void a(String str) {
        this.xs = str;
    }

    public void e(boolean z2) {
        this.ea = z2;
    }

    public void eb(int i2) {
        this.f23807o = i2;
    }

    public void ec(boolean z2) {
        this.gv = z2;
    }

    public void gu(boolean z2) {
        this.an = z2;
    }

    public void j(String str) {
        this.f23813v = str;
    }

    public void jl(boolean z2) {
        this.ly = z2;
    }

    public void jx(double d2) {
        this.jl = d2;
    }

    public void k(boolean z2) {
        this.ad = z2;
    }

    public void l(boolean z2) {
        this.f23814w = z2;
    }

    public void q(int i2) {
        this.ky = i2;
    }

    public void s(int i2) {
        this.f23795d = i2;
    }

    public void u(boolean z2) {
        this.ed = z2;
    }

    public void v(boolean z2) {
        this.pi = z2;
    }

    public void vv(boolean z2) {
        this.ku = z2;
    }

    public void w(String str) {
        this.f23812u = str;
    }

    public void xs(boolean z2) {
        this.lp = z2;
    }

    public void zy(boolean z2) {
        this.fu = z2;
    }

    public void a(double d2) {
        this.mp = d2;
    }

    public void eb(boolean z2) {
        this.zx = z2;
    }

    public void j(double d2) {
        this.wv = d2;
    }

    public void jx(String str) {
        this.f23802k = str;
    }

    public void l(double d2) {
        this.gu = d2;
    }

    public void q(boolean z2) {
        this.vq = z2;
    }

    public void s(boolean z2) {
        this.f23816y = z2;
    }

    public void w(double d2) {
        this.hq = d2;
    }

    public void a(boolean z2) {
        this.rz = z2;
    }

    public void j(boolean z2) {
        this.pu = z2;
    }

    public void jx(boolean z2) {
        this.di = z2;
    }

    public void l(String str) {
        this.zy = str;
    }

    public void w(boolean z2) {
        this.f23797f = z2;
    }

    public void j(JSONObject jSONObject) {
        this.xv = jSONObject;
    }

    public void jx(JSONObject jSONObject) {
        this.gb = jSONObject;
    }

    public void l(JSONObject jSONObject) {
        this.rv = jSONObject;
    }

    public void w(JSONObject jSONObject) {
        this.f23817z = jSONObject;
    }

    public void l(List<String> list) {
        this.cs = list;
    }

    public boolean hp() {
        return this.tw;
    }

    public void hp(boolean z2) {
        this.tw = z2;
    }

    public void hp(int i2) {
        this.gh = i2;
    }

    public void hp(double d2) {
        this.ov = d2;
    }

    public void hp(String str) {
        this.be = str;
    }

    public void hp(float f2) {
        this.hp = f2;
    }

    public void hp(List<hp> list) {
        this.f23815x = list;
    }

    public void hp(long j2) {
        this.jw = j2;
    }

    private void hp(a aVar, JSONObject jSONObject) {
        String next;
        if (aVar == null || jSONObject == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            next = itKeys.next();
            next.getClass();
            switch (next) {
                case "isShowBgControl":
                    aVar.jx(jSONObject.optBoolean(next, false));
                    break;
                case "clickArea":
                    aVar.v(jSONObject.optString(next));
                    break;
                case "triggerSlideDirection":
                    aVar.o(jSONObject.optString(next));
                    break;
                case "bgImgUrl":
                    aVar.eb(jSONObject.optString(next));
                    break;
                case "lineCount":
                    aVar.q(jSONObject.optInt(next));
                    break;
                case "openPlayableLandingPage":
                    aVar.vv(jSONObject.optBoolean(next));
                    break;
                case "lineLimit":
                    aVar.a(jSONObject.optBoolean(next));
                    break;
                case "interactBgColor":
                    aVar.zy(jSONObject.optString(next));
                    break;
                case "paddingLeft":
                    aVar.a((float) jSONObject.optDouble(next));
                    break;
                case "adType":
                    aVar.l(jSONObject.optString(next));
                    break;
                case "bottom":
                    aVar.cx(jSONObject.optInt(next));
                    break;
                case "fontFamily":
                    aVar.jx(jSONObject.optString(next));
                    break;
                case "height":
                    aVar.jx((float) jSONObject.optDouble(next));
                    break;
                case "textAlign":
                    aVar.j(jSONObject.optString(next));
                    break;
                case "alignItems":
                    aVar.n(jSONObject.optString(next));
                    break;
                case "interactValidate":
                    aVar.l(jSONObject.optBoolean(next));
                    break;
                case "marginTop":
                    aVar.e(jSONObject.optInt(next));
                    break;
                case "useBottom":
                    aVar.e(jSONObject.optBoolean(next));
                    break;
                case "triggerSlideMinDistance":
                    aVar.hp(jSONObject.optLong(next));
                    break;
                case "direction":
                    aVar.ns(jSONObject.optString(next));
                    break;
                case "tagMaxCount":
                    aVar.xs(jSONObject.optInt(next));
                    break;
                case "interactHiddenTime":
                    aVar.di(jSONObject.optInt(next));
                    break;
                case "useTop":
                    aVar.q(jSONObject.optBoolean(next));
                    break;
                case "fontWeight":
                    aVar.v(jSONObject.optInt(next));
                    break;
                case "zIndex":
                    aVar.b(jSONObject.optInt(next));
                    break;
                case "timingStart":
                    aVar.l(jSONObject.optDouble(next));
                    break;
                case "lineHeight":
                    aVar.a(jSONObject.optDouble(next));
                    break;
                case "textFlowDuration":
                    aVar.ec(jSONObject.optInt(next));
                    break;
                case "useRight":
                    aVar.s(jSONObject.optBoolean(next));
                    break;
                case "marginBottom":
                    aVar.gu(jSONObject.optInt(next));
                    break;
                case "bgColor":
                    aVar.a(jSONObject.optString(next));
                    break;
                case "isClickEventIntercept":
                    aVar.k(jSONObject.optBoolean(next));
                    break;
                case "useLeft":
                    aVar.eb(jSONObject.optBoolean(next));
                    break;
                case "widthMode":
                    aVar.gu(jSONObject.optString(next));
                    break;
                case "top":
                    aVar.ns(jSONObject.optInt(next));
                    break;
                case "data":
                    aVar.sz(jSONObject.optString(next));
                    break;
                case "left":
                    aVar.sz(jSONObject.optInt(next));
                    break;
                case "loop":
                    aVar.hp(jSONObject.optBoolean(next));
                    break;
                case "paddingTop":
                    aVar.s((float) jSONObject.optDouble(next));
                    break;
                case "align":
                    aVar.ec(jSONObject.optString(next));
                    break;
                case "color":
                    aVar.w(jSONObject.optString(next));
                    break;
                case "right":
                    aVar.n(jSONObject.optInt(next));
                    break;
                case "width":
                    aVar.j((float) jSONObject.optDouble(next));
                    break;
                case "timingEnd":
                    aVar.jx(jSONObject.optDouble(next));
                    break;
                case "paddingBottom":
                    aVar.w((float) jSONObject.optDouble(next));
                    break;
                case "allowTextFlow":
                    aVar.gu(jSONObject.optBoolean(next));
                    break;
                case "interactWontHide":
                    aVar.k(jSONObject.optBoolean(next));
                    break;
                case "fontSize":
                    aVar.q((float) jSONObject.optDouble(next));
                    break;
                case "justifyVertical":
                    aVar.vv(jSONObject.optString(next));
                    break;
                case "interactVisibleTime":
                    aVar.hq(jSONObject.optInt(next));
                    break;
                case "paddingRight":
                    aVar.eb((float) jSONObject.optDouble(next));
                    break;
                case "borderColor":
                    aVar.s(jSONObject.optString(next));
                    break;
                case "borderStyle":
                    aVar.q(jSONObject.optString(next));
                    break;
                case "position":
                    aVar.u(jSONObject.optInt(next));
                    break;
                case "isDataFixed":
                    aVar.w(jSONObject.optBoolean(next));
                    break;
                case "marginRight":
                    aVar.zy(jSONObject.optInt(next));
                    break;
                case "justifyHorizontal":
                    aVar.xs(jSONObject.optString(next));
                    break;
                case "interactPosition":
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                    if (jSONObjectOptJSONObject == null) {
                        break;
                    } else {
                        aVar.eb(jSONObjectOptJSONObject.optInt("translateY", 0));
                        aVar.s(jSONObjectOptJSONObject.optInt("translateX", 0));
                        aVar.j(jSONObjectOptJSONObject.optDouble("scaleX", 0.0d));
                        aVar.w(jSONObjectOptJSONObject.optDouble("scaleY", 0.0d));
                        break;
                    }
                case "lineFeed":
                    aVar.j(jSONObject.optBoolean(next));
                    break;
                case "interactText":
                    aVar.jl(jSONObject.optString(next));
                    break;
                case "interactType":
                    aVar.k(jSONObject.optString(next));
                    break;
                case "borderRadius":
                    aVar.hp((float) jSONObject.optDouble(next));
                    break;
                case "clickTigger":
                    aVar.u(jSONObject.optString(next));
                    break;
                case "heightMode":
                    aVar.e(jSONObject.optString(next));
                    break;
                case "textFlowType":
                    aVar.vv(jSONObject.optInt(next));
                    break;
                case "borderSize":
                    aVar.l((float) jSONObject.optDouble(next));
                    break;
                case "marginLeft":
                    aVar.jl(jSONObject.optInt(next));
                    break;
                case "letterSpacing":
                    aVar.k(jSONObject.optInt(next));
                    break;
            }
        }
    }
}
