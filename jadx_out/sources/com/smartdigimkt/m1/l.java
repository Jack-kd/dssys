package com.smartdigimkt.m1;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.sigmob.sdk.base.models.ClickCommon;
import com.smartdigimkt.p1.u;
import com.smartdigimkt.sdk.basead.ui.OwnNativeATView;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.v1.a3;
import com.smartdigimkt.z.x;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class l extends t {

    /* renamed from: A, reason: collision with root package name */
    public boolean f41718A;

    /* renamed from: B, reason: collision with root package name */
    public com.smartdigimkt.u1.c f41719B;

    /* renamed from: C, reason: collision with root package name */
    public final c f41720C;

    /* renamed from: D, reason: collision with root package name */
    public final d f41721D;

    /* renamed from: n, reason: collision with root package name */
    public volatile boolean f41722n;

    /* renamed from: o, reason: collision with root package name */
    public volatile boolean f41723o;

    /* renamed from: p, reason: collision with root package name */
    public OwnNativeATView f41724p;

    /* renamed from: q, reason: collision with root package name */
    public WeakReference f41725q;

    /* renamed from: r, reason: collision with root package name */
    public a3 f41726r;

    /* renamed from: s, reason: collision with root package name */
    public final f f41727s;

    /* renamed from: t, reason: collision with root package name */
    public x f41728t;

    /* renamed from: u, reason: collision with root package name */
    public j f41729u;

    /* renamed from: v, reason: collision with root package name */
    public final com.smartdigimkt.r2.o f41730v;

    /* renamed from: w, reason: collision with root package name */
    public com.smartdigimkt.a4.c f41731w;

    /* renamed from: x, reason: collision with root package name */
    public com.smartdigimkt.a4.c f41732x;

    /* renamed from: y, reason: collision with root package name */
    public final HashMap f41733y;

    /* renamed from: z, reason: collision with root package name */
    public h f41734z;

    public l(Context context, com.smartdigimkt.m3.k kVar, com.smartdigimkt.l3.a aVar, boolean z2) {
        super(context, kVar, aVar, z2);
        this.f41722n = false;
        this.f41723o = false;
        this.f41733y = new HashMap();
        this.f41718A = false;
        this.f41720C = new c(this);
        this.f41721D = new d(this);
        this.f41730v = new com.smartdigimkt.r2.o();
        this.f41727s = new f(this);
        this.f41719B = new com.smartdigimkt.u1.c(kVar, aVar);
    }

    public final void a(View view, boolean z2) {
        WeakReference weakReference = this.f41725q;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null && view == view2) {
            a(view, 1, 1, z2);
        } else if (h() == null || !h().contains(view)) {
            a(view, 1, 2, z2);
        } else {
            a(view, 1, 3, z2);
        }
    }

    @Override // com.smartdigimkt.m1.t
    public View d() {
        return this.f41724p;
    }

    public void e() {
    }

    public void f() {
        com.smartdigimkt.a4.c cVar;
        com.smartdigimkt.a4.c cVar2 = this.f41731w;
        if (cVar2 != null) {
            cVar2.f39317b.clear();
            cVar2.f39318c.clear();
            com.smartdigimkt.a4.h hVar = cVar2.f39316a;
            hVar.f39333d.clear();
            hVar.f39337h.removeMessages(0);
            hVar.f39338i = false;
        }
        this.f41747e = null;
        a(112);
        OwnNativeATView ownNativeATView = this.f41724p;
        if (ownNativeATView != null) {
            ownNativeATView.releaseAllCallback();
        }
        this.f41724p = null;
        this.f41725q = null;
        com.smartdigimkt.u1.c cVar3 = this.f41719B;
        if (cVar3 != null) {
            cVar3.f44385d = true;
        }
        x xVar = this.f41728t;
        if (xVar != null) {
            xVar.f45334b = true;
            com.smartdigimkt.a0.e eVar = xVar.f45338f;
            if (eVar != null) {
                eVar.f39227a = null;
                eVar.f39231e.set(false);
                eVar.f39232f = true;
                xVar.f45338f = null;
            }
            com.smartdigimkt.a0.k kVar = xVar.f45340h;
            if (kVar != null && (cVar = kVar.f39246h) != null) {
                cVar.a();
                kVar.f39246h = null;
            }
            this.f41728t = null;
        }
        if (this.f41734z != null) {
            com.smartdigimkt.x.c.a().removeDataFetchListener(this.f41734z);
        }
        a3 a3Var = this.f41726r;
        if (a3Var != null) {
            a3Var.destroyPlayerView(3);
        }
        com.smartdigimkt.a4.c cVar4 = this.f41731w;
        if (cVar4 != null) {
            cVar4.a();
            this.f41731w = null;
        }
        com.smartdigimkt.a4.c cVar5 = this.f41732x;
        if (cVar5 != null) {
            cVar5.a();
            this.f41732x = null;
        }
    }

    public abstract View g();

    public List h() {
        return null;
    }

    public void i() {
        if (this.f41722n) {
            return;
        }
        this.f41722n = true;
        com.smartdigimkt.m3.k kVar = this.f41744b;
        if (kVar != null && kVar.k()) {
            com.smartdigimkt.y3.h.b(3, this.f41745c, this.f41744b);
            this.f41723o = true;
            return;
        }
        if (d() != null) {
            com.smartdigimkt.z.p.a(8, this.f41744b, a());
            com.smartdigimkt.p1.a aVar = this.f41747e;
            if (aVar != null) {
                u uVar = new u();
                uVar.f42581e = this.f41745c.f41644r.f41863I0;
                aVar.onAdShow(uVar);
            }
        }
        a(114);
        com.smartdigimkt.m3.k kVar2 = this.f41744b;
        if (kVar2 == null || !kVar2.h()) {
            return;
        }
        this.f41734z = new h(this, kVar2);
        com.smartdigimkt.x.c.a().addDataFetchListener(this.f41734z);
    }

    public final void a(View view, int i2, int i3, boolean z2) {
        int i4;
        int i5;
        if (this.f41724p != null) {
            i();
            if (this.f41728t == null) {
                this.f41728t = new x(SDKContext.getInstance().d(), this.f41745c, this.f41744b, this.f41724p);
            }
            com.smartdigimkt.a0.e eVar = this.f41728t.f45338f;
            if (eVar == null || !eVar.f39231e.get()) {
                if (this.f41744b.h() && ((i3 == 1 || i3 == 6) && this.f41744b.f41787H == 4 && this.f41745c.f41644r.f41869K0)) {
                    com.smartdigimkt.x.c.a().pause(this.f41744b);
                    return;
                }
                x xVar = this.f41728t;
                e eVar2 = new e(this, i2, i3);
                com.smartdigimkt.a0.e eVar3 = xVar.f45338f;
                if (eVar3 != null) {
                    eVar3.f39227a = eVar2;
                }
                com.smartdigimkt.i0.l lVarA = a();
                if (i2 == 1) {
                    OwnNativeATView ownNativeATView = this.f41724p;
                    lVarA.f40671g = ownNativeATView != null ? ownNativeATView.getAdClickRecord(i3) : null;
                    i4 = i2;
                    i5 = i3;
                } else {
                    com.smartdigimkt.r2.o oVar = this.f41730v;
                    if (oVar != null) {
                        i4 = i2;
                        i5 = i3;
                        aVarA = oVar.a(view, view, i4, i5, 3);
                    } else {
                        i4 = i2;
                        i5 = i3;
                    }
                    lVarA.f40671g = aVarA;
                }
                if (z2) {
                    lVarA.f40675k = true;
                }
                this.f41728t.a(lVarA);
                if (this.f41729u != null) {
                    HashMap map = new HashMap();
                    map.put("click_type", Integer.valueOf(i4));
                    map.put(ClickCommon.CLICK_AREA, Integer.valueOf(i5));
                    this.f41729u.a(map);
                }
                a(113);
            }
        }
    }

    public void a(View view, List list, List list2, FrameLayout.LayoutParams layoutParams, View view2) {
        com.smartdigimkt.m3.k kVar;
        com.smartdigimkt.l3.a aVar;
        a3 a3Var;
        View.OnClickListener onClickListener;
        com.smartdigimkt.m3.e eVar;
        if (this.f41724p == null || this.f41718A) {
            return;
        }
        int iA = 1;
        this.f41718A = true;
        if (this.f41719B != null && view2 != null) {
            new WeakReference(view2);
        }
        if (!this.f41722n && this.f41732x == null) {
            g gVar = new g(this);
            com.smartdigimkt.m3.k kVar2 = this.f41744b;
            if (kVar2 != null && (eVar = kVar2.f41832w) != null) {
                iA = eVar.a();
            }
            view.getContext();
            com.smartdigimkt.a4.c cVar = new com.smartdigimkt.a4.c(iA, 0);
            this.f41732x = cVar;
            cVar.a(view, gVar);
            a(201);
        }
        com.smartdigimkt.m3.k kVar3 = this.f41744b;
        if (kVar3 != null && !kVar3.j()) {
            a(view);
            if (list != null && list.size() > 0) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    View view3 = (View) it.next();
                    if (view3 != null) {
                        view3.setOnClickListener(this.f41720C);
                    }
                }
            } else {
                a(view, this.f41720C);
            }
            if (list2 != null && list2.size() > 0) {
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    View view4 = (View) it2.next();
                    if (view4 != null) {
                        view4.setOnClickListener(this.f41721D);
                    }
                }
            }
        }
        if (!this.f41746d && (a3Var = this.f41726r) != null) {
            if (list2 != null && list2.contains(a3Var)) {
                onClickListener = this.f41721D;
            } else {
                onClickListener = (list == null || list.isEmpty() || list.contains(this.f41726r)) ? this.f41720C : null;
            }
            this.f41726r.setPlayerOnClickListener(onClickListener);
        }
        OwnNativeATView ownNativeATView = this.f41724p;
        if (ownNativeATView != null && (kVar = this.f41744b) != null && (aVar = this.f41745c) != null) {
            this.f41729u = new j(this, ownNativeATView, kVar, aVar, this.f41746d ? 5 : 6, new i(this));
            this.f41733y.put("native_ad_event_listener", this.f41747e);
            this.f41729u.a(this.f41733y);
            this.f41724p.setLifeCallback(new k(this));
            a3 a3Var2 = this.f41726r;
            if (a3Var2 != null) {
                a3Var2.setATImproveClickViewController(this.f41729u);
            }
            if (this.f41722n) {
                a(114);
            }
        }
        g();
    }

    public final void a(int i2) {
        j jVar = this.f41729u;
        if (jVar != null) {
            jVar.a(i2);
        }
        com.smartdigimkt.u1.c cVar = this.f41719B;
        if (cVar != null) {
            cVar.a(this.f41724p, i2);
        }
    }

    public static void a(View view, c cVar) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(viewGroup.getChildAt(i2), cVar);
            }
            return;
        }
        view.setOnClickListener(cVar);
    }

    public final void a(View view) {
        com.smartdigimkt.m3.e eVar;
        a aVar = new a(this);
        if (this.f41731w == null) {
            com.smartdigimkt.m3.k kVar = this.f41744b;
            int iA = (kVar == null || (eVar = kVar.f41832w) == null) ? 1 : eVar.a();
            view.getContext();
            int i2 = this.f41745c.f41644r.f41892S;
            if (i2 <= 0) {
                i2 = 100;
            }
            this.f41731w = new com.smartdigimkt.a4.c(iA, i2);
        }
        this.f41731w.a(view, aVar);
    }
}
