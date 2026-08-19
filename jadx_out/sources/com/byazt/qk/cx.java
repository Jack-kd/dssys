package com.byazt.qk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import com.byazt.ey.jx;
import com.byazt.gog.hp;
import com.byazt.jz.EmptyView;
import com.byazt.jz.dy;
import com.byazt.qk.l;
import com.byazt.xci.mp;
import com.byazt.xci.x;
import com.byazt.zn.hq;
import com.byazt.zn.ky;
import com.byazt.zn.r;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 64, 301})
/* loaded from: classes3.dex */
public class cx extends l {
    public static final String TAG = "TTNativeExpressAd";

    /* renamed from: a, reason: collision with root package name */
    public hp f24817a;

    /* renamed from: b, reason: collision with root package name */
    public EmptyView f24818b;

    /* renamed from: d, reason: collision with root package name */
    public int f24819d;
    public boolean di;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.ih.l f24820e;
    public com.byazt.gog.hp eb;
    public w ec;
    public com.byazt.gog.jx gu;
    public NativeExpressView hp;
    public mp jx;

    /* renamed from: l, reason: collision with root package name */
    public final Context f24823l;

    /* renamed from: n, reason: collision with root package name */
    public final FrameLayout f24824n;
    public final com.byazt.ar.w ns;

    /* renamed from: o, reason: collision with root package name */
    public final com.byazt.jdb.w f24825o;
    public a vv;

    /* renamed from: w, reason: collision with root package name */
    public WeakReference<zy> f24828w;

    /* renamed from: j, reason: collision with root package name */
    public String f24821j = com.byazt.ih.l.AD_TAG_FEED;
    public Double jl = null;
    public boolean zy = false;

    /* renamed from: k, reason: collision with root package name */
    public boolean f24822k = false;

    /* renamed from: v, reason: collision with root package name */
    public AtomicBoolean f24827v = new AtomicBoolean(false);

    /* renamed from: u, reason: collision with root package name */
    public AtomicBoolean f24826u = new AtomicBoolean(false);
    public AtomicBoolean xs = new AtomicBoolean(false);
    public volatile boolean sz = false;
    public final ViewGroup cx = new FrameLayout(com.byazt.jz.sz.getContext());
    public final hp wv = new hp() { // from class: com.byazt.qk.cx.1
        @Override // com.byazt.qk.hp
        public void hp(View view, int i2) {
            if (cx.this.f24817a != null) {
                cx.this.f24817a.hp(cx.this.cx, i2);
            }
        }

        @Override // com.byazt.qk.hp
        public void l(View view, int i2) {
            boolean zQk = com.byazt.jz.sz.l().qk();
            if (cx.this.f24817a != null && (!cx.this.xs.getAndSet(true) || zQk)) {
                cx.this.f24817a.l(cx.this.cx, i2);
                com.byazt.xci.xs xsVarK = cx.this.jx.k();
                if (cx.this.jx.o() && xsVarK != null) {
                    com.byazt.sl.hp.hp().hp(cx.this.f24823l, xsVarK.l());
                }
            }
            if (cx.this.ns == null || cx.this.ns.hp() == null) {
                return;
            }
            cx.this.ns.hp().j();
        }

        @Override // com.byazt.qk.hp
        public void hp(View view, String str, int i2) {
            if (cx.this.f24817a != null) {
                cx.this.f24817a.hp(cx.this.cx, str, i2);
            }
        }

        @Override // com.byazt.qk.hp
        public void hp(View view, float f2, float f3) {
            cx cxVar = cx.this;
            if (cxVar.hp != null && cxVar.ns != null) {
                cx cxVar2 = cx.this;
                cxVar2.hp.setEasyPlayableSender(cxVar2.ns.hp());
                cx.this.ns.hp(cx.this.hp.getEasyPlayableLayout(), cx.this.hp.getVideoContainer());
            }
            cx.this.cx.removeAllViews();
            cx.this.cx.addView(view);
            cx.this.cx.addView(cx.this.f24824n, new FrameLayout.LayoutParams((int) f2, (int) f3));
            if (cx.this.f24817a != null) {
                cx.this.f24817a.hp(cx.this.cx, f2, f3);
            }
        }
    };

    public cx(Context context, final mp mpVar, com.byazt.jt.l lVar, int i2) {
        this.di = false;
        this.f24819d = 5;
        this.f24819d = i2;
        this.f24823l = context;
        this.jx = mpVar;
        this.di = com.byazt.jz.sz.l().gi() || com.byazt.jz.sz.l().qe();
        com.byazt.rk.l.hp(mpVar, lVar, i2, getLifecycleId());
        initExpressView(context, mpVar, lVar);
        this.f24824n = new FrameLayout(context);
        this.f24825o = new com.byazt.jdb.w(this.jx, this.f24821j);
        this.ns = new com.byazt.ar.w(mpVar, new com.byazt.ar.hp() { // from class: com.byazt.qk.cx.2
            @Override // com.byazt.ar.hp
            public void hp(ViewGroup viewGroup) {
            }

            @Override // com.byazt.qk.gu
            public void j(int i3) {
            }

            @Override // com.byazt.qk.gu
            public int jx() {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    return nativeExpressView.jx();
                }
                return 0;
            }

            @Override // com.byazt.qk.gu
            public int l() {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    return nativeExpressView.l();
                }
                return 0;
            }

            @Override // com.byazt.qk.gu
            public void setPauseFromExpressView(boolean z2) {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    nativeExpressView.setPauseFromExpressView(z2);
                }
            }

            @Override // com.byazt.qk.gu
            public void w() {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    nativeExpressView.w();
                }
            }

            @Override // com.byazt.qk.gu
            public void hp(mp mpVar2) {
            }

            @Override // com.byazt.qk.gu
            public void j() {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    nativeExpressView.j();
                }
            }

            @Override // com.byazt.qk.gu
            public void hp(int i3) {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    nativeExpressView.hp(i3);
                }
            }

            @Override // com.byazt.qk.gu
            public void jx(int i3) {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    nativeExpressView.jx(i3);
                }
            }

            @Override // com.byazt.qk.gu
            public void l(int i3) {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    nativeExpressView.l(i3);
                }
            }

            @Override // com.byazt.qk.gu
            public long hp() {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    return nativeExpressView.hp();
                }
                return 0L;
            }

            @Override // com.byazt.qk.gu
            public void hp(int i3, String str) {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    nativeExpressView.hp(i3, str);
                }
            }

            @Override // com.byazt.qk.gu
            public void hp(float f2) {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    nativeExpressView.hp(f2);
                }
            }

            @Override // com.byazt.ar.hp
            public void hp(View view) {
                cx.this.wv.hp(view, mpVar.q());
                mp mpVar2 = mpVar;
                com.byazt.ar.jx.l(mpVar2, com.byazt.xci.d.eb(mpVar2), true, null);
            }

            @Override // com.byazt.ar.hp
            public void hp(View view, int i3, com.byazt.wkx.jx jxVar, x xVar) throws JSONException {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    nativeExpressView.hp(view, i3, jxVar, -1);
                }
                com.byazt.ar.jx.hp(mpVar, (com.byazt.xci.zy) xVar, false, (JSONObject) null, jxVar instanceof com.byazt.xci.b ? ((com.byazt.xci.b) jxVar).hp().optBoolean("isLottieInternalClick", false) : false);
            }

            @Override // com.byazt.ar.hp
            public void hp(View view, int i3, com.byazt.wkx.jx jxVar, int i4) throws JSONException {
                NativeExpressView nativeExpressView = cx.this.hp;
                if (nativeExpressView != null) {
                    nativeExpressView.hp(view, i3, jxVar, i4);
                }
            }
        });
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void destroy() {
        super.destroy();
        com.byazt.rk.l.jx(getLifecycleId(), 2);
        NativeExpressView nativeExpressView = this.hp;
        if (nativeExpressView != null) {
            nativeExpressView.jl();
        }
        this.f24825o.hp(dy.l(this.hp), 16);
        com.byazt.gog.jx jxVar = this.gu;
        if (jxVar != null) {
            jxVar.jx();
        }
        com.byazt.ar.w wVar = this.ns;
        if (wVar != null) {
            wVar.l();
        }
        mp mpVar = this.jx;
        r.l(mpVar != null ? mpVar.nu() : 0);
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.l.jx(getLifecycleId(), 3);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public com.byazt.qt.eb getDislikeDialog(Activity activity) {
        if (this.f24820e == null) {
            hp(activity, (com.byazt.cg.hp) null);
        }
        return this.f24820e;
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public com.byazt.qt.j getDislikeInfo() {
        mp mpVar = this.jx;
        if (mpVar == null || mpVar.ju() == null) {
            return null;
        }
        this.jx.ju().l(this.f24821j);
        return new com.byazt.bl.hp(this.jx.ju());
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public View getExpressAdView() {
        com.byazt.kl.j.hp().hp(this.jx);
        com.byazt.ktd.l.hp(this.jx.hp());
        return this.cx;
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public int getImageMode() {
        mp mpVar = this.jx;
        if (mpVar == null) {
            return -1;
        }
        return mpVar.hy();
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public int getInteractionType() {
        mp mpVar = this.jx;
        if (mpVar == null) {
            return -1;
        }
        return mpVar.q();
    }

    @Override // com.byazt.qt.k
    public String getLifecycleId() {
        mp mpVar = this.jx;
        if (mpVar != null) {
            return mpVar.di();
        }
        return null;
    }

    @Override // com.byazt.qk.l
    public mp getMaterialMeta() {
        return this.jx;
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public Map<String, Object> getMediaExtraInfo() {
        mp mpVar = this.jx;
        if (mpVar != null) {
            return mpVar.rp();
        }
        return null;
    }

    @Override // com.byazt.qt.k
    public com.byazt.qa.w getMediationManager() {
        return new com.byazt.pi.jx();
    }

    public void initExpressView(Context context, mp mpVar, com.byazt.jt.l lVar) {
        NativeExpressView nativeExpressView = new NativeExpressView(context, mpVar, lVar, this.f24821j);
        this.hp = nativeExpressView;
        this.cx.addView(nativeExpressView);
        hp(this.hp, this.jx);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
        if (this.f24822k) {
            return;
        }
        hq.hp(this.jx, d2, str, str2);
        this.f24822k = true;
    }

    @Override // com.byazt.qt.k
    public void registerClickableRects(JSONObject jSONObject) {
        NativeExpressView nativeExpressView = this.hp;
        if (nativeExpressView != null) {
            nativeExpressView.hp(jSONObject);
        }
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void render() {
        com.byazt.ih.l lVar = this.f24820e;
        if (lVar != null) {
            lVar.setMonitorView(this.hp);
        }
        this.hp.u();
        com.byazt.kl.j.hp().hp(this.jx);
    }

    public void setAdShowCallBack(final com.byazt.ey.jx jxVar) {
        jxVar.hp(new jx.hp() { // from class: com.byazt.qk.cx.7
            @Override // com.byazt.ey.jx.hp
            public boolean hp() {
                jxVar.hp(cx.this.f24818b);
                jxVar.hp(cx.this.l());
                jxVar.hp(cx.this.f24821j);
                jxVar.hp(cx.this.jl);
                return cx.this.f24827v.get();
            }
        });
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void setDislikeCallback(Activity activity, final com.byazt.cg.hp hpVar) {
        if (hpVar == null || activity == null) {
            return;
        }
        hp(activity, new com.byazt.cg.hp(null) { // from class: com.byazt.qk.cx.3
            @Override // com.byazt.cg.hp
            public void hp(int i2, String str, boolean z2) {
                com.byazt.rk.l.jx(cx.this.getLifecycleId(), 1);
                hpVar.hp(i2, str, z2);
            }

            @Override // com.byazt.cg.hp
            public void l() {
                hpVar.l();
            }

            @Override // com.byazt.cg.hp
            public void hp() {
                hpVar.hp();
            }
        });
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
        com.byazt.gog.hp hpVarHp = hp.C0257hp.hp(jxVar);
        this.eb = hpVarHp;
        l.hp hpVar = this.f24867s;
        if (hpVar != null) {
            hpVar.hp(hpVarHp);
        }
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void setExpressInteractionListener(com.byazt.qrd.l lVar) {
        this.f24817a = hp.hp(this, lVar);
        this.hp.setExpressInteractionListener(this.wv);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.s
    public void setPrice(Double d2) {
        this.jl = d2;
    }

    @Override // com.byazt.qt.k
    public void unRegisterRects() {
        NativeExpressView nativeExpressView = this.hp;
        if (nativeExpressView != null) {
            nativeExpressView.ns();
        }
    }

    @Override // com.byazt.qt.k
    public void uploadDislikeEvent(String str) {
        com.byazt.jdb.j.l(this.jx, str);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.s
    public void win(Double d2) {
        if (this.zy) {
            return;
        }
        hq.hp(this.jx, d2);
        this.zy = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> l() {
        HashMap map = new HashMap();
        o.hp(map, this.jx, this.hp);
        return map;
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void setExpressInteractionListener(com.byazt.qrd.hp hpVar) {
        this.f24817a = hp.hp((com.byazt.qt.k) this, hpVar);
        this.hp.setExpressInteractionListener(this.wv);
    }

    @Override // com.byazt.qk.l
    public void hp(Dialog dialog) {
        if (dialog == null) {
            com.byazt.ymw.u.hp("dialog is null, please check");
            return;
        }
        NativeExpressView nativeExpressView = this.hp;
        if (nativeExpressView != null) {
            nativeExpressView.setOuterDislike(dialog);
        }
    }

    private void hp(Activity activity, com.byazt.cg.hp hpVar) {
        if (this.f24820e == null) {
            com.byazt.ih.l lVar = new com.byazt.ih.l(activity, this.jx.ju(), this.f24821j, false, com.byazt.ws.l.hp());
            this.f24820e = lVar;
            com.byazt.jde.jx.hp(activity, this.jx, lVar);
        }
        com.byazt.ih.l lVar2 = this.f24820e;
        if (lVar2 != null) {
            lVar2.setMonitorView(this.hp);
        }
        this.f24820e.setDislikeInteractionCallback(hpVar);
        NativeExpressView nativeExpressView = this.hp;
        if (nativeExpressView != null) {
            nativeExpressView.setDislike(this.f24820e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        if (this.sz) {
            if (this.gu != null) {
                a aVar = this.vv;
                if (aVar != null) {
                    ((com.byazt.sw.hp) aVar.hp(com.byazt.sw.hp.class)).hp(this.gu);
                }
                w wVar = this.ec;
                if (wVar != null) {
                    ((com.byazt.sw.hp) wVar.hp(com.byazt.sw.hp.class)).hp(this.gu);
                }
                try {
                    hp(this.gu, this.hp);
                    this.gu.hp();
                    this.gu.hp(this.f24867s);
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        this.sz = true;
        if (this.jx.q() == 4) {
            com.byazt.dnb.s.hp(new com.byazt.uid.eb("native_register_download") { // from class: com.byazt.qk.cx.4
                @Override // java.lang.Runnable
                public void run() {
                    cx cxVar = cx.this;
                    cxVar.gu = com.byazt.ff.s.hp(cxVar.f24823l, cxVar.jx, cxVar.f24821j);
                    if (cx.this.vv != null) {
                        ((com.byazt.sw.hp) cx.this.vv.hp(com.byazt.sw.hp.class)).hp(cx.this.gu);
                    }
                    if (cx.this.ec != null) {
                        ((com.byazt.sw.hp) cx.this.ec.hp(com.byazt.sw.hp.class)).hp(cx.this.gu);
                    }
                    cx cxVar2 = cx.this;
                    if (cxVar2.f24823l instanceof Activity) {
                        cxVar2.gu.hp((Activity) cx.this.f24823l, false);
                    }
                    cx cxVar3 = cx.this;
                    cxVar3.hp(cxVar3.gu, cx.this.hp);
                    cx.this.gu.hp();
                    cx.this.gu.hp(cx.this.f24867s);
                }
            });
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void hp(final NativeExpressView nativeExpressView, final mp mpVar) {
        this.jx = mpVar;
        nativeExpressView.setBackupListener(new com.byazt.fub.jx() { // from class: com.byazt.qk.cx.5
            @Override // com.byazt.fub.jx
            public boolean hp(ViewGroup viewGroup, int i2) {
                try {
                    ((NativeExpressView) viewGroup).ec();
                    zy zyVar = new zy(viewGroup.getContext());
                    com.byazt.cwe.hp.hp(Integer.valueOf(mpVar.hashCode()), cx.this);
                    cx cxVar = cx.this;
                    zyVar.hp(cxVar.jx, (NativeExpressView) viewGroup, cxVar.gu);
                    zyVar.setDislikeInner(cx.this.f24820e);
                    zyVar.setDislikeOuter(cx.this.f24866q);
                    cx cxVar2 = cx.this;
                    mp mpVar2 = cxVar2.jx;
                    if (mpVar2 != null) {
                        cxVar2.hp(mpVar2.ju());
                    }
                    cx.this.f24828w = new WeakReference<>(zyVar);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
        com.byazt.jdb.j.hp(mpVar);
        EmptyView emptyViewHp = hp(nativeExpressView);
        this.f24818b = emptyViewHp;
        if (emptyViewHp == null) {
            EmptyView emptyView = new EmptyView(this.f24823l, nativeExpressView, mpVar != null ? mpVar.ub() : 1000);
            this.f24818b = emptyView;
            emptyView.setAdType(this.f24819d);
            this.f24818b.hp(this.jx, this.f24821j);
            nativeExpressView.addView(this.f24818b);
        }
        this.f24818b.setCallback(new EmptyView.hp() { // from class: com.byazt.qk.cx.6
            @Override // com.byazt.jz.EmptyView.hp
            public void hp(boolean z2) {
                Activity activity;
                WeakReference<Activity> weakReferenceHp;
                Activity activity2;
                if (cx.this.gu != null) {
                    if (z2) {
                        cx.this.gu.l();
                    } else {
                        com.byazt.gog.jx unused = cx.this.gu;
                    }
                }
                cx.this.f24825o.hp(dy.l(nativeExpressView), z2 ? 12 : 13);
                if (ky.j(cx.this.jx)) {
                    if (!z2) {
                        WeakReference<Activity> weakReferenceHp2 = com.byazt.jz.s.u().jx().hp();
                        if (weakReferenceHp2 == null || (activity = weakReferenceHp2.get()) == null) {
                            return;
                        }
                        com.byazt.rdt.jx.hp().l((Context) activity, cx.this.jx, true);
                        return;
                    }
                    if (!ky.j(cx.this.jx) || (weakReferenceHp = com.byazt.jz.s.u().jx().hp()) == null || (activity2 = weakReferenceHp.get()) == null) {
                        return;
                    }
                    com.byazt.rdt.jx jxVarHp = com.byazt.rdt.jx.hp();
                    Window window = activity2.getWindow();
                    mp mpVar2 = cx.this.jx;
                    jxVarHp.hp(window, mpVar2, ky.o(mpVar2));
                }
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void l() {
                WeakReference<Activity> weakReferenceHp;
                Activity activity;
                if (cx.this.gu != null) {
                    cx.this.gu.jx();
                }
                cx.this.f24825o.hp(dy.l(nativeExpressView), 15);
                cx.this.f24827v.set(false);
                cx.this.f24826u.set(false);
                if (!ky.j(cx.this.jx) || (weakReferenceHp = com.byazt.jz.s.u().jx().hp()) == null || (activity = weakReferenceHp.get()) == null) {
                    return;
                }
                com.byazt.rdt.jx.hp().l(activity.getWindow(), cx.this.jx, true);
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp() {
                WeakReference<Activity> weakReferenceHp;
                Activity activity;
                cx.this.hp();
                cx.this.f24825o.hp(dy.l(nativeExpressView), 14);
                if (!ky.j(cx.this.jx) || (weakReferenceHp = com.byazt.jz.s.u().jx().hp()) == null || (activity = weakReferenceHp.get()) == null) {
                    return;
                }
                com.byazt.rdt.jx jxVarHp = com.byazt.rdt.jx.hp();
                Window window = activity.getWindow();
                mp mpVar2 = cx.this.jx;
                jxVarHp.hp(window, mpVar2, ky.o(mpVar2));
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp(View view, Map<String, Object> map) {
                cx.this.hp();
                cx.this.f24825o.hp(dy.l(view), 11);
                Map mapL = cx.this.l();
                mapL.put("is_repeat", Boolean.valueOf(cx.this.xs.get()));
                if (map != null && map.containsKey("show_send_type")) {
                    mapL.put("show_send_type", map.get("show_send_type"));
                }
                mapL.put("is_repeat", Boolean.valueOf(cx.this.xs.get()));
                cx.this.f24827v.set(true);
                if (!cx.this.f24826u.get()) {
                    cx.this.f24826u.set(true);
                    mp mpVar2 = mpVar;
                    cx cxVar = cx.this;
                    com.byazt.jdb.j.hp(mpVar2, cxVar.f24821j, (Map<String, Object>) mapL, cxVar.jl);
                    com.byazt.cqt.hp.hp().j();
                    mp mpVar3 = mpVar;
                    r.hp(mpVar3 != null ? mpVar3.nu() : 0);
                }
                boolean z2 = (cx.this.f24817a == null || cx.this.xs.get()) ? false : true;
                cx.this.wv.l(view, mpVar.q());
                if (z2) {
                    if (view == null) {
                        view = cx.this.cx;
                    }
                    mp mpVar4 = mpVar;
                    com.byazt.ktd.l.hp(mpVar4, cx.this.f24821j, view, mpVar4 != null && mpVar4.uj());
                }
                NativeExpressView nativeExpressView2 = cx.this.hp;
                if (nativeExpressView2 != null) {
                    nativeExpressView2.xs();
                    cx.this.hp.v();
                }
            }
        });
        Context context = this.f24823l;
        String str = this.f24821j;
        a aVar = new a(context, mpVar, str, ky.j(str));
        this.vv = aVar;
        setAdShowCallBack((com.byazt.ey.jx) aVar.hp(com.byazt.ey.jx.class));
        this.vv.hp(nativeExpressView);
        ((com.byazt.sw.hp) this.vv.hp(com.byazt.sw.hp.class)).hp(this);
        this.hp.setClickListener(this.vv);
        Context context2 = this.f24823l;
        String str2 = this.f24821j;
        w wVar = new w(context2, mpVar, str2, ky.j(str2));
        this.ec = wVar;
        setAdShowCallBack((com.byazt.ey.jx) wVar.hp(com.byazt.ey.jx.class));
        this.ec.hp(nativeExpressView);
        ((com.byazt.sw.hp) this.ec.hp(com.byazt.sw.hp.class)).hp(this);
        this.hp.setClickCreativeListener(this.ec);
        if (this.di) {
            return;
        }
        this.f24818b.setNeedCheckingShow(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.gog.jx jxVar, NativeExpressView nativeExpressView) {
        String strJ;
        if (jxVar == null || nativeExpressView == null) {
            return;
        }
        mp mpVar = this.jx;
        if (mpVar != null) {
            strJ = mpVar.j();
        } else {
            strJ = "";
        }
        l.hp hpVar = new l.hp(this.eb, strJ);
        this.f24867s = hpVar;
        jxVar.hp(hpVar);
    }

    private EmptyView hp(ViewGroup viewGroup) {
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }
}
