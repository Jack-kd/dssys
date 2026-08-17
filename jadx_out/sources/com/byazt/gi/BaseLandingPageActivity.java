package com.byazt.gi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.webkit.DownloadListener;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.anythink.core.common.f.g;
import com.byazt.dth.TTViewStub;
import com.byazt.ff.s;
import com.byazt.gog.jx;
import com.byazt.ih.l;
import com.byazt.jdb.a;
import com.byazt.jz.cx;
import com.byazt.jz.d;
import com.byazt.jz.n;
import com.byazt.jz.r;
import com.byazt.jz.sz;
import com.byazt.jz.ud;
import com.byazt.nk.TTProgressBar;
import com.byazt.ono.UgenBanner;
import com.byazt.pm.w;
import com.byazt.qg.j;
import com.byazt.vi.eb;
import com.byazt.xci.f;
import com.byazt.xci.mp;
import com.byazt.xci.pu;
import com.byazt.xci.xs;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import com.byazt.zn.wv;
import com.byazt.zn.xh;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 290, 2417})
/* loaded from: classes2.dex */
public abstract class BaseLandingPageActivity extends BaseThemeActivity implements w {

    /* renamed from: a, reason: collision with root package name */
    public TTViewStub f20433a;

    /* renamed from: b, reason: collision with root package name */
    public TTProgressBar f20434b;
    public j cx;
    public l di;
    public View dy;

    /* renamed from: e, reason: collision with root package name */
    public String f20436e;
    public TTViewStub eb;
    public com.byazt.rp.l ec;
    public boolean gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public int f20437j;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public ImageView f20438k;
    public UgenBanner ky;

    /* renamed from: l, reason: collision with root package name */
    public String f20439l;

    /* renamed from: n, reason: collision with root package name */
    public com.byazt.cf.j f20441n;
    public SSWebView ns;
    public TextView nu;

    /* renamed from: o, reason: collision with root package name */
    public ud f20442o;

    /* renamed from: q, reason: collision with root package name */
    public TTViewStub f20443q;

    /* renamed from: s, reason: collision with root package name */
    public TTViewStub f20445s;

    /* renamed from: u, reason: collision with root package name */
    public TextView f20446u;
    public com.byazt.fy.hp ud;

    /* renamed from: v, reason: collision with root package name */
    public ImageView f20447v;
    public a vv;

    /* renamed from: w, reason: collision with root package name */
    public Activity f20448w;
    public Button wv;
    public boolean xh;
    public TextView xs;
    public String zy;

    /* renamed from: ms, reason: collision with root package name */
    public boolean f20440ms = false;
    public int jl = 0;
    public boolean sz = false;

    /* renamed from: d, reason: collision with root package name */
    public JSONArray f20435d = null;
    public String as = "立即下载";
    public AtomicBoolean hq = new AtomicBoolean(true);
    public long kg = Long.MIN_VALUE;
    public final Map<String, jx> lv = Collections.synchronizedMap(new HashMap());

    /* renamed from: r, reason: collision with root package name */
    public com.byazt.gog.hp f20444r = new com.byazt.gog.hp() { // from class: com.byazt.gi.BaseLandingPageActivity.1
        @Override // com.byazt.gog.hp
        public void hp() {
            BaseLandingPageActivity baseLandingPageActivity = BaseLandingPageActivity.this;
            baseLandingPageActivity.l(baseLandingPageActivity.hp());
            com.byazt.pm.hp.hp(BaseLandingPageActivity.this.hp);
        }

        @Override // com.byazt.gog.hp
        public void jx(long j2, long j3, String str, String str2) {
            BaseLandingPageActivity.this.l("下载失败");
            com.byazt.pm.hp.jx(BaseLandingPageActivity.this.hp, j2, j3);
        }

        @Override // com.byazt.gog.hp
        public void l(long j2, long j3, String str, String str2) {
            BaseLandingPageActivity.this.l("暂停");
            com.byazt.pm.hp.l(BaseLandingPageActivity.this.hp, j2, j3);
        }

        @Override // com.byazt.gog.hp
        public void hp(long j2, long j3, String str, String str2) {
            BaseLandingPageActivity.this.l("下载中...");
            com.byazt.pm.hp.hp(BaseLandingPageActivity.this.hp, j2, j3);
        }

        @Override // com.byazt.gog.hp
        public void hp(long j2, String str, String str2) {
            BaseLandingPageActivity.this.l("点击安装");
            com.byazt.pm.hp.l(BaseLandingPageActivity.this.hp);
        }

        @Override // com.byazt.gog.hp
        public void hp(String str, String str2) {
            BaseLandingPageActivity.this.l("点击打开");
            com.byazt.pm.hp.jx(BaseLandingPageActivity.this.hp);
        }
    };

    @com.byazt.kj.hp(hp = {0, 1, 290, 2082})
    public static class hp implements DownloadListener {
        public Map<String, jx> hp;

        /* renamed from: j, reason: collision with root package name */
        public String f20452j;
        public Context jx;

        /* renamed from: l, reason: collision with root package name */
        public mp f20453l;

        /* renamed from: w, reason: collision with root package name */
        public boolean f20454w;

        public hp(Map<String, jx> map, mp mpVar, Context context, String str, boolean z2) {
            this.hp = map;
            this.f20453l = mpVar;
            this.jx = context;
            this.f20452j = str;
            this.f20454w = z2;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
            Map<String, jx> map = this.hp;
            if (map != null && map.containsKey(str)) {
                jx jxVar = this.hp.get(str);
                if (jxVar != null) {
                    jxVar.hp(ky.cx(this.f20453l), false);
                    return;
                }
                return;
            }
            jx jxVarHp = s.hp(this.jx, str, this.f20453l, this.f20452j);
            jxVarHp.hp(com.byazt.fy.s.hp(this.f20453l));
            jxVarHp.j(this.f20454w);
            this.hp.put(str, jxVarHp);
            jxVarHp.hp(ky.cx(this.f20453l), false);
        }
    }

    private void gu() {
        mp mpVar = this.pu;
        if (mpVar == null) {
            return;
        }
        this.cx = j.hp(this.f20448w, mpVar, this.f20436e);
    }

    private void jl() {
        if (this.ns == null) {
            return;
        }
        zy();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.pu);
        ud udVar = new ud(this.f20448w);
        this.f20442o = udVar;
        udVar.j(this.gu);
        this.f20442o.l(this.ns).hp(this.pu).jx(arrayList).l(this.hp).j(this.f20439l).jx(this.f20437j).hp(this.jx).w(ky.sz(this.pu)).hp(this.ns).hp(true).l(com.byazt.fy.s.hp(this.pu)).hp(this);
    }

    private com.byazt.nqo.hp k() {
        xs xsVarK = this.pu.k();
        if (xsVarK == null) {
            return null;
        }
        String strA = xsVarK.a();
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        com.byazt.nqo.hp hpVar = new com.byazt.nqo.hp();
        hpVar.jx(strA);
        hpVar.l(xsVarK.eb());
        hpVar.hp(strA);
        return hpVar;
    }

    private boolean v() {
        xs xsVarK = this.pu.k();
        if (xsVarK == null) {
            return false;
        }
        xsVarK.hp(true);
        int iJx = xsVarK.jx();
        return (iJx == 1 || iJx == 2) && !this.xh;
    }

    private void zy() {
        mp mpVar = this.pu;
        if (mpVar == null || this.ns == null) {
            return;
        }
        String strN = mpVar.n();
        if (TextUtils.isEmpty(strN)) {
            return;
        }
        com.byazt.ikh.hp.hp(strN, this.ns.getInnerIWebView());
    }

    public void a() {
        com.byazt.jdb.j.hp(this.pu, getClass().getName());
        com.byazt.jdb.j.l(this.pu);
        this.ec = new com.byazt.rp.l(this.vv.hp());
    }

    public void e() {
        eb.hp(this);
    }

    public abstract View eb();

    public void hp(Bundle bundle) {
    }

    public void j() {
        hp("detail_skip");
        finish();
    }

    public void jx() {
        if (xh.hp(this.ns)) {
            return;
        }
        com.byazt.rp.l lVar = this.ec;
        if (lVar != null) {
            lVar.hp(0);
        }
        onBackPressed();
    }

    public void l() {
        mp mpVar = this.pu;
        if (mpVar == null || mpVar.q() != 4) {
            return;
        }
        TTViewStub tTViewStub = this.f20443q;
        if (tTViewStub != null) {
            tTViewStub.setVisibility(0);
        }
        Button button = (Button) findViewById(2114387729);
        this.wv = button;
        if (button != null) {
            l(hp());
            if (this.ud == null) {
                this.ud = s.hp(this.f20448w, this.pu, TextUtils.isEmpty(this.jx) ? ky.hp(this.f20437j) : this.jx);
            }
            this.ud.hp(this.f20448w, false);
            this.ud.hp(com.byazt.fy.s.hp(this.pu));
            this.ud.a(true);
            this.ud.j(this.f20440ms);
            this.ud.hp(this.f20444r, false);
            com.byazt.go.hp hpVar = new com.byazt.go.hp(this.f20448w, this.pu, "embeded_ad_landingpage", this.f20437j);
            ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).jx(true);
            ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp(true);
            ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp((jx) this.ud);
            this.wv.setOnClickListener(hpVar);
            this.wv.setOnTouchListener(hpVar);
            TextView textView = this.nu;
            if (textView != null) {
                textView.setOnClickListener(hpVar);
                this.nu.setOnTouchListener(hpVar);
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.byazt.rp.l lVar = this.ec;
        if (lVar != null) {
            lVar.hp(this.f20448w, this.pu);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (s()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        l();
    }

    @Override // com.byazt.gi.BaseThemeActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        e();
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.jx = intent.getStringExtra("event_tag");
        this.hp = intent.getStringExtra("ad_id");
        this.f20437j = intent.getIntExtra("landing_page_source", -1);
        this.gu = intent.getBooleanExtra("is_outer_click", false);
        this.f20436e = intent.getStringExtra("url");
        this.f20440ms = intent.getBooleanExtra("web_dl_factors", false) && !TextUtils.isEmpty(this.f20436e) && this.f20436e.contains("chengzijianzhan");
        this.f20436e = ky.l(this.pu, this.f20436e);
        this.zy = intent.getStringExtra(g.a.f3271h);
        this.jl = intent.getIntExtra("get_phone_num_status", 0);
        this.sz = intent.getBooleanExtra("video_is_auto_play", true);
        mp mpVar = this.pu;
        if (mpVar == null) {
            finish();
            return;
        }
        this.f20439l = mpVar.w_();
        this.f20448w = this;
        hp(bundle);
        try {
            sz.hp(this.f20448w);
        } catch (Throwable unused) {
        }
        View viewEb = eb();
        this.dy = viewEb;
        setContentView(viewEb);
        w();
        a();
        if (this.pu.ud() || !Build.BRAND.equalsIgnoreCase(MediationConstant.ADN_XIAOMI) || Build.VERSION.SDK_INT < 36) {
            return;
        }
        this.dy.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.gi.BaseLandingPageActivity.6
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                View view = BaseLandingPageActivity.this.dy;
                if (view != null) {
                    view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    int[] iArr = new int[2];
                    view.getLocationOnScreen(iArr);
                    float fE = xh.e((Context) null);
                    if (iArr[1] <= 0) {
                        view.setPadding(0, (int) fE, 0, 0);
                    }
                }
            }
        });
    }

    @Override // com.byazt.gi.BaseThemeActivity, android.app.Activity
    public void onDestroy() {
        com.byazt.gu.l lVar;
        super.onDestroy();
        a aVar = this.vv;
        if (aVar != null) {
            aVar.eb();
        }
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
        } catch (Throwable unused) {
        }
        SSWebView sSWebView = this.ns;
        if (sSWebView != null) {
            com.byazt.ikh.hp.hp(sSWebView);
            r.hp(this.f20448w, this.ns);
            r.hp(this.ns);
        }
        this.ns = null;
        j jVar = this.cx;
        if (jVar != null) {
            jVar.j();
        }
        ud udVar = this.f20442o;
        if (udVar != null) {
            udVar.nu();
        }
        com.byazt.fy.hp hpVar = this.ud;
        if (hpVar != null) {
            hpVar.jx();
        }
        for (Map.Entry<String, jx> entry : this.lv.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().jx();
            }
        }
        this.lv.clear();
        a aVar2 = this.vv;
        if (aVar2 != null) {
            aVar2.a();
        }
        UgenBanner ugenBanner = this.ky;
        if (ugenBanner != null) {
            ugenBanner.hp();
        }
        mp mpVar = this.pu;
        if (mpVar == null) {
            return;
        }
        xs xsVarK = mpVar.k();
        if (xsVarK != null) {
            xsVarK.hp(false);
        }
        if (!this.pu.hl() || this.pu.ba() < 0 || (lVar = (com.byazt.gu.l) n.hp(this.pu.n(), com.byazt.gu.l.class)) == null) {
            return;
        }
        boolean z2 = System.currentTimeMillis() - this.kg >= ((long) this.pu.ba()) * 1000;
        if (z2) {
            com.byazt.jdb.j.hp(this.pu, 4);
        }
        lVar.hp(z2 ? 5 : 6, null);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        com.byazt.rp.l lVar = this.ec;
        if (lVar != null) {
            lVar.hp(i2);
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        ud udVar = this.f20442o;
        if (udVar != null) {
            udVar.ud();
        }
        for (Map.Entry<String, jx> entry : this.lv.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue();
            }
        }
        com.byazt.cf.j jVar = this.f20441n;
        if (jVar != null) {
            jVar.jx();
        }
    }

    @Override // android.app.Activity
    public void onResume() throws JSONException {
        super.onResume();
        Window window = getWindow();
        if (this.kg == Long.MIN_VALUE) {
            this.kg = System.currentTimeMillis();
        }
        if (window != null) {
            com.byazt.mb.s.hp(window.getDecorView());
        }
        ud udVar = this.f20442o;
        if (udVar != null) {
            udVar.hq();
            this.f20442o.hp(new SSWebView.l() { // from class: com.byazt.gi.BaseLandingPageActivity.10
                @Override // com.byazt.ykc.SSWebView.l
                public void hp(int i2) throws JSONException {
                    BaseLandingPageActivity.this.f20442o.hp(i2);
                }
            });
        }
        com.byazt.fy.hp hpVar = this.ud;
        if (hpVar != null) {
            hpVar.l();
        }
        for (Map.Entry<String, jx> entry : this.lv.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().l();
            }
        }
        a aVar = this.vv;
        if (aVar != null) {
            aVar.j();
        }
        com.byazt.cf.j jVar = this.f20441n;
        if (jVar != null) {
            jVar.l(true);
        }
        q();
        if (this.pu == null || !v()) {
            return;
        }
        if (this.ky == null) {
            this.ky = new UgenBanner(this);
        }
        addContentView(this.ky, new ViewGroup.LayoutParams(-1, -2));
        this.xh = true;
        com.byazt.xci.w wVarV = this.pu.v();
        String strJx = wVarV != null ? wVarV.jx() : this.pu.qk();
        this.ky.setTopMargin(xh.jx(this, 50.0f));
        this.ky.hp(k(), this.pu, new com.byazt.go.l(this, this.pu, this.jx, this.f20437j), strJx, this.pu.v_(), "立即打开", true);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        com.byazt.rdt.jx jxVarHp = com.byazt.rdt.jx.hp();
        mp mpVar = this.pu;
        jxVarHp.hp(this, mpVar, ky.o(mpVar));
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        a aVar = this.vv;
        if (aVar != null) {
            aVar.w();
        }
        com.byazt.rdt.jx.hp().l((Context) this, this.pu, false);
    }

    public void q() {
        if (this.pu == null) {
            return;
        }
        JSONArray jSONArrayJx = jx(this.f20436e);
        int iZy = ky.zy(this.pu);
        int iJl = ky.jl(this.pu);
        cx<com.byazt.jdb.hp> cxVarHp = sz.hp();
        if (jSONArrayJx == null || cxVarHp == null || iZy <= 0 || iJl <= 0) {
            return;
        }
        f fVar = new f();
        fVar.f27268a = jSONArrayJx;
        com.byazt.jt.l lVarDb = this.pu.db();
        if (lVarDb == null) {
            return;
        }
        cxVarHp.hp(wv.l(lVarDb).jx(6).hp(), fVar, iJl, new cx.l() { // from class: com.byazt.gi.BaseLandingPageActivity.2
            @Override // com.byazt.jz.cx.l
            public void hp(int i2, String str, com.byazt.xci.l lVar) {
                BaseLandingPageActivity.this.hp(0);
                lVar.hp(i2);
                com.byazt.xci.l.hp(lVar);
            }

            @Override // com.byazt.jz.cx.l
            public void hp(com.byazt.xci.hp hpVar, com.byazt.xci.l lVar) {
                if (hpVar != null) {
                    try {
                        BaseLandingPageActivity.this.hq.set(false);
                        BaseLandingPageActivity.this.f20442o.hp(hpVar.jx());
                    } catch (Exception unused) {
                        BaseLandingPageActivity.this.hp(0);
                    }
                }
            }
        });
    }

    public boolean s() {
        try {
            if ((mp.j(this.pu) || pu.hp(this.pu)) && xh.hp(this.ns)) {
                return true;
            }
            com.byazt.rp.l lVar = this.ec;
            if (lVar != null) {
                return lVar.l(this.f20448w, this.pu);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public void w() {
    }

    public void hp(String str) {
    }

    public String hp() {
        mp mpVar = this.pu;
        if (mpVar != null && !TextUtils.isEmpty(mpVar.ll())) {
            this.as = this.pu.ll();
        }
        return this.as;
    }

    private JSONArray jx(String str) {
        int i2;
        JSONArray jSONArray = this.f20435d;
        if (jSONArray != null && jSONArray.length() > 0) {
            return this.f20435d;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int iIndexOf = str.indexOf("?id=");
        int iIndexOf2 = str.indexOf("&");
        if (iIndexOf == -1 || iIndexOf2 == -1 || (i2 = iIndexOf + 4) >= iIndexOf2) {
            return null;
        }
        String strSubstring = str.substring(i2, iIndexOf2);
        if (TextUtils.isEmpty(strSubstring)) {
            return null;
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(strSubstring);
        return jSONArray2;
    }

    public void hp(final l.hp hpVar, boolean z2) {
        ImageView imageView = (ImageView) findViewById(2114387705);
        this.f20438k = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.gi.BaseLandingPageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BaseLandingPageActivity.this.jx();
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(2114387704);
        this.f20447v = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.gi.BaseLandingPageActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BaseLandingPageActivity.this.j();
                }
            });
        }
        TextView textView = (TextView) findViewById(2114387952);
        this.f20446u = textView;
        if (textView != null) {
            textView.setText(TextUtils.isEmpty(this.zy) ? "广告" : this.zy);
        }
        TextView textView2 = (TextView) findViewById(2114387627);
        this.xs = textView2;
        if (textView2 != null) {
            mp mpVar = this.pu;
            if (mpVar != null && mpVar.ju() != null) {
                this.pu.ju().hp("landing_page");
            }
            this.xs.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.gi.BaseLandingPageActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BaseLandingPageActivity.this.hp(hpVar);
                }
            });
        }
        hp(4);
    }

    public void hp(l.hp hpVar) {
        if (this.pu == null || isFinishing()) {
            return;
        }
        if (this.di == null) {
            l(hpVar);
        }
        l lVar = this.di;
        if (lVar != null) {
            lVar.showDislikeDialog();
        }
    }

    public void hp(boolean z2) throws JSONException {
        com.byazt.cf.l.hp(this.f20448w).hp(z2).l(false).hp(this.ns);
        SSWebView sSWebView = this.ns;
        Context applicationContext = getApplicationContext();
        mp mpVar = this.pu;
        sSWebView.addJavascriptInterface(new com.byazt.zx.hp(sSWebView, applicationContext, mpVar != null ? mpVar.eb() : this.jl, this.pu), "CCWifiJSBridge");
        this.vv = new a(this.pu, this.ns).l(true).l(System.currentTimeMillis()).j(this.ns.getCreateDuration());
        gu();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("adid", this.hp);
            jSONObject.put("url", this.f20436e);
            jSONObject.put("web_title", this.zy);
            jSONObject.put("is_multi_process", com.byazt.ton.l.hp());
            jSONObject.put("event_tag", this.jx);
        } catch (JSONException unused) {
        }
        this.vv.hp(jSONObject);
        jl();
        com.byazt.cf.j jVar = new com.byazt.cf.j(this.f20448w, this.f20442o, this.hp, this.vv, this.cx) { // from class: com.byazt.gi.BaseLandingPageActivity.7

            /* renamed from: q, reason: collision with root package name */
            public final long f20450q = System.currentTimeMillis();

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                try {
                    BaseLandingPageActivity baseLandingPageActivity = BaseLandingPageActivity.this;
                    if (baseLandingPageActivity.f20434b != null && !baseLandingPageActivity.isFinishing()) {
                        BaseLandingPageActivity.this.f20434b.setVisibility(8);
                    }
                    if (webView != null) {
                        webView.evaluateJavascript(BaseLandingPageActivity.hp(this.f20450q), null);
                    }
                } catch (Throwable unused2) {
                }
            }
        };
        this.f20441n = jVar;
        this.ns.setWebViewClient(jVar);
        com.byazt.zn.sz.hp(this.ns, d.f21856j, mp.w(this.pu));
        this.ns.setMixedContentMode(0);
        this.ns.setWebChromeClient(new com.byazt.cf.jx(this.f20442o, this.vv) { // from class: com.byazt.gi.BaseLandingPageActivity.8
            @Override // com.byazt.cf.jx, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i2) {
                super.onProgressChanged(webView, i2);
                BaseLandingPageActivity baseLandingPageActivity = BaseLandingPageActivity.this;
                if (baseLandingPageActivity.f20434b == null || baseLandingPageActivity.isFinishing()) {
                    return;
                }
                if (i2 == 100 && BaseLandingPageActivity.this.f20434b.isShown()) {
                    BaseLandingPageActivity.this.f20434b.setVisibility(8);
                } else {
                    BaseLandingPageActivity.this.f20434b.setProgress(i2);
                }
            }
        });
        this.ns.setDownloadListener(new hp(this.lv, this.pu, this.f20448w, this.jx, this.f20440ms));
        this.ns.setVisibility(0);
        this.vv.jx(System.currentTimeMillis());
        this.ns.loadUrl(this.f20436e);
    }

    public void l(l.hp hpVar) {
        try {
            l lVar = new l(this.f20448w, this.pu.ju(), this.jx, true, com.byazt.ws.l.hp());
            this.di = lVar;
            com.byazt.jde.jx.hp(this.f20448w, this.pu, lVar);
            this.di.setDislikeInteractionCallback(hpVar);
        } catch (Exception e2) {
            u.hp(e2.getMessage());
        }
    }

    public void l(final String str) {
        Button button;
        if (TextUtils.isEmpty(str) || (button = this.wv) == null) {
            return;
        }
        button.post(new Runnable() { // from class: com.byazt.gi.BaseLandingPageActivity.9
            @Override // java.lang.Runnable
            public void run() {
                BaseLandingPageActivity baseLandingPageActivity = BaseLandingPageActivity.this;
                if (baseLandingPageActivity.wv == null || baseLandingPageActivity.isFinishing()) {
                    return;
                }
                BaseLandingPageActivity.this.wv.setText(str);
            }
        });
    }

    public void hp(int i2) {
        if (mp.j(this.pu)) {
            xh.hp((View) this.f20447v, 4);
        } else if (mp.j(this.pu)) {
            xh.hp((View) this.f20447v, i2);
        }
    }

    @Override // com.byazt.pm.w
    public void hp(boolean z2, JSONArray jSONArray) {
        if (!z2 || jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        this.f20435d = jSONArray;
        q();
    }

    public static String hp(long j2) {
        return "const existingScript = document.getElementById('" + j2 + "');if (!existingScript) {var script = document.createElement('script');script.id = '" + j2 + "';script.src = '" + ("https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/static/stylex-infra-mono/landing-sdk/index.js?t=" + System.currentTimeMillis()) + "';document.head?.appendChild(script);}";
    }
}
