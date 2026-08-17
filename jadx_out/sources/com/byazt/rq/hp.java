package com.byazt.rq;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.byazt.cx.j;
import com.byazt.ey.jx;
import com.byazt.gu.jx;
import com.byazt.gy.j;
import com.byazt.jdb.w;
import com.byazt.jz.EmptyView;
import com.byazt.jz.d;
import com.byazt.jz.n;
import com.byazt.jz.sz;
import com.byazt.pg.r;
import com.byazt.qfg.SplashClickBarBtn;
import com.byazt.qfg.TsView;
import com.byazt.qfg.q;
import com.byazt.sw.hp;
import com.byazt.vu.a;
import com.byazt.vu.eb;
import com.byazt.vu.q;
import com.byazt.vu.s;
import com.byazt.xci.dy;
import com.byazt.xci.e;
import com.byazt.xci.gd;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.nr;
import com.byazt.xci.wt;
import com.byazt.ymw.u;
import com.byazt.ymw.ud;
import com.byazt.ymw.v;
import com.byazt.zn.hp;
import com.byazt.zn.hq;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 659, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.qt.l implements r.hp, TsView.hp {

    /* renamed from: a, reason: collision with root package name */
    public View.OnTouchListener f25280a;
    public Context as;
    public eb di;
    public l eb;
    public com.byazt.jt.l fi;
    public w gd;
    public TsView hp;
    public boolean hq;

    /* renamed from: j, reason: collision with root package name */
    public SoftReference<jx> f25285j;
    public volatile com.byazt.gog.jx jx;
    public String kg;

    /* renamed from: l, reason: collision with root package name */
    public mp f25287l;

    /* renamed from: m, reason: collision with root package name */
    public float f25288m;
    public float mp;

    /* renamed from: ms, reason: collision with root package name */
    public com.byazt.kt.jx f25289ms;

    /* renamed from: n, reason: collision with root package name */
    public boolean f25290n;
    public j<q, eb> nr;
    public boolean ns;
    public com.byazt.oh.j nu;
    public com.byazt.qfg.q pc;
    public boolean qu;
    public com.byazt.ocx.hp rk;
    public Activity rv;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.mu.hp f25294s;
    public com.byazt.mu.l su;
    public s vv;

    /* renamed from: w, reason: collision with root package name */
    public volatile com.byazt.go.hp f25297w;
    public com.byazt.pjc.l wv;
    public a xs;
    public com.byazt.vu.jx yj;
    public boolean zx;

    /* renamed from: q, reason: collision with root package name */
    public AtomicBoolean f25292q = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    public final Map<String, Object> f25283e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public Double f25284f = null;
    public boolean yr = false;
    public boolean rz = false;
    public boolean gu = false;
    public int jl = 3;
    public int zy = -1;
    public final ud nd = new ud(Looper.getMainLooper(), this);

    /* renamed from: k, reason: collision with root package name */
    public boolean f25286k = false;

    /* renamed from: v, reason: collision with root package name */
    public boolean f25296v = false;

    /* renamed from: u, reason: collision with root package name */
    public long f25295u = 0;
    public Map<String, Object> ec = new HashMap();
    public AtomicBoolean sz = new AtomicBoolean(false);
    public boolean cx = true;

    /* renamed from: b, reason: collision with root package name */
    public boolean f25281b = false;
    public com.byazt.qfg.hp hd = new com.byazt.qfg.hp();

    /* renamed from: y, reason: collision with root package name */
    public boolean f25298y = false;
    public long vq = 0;
    public long ea = 5;

    /* renamed from: o, reason: collision with root package name */
    public AtomicBoolean f25291o = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    public AtomicBoolean f25282d = new AtomicBoolean(false);
    public AtomicBoolean ud = new AtomicBoolean(false);
    public boolean an = true;
    public AtomicBoolean dy = new AtomicBoolean(false);
    public int lv = -1;

    /* renamed from: r, reason: collision with root package name */
    public int f25293r = -1;
    public final AtomicBoolean pu = new AtomicBoolean(false);
    public final AtomicBoolean wt = new AtomicBoolean(false);
    public final AtomicInteger ky = new AtomicInteger(0);
    public com.byazt.xse.l xh = null;
    public boolean ru = false;
    public int tw = 0;

    @com.byazt.kj.hp(hp = {0, 1, 659, 170})
    /* renamed from: com.byazt.rq.hp$hp, reason: collision with other inner class name */
    public static class C0361hp implements hp.l {
        public mp hp;

        public C0361hp(mp mpVar) {
            this.hp = mpVar;
        }

        @Override // com.byazt.zn.hp.l
        public void onAppBackground() {
            com.byazt.jdb.j.l(this.hp, "splash_ad", "splash_enter_background", System.currentTimeMillis());
        }

        @Override // com.byazt.zn.hp.l
        public void onAppExit() {
        }

        @Override // com.byazt.zn.hp.l
        public void onAppForeground() {
            com.byazt.jdb.j.l(this.hp, "splash_ad", "splash_enter_foreground", System.currentTimeMillis());
        }

        @Override // com.byazt.zn.hp.l
        public void onAppStart() {
        }
    }

    public interface l {
        void onShow();
    }

    private void u() {
        this.qu = false;
        com.byazt.qfg.q qVar = new com.byazt.qfg.q();
        this.pc = qVar;
        qVar.hp(this.as, this.f25287l);
        if (this.hd.jx() || !v()) {
            return;
        }
        SoftReference<jx> softReference = this.f25285j;
        if (softReference == null) {
            this.pc.hp(this.kg, this.zy, this.hd, null);
        } else {
            this.pc.hp(this.kg, this.zy, this.hd, softReference.get());
        }
        this.ns = true;
        this.pc.hp(2);
        com.byazt.qfg.hp hpVar = this.hd;
        if (hpVar != null) {
            hpVar.hp(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xs() {
        if (!this.zx) {
            this.cx = false;
            return;
        }
        if (this.f25298y) {
            return;
        }
        this.f25298y = true;
        com.byazt.qfg.hp hpVar = this.hd;
        if (hpVar != null) {
            hpVar.hp();
            this.hd = null;
        }
        com.byazt.oh.j jVar = this.nu;
        if (jVar != null) {
            jVar.e();
        }
        this.f25294s = null;
        this.jx = null;
        this.rv = null;
    }

    public void a() {
    }

    public void bindDownloadAdapterToClickListener(com.byazt.gog.jx jxVar) {
        if (this.f25297w != null) {
            ((com.byazt.sw.hp) this.f25297w.hp(com.byazt.sw.hp.class)).hp(this.jx);
        }
    }

    @Override // com.byazt.qt.l
    public int getInteractionType() {
        mp mpVar = this.f25287l;
        if (mpVar == null) {
            return -1;
        }
        return mpVar.q();
    }

    @Override // com.byazt.qt.l
    public String getLifecycleId() {
        mp mpVar = this.f25287l;
        if (mpVar == null) {
            return null;
        }
        return mpVar.di();
    }

    @Override // com.byazt.qt.l
    public Map<String, Object> getMediaExtraInfo() {
        mp mpVar = this.f25287l;
        if (mpVar == null) {
            return null;
        }
        dy dyVar = mpVar.vi().get(0);
        if (dyVar == null) {
            return this.f25287l.rp();
        }
        if (!dyVar.a()) {
            return this.f25287l.rp();
        }
        String strHp = dyVar.hp();
        Map<String, Object> mapRp = this.f25287l.rp();
        mapRp.put("image_url", strHp);
        return mapRp;
    }

    @Override // com.byazt.qt.l
    public com.byazt.qa.eb getMediationManager() {
        return new com.byazt.pi.w();
    }

    @Override // com.byazt.qt.l
    public View getSplashCardView() {
        if (!this.ns || this.pc == null) {
            return null;
        }
        mp mpVar = this.f25287l;
        if (mpVar != null) {
            com.byazt.ktd.l.hp(mpVar.hp());
        }
        return this.pc.hp();
    }

    @Override // com.byazt.qt.l
    public View getSplashView() {
        return null;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) throws JSONException {
        int i2 = message.what;
        if (i2 == 1) {
            long j2 = this.vq + 1;
            this.vq = j2;
            if (j2 >= this.ea) {
                this.nd.sendEmptyMessage(2);
                return;
            } else {
                this.nd.sendEmptyMessageDelayed(1, 1000L);
                return;
            }
        }
        if (i2 != 2) {
            return;
        }
        if (!this.qu && nr.hp(this.f25287l)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("splash_card_close_type", 0);
                com.byazt.jdb.j.l(this.f25287l, "splash_ad", "splash_card_close", jSONObject);
            } catch (JSONException unused) {
            }
        }
        xs();
    }

    @Override // com.byazt.qt.l
    public void hideSkipButton() throws JSONException {
        if (!this.f25292q.getAndSet(true)) {
            com.byazt.qfg.eb.hp(2, this.f25287l, this.kg, 0);
        }
        TsView tsView = this.hp;
        if (tsView != null) {
            tsView.setSkipIconVisibility(8);
        }
    }

    public void initLifecycle(final mp mpVar, com.byazt.jt.l lVar) {
        if (mpVar == null || lVar == null) {
            return;
        }
        com.byazt.kt.jx jxVar = (com.byazt.kt.jx) com.byazt.gy.w.hp(1);
        this.f25289ms = jxVar;
        jxVar.l(getLifecycleId(), lVar.lv());
        this.f25289ms.hp(getLifecycleId(), new com.byazt.tb.j());
        if (com.byazt.un.a.hp().hp(ky.jl(mpVar))) {
            this.f25289ms.hp(getLifecycleId(), new com.byazt.un.j());
        }
        this.f25289ms.hp(getLifecycleId(), new j.hp() { // from class: com.byazt.rq.hp.1
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar2) {
                if (lVar2 instanceof com.byazt.kf.jx) {
                    com.byazt.kf.jx jxVar2 = (com.byazt.kf.jx) lVar2;
                    mp mpVar2 = mpVar;
                    jxVar2.f20629q = mpVar2;
                    if (mpVar2 != null) {
                        String strValueOf = String.valueOf(ky.zy(hp.this.f25287l));
                        jxVar2.eb = ky.jl(hp.this.f25287l);
                        jxVar2.f20630s = strValueOf;
                    }
                }
            }
        });
        eb();
    }

    public boolean isSerialRender() {
        com.byazt.vu.jx jxVar = this.yj;
        if (jxVar != null) {
            return jxVar.e();
        }
        return false;
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
        if (this.rz) {
            return;
        }
        hq.hp(this.f25287l, d2, str, str2);
        this.rz = true;
    }

    @Override // com.byazt.qfg.TsView.hp
    public void onAttachedToWindow() {
        AtomicBoolean atomicBoolean = this.ud;
        if (atomicBoolean != null && atomicBoolean.get()) {
            u.hp("开屏view重复展示");
            TsView tsView = this.hp;
            if (tsView != null && tsView.getCountDownView() != null && this.hp.getCountDownView().getView() != null) {
                this.hp.getCountDownView().getView().setVisibility(0);
            }
            l(this.f25292q.get());
        }
        this.tw = 1;
    }

    @Override // com.byazt.qfg.TsView.hp
    public void onDetachedFromWindow() throws JSONException {
        if (this.jx != null) {
            this.jx.jx();
        }
        mp mpVar = this.f25287l;
        if (mpVar != null) {
            n.hp(mpVar.n());
            n.hp(this.f25287l.jm());
        }
        mp mpVar2 = this.f25287l;
        com.byazt.zn.r.l(mpVar2 != null ? mpVar2.nu() : 0);
        com.byazt.xse.l lVar = this.xh;
        if (lVar != null) {
            lVar.hp();
        }
        com.byazt.qfg.eb.hp(1, this.f25287l, this.kg, this.tw);
    }

    @Override // com.byazt.qfg.TsView.hp
    public void onWindowFocusChanged(boolean z2) {
        com.byazt.xse.l lVar = this.xh;
        if (lVar != null) {
            lVar.hp(z2);
        }
        this.tw++;
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        mp mpVar = this.f25287l;
        if (mpVar != null) {
            n.hp(mpVar.n(), lVar, com.byazt.gu.l.class);
        }
    }

    public void setAdShowCallback(final com.byazt.ey.jx jxVar, final EmptyView emptyView) {
        jxVar.hp(new jx.hp() { // from class: com.byazt.rq.hp.11
            @Override // com.byazt.ey.jx.hp
            public boolean hp() {
                jxVar.hp(emptyView);
                jxVar.hp(hp.this.ec);
                jxVar.hp(hp.this.kg);
                jxVar.hp(hp.this.f25284f);
                return hp.this.pu.get();
            }
        });
    }

    @Override // com.byazt.qt.l
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
        if (jxVar == null) {
            return;
        }
        this.f25285j = new SoftReference<>(jxVar);
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
        this.f25284f = d2;
    }

    @Override // com.byazt.qt.l
    public void setSplashAdListener(com.byazt.mu.hp hpVar) {
        this.f25294s = hpVar;
    }

    @Override // com.byazt.qt.l
    public void setSplashCardListener(com.byazt.mu.l lVar) {
        this.su = lVar;
        com.byazt.qfg.hp hpVar = this.hd;
        if (hpVar != null) {
            hpVar.hp(lVar);
        }
    }

    @Override // com.byazt.qt.l
    public void showSplashCardView(ViewGroup viewGroup, Activity activity) {
        this.rv = activity;
        hp(viewGroup);
    }

    @Override // com.byazt.qt.l
    public void showSplashView(ViewGroup viewGroup) {
    }

    public void syncCallbackStatus(int i2) {
        this.lv = i2;
    }

    public synchronized void updateSplashResourceModel(s sVar, boolean z2) {
        if (this.vv == null || !z2) {
            this.vv = sVar;
            if (sVar != null) {
                updateSplashVideoFlag(sVar.w());
                this.wv = sVar.j();
            }
        }
    }

    public void updateSplashVideoFlag(boolean z2) {
        try {
            this.hq = z2;
            e();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.qt.l
    public PluginValueSet values() {
        return com.byazt.xi.hp.hp(super.values()).hp(1, d.f21856j).l();
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
        if (this.yr) {
            return;
        }
        hq.hp(this.f25287l, d2);
        this.yr = true;
    }

    private void e() {
        if (!this.hq || this.hp == null) {
            return;
        }
        mp mpVar = this.f25287l;
        if (mpVar != null && mpVar.uf() != null && this.f25287l.uf().l() == 0) {
            this.hp.setVideoViewVisibility(8);
        } else {
            this.hp.setVideoViewVisibility(0);
            this.hp.setVoiceViewListener(new View.OnClickListener() { // from class: com.byazt.rq.hp.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    v.hp(hp.this.as, hp.this.an ? "tt_splash_unmute" : "tt_splash_mute", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.rq.hp.6.1
                        @Override // com.byazt.oxb.hp
                        public void hp(Bitmap bitmap) {
                            hp.this.hp.setVoiceViewImageDrawable(new BitmapDrawable(hp.this.as.getResources(), bitmap));
                        }
                    }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
                    hp.this.an = !r4.an;
                    hp hpVar = hp.this;
                    com.byazt.oh.j jVar = hpVar.nu;
                    if (jVar != null) {
                        jVar.l(hpVar.an);
                    }
                }
            });
        }
    }

    private void gu() {
        EmptyView emptyView = new EmptyView(this.as, this.hp, this.f25287l.ub());
        emptyView.hp(this.f25287l, this.kg);
        emptyView.setAdType(3);
        this.hp.addView(emptyView);
        emptyView.setCallback(new EmptyView.hp() { // from class: com.byazt.rq.hp.7

            /* renamed from: l, reason: collision with root package name */
            public volatile boolean f25304l = false;

            private void jx() {
                boolean z2 = true;
                if (!this.f25304l) {
                    this.f25304l = true;
                    if (hp.this.f25287l.q() == 4) {
                        com.byazt.dnb.s.hp(new com.byazt.uid.eb("splash_register_download") { // from class: com.byazt.rq.hp.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                hp hpVar = hp.this;
                                hpVar.j(hd.hp(hpVar.f25287l) != 1);
                            }
                        });
                        return;
                    }
                    return;
                }
                if (hp.this.jx != null) {
                    try {
                        hp.this.jx.hp();
                        hp hpVar = hp.this;
                        if (hd.hp(hpVar.f25287l) == 1) {
                            z2 = false;
                        }
                        hpVar.w(z2);
                    } catch (Exception unused) {
                    }
                }
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp(boolean z2) {
                if (hp.this.jx != null) {
                    if (z2) {
                        hp.this.jx.l();
                    } else {
                        com.byazt.gog.jx jxVar = hp.this.jx;
                    }
                }
                hp.this.l(z2 ? 12 : 13);
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void l() {
                hp.this.l(15);
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp() {
                jx();
                hp.this.l(14);
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp(View view, Map<String, Object> map) {
                boolean andSet;
                a aVar;
                hp hpVar = hp.this;
                hpVar.jx(hpVar.sz.get());
                jx();
                hp.this.l(11);
                hp.this.f25295u = System.currentTimeMillis();
                l lVar = hp.this.eb;
                if (lVar != null) {
                    lVar.onShow();
                }
                hp hpVar2 = hp.this;
                mp mpVar = hpVar2.f25287l;
                if (mpVar != null && (aVar = hpVar2.xs) != null) {
                    mpVar.e(aVar.w());
                    hp.this.ec.put("cache_type", Integer.valueOf(sz.l().s(ky.zy(hp.this.f25287l))));
                    hp hpVar3 = hp.this;
                    hpVar3.ec.put("splash_show_time_type", Integer.valueOf(hpVar3.f25293r));
                }
                if (map != null && map.containsKey("show_send_type")) {
                    hp.this.ec.put("show_send_type", map.get("show_send_type"));
                }
                hp hpVar4 = hp.this;
                hpVar4.ec.put("is_repeat", Boolean.valueOf(hpVar4.sz.get()));
                hp.this.pu.set(true);
                boolean z2 = false;
                if (!hp.this.wt.get()) {
                    hp.this.wt.set(true);
                    hp hpVar5 = hp.this;
                    mp mpVar2 = hpVar5.f25287l;
                    String str = hpVar5.kg;
                    hp hpVar6 = hp.this;
                    com.byazt.jdb.j.hp(mpVar2, str, hpVar6.ec, hpVar6.f25284f);
                    com.byazt.cqt.hp.hp().j();
                    mp mpVar3 = hp.this.f25287l;
                    com.byazt.zn.r.hp(mpVar3 != null ? mpVar3.nu() : 0);
                }
                hp.this.k();
                if (!hp.this.ru) {
                    hp.this.zy();
                }
                hp hpVar7 = hp.this;
                hpVar7.l(hpVar7.f25292q.get());
                boolean zQk = sz.l().qk();
                hp hpVar8 = hp.this;
                if (hpVar8.f25294s != null && (!(andSet = hpVar8.sz.getAndSet(true)) || zQk)) {
                    hp hpVar9 = hp.this;
                    hpVar9.f25294s.hp(hpVar9);
                    mp mpVar4 = hp.this.f25287l;
                    if (mpVar4 != null && mpVar4.o() && hp.this.f25287l.k() != null) {
                        com.byazt.sl.hp.hp().hp(hp.this.as, hp.this.f25287l.k().l());
                    }
                    if (!andSet) {
                        if (view == null) {
                            view = hp.this.hp;
                        }
                        if (view != null) {
                            hp hpVar10 = hp.this;
                            mp mpVar5 = hpVar10.f25287l;
                            String str2 = hpVar10.kg;
                            mp mpVar6 = hp.this.f25287l;
                            if (mpVar6 != null && mpVar6.uj()) {
                                z2 = true;
                            }
                            com.byazt.ktd.l.hp(mpVar5, str2, view, z2);
                        }
                    }
                }
                hp.this.jl();
                hp.this.ud.set(true);
                TsView tsView = hp.this.hp;
                if (tsView != null) {
                    tsView.setIsShowSuccess(true);
                }
                hp.this.hp(true);
            }
        });
        if (!this.ru) {
            emptyView.setNeedCheckingShow(true);
        }
        this.f25283e.put("splash_show_type", Integer.valueOf(this.zy));
        this.f25297w = new com.byazt.go.hp(this.as, this.f25287l, this.kg, 4) { // from class: com.byazt.rq.hp.8
            @Override // com.byazt.go.l, com.byazt.go.j
            public void hp(View view, e eVar) {
                if ((view instanceof SplashClickBarBtn) && hp.this.gu) {
                    return;
                }
                super.hp(view, eVar);
            }
        };
        ((com.byazt.sw.hp) this.f25297w.hp(com.byazt.sw.hp.class)).hp(this);
        ((com.byazt.ey.hp) this.f25297w.hp(com.byazt.ey.hp.class)).hp(this.f25283e);
        setAdShowCallback((com.byazt.ey.jx) this.f25297w.hp(com.byazt.ey.jx.class), emptyView);
        this.f25297w.l(this.hp.getDislikeView());
        hp.InterfaceC0368hp interfaceC0368hp = new hp.InterfaceC0368hp() { // from class: com.byazt.rq.hp.9
            @Override // com.byazt.sw.hp.InterfaceC0368hp
            public void hp(View view, int i2) {
                hp.this.q();
                hp hpVar = hp.this;
                com.byazt.jdb.j.l(hpVar.f25295u, hpVar.f25287l);
                hp hpVar2 = hp.this;
                com.byazt.mu.hp hpVar3 = hpVar2.f25294s;
                if (hpVar3 != null) {
                    hpVar3.l(hpVar2);
                }
                hp.this.l();
                hp.this.a();
            }
        };
        ((com.byazt.sw.hp) this.f25297w.hp(com.byazt.sw.hp.class)).hp(interfaceC0368hp);
        mp mpVar = this.f25287l;
        if (mpVar != null) {
            n.l(mpVar.jm(), interfaceC0368hp, hp.InterfaceC0368hp.class);
        }
        this.hp.setSkipListener(new View.OnClickListener() { // from class: com.byazt.rq.hp.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                hp.this.hp();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jl() {
        com.byazt.jz.s.u().jx().jx(new C0361hp(this.f25287l));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        TsView tsView = this.hp;
        if (tsView != null) {
            tsView.hp(this.f25287l.fu(), this.f25297w);
            if (hd.hp(this.f25287l) == 1) {
                jx();
            }
        }
    }

    private boolean v() {
        return (!nr.hp(this.f25287l) || this.f25286k || this.f25296v || this.f25290n) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zy() {
        TsView tsView = this.hp;
        if (tsView != null && tsView.getChildCount() > 0) {
            for (int i2 = 0; i2 < this.hp.getChildCount(); i2++) {
                View childAt = this.hp.getChildAt(i2);
                if (childAt != null && (childAt instanceof EmptyView)) {
                    this.hp.removeView(childAt);
                    return;
                }
            }
        }
    }

    public void eb() {
        com.byazt.kt.jx jxVar = this.f25289ms;
        if (jxVar != null) {
            jxVar.hp(getLifecycleId(), com.byazt.np.jx.CREATED);
        }
    }

    public void q() {
        com.byazt.kt.jx jxVar = this.f25289ms;
        if (jxVar != null) {
            jxVar.hp(getLifecycleId(), com.byazt.np.jx.CLICKED);
        }
    }

    public void s() {
        com.byazt.kt.jx jxVar = this.f25289ms;
        if (jxVar != null) {
            jxVar.hp(getLifecycleId(), com.byazt.np.jx.STARTED);
        }
    }

    public void w() {
        com.byazt.jz.s.u().e(true);
        com.byazt.zn.hp hpVarJx = com.byazt.jz.s.u().jx();
        if (hpVarJx == null) {
            return;
        }
        hpVarJx.jx((hp.l) null);
    }

    public void j() {
        u();
        com.byazt.jdb.j.l(this.f25295u, this.f25287l);
        com.byazt.rk.l.jx(getLifecycleId(), 1);
        com.byazt.mu.hp hpVar = this.f25294s;
        if (hpVar != null && !this.gu) {
            this.gu = true;
            hpVar.hp(this, 2);
            hp(false);
        }
        w();
    }

    public void jx() {
        wt wtVarSh;
        mp mpVar = this.f25287l;
        if (mpVar == null || (wtVarSh = mpVar.sh()) == null || wtVarSh.q() != 5) {
            return;
        }
        final int iV = wtVarSh.v();
        final wt.hp hpVarK = wtVarSh.k();
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.byazt.rq.hp.13
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int iJ = xh.j(hp.this.as, view.getWidth());
                int iJ2 = xh.j(hp.this.as, view.getHeight());
                int iJ3 = xh.j(hp.this.as, motionEvent.getX());
                int iJ4 = xh.j(hp.this.as, motionEvent.getY());
                boolean z2 = iJ3 >= hpVarK.hp() && iJ4 >= hpVarK.jx() && iJ - iJ3 >= hpVarK.l() && iJ2 - iJ4 >= hpVarK.j();
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action != 1) {
                        if (action == 2) {
                            hp.this.f25288m = motionEvent.getY();
                        }
                    } else {
                        if (!z2) {
                            return false;
                        }
                        hp.this.f25288m = motionEvent.getY();
                        int iJ5 = xh.j(hp.this.as, Math.abs(hp.this.f25288m - hp.this.mp));
                        if (hp.this.f25288m - hp.this.mp < 0.0f && iJ5 > iV && hp.this.f25297w != null) {
                            hp hpVar = hp.this;
                            if (hpVar.hp != null) {
                                hpVar.f25297w.onClick(hp.this.hp);
                            }
                        }
                    }
                } else {
                    if (!z2) {
                        return false;
                    }
                    hp.this.mp = motionEvent.getY();
                }
                return true;
            }
        };
        this.f25280a = onTouchListener;
        TsView tsView = this.hp;
        if (tsView != null) {
            tsView.setSlideUpTouchListener(onTouchListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2) {
        this.gd.hp(1.0f, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(final boolean z2) {
        final String strJ = this.f25287l.j();
        this.jx.hp(new com.byazt.gog.hp() { // from class: com.byazt.rq.hp.3
            @Override // com.byazt.gog.hp
            public void hp() {
                SoftReference<com.byazt.gu.jx> softReference = hp.this.f25285j;
                if (softReference != null && softReference.get() != null) {
                    hp.this.f25285j.get().hp();
                }
                if (z2) {
                    com.byazt.pm.hp.hp(strJ);
                }
            }

            @Override // com.byazt.gog.hp
            public void jx(long j2, long j3, String str, String str2) {
                long j4;
                long j5;
                SoftReference<com.byazt.gu.jx> softReference = hp.this.f25285j;
                if (softReference == null || softReference.get() == null) {
                    j4 = j2;
                    j5 = j3;
                } else {
                    j4 = j2;
                    j5 = j3;
                    hp.this.f25285j.get().jx(j4, j5, str, str2);
                }
                if (!z2 || j4 <= 0) {
                    return;
                }
                com.byazt.pm.hp.jx(strJ, j4, j5);
            }

            @Override // com.byazt.gog.hp
            public void l(long j2, long j3, String str, String str2) {
                long j4;
                long j5;
                SoftReference<com.byazt.gu.jx> softReference = hp.this.f25285j;
                if (softReference == null || softReference.get() == null) {
                    j4 = j2;
                    j5 = j3;
                } else {
                    j4 = j2;
                    j5 = j3;
                    hp.this.f25285j.get().l(j4, j5, str, str2);
                }
                if (!z2 || j4 <= 0) {
                    return;
                }
                com.byazt.pm.hp.l(strJ, j4, j5);
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, long j3, String str, String str2) {
                long j4;
                long j5;
                SoftReference<com.byazt.gu.jx> softReference = hp.this.f25285j;
                if (softReference == null || softReference.get() == null) {
                    j4 = j2;
                    j5 = j3;
                } else {
                    j4 = j2;
                    j5 = j3;
                    hp.this.f25285j.get().hp(j4, j5, str, str2);
                }
                if (!z2 || j4 <= 0) {
                    return;
                }
                com.byazt.pm.hp.hp(strJ, j4, j5);
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, String str, String str2) {
                SoftReference<com.byazt.gu.jx> softReference = hp.this.f25285j;
                if (softReference != null && softReference.get() != null) {
                    hp.this.f25285j.get().hp(j2, str, str2);
                }
                if (z2) {
                    com.byazt.pm.hp.l(strJ);
                }
            }

            @Override // com.byazt.gog.hp
            public void hp(String str, String str2) {
                SoftReference<com.byazt.gu.jx> softReference = hp.this.f25285j;
                if (softReference != null && softReference.get() != null) {
                    hp.this.f25285j.get().hp(str, str2);
                }
                if (z2) {
                    com.byazt.pm.hp.jx(strJ);
                }
            }
        });
    }

    public void hp(com.byazt.vu.jx jxVar, com.byazt.cx.j<q, eb> jVar, com.byazt.ocx.hp hpVar) {
        if (jxVar == null || jVar == null) {
            return;
        }
        this.yj = jxVar;
        this.rk = hpVar;
        this.dy.set(jxVar.q());
        this.nr = jVar;
        eb ebVar = new eb();
        this.di = ebVar;
        ebVar.l(jxVar.q());
        this.di.hp(jxVar.l());
        this.di.hp(this);
        this.as = jxVar.getContext();
        this.kg = jxVar.a();
        this.xs = jxVar.j();
        boolean z2 = true;
        updateSplashResourceModel(jxVar.w(), true);
        this.fi = jxVar.eb();
        a aVar = this.xs;
        mp mpVarL = aVar == null ? null : aVar.l();
        this.f25287l = mpVarL;
        this.gd = new w(mpVarL, this.kg);
        boolean zQe = sz.l().qe();
        if (!sz.l().gi() && !zQe) {
            z2 = false;
        }
        this.ru = z2;
    }

    public void l() {
        this.nd.postDelayed(new Runnable() { // from class: com.byazt.rq.hp.12
            @Override // java.lang.Runnable
            public void run() {
                hp.this.f25286k = true;
                if (!com.byazt.zbc.a.hp) {
                    if (hp.this.pc != null) {
                        hp.this.pc.l();
                    }
                } else {
                    com.byazt.zbc.a.hp = false;
                    if (hp.this.jx instanceof com.byazt.fy.hp) {
                        ((com.byazt.fy.hp) hp.this.jx).s().hp(new com.byazt.cb.hp() { // from class: com.byazt.rq.hp.12.1
                            @Override // com.byazt.cb.hp
                            public void hp() {
                            }

                            @Override // com.byazt.cb.hp
                            public void jx() {
                                if (hp.this.pc != null) {
                                    hp.this.pc.l();
                                }
                            }

                            @Override // com.byazt.cb.hp
                            public void l() {
                            }
                        });
                    }
                }
            }
        }, 100L);
    }

    public void l(boolean z2) {
        if (z2 || this.hp == null) {
            return;
        }
        if (this.ky.get() == 2 && gd.hp(this.f25287l)) {
            com.byazt.xse.l lVar = this.xh;
            if (lVar != null) {
                lVar.l();
                return;
            }
            return;
        }
        com.byazt.xse.j countDownView = this.hp.getCountDownView();
        if (countDownView != null) {
            countDownView.setCountdownListener(new com.byazt.xse.hp() { // from class: com.byazt.rq.hp.2
                @Override // com.byazt.xse.hp
                public void hp() {
                    hp.this.j();
                }
            });
            countDownView.hp(false);
            countDownView.hp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(boolean z2) {
        TsView tsView;
        Context context;
        this.jx = com.byazt.ff.s.hp(this.as, this.f25287l, this.kg);
        w(z2);
        bindDownloadAdapterToClickListener(this.jx);
        if (this.jx != null) {
            this.jx.hp();
        }
        if (this.jx == null || (tsView = this.hp) == null || tsView.getParent() == null) {
            return;
        }
        try {
            context = ((View) this.hp.getParent()).getContext();
        } catch (Exception unused) {
            context = null;
        }
        if (context instanceof Activity) {
            this.jx.hp((Activity) context, false);
        }
    }

    public void jx(final boolean z2) {
        com.byazt.kt.jx jxVar = this.f25289ms;
        if (jxVar != null) {
            jxVar.hp(getLifecycleId(), new j.hp() { // from class: com.byazt.rq.hp.5
                @Override // com.byazt.gy.j.hp
                public void hp(com.byazt.gy.l lVar) {
                    if (lVar instanceof com.byazt.kf.jx) {
                        ((com.byazt.kf.jx) lVar).f22021j = z2;
                    }
                }
            });
            this.f25289ms.hp(getLifecycleId(), com.byazt.np.jx.SHOWED);
        }
    }

    public void hp(com.byazt.cx.j<q, eb> jVar) {
        if (this.xs == null) {
            this.di.l(3);
            this.di.hp("render splash ad model is null");
            jVar.hp(this.di);
            return;
        }
        if (this.vv == null) {
            this.di.l(3);
            this.di.hp("render splash material is null");
            jVar.hp(this.di);
            return;
        }
        if (this.f25287l == null) {
            return;
        }
        try {
            this.gu = false;
            TsView tsView = new TsView(this.as, this.kg, this.f25287l);
            this.hp = tsView;
            tsView.setAttachedToWindowListener(this);
            e();
            this.hp.setCountDownViewPosition(this.f25287l);
            if (this.f25287l.ad() == 0) {
                TsView tsView2 = this.hp;
                if (tsView2 != null) {
                    tsView2.setAdlogoViewVisibility(8);
                }
            } else {
                TsView tsView3 = this.hp;
                if (tsView3 != null) {
                    tsView3.setAdlogoViewVisibility(0);
                }
            }
            if (this.f25287l.lz() <= 0) {
                hp(3);
            } else {
                int iLz = this.f25287l.lz();
                this.jl = iLz;
                hp(iLz);
            }
            hp(this.f25287l);
            gu();
        } catch (ArrayIndexOutOfBoundsException e2) {
            u.l("sbr", e2.getMessage());
        }
    }

    private void hp(int i2) {
        TsView tsView = this.hp;
        if (tsView != null) {
            tsView.setCountDownTime(i2);
        }
    }

    private void hp(mp mpVar) {
        TsView tsView;
        if (mpVar == null || (tsView = this.hp) == null) {
            return;
        }
        tsView.hp(mpVar);
    }

    public void hp(boolean z2) {
        com.byazt.ocx.hp hpVar = this.rk;
        if (hpVar != null) {
            hpVar.hp(this.nr, this.f25287l, this.fi, z2);
        }
    }

    public void hp() {
        com.byazt.rk.l.jx(getLifecycleId(), 1);
        if (!this.f25296v) {
            this.f25296v = true;
            this.gu = true;
            if (!TextUtils.isEmpty(this.f25287l.w_())) {
                com.byazt.jdb.j.hp(this.f25295u > 0 ? System.currentTimeMillis() - this.f25295u : 0L, this.f25287l);
            }
            u();
            com.byazt.jdb.j.l(this.f25295u, this.f25287l);
            hp(false);
            w();
        }
        com.byazt.mu.hp hpVar = this.f25294s;
        if (hpVar != null) {
            hpVar.hp(this, 1);
        }
    }

    private void hp(ViewGroup viewGroup) {
        TsView tsView;
        if (!this.ns || (tsView = this.hp) == null || this.f25287l == null || this.pc == null || this.zx) {
            return;
        }
        ViewParent parent = tsView.getParent();
        this.zx = true;
        ViewGroup viewGroupHp = this.pc.hp();
        if (viewGroupHp == null) {
            return;
        }
        com.byazt.oh.j jVar = this.nu;
        if (jVar != null) {
            jVar.a();
        }
        if (viewGroupHp.getParent() != null) {
            ((ViewGroup) viewGroupHp.getParent()).removeView(viewGroupHp);
        }
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).addView(viewGroupHp);
            xh.s(this.hp);
            this.hp.removeAllViews();
            this.hp = null;
        }
        viewGroupHp.setOnClickListener(null);
        viewGroupHp.setOnTouchListener(null);
        if (this.f25281b) {
            com.byazt.oh.j jVar2 = this.nu;
            if (jVar2 != null) {
                jVar2.e();
            }
            this.nu = null;
        }
        this.pc.hp(this.nu, new q.hp() { // from class: com.byazt.rq.hp.4
            @Override // com.byazt.qfg.q.hp
            public Context getActivity() {
                return hp.this.rv;
            }

            @Override // com.byazt.qfg.q.hp
            public void hp(long j2) {
                hp.this.nd.removeMessages(1);
                if (j2 < 0) {
                    hp.this.nd.sendEmptyMessageDelayed(1, 1000L);
                } else {
                    if (j2 == 0) {
                        hp.this.nd.sendEmptyMessage(2);
                        return;
                    }
                    hp.this.ea = j2;
                    hp.this.vq = 0L;
                    hp.this.nd.sendEmptyMessageDelayed(1, 1000L);
                }
            }

            @Override // com.byazt.qfg.q.hp
            public void l() {
                hp.this.qu = true;
                hp.this.xs();
            }

            @Override // com.byazt.qfg.q.hp
            public void hp() {
                hp.this.nd.removeMessages(1);
            }
        });
    }
}
