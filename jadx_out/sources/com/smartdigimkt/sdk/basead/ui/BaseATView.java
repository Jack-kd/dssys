package com.smartdigimkt.sdk.basead.ui;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.smartdigimkt.a0.e;
import com.smartdigimkt.a0.k;
import com.smartdigimkt.c2.d;
import com.smartdigimkt.h2.g0;
import com.smartdigimkt.h2.h0;
import com.smartdigimkt.i0.l;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.o1.b;
import com.smartdigimkt.p1.u;
import com.smartdigimkt.r2.n;
import com.smartdigimkt.r2.o;
import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.sdk.basead.ui.h5template.WTWebViewSplashATView;
import com.smartdigimkt.u1.c;
import com.smartdigimkt.v1.b3;
import com.smartdigimkt.v1.r;
import com.smartdigimkt.v1.s;
import com.smartdigimkt.v1.v;
import com.smartdigimkt.v1.w;
import com.smartdigimkt.v1.z;
import com.smartdigimkt.y3.h;
import com.smartdigimkt.z.p;
import com.smartdigimkt.z.x;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class BaseATView extends RelativeLayout implements g0 {

    /* renamed from: D, reason: collision with root package name */
    public static final /* synthetic */ int f43211D = 0;

    /* renamed from: A, reason: collision with root package name */
    public final c f43212A;

    /* renamed from: B, reason: collision with root package name */
    public final w f43213B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f43214C;

    /* renamed from: a, reason: collision with root package name */
    public final String f43215a;

    /* renamed from: b, reason: collision with root package name */
    public final a f43216b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f43217c;

    /* renamed from: d, reason: collision with root package name */
    public com.smartdigimkt.a4.c f43218d;

    /* renamed from: e, reason: collision with root package name */
    public x f43219e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f43220f;

    /* renamed from: g, reason: collision with root package name */
    public volatile boolean f43221g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f43222h;

    /* renamed from: i, reason: collision with root package name */
    public final String f43223i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f43224j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f43225k;

    /* renamed from: l, reason: collision with root package name */
    public View f43226l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f43227m;

    /* renamed from: n, reason: collision with root package name */
    public View f43228n;

    /* renamed from: o, reason: collision with root package name */
    public d f43229o;

    /* renamed from: p, reason: collision with root package name */
    public r f43230p;

    /* renamed from: q, reason: collision with root package name */
    public h0 f43231q;

    /* renamed from: r, reason: collision with root package name */
    public final v f43232r;

    /* renamed from: s, reason: collision with root package name */
    public final com.smartdigimkt.v1.x f43233s;

    /* renamed from: t, reason: collision with root package name */
    public final o f43234t;

    /* renamed from: u, reason: collision with root package name */
    public MCView f43235u;

    /* renamed from: v, reason: collision with root package name */
    public long f43236v;

    /* renamed from: w, reason: collision with root package name */
    public final long f43237w;

    /* renamed from: x, reason: collision with root package name */
    public long f43238x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f43239y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f43240z;

    /* JADX WARN: Removed duplicated region for block: B:32:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseATView(android.content.Context r4, com.smartdigimkt.l3.a r5, com.smartdigimkt.m3.c r6, java.lang.String r7) {
        /*
            r3 = this;
            r3.<init>(r4)
            java.lang.String r0 = "BaseATView"
            r3.f43215a = r0
            r0 = 0
            r3.f43220f = r0
            r3.f43221g = r0
            r3.f43222h = r0
            r3.f43227m = r0
            r3.f43214C = r0
            long r1 = java.lang.System.currentTimeMillis()
            r3.f43237w = r1
            r3.f43216b = r5
            r3.f43217c = r6
            r3.f43223i = r7
            boolean r5 = r4 instanceof com.smartdigimkt.sdk.basead.ui.BaseATActivity
            if (r5 == 0) goto L28
            com.smartdigimkt.sdk.basead.ui.BaseATActivity r4 = (com.smartdigimkt.sdk.basead.ui.BaseATActivity) r4     // Catch: java.lang.Throwable -> L28
            boolean r4 = r4.f43198m     // Catch: java.lang.Throwable -> L28
            r3.f43224j = r4     // Catch: java.lang.Throwable -> L28
        L28:
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            r3.f43225k = r4
            com.smartdigimkt.r2.o r4 = new com.smartdigimkt.r2.o
            com.smartdigimkt.m3.c r5 = r3.f43217c
            r4.<init>()
            r3.f43234t = r4
            com.smartdigimkt.u1.c r4 = new com.smartdigimkt.u1.c
            com.smartdigimkt.l3.a r7 = r3.f43216b
            r4.<init>(r5, r7)
            r3.f43212A = r4
            r3.b()
            r3.e()
            r3.d()
            com.smartdigimkt.m3.c r4 = r3.f43217c
            r5 = 1
            if (r4 == 0) goto L55
            r3.setFocusable(r5)
            r3.setClickable(r5)
        L55:
            if (r6 == 0) goto L6b
            boolean r4 = r6.h()
            if (r4 == 0) goto L6b
            com.smartdigimkt.v1.v r4 = new com.smartdigimkt.v1.v
            r4.<init>(r3, r6, r6)
            r3.f43232r = r4
            com.smartdigimkt.x.c r7 = com.smartdigimkt.x.c.a()
            r7.addDataFetchListener(r4)
        L6b:
            com.smartdigimkt.v1.w r4 = new com.smartdigimkt.v1.w
            r4.<init>(r3)
            r3.f43213B = r4
            com.smartdigimkt.x.l r7 = com.smartdigimkt.x.l.a()
            java.util.concurrent.CopyOnWriteArrayList r7 = r7.f45051s
            r7.add(r4)
            if (r6 == 0) goto Lbc
            java.lang.String r4 = r6.f41822m
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto Lbc
            int r4 = r6.f41824o
            if (r4 != r5) goto L8a
            r0 = r5
        L8a:
            if (r0 != 0) goto Lac
            com.smartdigimkt.l3.a r4 = r3.f43216b
            if (r4 == 0) goto Lac
            com.smartdigimkt.m3.e r4 = r4.f41644r
            if (r4 == 0) goto Lac
            com.smartdigimkt.m3.d r4 = r4.f41897T1
            boolean r4 = com.smartdigimkt.m3.h.a(r4)
            if (r4 == 0) goto Lac
            android.content.Context r4 = r3.getContext()
            boolean r5 = r3.f43224j
            if (r5 != 0) goto La5
            goto Lac
        La5:
            boolean r4 = com.smartdigimkt.k2.k.a(r4, r6)
            if (r4 != 0) goto Lac
            goto Lae
        Lac:
            if (r0 == 0) goto Lbc
        Lae:
            com.smartdigimkt.v1.x r4 = new com.smartdigimkt.v1.x
            r4.<init>(r3, r6, r6)
            r3.f43233s = r4
            com.smartdigimkt.x.c r5 = com.smartdigimkt.x.c.a()
            r5.addDataFetchListenerV2(r4)
        Lbc:
            com.smartdigimkt.v1.y r4 = new com.smartdigimkt.v1.y
            r4.<init>(r3, r6)
            r3.post(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.BaseATView.<init>(android.content.Context, com.smartdigimkt.l3.a, com.smartdigimkt.m3.c, java.lang.String):void");
    }

    public void a() {
    }

    public abstract void a(u uVar);

    public abstract void a(boolean z2);

    public void b() {
    }

    public l c() {
        l lVar = new l(this.f43216b, "");
        View viewM = m();
        lVar.f40669e = viewM.getWidth();
        lVar.f40670f = viewM.getHeight();
        try {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            lVar.f40676l = iArr[0];
            lVar.f40677m = iArr[1];
        } catch (Throwable unused) {
        }
        lVar.f40678n = this.f43237w;
        return lVar;
    }

    public void d() {
        this.f43230p = new r(this, this, this.f43217c, this.f43216b, getATViewType(), getImproveClickCallback());
    }

    public void destroy() {
        com.smartdigimkt.a4.c cVar;
        a(112);
        x xVar = this.f43219e;
        if (xVar != null) {
            xVar.f45334b = true;
            e eVar = xVar.f45338f;
            if (eVar != null) {
                eVar.f39227a = null;
                eVar.f39231e.set(false);
                eVar.f39232f = true;
                xVar.f45338f = null;
            }
            k kVar = xVar.f45340h;
            if (kVar != null && (cVar = kVar.f39246h) != null) {
                cVar.a();
                kVar.f39246h = null;
            }
        }
        com.smartdigimkt.a4.c cVar2 = this.f43218d;
        if (cVar2 != null) {
            cVar2.a();
        }
        if (this.f43232r != null) {
            com.smartdigimkt.x.c.a().removeDataFetchListener(this.f43232r);
        }
        if (this.f43213B != null) {
            com.smartdigimkt.x.l.a().f45051s.remove(this.f43213B);
        }
        if (this.f43233s != null) {
            com.smartdigimkt.x.c.a().removeDataFetchListenerV2(this.f43233s);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f43234t != null) {
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            int[] iArr = new int[2];
            m().getLocationInWindow(iArr);
            int i2 = rawX - iArr[0];
            int i3 = rawY - iArr[1];
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f43234t.a(rawX, rawY, i2, i3);
            } else if (action == 1) {
                o oVar = this.f43234t;
                oVar.f43004c = rawX;
                oVar.f43005d = rawY;
                oVar.f43008g = i2;
                oVar.f43009h = i3;
                oVar.f43011j = System.currentTimeMillis();
            } else {
                if (action == 2) {
                    o oVar2 = this.f43234t;
                    oVar2.f43017p = rawX;
                    oVar2.f43018q = rawY;
                    oVar2.f43019r = i2;
                    oVar2.f43020s = i3;
                } else if (action == 3) {
                }
                o oVar3 = this.f43234t;
                oVar3.f43004c = rawX;
                oVar3.f43005d = rawY;
                oVar3.f43008g = i2;
                oVar3.f43009h = i3;
                oVar3.f43011j = System.currentTimeMillis();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public abstract void e();

    public boolean f() {
        return !(this instanceof WTWebViewSplashATView);
    }

    public void g() {
    }

    public int getATViewType() {
        return 0;
    }

    public com.smartdigimkt.i0.a getAdClickRecord() {
        o oVar = this.f43234t;
        if (oVar != null) {
            return oVar.a(0, 13);
        }
        return null;
    }

    public List<View> getAutoClickCTAViews() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(this.f43228n);
        return arrayList;
    }

    public View getAutoClickPanelView() {
        return null;
    }

    public View getAutoClickRootView() {
        return this;
    }

    public boolean getHasPerformClick() {
        return this.f43222h;
    }

    public com.smartdigimkt.k2.e getImproveClickCallback() {
        return new z(this);
    }

    public View getOmsdkMeasureView() {
        return this;
    }

    public RelativeLayout.LayoutParams getSpecialNoteViewLayoutParams() {
        return null;
    }

    public abstract void h();

    public void i() {
    }

    public boolean isRvDeepRewardListenerRegistered() {
        return this.f43224j;
    }

    public boolean isShowingEndCardAfterVideoPlay() {
        return this.f43227m;
    }

    public void j() {
    }

    public final synchronized void k() {
        if (this.f43220f) {
            return;
        }
        this.f43220f = true;
        com.smartdigimkt.m3.c cVar = this.f43217c;
        if ((cVar instanceof com.smartdigimkt.m3.k) && ((com.smartdigimkt.m3.k) cVar).k()) {
            h.b(3, this.f43216b, this.f43217c);
            g();
            this.f43221g = true;
            return;
        }
        l();
        a();
        a(114);
        p.a(8, this.f43217c, c());
        h();
    }

    public final void l() {
        com.smartdigimkt.m3.c cVar = this.f43217c;
        if (cVar instanceof com.smartdigimkt.p3.a) {
            com.smartdigimkt.s1.d dVarA = com.smartdigimkt.s1.d.a(getContext());
            com.smartdigimkt.p3.a aVar = (com.smartdigimkt.p3.a) this.f43217c;
            dVarA.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            String str = dVarA.f43107b.format(new Date(jCurrentTimeMillis));
            com.smartdigimkt.i0.c cVarA = dVarA.a(aVar);
            if (cVarA.f40641f.equals(str)) {
                cVarA.f40639d++;
            } else {
                cVarA.f40639d = 1;
                cVarA.f40641f = str;
            }
            cVarA.f40640e = jCurrentTimeMillis;
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.s1.c(dVarA, cVarA));
        } else if (cVar instanceof com.smartdigimkt.m3.k) {
            if (com.smartdigimkt.o1.c.f42216c == null) {
                synchronized (com.smartdigimkt.o1.c.class) {
                    try {
                        if (com.smartdigimkt.o1.c.f42216c == null) {
                            com.smartdigimkt.o1.c.f42216c = new com.smartdigimkt.o1.c();
                        }
                    } finally {
                    }
                }
            }
            com.smartdigimkt.o1.c cVar2 = com.smartdigimkt.o1.c.f42216c;
            Context context = getContext();
            a aVar2 = this.f43216b;
            String strA = com.smartdigimkt.p.a.a(aVar2.f41627a, aVar2.f41631e);
            com.smartdigimkt.m3.c cVar3 = this.f43217c;
            com.smartdigimkt.m3.e eVar = this.f43216b.f41644r;
            cVar2.getClass();
            if (cVar3.e() == 3 && (eVar instanceof com.smartdigimkt.m3.l)) {
                com.smartdigimkt.m3.l lVar = (com.smartdigimkt.m3.l) eVar;
                if (lVar.f42062a2 > 0) {
                    com.smartdigimkt.b4.e.a().c(new b(cVar2, lVar, strA, context, cVar3));
                }
            }
        }
        com.smartdigimkt.m3.c cVar4 = this.f43217c;
        if ((cVar4 instanceof com.smartdigimkt.m3.k) && this.f43216b.f41636j == 67) {
            if (((com.smartdigimkt.m3.k) cVar4).a(true, true)) {
                com.smartdigimkt.g3.c.a(getContext()).a(this.f43217c.f41806a, 0, 1);
            }
            if (((com.smartdigimkt.m3.k) this.f43217c).a(false, true)) {
                com.smartdigimkt.g3.b.a(getContext()).a(this.f43217c.f41808b, 0, 1);
            }
        }
    }

    public View m() {
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        a aVar;
        super.onAttachedToWindow();
        if (this.f43235u == null && (aVar = this.f43216b) != null && aVar.f41644r.f41877N == 1) {
            this.f43235u = new MCView(getContext());
            addView(this.f43235u, getChildCount(), new RelativeLayout.LayoutParams(-1, -1));
        }
        if (this.f43236v == 0) {
            this.f43236v = System.currentTimeMillis();
            if (!this.f43212A.a()) {
                a(201);
            }
        }
        a(116);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(117);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        a(motionEvent);
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (a(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.smartdigimkt.h2.g0
    public void setCallback(h0 h0Var) {
        synchronized (this) {
            this.f43231q = h0Var;
        }
    }

    public void setHasPerformClick(boolean z2) {
        this.f43222h = z2;
    }

    public void setRvDeepRewardListenerRegistered(boolean z2) {
        this.f43224j = z2;
    }

    public void setShowingEndCardAfterVideoPlay(boolean z2) {
        this.f43227m = z2;
    }

    public void setTrackClickAreaView(View view) {
        this.f43226l = view;
    }

    public boolean a(String str, IOfferClickHandler iOfferClickHandler) {
        return false;
    }

    public void a(int i2, int i3) {
        com.smartdigimkt.m3.e eVar;
        this.f43222h = true;
        k();
        if (this.f43219e == null) {
            this.f43219e = new x(getContext(), this.f43216b, this.f43217c, this);
        }
        e eVar2 = this.f43219e.f45338f;
        if (eVar2 == null || !eVar2.f39231e.get()) {
            if (this.f43217c.h() && i2 == 1 && ((i3 == 1 || i3 == 6) && this.f43217c.f41787H == 4 && this.f43216b.f41644r.f41869K0)) {
                com.smartdigimkt.x.c.a().pause(this.f43217c);
                return;
            }
            if (i2 != 5 && i2 != 6 && i2 != 7) {
                int iB = o.b(i2, i3);
                if (iB == 0 || iB == 1) {
                    this.f43240z = true;
                } else if (iB == 2) {
                    this.f43239y = true;
                }
            }
            if (this.f43227m) {
                if (i3 == 1) {
                    i3 = 6;
                } else if (i3 == 2 || i3 == 3) {
                    i3 = 7;
                } else if (i3 == 4) {
                    i3 = 8;
                } else if (i3 == 5) {
                    i3 = 9;
                }
            }
            u uVar = new u();
            uVar.f42577a = i2;
            uVar.f42578b = i3;
            if ((i2 == 4 || i2 == 19) && this.f43235u != null) {
                WeakReference weakReference = com.smartdigimkt.c4.c.a().f39687c;
                View autoClickPanelView = null;
                Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
                if (activity != null) {
                    s sVar = new s(this, uVar, i2, i3);
                    a aVar = this.f43216b;
                    int i4 = (aVar == null || (eVar = aVar.f41644r) == null) ? -1 : eVar.f41927e;
                    if (i4 == 1) {
                        List<View> autoClickCTAViews = getAutoClickCTAViews();
                        if (autoClickCTAViews != null) {
                            int size = autoClickCTAViews.size();
                            int i5 = 0;
                            while (true) {
                                if (i5 < size) {
                                    View view = autoClickCTAViews.get(i5);
                                    if (view != null && view.isShown() && view.getWidth() > 0 && view.getHeight() > 0) {
                                        autoClickPanelView = view;
                                        break;
                                    }
                                    i5++;
                                } else {
                                    break;
                                }
                            }
                        }
                    } else if (i4 == 2) {
                        autoClickPanelView = getAutoClickPanelView();
                    }
                    this.f43235u.runMC(activity, getAutoClickRootView(), autoClickPanelView, sVar);
                    return;
                }
            }
            a(uVar, i2, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0167  */
    /* JADX WARN: Type inference failed for: r1v20, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Class, java.lang.Class<com.smartdigimkt.c.a>] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.smartdigimkt.p1.u r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.BaseATView.a(com.smartdigimkt.p1.u, int, int):void");
    }

    public BaseATView(Context context, a aVar, com.smartdigimkt.m3.c cVar) {
        this(context, aVar, cVar, "");
    }

    public BaseATView(Context context) {
        super(context);
        this.f43215a = "BaseATView";
        this.f43220f = false;
        this.f43221g = false;
        this.f43222h = false;
        this.f43227m = false;
        this.f43214C = false;
    }

    public final void a(int i2, Runnable runnable) {
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.m3.c cVar = this.f43217c;
        int iA = (cVar == null || (eVar = cVar.f41832w) == null) ? 1 : eVar.a();
        if (i2 > 0) {
            getContext();
            this.f43218d = new com.smartdigimkt.a4.c(iA, i2);
        } else {
            getContext();
            this.f43218d = new com.smartdigimkt.a4.c(iA);
        }
        this.f43218d.a(this, new com.smartdigimkt.v1.u(runnable));
    }

    public final float a(b3 b3Var, boolean z2) {
        return n.a(b3Var, z2, this.f43216b, true);
    }

    public void a(int i2) {
        if (i2 == 114) {
            this.f43238x = System.currentTimeMillis();
        }
        c cVar = this.f43212A;
        if (cVar != null) {
            cVar.a(getOmsdkMeasureView(), i2);
        }
        r rVar = this.f43230p;
        if (rVar != null) {
            rVar.a(i2);
        }
    }

    public final boolean a(MotionEvent motionEvent) {
        synchronized (this) {
            try {
                try {
                    h0 h0Var = this.f43231q;
                    if (h0Var != null) {
                        if (h0Var.a(motionEvent)) {
                            return true;
                        }
                    }
                } catch (Throwable unused) {
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(View view) {
        if (this.f43212A == null || view == null || !(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            c cVar = this.f43212A;
            if (childAt != null) {
                if (cVar.f44388g == null) {
                    cVar.f44388g = new ArrayList();
                }
                cVar.f44388g.add(new WeakReference(childAt));
            } else {
                cVar.getClass();
            }
        }
    }
}
