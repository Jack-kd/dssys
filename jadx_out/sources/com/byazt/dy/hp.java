package com.byazt.dy;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.dy.w;
import com.byazt.fjm.RecyclerView;
import com.byazt.jz.sz;
import com.byazt.jz.vv;
import com.byazt.kfd.jx;
import com.byazt.nke.b;
import com.byazt.nke.u;
import com.byazt.pg.jl;
import com.byazt.qb.jx;
import com.byazt.qk.gu;
import com.byazt.wnd.GifView;
import com.byazt.xci.e;
import com.byazt.xci.ec;
import com.byazt.xci.k;
import com.byazt.xci.mp;
import com.byazt.xci.q;
import com.byazt.ymw.hq;
import com.byazt.ymw.v;
import com.byazt.yrp.q;
import com.byazt.zn.ky;
import com.byazt.zn.r;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.common.C1244a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER, 28})
/* loaded from: classes2.dex */
public abstract class hp implements gu, j, jx, s {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.tk.hp f19355a;

    /* renamed from: b, reason: collision with root package name */
    public a f19356b;
    public FrameLayout di;
    public com.byazt.xs.jx<View> eb;
    public l ec;
    public com.byazt.nqo.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.jdb.eb f19358j;
    public String jl;
    public ViewGroup jx;

    /* renamed from: k, reason: collision with root package name */
    public JSONObject f19359k;

    /* renamed from: l, reason: collision with root package name */
    public Context f19360l;

    /* renamed from: o, reason: collision with root package name */
    public boolean f19362o;

    /* renamed from: q, reason: collision with root package name */
    public List<com.byazt.eo.jx> f19363q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.xs.jx<View> f19364s;
    public InterfaceC0214hp sz;

    /* renamed from: u, reason: collision with root package name */
    public int f19365u;

    /* renamed from: v, reason: collision with root package name */
    public int f19366v;
    public int vv;

    /* renamed from: w, reason: collision with root package name */
    public mp f19367w;
    public int xs;
    public Map<String, Object> zy;
    public boolean ns = true;
    public boolean cx = true;

    /* renamed from: n, reason: collision with root package name */
    public AtomicInteger f19361n = new AtomicInteger(2);

    /* renamed from: e, reason: collision with root package name */
    public AtomicInteger f19357e = new AtomicInteger();
    public Map<Integer, Boolean> gu = new HashMap();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER, 759})
    /* renamed from: com.byazt.dy.hp$8, reason: invalid class name */
    public class AnonymousClass8 extends com.byazt.uid.eb {
        public final /* synthetic */ com.byazt.xs.jx hp;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass8(String str, com.byazt.xs.jx jxVar) {
            super(str);
            this.hp = jxVar;
        }

        @Override // java.lang.Runnable
        public void run() throws JSONException {
            hp hpVar = hp.this;
            com.byazt.cm.l.hp(hpVar.f19367w, hpVar.f19359k, new com.byazt.cey.j() { // from class: com.byazt.dy.hp.8.1
                @Override // com.byazt.cey.j
                public void hp(boolean z2, List<mp> list, boolean z3) throws JSONException {
                    if (list == null || list.size() <= 0) {
                        if (hp.this.f19361n.get() > 0) {
                            AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                            hp.this.hp(anonymousClass8.hp);
                            hp.this.f19361n.decrementAndGet();
                            return;
                        } else {
                            InterfaceC0214hp interfaceC0214hp = hp.this.sz;
                            if (interfaceC0214hp != null) {
                                interfaceC0214hp.hp();
                                return;
                            }
                            return;
                        }
                    }
                    hp.this.f19365u = list.size();
                    hp.this.xs += list.size();
                    hp hpVar2 = hp.this;
                    hpVar2.vv = hpVar2.k();
                    mp mpVar = list.get(0);
                    if (mpVar != null) {
                        hp.this.f19359k = mpVar.el();
                    }
                    final List<com.byazt.eo.jx> listHp = hp.this.hp(list);
                    vv.a().post(new Runnable() { // from class: com.byazt.dy.hp.8.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.byazt.xs.jx jxVar = AnonymousClass8.this.hp;
                            if (jxVar == null || !(jxVar instanceof com.byazt.eo.a)) {
                                return;
                            }
                            ((com.byazt.eo.a) jxVar).l(listHp);
                        }
                    });
                }
            }, hp.this.f19367w.db());
        }
    }

    /* renamed from: com.byazt.dy.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0214hp {
        void hp();
    }

    public hp(Context context, ViewGroup viewGroup, com.byazt.jdb.eb ebVar, mp mpVar, String str, int i2) {
        this.f19360l = context;
        this.jx = viewGroup;
        this.f19358j = ebVar;
        this.f19367w = mpVar;
        this.jl = str;
        this.hp = mpVar.pc();
        a aVar = new a(this.f19360l, this.f19358j, mpVar, str, i2);
        this.f19356b = aVar;
        aVar.hp((j) this);
        this.f19356b.hp((jx) this);
        if (this.f19367w.tq() != null) {
            this.f19356b.hp((s) this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public View u() {
        this.di = new FrameLayout(this.f19360l);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(18.0f);
        gradientDrawable.setColor(Color.parseColor("#99000000"));
        gradientDrawable.setShape(0);
        this.di.setBackground(gradientDrawable);
        final GifView gifView = new GifView(this.f19360l);
        com.byazt.ws.l.hp(com.byazt.ij.jx.hp("shop_page_guide_gif.gif")).type(3).config(Bitmap.Config.RGB_565).to(new b() { // from class: com.byazt.dy.hp.5
            @Override // com.byazt.nke.b
            public void onFailed(int i2, String str, Throwable th) {
            }

            @Override // com.byazt.nke.b
            public void onSuccess(u uVar) {
                Object result = uVar.getResult();
                try {
                    if (result instanceof byte[]) {
                        if (uVar.isGif()) {
                            gifView.hp((byte[]) result, false);
                        } else {
                            gifView.setImageDrawable(com.byazt.zn.u.hp((byte[]) result, 0));
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
        int iJx = xh.jx(this.f19360l, 120.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iJx, iJx);
        layoutParams.gravity = 17;
        layoutParams.bottomMargin = xh.jx(this.f19360l, 10.0f);
        gifView.setLayoutParams(layoutParams);
        this.di.addView(gifView);
        TextView textView = new TextView(this.f19360l);
        textView.setText("需要浏览页面才能领取奖励");
        textView.setTextSize(14.0f);
        textView.setTypeface(Typeface.SERIF, 1);
        textView.setTextColor(Color.parseColor("#ffffff"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        layoutParams2.topMargin = xh.jx(this.f19360l, 70.0f);
        textView.setLayoutParams(layoutParams2);
        this.di.addView(textView);
        this.di.setOnTouchListener(new com.byazt.qb.jx(this.f19360l, new jx.hp() { // from class: com.byazt.dy.hp.6
            @Override // com.byazt.qb.jx.hp
            public void hp() {
                com.byazt.xs.jx<View> jxVar = hp.this.f19364s;
                if ((jxVar instanceof com.byazt.eo.a) && jxVar.q() != null) {
                    ((RecyclerView) hp.this.f19364s.q()).l(1);
                }
                hp hpVar = hp.this;
                hpVar.hp(hpVar.f19364s);
                hp.this.di.setVisibility(8);
                com.byazt.jdb.j.hp(hp.this.f19367w, "landingpage", "in_web_click", (com.byazt.dhy.hp) null);
            }

            @Override // com.byazt.qb.jx.hp
            public void l() {
                hp.this.di.setVisibility(8);
            }
        }, 200));
        this.di.postDelayed(new Runnable() { // from class: com.byazt.dy.hp.7
            @Override // java.lang.Runnable
            public void run() {
                hp.this.di.setVisibility(8);
            }
        }, 3000L);
        return this.di;
    }

    public abstract List<com.byazt.eo.jx> gu();

    public void jl() {
        try {
            this.f19363q = gu();
            w.hp(this.hp, new w.hp() { // from class: com.byazt.dy.hp.1
                @Override // com.byazt.dy.w.hp
                public void hp(JSONObject jSONObject) throws JSONException {
                    if (jSONObject != null) {
                        hp hpVar = hp.this;
                        hpVar.hp(jSONObject, hpVar.f19363q);
                        return;
                    }
                    hp.this.f19358j.hp(-1, "template info load fail");
                    com.byazt.tk.hp hpVar2 = hp.this.f19355a;
                    if (hpVar2 != null) {
                        hpVar2.hp(-1);
                    }
                }
            });
        } catch (Exception e2) {
            this.f19358j.hp(-3, e2.getMessage());
            com.byazt.tk.hp hpVar = this.f19355a;
            if (hpVar != null) {
                hpVar.hp(-3);
            }
        }
    }

    public int k() {
        int i2 = this.f19365u;
        int i3 = this.f19366v;
        return Math.max(i2 < i3 ? this.xs - i2 : this.xs - i3, 0);
    }

    public void v() {
        mp mpVar = this.f19367w;
        r.l(mpVar != null ? mpVar.nu() : 0);
    }

    public boolean zy() {
        com.byazt.xs.jx<T> jxVarJ;
        com.byazt.xs.jx<View> jxVar = this.eb;
        return (jxVar == null || (jxVarJ = jxVar.j("interactionWebView")) == 0 || jxVarJ.q() == null || jxVarJ.q().getVisibility() != 0) ? false : true;
    }

    public void l(boolean z2) {
        this.f19362o = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(mp mpVar, com.byazt.xs.jx jxVar) {
        String strL = ky.l(this.f19367w);
        com.byazt.go.hp hpVar = new com.byazt.go.hp(this.f19360l, mpVar, strL, ky.j(strL));
        Map<String, Object> mapW = ((com.byazt.ey.hp) hpVar.hp(com.byazt.ey.hp.class)).w();
        mapW.put("click_element_type", jxVar.nu());
        Map<String, Object> map = this.zy;
        if (map != null) {
            mapW.putAll(map);
        }
        final String strJ = mpVar.j();
        com.byazt.gog.jx jxVarL = com.byazt.ff.s.l(this.f19360l, mpVar, strL);
        ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp(jxVarL);
        hpVar.hp(null, new e());
        if (jxVarL != null) {
            jxVarL.hp(new com.byazt.gog.hp() { // from class: com.byazt.dy.hp.3
                @Override // com.byazt.gog.hp
                public void hp() {
                    com.byazt.pm.hp.hp(strJ);
                }

                @Override // com.byazt.gog.hp
                public void jx(long j2, long j3, String str, String str2) {
                    com.byazt.pm.hp.jx(strJ, j2, j3);
                }

                @Override // com.byazt.gog.hp
                public void l(long j2, long j3, String str, String str2) {
                    com.byazt.pm.hp.l(strJ, j2, j3);
                }

                @Override // com.byazt.gog.hp
                public void hp(long j2, long j3, String str, String str2) {
                    com.byazt.pm.hp.hp(strJ, j2, j3);
                }

                @Override // com.byazt.gog.hp
                public void hp(long j2, String str, String str2) {
                    com.byazt.pm.hp.l(strJ);
                }

                @Override // com.byazt.gog.hp
                public void hp(String str, String str2) {
                    com.byazt.pm.hp.jx(strJ);
                }
            });
        }
        Object obj = this.f19360l;
        if (obj instanceof com.byazt.ij.l) {
            ((com.byazt.ij.l) obj).hp(2);
        }
    }

    public void hp(com.byazt.tk.hp hpVar) {
        this.f19355a = hpVar;
    }

    public void hp(JSONObject jSONObject, List<com.byazt.eo.jx> list) throws JSONException {
        this.f19358j.l();
        this.f19356b.hp((gu) this);
        this.f19356b.hp(jSONObject, list, new eb() { // from class: com.byazt.dy.hp.4
            @Override // com.byazt.dy.eb
            public void hp(int i2, String str) {
                com.byazt.tk.hp hpVar = hp.this.f19355a;
                if (hpVar != null) {
                    hpVar.hp(i2);
                }
            }

            @Override // com.byazt.dy.eb
            public void hp(com.byazt.xs.jx<View> jxVar) {
                hp hpVar = hp.this;
                hpVar.eb = jxVar;
                hpVar.f19364s = hpVar.f19356b.hp();
                hp.this.jx.addView(jxVar.q(), new FrameLayout.LayoutParams(jxVar.lv(), jxVar.r()));
                if (hp.this.f19362o) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(xh.jx(hp.this.f19360l, 200.0f), xh.jx(hp.this.f19360l, 200.0f));
                    layoutParams.gravity = 17;
                    hp hpVar2 = hp.this;
                    hpVar2.jx.addView(hpVar2.u(), layoutParams);
                }
                com.byazt.tk.hp hpVar3 = hp.this.f19355a;
                if (hpVar3 != null) {
                    hpVar3.hp(jxVar.q());
                }
                hp hpVar4 = hp.this;
                com.byazt.jdb.j.hp(hpVar4.f19367w, hpVar4.jl, "ugeno_coin_eCommerce_page_show_success", (com.byazt.dhy.hp) null);
            }
        });
    }

    public void hp(l lVar) {
        this.ec = lVar;
        a aVar = this.f19356b;
        if (aVar != null) {
            aVar.hp(lVar);
        }
    }

    public void hp(com.byazt.xs.jx jxVar) {
        com.byazt.uid.w.l(new AnonymousClass8("shop_page", jxVar));
    }

    public List<com.byazt.eo.jx> hp(List<mp> list) throws JSONException {
        if (list == null || list.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (mp mpVar : list) {
            com.byazt.eo.jx jxVar = new com.byazt.eo.jx();
            JSONObject jSONObjectIj = mpVar.ij();
            try {
                jSONObjectIj.put("voice_btn_position", ec.xs(this.f19367w));
            } catch (JSONException unused) {
            }
            jxVar.hp(-2134548432);
            jxVar.hp(jSONObjectIj);
            arrayList.add(jxVar);
        }
        return arrayList;
    }

    private void l(mp mpVar) {
        com.byazt.qb.hp hpVarFi;
        JSONObject jSONObjectL;
        k kVarHp;
        if (mpVar == null || (hpVarFi = mpVar.fi()) == null || (jSONObjectL = hpVarFi.l()) == null || (kVarHp = k.hp(jSONObjectL)) == null) {
            return;
        }
        if (kVarHp.jx() == 0 || kVarHp.jx() == 5) {
            mpVar.hp(kVarHp);
        }
    }

    public void hp(final mp mpVar, final com.byazt.xs.jx jxVar) throws JSONException {
        if (TextUtils.equals(jxVar.nu(), C1244a.f35698z)) {
            com.byazt.xs.hp hpVarUd = jxVar.ud();
            if (hpVarUd != null) {
                com.byazt.xs.jx jxVarJ = hpVarUd.j("video_" + mpVar.hy());
                if (jxVarJ instanceof com.byazt.vp.l) {
                    com.byazt.vp.l lVar = (com.byazt.vp.l) jxVarJ;
                    if (lVar.s()) {
                        lVar.j(false);
                        if (jxVar instanceof com.byazt.qp.l) {
                            v.hp(this.f19360l, "tt_unmute", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.dy.hp.9
                                @Override // com.byazt.oxb.hp
                                public void hp(Bitmap bitmap) {
                                    ((com.byazt.qp.l) jxVar).l(new BitmapDrawable(hp.this.f19360l.getResources(), bitmap));
                                }
                            }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
                            return;
                        }
                        return;
                    }
                    lVar.j(true);
                    if (jxVar instanceof com.byazt.qp.l) {
                        v.hp(this.f19360l, "tt_mute", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.dy.hp.10
                            @Override // com.byazt.oxb.hp
                            public void hp(Bitmap bitmap) {
                                ((com.byazt.qp.l) jxVar).l(new BitmapDrawable(hp.this.f19360l.getResources(), bitmap));
                            }
                        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (this.ns) {
            if (!com.byazt.la.e.a(this.f19367w)) {
                hp(this.f19367w, this.zy);
            }
            com.byazt.jdb.j.hp(mpVar, this.jl, "ugeno_coin_eCommerce_click_content", (com.byazt.dhy.hp) null);
            com.byazt.jdb.j.hp(mpVar, this.jl, "page_click", (com.byazt.dhy.hp) null);
            this.ns = false;
        }
        l(mpVar);
        if (this instanceof com.byazt.qb.j) {
            mpVar.gu(1);
            mp mpVar2 = this.f19367w;
            if (mpVar2 != null) {
                mpVar.hp(mpVar2.pc());
            }
        }
        if (com.byazt.kfd.jx.hp((q) mpVar, true)) {
            com.byazt.kfd.jx jxVar2 = new com.byazt.kfd.jx(mpVar, mpVar.ec(), this.f19360l, new HashMap());
            jxVar2.hp(new jx.l() { // from class: com.byazt.dy.hp.11
                @Override // com.byazt.kfd.jx.l
                public void hp() {
                    vv.a().post(new Runnable() { // from class: com.byazt.dy.hp.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            mp mpVar3 = mpVar;
                            if (mpVar3 == null || mpVar3.ec() == null) {
                                return;
                            }
                            AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                            hq.hp(hp.this.f19360l, mpVar.ec().j(), 0);
                        }
                    });
                    hp.this.l(mpVar, jxVar);
                }

                @Override // com.byazt.kfd.jx.l
                public void hp(final String str, final boolean z2) {
                    vv.a().post(new Runnable() { // from class: com.byazt.dy.hp.11.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (z2 && "has_applied".equals(str)) {
                                hq.hp(hp.this.f19360l, "你已领券，快去直播间下单吧", 0);
                            } else {
                                hq.hp(hp.this.f19360l, "领券失败", 0);
                            }
                        }
                    });
                    hp.this.l(mpVar, jxVar);
                }
            });
            jxVar2.hp(new jx.hp() { // from class: com.byazt.dy.hp.2
                @Override // com.byazt.kfd.jx.hp
                public void hp() {
                }
            });
            return;
        }
        l(mpVar, jxVar);
    }

    @Override // com.byazt.dy.s
    public void l(com.byazt.xs.jx jxVar) {
        mp mpVar = this.f19367w;
        if (mpVar == null || mpVar.tq() == null) {
            return;
        }
        jxVar.l(0);
    }

    public void hp(JSONObject jSONObject) throws JSONException {
        mp mpVarHp;
        if (jSONObject == null || (mpVarHp = com.byazt.jz.hp.hp(jSONObject)) == null) {
            return;
        }
        String strL = ky.l(this.f19367w);
        HashMap map = new HashMap();
        map.put("is_slide", this.f19357e);
        com.byazt.jdb.j.hp(mpVarHp, strL, map, (Double) null);
        com.byazt.cqt.hp.hp().j();
        mp mpVar = this.f19367w;
        r.hp(mpVar != null ? mpVar.nu() : 0);
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (this.cx && this.f19357e.get() == 0) {
                return;
            }
            jSONObject2.put("is_slide", this.f19357e);
            jSONObject2.put("timestamp", System.currentTimeMillis());
            com.byazt.jdb.j.hp(mpVarHp, strL, "is_slide", jSONObject2, (com.byazt.dhy.hp) null);
        } catch (JSONException unused) {
        }
    }

    public void hp(Map<String, Object> map) {
        this.zy = map;
    }

    public void hp(InterfaceC0214hp interfaceC0214hp) {
        this.sz = interfaceC0214hp;
    }

    private void hp(mp mpVar, Map<String, Object> map) throws JSONException {
        if (mpVar == null) {
            return;
        }
        String strL = ky.l(mpVar);
        int displayDpi = ((jl) com.byazt.ym.j.getService("device_info_new")).getDisplayDpi();
        com.byazt.jdb.j.hp("click", mpVar, new q.hp().a(-1.0f).w(-1.0f).j(-1.0f).jx(-1.0f).l(-1L).hp(-1L).j(-1).w(-1).a(-1024).jx(com.byazt.jz.s.u().l() ? 1 : 2).l(displayDpi).hp(xh.a(sz.getContext())).l(xh.eb(sz.getContext())).hp(com.byazt.fy.s.l(mpVar)).hp(), strL, true, map, -1, false, false);
    }
}
