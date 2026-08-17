package com.byazt.jz;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.ey.jx;
import com.byazt.hp.CreativeContainer;
import com.byazt.jz.EmptyView;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.sw.hp;
import com.byazt.xci.mp;
import com.byazt.ymw.di;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes.dex */
public class ec {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.jdb.w f21863a;

    /* renamed from: b, reason: collision with root package name */
    public View f21864b;
    public EmptyView cx;

    /* renamed from: d, reason: collision with root package name */
    public com.byazt.go.hp f21865d;
    public volatile com.byazt.go.l di;
    public com.byazt.oh.hp dy;
    public String eb;
    public com.byazt.ymw.di ec;
    public final mp hp;
    public Activity hq;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.qt.zy f21867j;
    public volatile com.byazt.gog.jx jx;

    /* renamed from: k, reason: collision with root package name */
    public ViewGroup f21868k;

    /* renamed from: l, reason: collision with root package name */
    public final Context f21869l;
    public CreativeContainer lv;

    /* renamed from: o, reason: collision with root package name */
    public volatile com.byazt.go.hp f21871o;

    /* renamed from: r, reason: collision with root package name */
    public hp f21873r;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.pt.hp f21874s;
    public com.byazt.gog.hp sz;

    /* renamed from: u, reason: collision with root package name */
    public View f21875u;
    public WeakReference<NativeVideoTsView> ud;

    /* renamed from: v, reason: collision with root package name */
    public WeakReference<ViewGroup> f21876v;
    public com.byazt.go.hp wv;
    public com.byazt.pt.hp xs;

    /* renamed from: w, reason: collision with root package name */
    public List<View> f21877w = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public Double f21872q = null;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f21866e = new AtomicBoolean(false);
    public final AtomicBoolean gu = new AtomicBoolean(false);
    public final AtomicBoolean jl = new AtomicBoolean(false);
    public final AtomicBoolean zy = new AtomicBoolean(false);
    public int vv = 5;

    /* renamed from: n, reason: collision with root package name */
    public volatile long f21870n = 0;
    public volatile boolean ns = true;
    public volatile boolean nu = false;

    @com.byazt.kj.hp(hp = {0, 1, 40, 1354})
    public static class hp implements View.OnLayoutChangeListener {
        public final com.byazt.jdb.w hp;

        /* renamed from: l, reason: collision with root package name */
        public final ViewGroup f21887l;

        public hp(com.byazt.jdb.w wVar, ViewGroup viewGroup) {
            this.hp = wVar;
            this.f21887l = viewGroup;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.hp.hp(dy.l(this.f21887l), 17);
        }
    }

    public ec(Context context, com.byazt.qt.zy zyVar, mp mpVar, String str) {
        this.eb = com.byazt.ih.l.AD_TAG_FEED;
        this.f21867j = zyVar;
        this.hp = mpVar;
        this.f21869l = context;
        this.eb = str;
        this.f21863a = new com.byazt.jdb.w(mpVar, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        com.byazt.xci.gu guVarW = w();
        if (guVarW == null) {
            return;
        }
        final float fL = guVarW.l();
        final float fJx = guVarW.jx();
        if (this.ec == null) {
            this.ec = new com.byazt.ymw.di(sz.getContext(), 1, s.u().j());
        }
        this.ec.l(this.hp.aj());
        this.ec.hp(this.hp.ki());
        this.ec.l(this.hp.sf());
        this.ec.a(this.hp.gv());
        this.ec.jx(this.hp.wj());
        this.ec.hp(this.hp.rm());
        this.ec.w(this.hp.cs());
        this.ec.hp(new di.hp() { // from class: com.byazt.jz.ec.7
            @Override // com.byazt.ymw.di.hp
            public void hp(int i2) {
                if (i2 == 1 && ec.this.ns && dy.hp(ec.this.f21868k)) {
                    com.byazt.zn.lv.hp(ec.this.f21876v, fL, fJx, ec.this.f21870n);
                }
            }
        });
        com.byazt.ymw.di diVar = this.ec;
        mp mpVar = this.hp;
        diVar.hp(mpVar != null ? mpVar.nu() : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> eb() throws JSONException {
        NativeVideoTsView nativeVideoTsView;
        HashMap map = new HashMap();
        if (this.f21877w != null) {
            JSONArray jSONArray = new JSONArray();
            for (View view : this.f21877w) {
                if (view != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("width", view.getWidth());
                        jSONObject.put("height", view.getHeight());
                        jSONObject.put("alpha", view.getAlpha());
                    } catch (Throwable unused) {
                    }
                    jSONArray.put(jSONObject);
                }
            }
            map.put("image_view", jSONArray.toString());
        }
        if (this.f21868k != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("width", this.f21868k.getWidth());
                jSONObject2.put("height", this.f21868k.getHeight());
                jSONObject2.put("alpha", this.f21868k.getAlpha());
            } catch (Throwable unused2) {
            }
            map.put("root_view", jSONObject2.toString());
        }
        WeakReference<NativeVideoTsView> weakReference = this.ud;
        if (weakReference != null && (nativeVideoTsView = weakReference.get()) != null) {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("width", nativeVideoTsView.getWidth());
                jSONObject3.put("height", nativeVideoTsView.getHeight());
                jSONObject3.put("alpha", nativeVideoTsView.getAlpha());
            } catch (JSONException unused3) {
            }
            map.put("video_view", jSONObject3.toString());
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.jx != null) {
            if (this.di != null) {
                ((com.byazt.sw.hp) this.di.hp(com.byazt.sw.hp.class)).hp(this.jx);
            }
            if (this.f21871o != null) {
                ((com.byazt.sw.hp) this.f21871o.hp(com.byazt.sw.hp.class)).hp(this.jx);
            }
            com.byazt.go.hp hpVar = this.wv;
            if (hpVar != null) {
                ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp(this.jx);
            }
            com.byazt.go.hp hpVar2 = this.f21865d;
            if (hpVar2 != null) {
                ((com.byazt.sw.hp) hpVar2.hp(com.byazt.sw.hp.class)).hp(this.jx);
            }
            try {
                this.jx.hp();
                this.jx.hp(this.sz);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        mp mpVar = this.hp;
        if (mpVar == null || mpVar.q() != 4) {
            return;
        }
        if (this.nu) {
            j();
        } else {
            this.nu = true;
            com.byazt.dnb.s.hp(new com.byazt.uid.eb("feed_register_download") { // from class: com.byazt.jz.ec.1
                @Override // java.lang.Runnable
                public void run() {
                    if (ec.this.jx == null) {
                        ec ecVar = ec.this;
                        ecVar.jx = com.byazt.ff.s.hp(ecVar.f21869l, ec.this.hp, ec.this.eb);
                    }
                    ec.this.jx.hp(ec.this.hq, false);
                    ec.this.j();
                }
            });
        }
    }

    private View l(ViewGroup viewGroup) {
        Object obj;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            Object tag = childAt.getTag();
            String string = "";
            if ((tag instanceof Map) && (obj = ((Map) tag).get("tag")) != null) {
                string = obj.toString();
            }
            if ("shake_compat".equals(string)) {
                return childAt;
            }
        }
        return null;
    }

    private com.byazt.xci.gu w() {
        mp mpVar;
        com.byazt.xci.gu guVarRo;
        if (this.vv == 5 && (mpVar = this.hp) != null && (guVarRo = mpVar.ro()) != null && guVarRo.hp() == 1) {
            return guVarRo;
        }
        return null;
    }

    public void hp(com.byazt.qt.zy zyVar) {
        this.f21867j = zyVar;
    }

    public void hp(Activity activity) {
        this.hq = activity;
        if (this.jx != null) {
            this.jx.hp(activity, false);
        }
    }

    private EmptyView jx(ViewGroup viewGroup) {
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    public void hp(View view, int i2) {
        com.byazt.qt.zy zyVar = this.f21867j;
        com.byazt.rk.l.jx(zyVar != null ? zyVar.getLifecycleId() : null);
        com.byazt.pt.hp hpVar = this.f21874s;
        if (hpVar != null) {
            hpVar.l(view, this.f21867j);
        }
    }

    public void l(View view, com.byazt.xci.e eVar) {
        if (this.di != null) {
            this.di.hp(view, eVar);
        }
    }

    public void hp(CreativeContainer creativeContainer) {
        this.lv = creativeContainer;
        if (creativeContainer == null || this.di == null) {
            return;
        }
        this.lv.setOnClickListener(this.di);
    }

    public void l() {
        hp hpVar;
        if (this.jx != null) {
            this.jx.jx();
        }
        WeakReference<ViewGroup> weakReference = this.f21876v;
        if (weakReference != null) {
            weakReference.clear();
        }
        final ViewGroup viewGroup = this.f21868k;
        final EmptyView emptyView = this.cx;
        if (viewGroup != null && emptyView != null) {
            com.byazt.ymw.e.l().post(new Runnable() { // from class: com.byazt.jz.ec.9
                @Override // java.lang.Runnable
                public void run() {
                    viewGroup.removeView(emptyView);
                }
            });
            hp hpVar2 = this.f21873r;
            if (hpVar2 != null) {
                viewGroup.removeOnLayoutChangeListener(hpVar2);
            }
        }
        final View view = this.f21864b;
        if (viewGroup != null && view != null) {
            com.byazt.ymw.e.l().post(new Runnable() { // from class: com.byazt.jz.ec.10
                @Override // java.lang.Runnable
                public void run() {
                    viewGroup.removeView(view);
                }
            });
        }
        com.byazt.ymw.di diVar = this.ec;
        if (diVar != null) {
            mp mpVar = this.hp;
            diVar.l(mpVar != null ? mpVar.nu() : 0);
        }
        mp mpVar2 = this.hp;
        com.byazt.zn.r.l(mpVar2 != null ? mpVar2.nu() : 0);
        CreativeContainer creativeContainer = this.lv;
        if (creativeContainer != null) {
            creativeContainer.setOnClickListener(null);
        }
        int i2 = this.vv;
        if (i2 == 9 && this.f21868k != null && com.byazt.rdt.hp.j(i2)) {
            com.byazt.rdt.jx.hp().l(this.f21868k.getContext(), this.hp, true);
        }
        if (viewGroup != null && (hpVar = this.f21873r) != null) {
            viewGroup.removeOnLayoutChangeListener(hpVar);
        }
        com.byazt.ymw.e.l().post(new Runnable() { // from class: com.byazt.jz.ec.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.jdb.w wVar = ec.this.f21863a;
                if (wVar != null) {
                    wVar.hp(16);
                }
            }
        });
    }

    public com.byazt.gog.jx hp() {
        return this.jx;
    }

    public void hp(final ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view, com.byazt.pt.hp hpVar, com.byazt.pt.hp hpVar2) {
        EmptyView emptyView;
        final com.byazt.pt.hp hpVar3;
        this.f21874s = hpVar;
        this.f21868k = viewGroup;
        this.f21876v = new WeakReference<>(this.f21868k);
        this.f21875u = view;
        this.xs = hpVar2;
        com.byazt.jdb.j.hp(this.hp);
        Context context = this.f21869l;
        mp mpVar = this.hp;
        String str = this.eb;
        this.wv = new com.byazt.go.hp(context, mpVar, str, ky.j(str));
        hp hpVar4 = new hp(this.f21863a, viewGroup);
        this.f21873r = hpVar4;
        viewGroup.addOnLayoutChangeListener(hpVar4);
        hp(viewGroup);
        EmptyView emptyViewJx = jx(viewGroup);
        if (emptyViewJx == null) {
            mp mpVar2 = this.hp;
            EmptyView emptyView2 = new EmptyView(this.f21869l, viewGroup, mpVar2 != null ? mpVar2.ub() : 1000) { // from class: com.byazt.jz.ec.3
                @Override // android.view.View
                public void onVisibilityChanged(View view2, int i2) {
                    super.onVisibilityChanged(view2, i2);
                    com.byazt.ymw.di diVar = ec.this.ec;
                    if (diVar == null) {
                        return;
                    }
                    try {
                        ec.this.ns = isShown();
                        if (isShown()) {
                            diVar.hp(ec.this.hp != null ? ec.this.hp.nu() : 0);
                        } else {
                            diVar.l(ec.this.hp != null ? ec.this.hp.nu() : 0);
                        }
                    } catch (Throwable unused) {
                    }
                }
            };
            emptyView2.setAdType(this.vv);
            emptyView2.hp(this.hp, this.eb);
            viewGroup.addView(emptyView2);
            emptyView = emptyView2;
        } else {
            emptyView = emptyViewJx;
        }
        emptyView.hp();
        emptyView.setRefClickViews(list2);
        emptyView.setRefCreativeViews(list3);
        emptyView.setRefDirectDownloadViews(list4);
        this.cx = emptyView;
        hp(this.wv, this.f21868k, this.f21875u, hpVar, this.xs, 3);
        this.f21877w = list;
        Context context2 = this.f21869l;
        mp mpVar3 = this.hp;
        String str2 = this.eb;
        this.di = new com.byazt.go.l(context2, mpVar3, str2, ky.j(str2));
        hp(this.di, viewGroup, view, hpVar, hpVar2, 0);
        Context context3 = this.f21869l;
        mp mpVar4 = this.hp;
        String str3 = this.eb;
        this.f21871o = new com.byazt.go.hp(context3, mpVar4, str3, ky.j(str3));
        hp(this.f21871o, viewGroup, view, hpVar, hpVar2, 1);
        if (com.byazt.ymw.zy.hp(list4)) {
            hpVar3 = hpVar;
        } else {
            Context context4 = this.f21869l;
            mp mpVar5 = this.hp;
            String str4 = this.eb;
            com.byazt.go.hp hpVar5 = new com.byazt.go.hp(context4, mpVar5, str4, ky.j(str4));
            this.f21865d = hpVar5;
            hpVar5.hp(2);
            hpVar3 = hpVar;
            hp(this.f21865d, viewGroup, view, hpVar3, hpVar2, 2);
        }
        CreativeContainer creativeContainer = this.lv;
        if (creativeContainer != null) {
            creativeContainer.setOnClickListener(this.di);
        }
        emptyView.hp(list2, this.di);
        emptyView.hp(list3, this.f21871o);
        emptyView.hp(list4, this.f21865d);
        emptyView.setCallback(new EmptyView.hp() { // from class: com.byazt.jz.ec.4
            @Override // com.byazt.jz.EmptyView.hp
            public void hp(boolean z2) {
                ec.this.f21863a.hp(dy.l(viewGroup), z2 ? 12 : 13);
                com.byazt.ymw.di diVar = ec.this.ec;
                if (diVar != null) {
                    if (z2) {
                        diVar.hp(ec.this.hp != null ? ec.this.hp.nu() : 0);
                    } else {
                        try {
                            diVar.l(ec.this.hp != null ? ec.this.hp.nu() : 0);
                        } catch (Throwable th) {
                            com.byazt.ymw.u.l("ShakeUtils", "onPause error:" + th.getMessage());
                        }
                    }
                }
                if (ec.this.vv == 9) {
                    if (z2) {
                        com.byazt.rdt.jx.hp().hp(ec.this.f21868k.getContext(), ec.this.hp, ky.o(ec.this.hp));
                    } else {
                        com.byazt.rdt.jx.hp().l(ec.this.f21868k.getContext(), ec.this.hp, true);
                    }
                }
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void l() {
                if (ec.this.jx != null) {
                    ec.this.jx.jx();
                }
                try {
                    if (ec.this.ec != null) {
                        ec.this.ec.l(ec.this.hp != null ? ec.this.hp.nu() : 0);
                    }
                } catch (Throwable th) {
                    com.byazt.ymw.u.l("ShakeUtils", "onPause error:" + th.getMessage());
                }
                ec.this.f21866e.set(false);
                ec.this.gu.set(false);
                if (ec.this.vv == 9) {
                    com.byazt.rdt.jx.hp().l(ec.this.f21868k.getContext(), ec.this.hp, true);
                }
                ec.this.f21863a.hp(dy.l(viewGroup), 15);
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp() {
                ec.this.jx();
                if (ec.this.vv == 9) {
                    com.byazt.rdt.jx.hp().hp(ec.this.f21868k.getContext(), ec.this.hp, ky.o(ec.this.hp));
                }
                ec.this.f21863a.hp(dy.l(viewGroup), 14);
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp(View view2, Map<String, Object> map) throws JSONException {
                com.byazt.sr.hp.hp(ec.this.vv, ec.this.hp);
                ec.this.jx();
                ec.this.f21863a.hp(dy.l(viewGroup), 11);
                Map mapEb = ec.this.eb();
                mapEb.put("is_repeat", Boolean.valueOf(ec.this.jl.get()));
                if (map != null && map.containsKey("show_send_type")) {
                    mapEb.put("show_send_type", map.get("show_send_type"));
                }
                mapEb.put("is_repeat", Boolean.valueOf(ec.this.jl.get()));
                ec.this.f21866e.set(true);
                if (!ec.this.gu.get()) {
                    ec.this.gu.set(true);
                    com.byazt.jdb.j.hp(ec.this.hp, ec.this.eb, (Map<String, Object>) mapEb, ec.this.f21872q);
                    com.byazt.cqt.hp.hp().j();
                    com.byazt.zn.r.hp(ec.this.hp != null ? ec.this.hp.nu() : 0);
                }
                if (hpVar3 != null) {
                    boolean zQk = sz.l().qk();
                    if (!ec.this.jl.getAndSet(true) || zQk) {
                        com.byazt.rk.l.hp(ec.this.f21867j != null ? ec.this.f21867j.getLifecycleId() : null, false);
                        hpVar3.hp(ec.this.f21867j);
                        if (ec.this.hp != null && ec.this.hp.o() && ec.this.hp.k() != null) {
                            com.byazt.sl.hp.hp().hp(ec.this.f21869l, ec.this.hp.k().l());
                        }
                    }
                    ec.this.f21870n = System.currentTimeMillis();
                    ec.this.a();
                }
                if (ec.this.dy != null) {
                    ec.this.dy.hp();
                }
                if (!ec.this.gu.get() || ec.this.zy.get()) {
                    return;
                }
                ec.this.zy.set(true);
                com.byazt.ktd.l.hp(ec.this.hp, ec.this.eb, viewGroup, ec.this.hp != null && ec.this.hp.uj());
            }
        });
        emptyView.setNeedCheckingShow(true);
        jx();
    }

    public void hp(com.byazt.oh.hp hpVar) {
        this.dy = hpVar;
    }

    public void hp(WeakReference<NativeVideoTsView> weakReference) {
        this.ud = weakReference;
    }

    private void hp(final com.byazt.go.l lVar, ViewGroup viewGroup, View view, final com.byazt.pt.hp hpVar, final com.byazt.pt.hp hpVar2, final int i2) {
        hp((com.byazt.ey.jx) lVar.hp(com.byazt.ey.jx.class));
        if (i2 != 3) {
            HashMap map = new HashMap();
            map.put("click_type", 1);
            ((com.byazt.ey.hp) lVar.hp(com.byazt.ey.hp.class)).hp(map);
        }
        lVar.hp(viewGroup);
        lVar.l(view);
        ((com.byazt.sw.hp) lVar.hp(com.byazt.sw.hp.class)).hp(this.f21867j);
        hp.InterfaceC0368hp interfaceC0368hp = new hp.InterfaceC0368hp() { // from class: com.byazt.jz.ec.5
            @Override // com.byazt.sw.hp.InterfaceC0368hp
            public void hp(View view2, int i3) {
                com.byazt.rk.l.jx(ec.this.f21867j != null ? ec.this.f21867j.getLifecycleId() : null);
                if (lVar instanceof com.byazt.go.hp) {
                    com.byazt.pt.hp hpVar3 = hpVar;
                    if (hpVar3 != null) {
                        hpVar3.l(view2, ec.this.f21867j);
                    }
                    com.byazt.pt.hp hpVar4 = hpVar2;
                    if (hpVar4 != null) {
                        hpVar4.l(view2, ec.this.f21867j);
                    }
                } else {
                    com.byazt.pt.hp hpVar5 = hpVar;
                    if (hpVar5 != null) {
                        hpVar5.hp(view2, ec.this.f21867j);
                    }
                    com.byazt.pt.hp hpVar6 = hpVar2;
                    if (hpVar6 != null) {
                        hpVar6.hp(view2, ec.this.f21867j);
                    }
                }
                if (i2 != 2 || ec.this.hp == null) {
                    return;
                }
                ec.this.hp.jx(true);
            }
        };
        ((com.byazt.sw.hp) lVar.hp(com.byazt.sw.hp.class)).hp(interfaceC0368hp);
        mp mpVar = this.hp;
        if (mpVar != null) {
            n.l(mpVar.jm(), interfaceC0368hp, hp.InterfaceC0368hp.class);
        }
    }

    public void hp(int i2) {
        this.vv = i2;
    }

    private void hp(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        View viewL = l(viewGroup);
        if (viewL != null) {
            HashMap map = new HashMap();
            map.put("tag", "shake_compat");
            map.put("click_listener", this.wv);
            try {
                viewL.setTag(2114387349, map);
            } catch (Throwable th) {
                com.byazt.ymw.u.l("ShakeUtils", "onPause error:" + th.getMessage());
                com.byazt.zn.lv.hp(2114387349, th.getMessage());
            }
            this.f21864b = viewL;
            return;
        }
        View view = new View(this.f21869l);
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.jz.ec.6
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                try {
                    if (ec.this.ec != null) {
                        ec.this.ec.l(ec.this.hp != null ? ec.this.hp.nu() : 0);
                    }
                } catch (Throwable th2) {
                    com.byazt.ymw.u.l("ShakeUtils", "onPause error:" + th2.getMessage());
                }
            }
        });
        HashMap map2 = new HashMap();
        map2.put("tag", "shake_compat");
        map2.put("click_listener", this.wv);
        try {
            view.setTag(2114387349, map2);
        } catch (Throwable th2) {
            com.byazt.ymw.u.l("ShakeUtils", "onPause error:" + th2.getMessage());
            com.byazt.zn.lv.hp(2114387349, th2.getMessage());
        }
        view.setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        viewGroup.addView(view);
        this.f21864b = view;
    }

    public void hp(final com.byazt.ey.jx jxVar) {
        jxVar.hp(new jx.hp() { // from class: com.byazt.jz.ec.8
            @Override // com.byazt.ey.jx.hp
            public boolean hp() {
                jxVar.hp(ec.this.cx);
                jxVar.hp(ec.this.eb());
                jxVar.hp(ec.this.eb);
                jxVar.hp(ec.this.f21872q);
                return ec.this.f21866e.get();
            }
        });
    }

    public void hp(com.byazt.gog.hp hpVar) {
        this.sz = hpVar;
    }

    public void hp(View view, com.byazt.xci.e eVar) {
        if (this.f21871o != null) {
            this.f21871o.hp(view, eVar);
        }
    }

    public void hp(Double d2) {
        this.f21872q = d2;
    }
}
