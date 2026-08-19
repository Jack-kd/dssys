package com.byazt.ux;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.dnb.s;
import com.byazt.ey.jx;
import com.byazt.gog.hp;
import com.byazt.jz.EmptyView;
import com.byazt.jz.cx;
import com.byazt.jz.sz;
import com.byazt.pg.r;
import com.byazt.qk.NativeExpressView;
import com.byazt.qk.a;
import com.byazt.qk.l;
import com.byazt.qk.o;
import com.byazt.qk.w;
import com.byazt.qt.eb;
import com.byazt.qt.j;
import com.byazt.qt.k;
import com.byazt.xci.f;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import com.byazt.ymw.ud;
import com.byazt.zn.hq;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 115, 34})
/* loaded from: classes3.dex */
public class l extends com.byazt.qk.l implements r.hp {
    public static final String TAG = "TTBannerExpressAd";

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.gog.hp f26450a;

    /* renamed from: b, reason: collision with root package name */
    public a f26451b;
    public volatile View cx;

    /* renamed from: d, reason: collision with root package name */
    public boolean f26452d;
    public w di;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.gog.jx f26453e;
    public WeakReference<BannerExpressBackupView> eb;
    public com.byazt.ih.l gu;
    public hp hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.jt.l f26454j;
    public ud jl;
    public mp jx;

    /* renamed from: k, reason: collision with root package name */
    public com.byazt.cg.hp f26455k;

    /* renamed from: l, reason: collision with root package name */
    public final Context f26456l;

    /* renamed from: o, reason: collision with root package name */
    public NativeExpressView f26458o;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.qk.hp f26461w;
    public int zy;

    /* renamed from: v, reason: collision with root package name */
    public String f26460v = com.byazt.ih.l.AD_TAG_BANNER;

    /* renamed from: u, reason: collision with root package name */
    public final Queue<Long> f26459u = new LinkedList();
    public Double xs = null;
    public boolean vv = false;
    public boolean ec = false;
    public AtomicBoolean sz = new AtomicBoolean(false);

    /* renamed from: n, reason: collision with root package name */
    public AtomicBoolean f26457n = new AtomicBoolean(false);
    public AtomicBoolean ns = new AtomicBoolean(false);

    public l(Context context, mp mpVar, com.byazt.jt.l lVar) {
        this.f26452d = false;
        this.f26456l = context;
        this.jx = mpVar;
        this.f26454j = lVar;
        boolean z2 = true;
        com.byazt.rk.l.hp(mpVar, lVar, 1, getLifecycleId());
        boolean zQe = sz.l().qe();
        if (!sz.l().gi() && !zQe) {
            z2 = false;
        }
        this.f26452d = z2;
        hp(context, mpVar, lVar);
        hp(this.hp.getCurView(), this.jx, false);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void destroy() {
        super.destroy();
        s.hp(new Runnable() { // from class: com.byazt.ux.l.1
            @Override // java.lang.Runnable
            public void run() {
                hp hpVar = l.this.hp;
                if (hpVar != null) {
                    hpVar.j();
                }
            }
        });
        ud udVar = this.jl;
        if (udVar != null) {
            udVar.removeCallbacksAndMessages(null);
            this.jl = null;
        }
        mp mpVar = this.jx;
        com.byazt.zn.r.l(mpVar != null ? mpVar.nu() : 0);
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.l.jx(getLifecycleId(), 3);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public eb getDislikeDialog(Activity activity) {
        if (this.gu == null) {
            hp(activity, (com.byazt.cg.hp) null);
        }
        return this.gu;
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public j getDislikeInfo() {
        mp mpVar = this.jx;
        if (mpVar == null || mpVar.ju() == null) {
            return null;
        }
        this.jx.ju().l(this.f26460v);
        return new com.byazt.bl.hp(this.jx.ju());
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public View getExpressAdView() {
        com.byazt.kl.j.hp().hp(this.jx).hp(1);
        com.byazt.ktd.l.hp(this.jx.hp());
        return this.hp;
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

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message.what == 112201 && this.cx != null && this.cx.isShown()) {
            j();
        }
    }

    @Override // com.byazt.qk.l, com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
        if (this.ec) {
            return;
        }
        hq.hp(this.jx, d2, str, str2);
        this.ec = true;
    }

    @Override // com.byazt.qt.k
    public void registerClickableRects(JSONObject jSONObject) {
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void render() {
        com.byazt.ih.l lVar = this.gu;
        if (lVar != null) {
            lVar.setMonitorView(this.hp);
        }
        this.hp.w();
        com.byazt.kl.j.hp().hp(this.jx).hp(1);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void setDislikeCallback(Activity activity, final com.byazt.cg.hp hpVar) {
        if (hpVar == null || activity == null) {
            return;
        }
        com.byazt.cg.hp hpVar2 = new com.byazt.cg.hp(null) { // from class: com.byazt.ux.l.2
            @Override // com.byazt.cg.hp
            public void hp(int i2, String str, boolean z2) {
                com.byazt.rk.l.jx(l.this.getLifecycleId(), 1);
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
        };
        this.f26455k = hpVar2;
        hp(activity, hpVar2);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
        com.byazt.gog.hp hpVarHp = hp.C0257hp.hp(jxVar);
        this.f26450a = hpVarHp;
        l.hp hpVar = this.f24867s;
        if (hpVar != null) {
            hpVar.hp(hpVarHp);
        }
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void setExpressInteractionListener(com.byazt.qrd.l lVar) {
        com.byazt.qk.hp hpVarHp = com.byazt.qk.hp.hp(this, lVar);
        this.f26461w = hpVarHp;
        this.hp.setExpressInteractionListener(hpVarHp);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.s
    public void setPrice(Double d2) {
        this.xs = d2;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x001e A[PHI: r0
      0x001e: PHI (r0v7 int) = (r0v4 int), (r0v5 int) binds: [B:5:0x001c, B:8:0x0023] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.byazt.qk.l, com.byazt.qt.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSlideIntervalTime(int r4) {
        /*
            r3 = this;
            if (r4 > 0) goto L3
            return
        L3:
            java.lang.String r0 = "slide_banner_ad"
            r3.f26460v = r0
            com.byazt.ux.hp r0 = r3.hp
            com.byazt.qk.NativeExpressView r0 = r0.getCurView()
            com.byazt.xci.mp r1 = r3.jx
            r2 = 0
            r3.hp(r0, r1, r2)
            com.byazt.ux.hp r0 = r3.hp
            r1 = 1000(0x3e8, float:1.401E-42)
            r0.setDuration(r1)
            r0 = 30000(0x7530, float:4.2039E-41)
            if (r4 >= r0) goto L20
        L1e:
            r4 = r0
            goto L26
        L20:
            r0 = 120000(0x1d4c0, float:1.68156E-40)
            if (r4 <= r0) goto L26
            goto L1e
        L26:
            r3.zy = r4
            com.byazt.ymw.ud r4 = new com.byazt.ymw.ud
            android.os.Looper r0 = android.os.Looper.getMainLooper()
            r4.<init>(r0, r3)
            r3.jl = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ux.l.setSlideIntervalTime(int):void");
    }

    @Override // com.byazt.qt.k
    public void unRegisterRects() {
    }

    @Override // com.byazt.qt.k
    public void uploadDislikeEvent(String str) {
        com.byazt.jdb.j.l(this.jx, str);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.s
    public void win(Double d2) {
        if (this.vv) {
            return;
        }
        hq.hp(this.jx, d2);
        this.vv = true;
    }

    private void j() {
        f fVar = new f();
        fVar.eb = 2;
        sz.hp().hp(this.f26454j, fVar, 1, new com.byazt.de.hp(new cx.l() { // from class: com.byazt.ux.l.8
            @Override // com.byazt.jz.cx.l
            public void hp(int i2, String str, com.byazt.xci.l lVar) {
                l.this.l();
            }

            @Override // com.byazt.jz.cx.l
            public void hp(com.byazt.xci.hp hpVar, com.byazt.xci.l lVar) {
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(hpVar.l());
                if (copyOnWriteArrayList.isEmpty()) {
                    l.this.l();
                    return;
                }
                mp mpVar = (mp) copyOnWriteArrayList.get(0);
                l lVar2 = l.this;
                lVar2.hp.hp(mpVar, lVar2.f26454j);
                l.this.hp(mpVar);
                l.this.hp.jx();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        ud udVar = this.jl;
        if (udVar != null) {
            udVar.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        ud udVar;
        if (this.cx == null || !this.cx.isShown() || (udVar = this.jl) == null) {
            return;
        }
        udVar.removeCallbacksAndMessages(null);
        this.jl.sendEmptyMessageDelayed(112201, this.zy);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void setExpressInteractionListener(com.byazt.qrd.hp hpVar) {
        com.byazt.qk.hp hpVarHp = com.byazt.qk.hp.hp((k) this, hpVar);
        this.f26461w = hpVarHp;
        this.hp.setExpressInteractionListener(hpVarHp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(mp mpVar) {
        Queue<Long> queue = this.f26459u;
        if (queue == null || queue.size() <= 0 || mpVar == null) {
            return;
        }
        try {
            long jLongValue = this.f26459u.poll().longValue();
            if (jLongValue > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(SystemClock.elapsedRealtime() - jLongValue);
                String string = sb.toString();
                com.byazt.jdb.w wVar = new com.byazt.jdb.w(this.jx, this.f26460v);
                wVar.hp(1.0f);
                com.byazt.jdb.j.hp(string, mpVar, this.f26460v, 15, wVar.l());
            }
        } catch (Exception unused) {
        }
    }

    public void hp(Context context, mp mpVar, com.byazt.jt.l lVar) {
        if (context == null) {
            return;
        }
        this.hp = new hp(context, mpVar, lVar);
    }

    @Override // com.byazt.qk.l
    public void hp(Dialog dialog) {
        if (dialog == null) {
            u.hp("dialog is null, please check");
            return;
        }
        hp hpVar = this.hp;
        if (hpVar == null || hpVar.getCurView() == null) {
            return;
        }
        this.hp.getCurView().setOuterDislike(dialog);
    }

    private void hp(Activity activity, com.byazt.cg.hp hpVar) {
        if (this.gu == null) {
            com.byazt.ih.l lVar = new com.byazt.ih.l(activity, this.jx.ju(), this.f26460v, false, com.byazt.ws.l.hp());
            this.gu = lVar;
            com.byazt.jde.jx.hp(activity, this.jx, lVar);
        }
        com.byazt.ih.l lVar2 = this.gu;
        if (lVar2 != null) {
            lVar2.setMonitorView(this.hp);
        }
        this.gu.setDislikeInteractionCallback(hpVar);
        hp hpVar2 = this.hp;
        if (hpVar2 == null || hpVar2.getCurView() == null) {
            return;
        }
        this.hp.getCurView().setDislike(this.gu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        if (this.jx.q() == 4) {
            s.hp(new com.byazt.uid.eb("banner_express_register_download") { // from class: com.byazt.ux.l.3
                @Override // java.lang.Runnable
                public void run() {
                    if (l.this.jx.q() == 4) {
                        l lVar = l.this;
                        lVar.f26453e = com.byazt.ff.s.hp(lVar.f26456l, lVar.jx, lVar.f26460v);
                        l.this.f26453e.l();
                        l lVar2 = l.this;
                        if (lVar2.f26456l instanceof Activity) {
                            lVar2.f26453e.hp((Activity) l.this.f26456l, false);
                        }
                        if (l.this.f26451b != null) {
                            ((com.byazt.sw.hp) l.this.f26451b.hp(com.byazt.sw.hp.class)).hp(l.this.f26453e);
                        }
                        if (l.this.di != null) {
                            ((com.byazt.sw.hp) l.this.di.hp(com.byazt.sw.hp.class)).hp(l.this.f26453e);
                        }
                        l lVar3 = l.this;
                        lVar3.hp(lVar3.f26453e, l.this.f26458o);
                        l.this.f26453e.hp();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(mp mpVar) {
        if (this.hp.getNextView() == null || !this.hp.l()) {
            return;
        }
        hp(this.hp.getNextView(), mpVar.ju());
        this.ns.set(false);
        hp(this.hp.getNextView(), mpVar, true);
    }

    private void hp(NativeExpressView nativeExpressView, com.byazt.bl.l lVar) {
        if (lVar == null) {
            return;
        }
        if (this.f26455k != null) {
            this.gu.resetData(lVar);
            if (nativeExpressView != null) {
                nativeExpressView.setDislike(this.gu);
            }
        }
        if (this.f24866q != null) {
            hp(lVar);
            if (nativeExpressView != null) {
                nativeExpressView.setOuterDislike(this.f24866q);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void hp(final NativeExpressView nativeExpressView, final mp mpVar, boolean z2) {
        final EmptyView emptyView;
        if (nativeExpressView == null || mpVar == null) {
            return;
        }
        this.f26458o = nativeExpressView;
        mp mpVar2 = this.jx;
        if (mpVar2 != null) {
            com.byazt.zn.r.l(mpVar2.nu());
        }
        this.jx = mpVar;
        nativeExpressView.setBackupListener(new com.byazt.fub.jx() { // from class: com.byazt.ux.l.4
            @Override // com.byazt.fub.jx
            public boolean hp(ViewGroup viewGroup, int i2) {
                try {
                    ((NativeExpressView) viewGroup).ec();
                    BannerExpressBackupView bannerExpressBackupView = new BannerExpressBackupView(viewGroup.getContext());
                    l lVar = l.this;
                    bannerExpressBackupView.hp(lVar.jx, (NativeExpressView) viewGroup, lVar.f26453e);
                    bannerExpressBackupView.setDislikeInner(l.this.gu);
                    bannerExpressBackupView.setDislikeOuter(l.this.f24866q);
                    l lVar2 = l.this;
                    if (lVar2.jx != null) {
                        lVar2.hp(mpVar.ju());
                    }
                    l.this.eb = new WeakReference<>(bannerExpressBackupView);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
        com.byazt.jdb.j.hp(mpVar);
        EmptyView emptyViewHp = hp(nativeExpressView);
        if (emptyViewHp == null) {
            EmptyView emptyView2 = new EmptyView(this.f26456l, nativeExpressView, mpVar.ub());
            emptyView2.setAdType(1);
            emptyView2.hp(this.jx, this.f26460v);
            nativeExpressView.addView(emptyView2);
            emptyView = emptyView2;
        } else {
            emptyView = emptyViewHp;
        }
        this.cx = emptyView;
        emptyView.setCallback(new EmptyView.hp() { // from class: com.byazt.ux.l.5
            @Override // com.byazt.jz.EmptyView.hp
            public void hp(boolean z3) {
                String unused = l.this.f26460v;
                if (l.this.f26453e != null) {
                    if (z3) {
                        l.this.f26453e.l();
                    } else {
                        com.byazt.gog.jx unused2 = l.this.f26453e;
                    }
                }
                if (z3) {
                    l.this.l();
                } else {
                    l.this.jx();
                }
                l.this.hp(z3, mpVar);
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void l() {
                if (l.this.f26453e != null) {
                    l.this.f26453e.jx();
                }
                l.this.l(mpVar);
                l.this.sz.set(false);
                l.this.f26457n.set(false);
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp() {
                l.this.hp();
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp(View view, Map<String, Object> map) {
                if (l.this.f26459u != null) {
                    l.this.f26459u.offer(Long.valueOf(SystemClock.elapsedRealtime()));
                }
                Map mapHp = l.this.hp(nativeExpressView, mpVar);
                if (map != null && map.containsKey("show_send_type")) {
                    mapHp.put("show_send_type", map.get("show_send_type"));
                }
                mapHp.put("is_repeat", Boolean.valueOf(l.this.ns.get()));
                l.this.sz.set(true);
                if (!l.this.f26457n.get()) {
                    l.this.f26457n.set(true);
                    com.byazt.jdb.j.hp(mpVar, l.this.f26460v, (Map<String, Object>) mapHp, l.this.xs);
                    com.byazt.cqt.hp.hp().j();
                    mp mpVar3 = mpVar;
                    com.byazt.zn.r.hp(mpVar3 != null ? mpVar3.nu() : 0);
                }
                boolean zQk = sz.l().qk();
                boolean andSet = l.this.ns.getAndSet(true);
                com.byazt.qk.hp hpVar = l.this.f26461w;
                if (hpVar != null && (!andSet || zQk)) {
                    hpVar.l(view, mpVar.q());
                    if (mpVar.o() && mpVar.k() != null) {
                        com.byazt.sl.hp.hp().hp(l.this.f26456l, mpVar.k().l());
                    }
                }
                if (!andSet) {
                    if (view == null) {
                        view = nativeExpressView;
                    }
                    com.byazt.ktd.l.hp(mpVar, l.this.f26460v, view, mpVar.uj());
                }
                l.this.l();
                hp hpVar2 = l.this.hp;
                if (hpVar2 == null || hpVar2.getCurView() == null) {
                    return;
                }
                l.this.hp.getCurView().xs();
                l.this.hp.getCurView().v();
            }
        });
        a aVar = new a(this.f26456l, mpVar, this.f26460v, 2);
        this.f26451b = aVar;
        final com.byazt.ey.jx jxVar = (com.byazt.ey.jx) aVar.hp(com.byazt.ey.jx.class);
        jxVar.hp(new jx.hp() { // from class: com.byazt.ux.l.6
            @Override // com.byazt.ey.jx.hp
            public boolean hp() {
                jxVar.hp(emptyView);
                jxVar.hp(l.this.hp(nativeExpressView, mpVar));
                jxVar.hp(l.this.f26460v);
                jxVar.hp(l.this.xs);
                return l.this.sz.get();
            }
        });
        this.f26451b.hp(nativeExpressView);
        ((com.byazt.sw.hp) this.f26451b.hp(com.byazt.sw.hp.class)).hp(this);
        nativeExpressView.setClickListener(this.f26451b);
        w wVar = new w(this.f26456l, mpVar, this.f26460v, 2);
        this.di = wVar;
        final com.byazt.ey.jx jxVar2 = (com.byazt.ey.jx) wVar.hp(com.byazt.ey.jx.class);
        jxVar2.hp(new jx.hp() { // from class: com.byazt.ux.l.7
            @Override // com.byazt.ey.jx.hp
            public boolean hp() {
                jxVar2.hp(emptyView);
                jxVar2.hp(l.this.hp(nativeExpressView, mpVar));
                jxVar2.hp(l.this.f26460v);
                jxVar2.hp(l.this.xs);
                return l.this.sz.get();
            }
        });
        this.di.hp(nativeExpressView);
        ((com.byazt.sw.hp) this.di.hp(com.byazt.sw.hp.class)).hp(this);
        nativeExpressView.setClickCreativeListener(this.di);
        if (!this.f26452d) {
            emptyView.setNeedCheckingShow(true);
        }
        if (z2) {
            hp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> hp(NativeExpressView nativeExpressView, mp mpVar) {
        HashMap map = new HashMap();
        o.hp(map, this.jx, nativeExpressView);
        return map;
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
        l.hp hpVar = new l.hp(this.f26450a, strJ);
        this.f24867s = hpVar;
        jxVar.hp(hpVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(boolean z2, mp mpVar) {
        Queue<Long> queue = this.f26459u;
        if (queue == null) {
            return;
        }
        try {
            if (z2) {
                queue.offer(Long.valueOf(SystemClock.elapsedRealtime()));
                return;
            }
            if (queue.size() > 0) {
                long jLongValue = this.f26459u.poll().longValue();
                StringBuilder sb = new StringBuilder();
                sb.append(SystemClock.elapsedRealtime() - jLongValue);
                String string = sb.toString();
                com.byazt.jdb.w wVar = new com.byazt.jdb.w(this.jx, this.f26460v);
                wVar.hp(1.0f);
                com.byazt.jdb.j.hp(string, mpVar, this.f26460v, 13, wVar.l());
            }
        } catch (Exception unused) {
        }
    }

    private EmptyView hp(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return null;
        }
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            try {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt instanceof EmptyView) {
                    return (EmptyView) childAt;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
