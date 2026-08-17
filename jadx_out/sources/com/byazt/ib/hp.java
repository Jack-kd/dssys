package com.byazt.ib;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.byazt.ar.EasyPlayableContainer;
import com.byazt.ar.eb;
import com.byazt.fb.l;
import com.byazt.fub.k;
import com.byazt.fub.s;
import com.byazt.gy.j;
import com.byazt.jz.sz;
import com.byazt.la.e;
import com.byazt.ql.ns;
import com.byazt.xci.d;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.x;
import com.byazt.xci.zy;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1957, 28})
/* loaded from: classes.dex */
public class hp extends com.byazt.ar.l implements com.byazt.ci.l {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21024a;

    /* renamed from: e, reason: collision with root package name */
    public final eb f21025e;
    public com.byazt.fb.w eb;

    /* renamed from: j, reason: collision with root package name */
    public x f21026j;

    /* renamed from: q, reason: collision with root package name */
    public Context f21027q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.jt.l f21028s;

    /* renamed from: w, reason: collision with root package name */
    public View f21029w;

    public hp(mp mpVar, com.byazt.ar.hp hpVar, x xVar) {
        super(mpVar, hpVar);
        this.f21024a = false;
        this.f21025e = new eb() { // from class: com.byazt.ib.hp.1
            @Override // com.byazt.ar.eb
            public void hp() {
            }

            @Override // com.byazt.ar.eb
            public void j() throws JSONException {
                if (d.hp() && hp.this.jx != null) {
                    hp.this.jx.hp(hp.this.hp);
                }
            }

            @Override // com.byazt.ar.eb
            public void jx() {
                hp.this.f21024a = false;
                View view = hp.this.f21029w;
                if (view != null) {
                    view.setVisibility(8);
                }
            }

            @Override // com.byazt.ar.eb
            public void l() {
                hp.this.f21024a = true;
                hp.this.eb();
            }

            @Override // com.byazt.ar.eb
            public void w() {
                hp.this.a();
            }

            @Override // com.byazt.ar.eb
            public void hp(boolean z2) {
            }

            @Override // com.byazt.ar.eb
            public void hp(int i2) throws JSONException {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("second_page_type", i2);
                } catch (JSONException unused) {
                }
                com.byazt.ar.jx.l(hp.this.hp, hp.this.f21026j, false, jSONObject);
                hp.this.hp(i2);
            }
        };
        this.f21026j = xVar;
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.a.j(com.byazt.gy.eb.hp(this.hp), 2);
    }

    public int jx() {
        return 2;
    }

    private boolean q() {
        return hd.hp(this.hp) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        this.eb.hp(this.f21025e);
        this.eb.hp(this.f18137l);
        this.eb.hp(this);
        this.eb.hp(new s() { // from class: com.byazt.ib.hp.4
            @Override // com.byazt.fub.s
            public void hp(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
                com.byazt.rk.a.j(com.byazt.gy.eb.hp(hp.this.hp));
                if (hp.this.f18137l != null) {
                    hp.this.f18137l.hp(view, i2, jxVar, hp.this.f21026j);
                }
            }

            @Override // com.byazt.fub.s
            public void l(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
                com.byazt.rk.a.j(com.byazt.gy.eb.hp(hp.this.hp));
                if (hp.this.f18137l != null) {
                    hp.this.f18137l.hp(view, i2, jxVar, hp.this.f21026j);
                }
            }
        });
        this.eb.hp(new com.byazt.ar.s() { // from class: com.byazt.ib.hp.5
            @Override // com.byazt.ar.s
            public void hp() {
                com.byazt.rk.a.j(com.byazt.gy.eb.hp(hp.this.hp), 1);
                hp.this.a();
            }
        });
    }

    public void a() {
        j();
        com.byazt.rk.a.j(com.byazt.gy.eb.hp(this.hp), 1);
        com.byazt.db.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.jx();
        }
    }

    public void eb() {
        View view = this.f21029w;
        if (view == null || !this.f21024a) {
            return;
        }
        view.setVisibility(0);
    }

    public void j() {
        final View view = this.f21029w;
        if (view == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            l(view);
        } else {
            view.post(new Runnable() { // from class: com.byazt.ib.hp.6
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.l(view);
                }
            });
        }
    }

    public void l(ViewGroup viewGroup, View view) {
        if (hp(viewGroup, view)) {
            jx(viewGroup, view);
        } else {
            com.byazt.rk.a.hp(com.byazt.gy.eb.hp(this.hp), 2);
        }
    }

    public void w() {
        a();
        this.f21029w = null;
        com.byazt.fb.w wVar = this.eb;
        if (wVar != null) {
            wVar.hp((eb) null);
            this.eb.hp((s) null);
            this.eb.hp((com.byazt.ar.s) null);
            this.eb.jl();
            this.eb = null;
        }
    }

    private void jx(final ViewGroup viewGroup, final View view) {
        x xVar = this.f21026j;
        if (xVar == null) {
            return;
        }
        e.hp(this.f21026j.e(), xVar.q(), new com.byazt.la.jx() { // from class: com.byazt.ib.hp.2
            @Override // com.byazt.la.jx
            public void hp(String str) throws JSONException {
                try {
                    com.byazt.rk.a.hp(com.byazt.gy.eb.hp(hp.this.hp), 1);
                    com.byazt.ar.jx.hp(hp.this.hp, (zy) hp.this.f21026j, true);
                    hp.this.hp(new JSONObject(str), viewGroup, view);
                } catch (JSONException unused) {
                    com.byazt.rk.a.hp(com.byazt.gy.eb.hp(hp.this.hp), 2);
                    com.byazt.ar.jx.hp(hp.this.hp, (zy) hp.this.f21026j, false, 3);
                }
            }

            @Override // com.byazt.la.jx
            public void hp() throws JSONException {
                com.byazt.rk.a.hp(com.byazt.gy.eb.hp(hp.this.hp), 2);
                com.byazt.ar.jx.hp(hp.this.hp, (zy) hp.this.f21026j, false, 4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void l(View view) {
        if (view == null) {
            return;
        }
        view.setVisibility(4);
        if (view instanceof ViewGroup) {
            ((ViewGroup) view).removeAllViews();
        }
        ViewParent parent = view.getParent();
        if (parent instanceof EasyPlayableContainer) {
            ViewParent parent2 = parent.getParent();
            ((ViewGroup) parent).removeView(view);
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView((View) parent);
                return;
            }
            return;
        }
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    public boolean hp(ViewGroup viewGroup, View view) throws JSONException {
        x xVar = this.f21026j;
        if (xVar != null && view != null && viewGroup != null) {
            if (!xVar.jl()) {
                com.byazt.ar.jx.hp(this.hp, (zy) this.f21026j, false, 6);
                return false;
            }
            if (com.byazt.ar.j.hp(viewGroup)) {
                String name = viewGroup.getClass().getName();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("container_name", name);
                    jSONObject.put("enable_layout_restrict", sz.l().fe());
                } catch (JSONException unused) {
                }
                com.byazt.ar.jx.hp(this.hp, (zy) this.f21026j, false, 1, jSONObject);
                return false;
            }
            if (!com.byazt.ar.j.hp(this.hp, true)) {
                com.byazt.ar.jx.hp(this.hp, (zy) this.f21026j, false, 2);
                return false;
            }
            if (sz.l().gu() && Build.VERSION.SDK_INT <= 25) {
                com.byazt.ar.jx.hp(this.hp, (zy) this.f21026j, false, 9);
                return false;
            }
            if (this.f21026j.s() == 1) {
                com.byazt.ar.jx.hp(this.hp, (zy) this.f21026j, false, 11);
                return false;
            }
            if (this.f21026j.hp(view.getWidth(), view.getHeight())) {
                return true;
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("view_width", view.getWidth());
                jSONObject2.put("view_height", view.getHeight());
            } catch (JSONException unused2) {
            }
            com.byazt.ar.jx.hp(this.hp, (zy) this.f21026j, false, 10, jSONObject2);
            return false;
        }
        com.byazt.ar.jx.hp(this.hp, (zy) xVar, false, 5);
        return false;
    }

    @Override // com.byazt.ar.l
    public zy l() {
        return this.f21026j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final JSONObject jSONObject, final ViewGroup viewGroup, final View view) {
        viewGroup.post(new Runnable() { // from class: com.byazt.ib.hp.3
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                x xVar;
                if (hp.this.hp == null || (xVar = hp.this.f21026j) == null) {
                    com.byazt.ar.jx.hp(hp.this.hp, (zy) hp.this.f21026j, false, 100, "materialMeta or ugenComponent is null");
                    return;
                }
                int iJx = xVar.jx();
                com.byazt.fb.l lVarHp = hp.this.hp(view, hp.this.hp(iJx, jSONObject, view));
                hp hpVar = hp.this;
                hpVar.eb = hpVar.hp(iJx, lVarHp, viewGroup);
                hp.this.s();
                final int i2 = iJx != 3 ? 2 : 3;
                com.byazt.rk.a.hp().hp(com.byazt.gy.eb.hp(hp.this.hp), new j.hp() { // from class: com.byazt.ib.hp.3.1
                    @Override // com.byazt.gy.j.hp
                    public void hp(com.byazt.gy.l lVar) {
                        if (lVar instanceof com.byazt.kf.s) {
                            ((com.byazt.kf.s) lVar).f22027j = i2;
                        }
                    }
                });
                com.byazt.rk.a.jx(com.byazt.gy.eb.hp(hp.this.hp));
                com.byazt.ar.jx.l(hp.this.hp, hp.this.f21026j);
                hp.this.eb.hp(new com.byazt.fub.eb() { // from class: com.byazt.ib.hp.3.2
                    @Override // com.byazt.fub.eb
                    public void hp(View view2, k kVar) throws JSONException {
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        hp.this.hp(view2, viewGroup, view);
                    }

                    @Override // com.byazt.fub.eb
                    public void hp(int i3, String str) throws JSONException {
                        if (hp.this.f18137l != null) {
                            hp.this.f18137l.hp(viewGroup);
                        }
                        com.byazt.rk.a.l(com.byazt.gy.eb.hp(hp.this.hp), 2);
                        com.byazt.ar.jx.hp(hp.this.hp, (zy) hp.this.f21026j, false, i3, str);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject hp(int i2, JSONObject jSONObject, View view) throws JSONException {
        if (i2 != 3) {
            return jSONObject;
        }
        return com.byazt.yp.l.hp(this.hp, com.byazt.yp.l.hp(view), jSONObject, q(), null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.fb.l hp(View view, JSONObject jSONObject) {
        l.hp hpVar = new l.hp();
        hpVar.w(e.hp(this.hp, view, q()));
        hpVar.hp(jSONObject);
        hpVar.hp((ns) new com.byazt.qk.sz());
        hpVar.l(view.getHeight());
        hpVar.hp(view.getWidth());
        hpVar.hp(com.byazt.jz.s.u().j());
        hpVar.e(this.hp.nu());
        hpVar.gu(jx());
        return hpVar.hp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.fb.w hp(int i2, com.byazt.fb.l lVar, ViewGroup viewGroup) {
        if (i2 == 3) {
            return new com.byazt.fb.eb(sz.getContext(), this.hp, lVar, viewGroup);
        }
        return new com.byazt.fb.w(sz.getContext(), this.hp, lVar, viewGroup);
    }

    @Override // com.byazt.ci.l
    public boolean hp(String str, com.byazt.xs.jx jxVar, com.byazt.ci.jx jxVar2) {
        str.getClass();
        if (!str.equals("closeWidget")) {
            return false;
        }
        a();
        return true;
    }

    @Override // com.byazt.ci.l
    public void hp(String str) {
        str.getClass();
        if (str.equals("clickEvent") || str.equals("convert")) {
            com.byazt.ar.jx.hp(this.hp, (zy) this.f21026j, false, (JSONObject) null, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(View view, ViewGroup viewGroup, View view2) throws JSONException {
        if (view == null) {
            com.byazt.rk.a.l(com.byazt.gy.eb.hp(this.hp), 2);
            com.byazt.ar.jx.hp(this.hp, (zy) this.f21026j, false, 101, "renderView is null");
            return;
        }
        com.byazt.rk.a.l(com.byazt.gy.eb.hp(this.hp), 1);
        com.byazt.ar.jx.l(this.hp, this.f21026j, true);
        this.f21029w = view;
        view.setVisibility(8);
        if (!hp(view)) {
            com.byazt.rk.a.jx(com.byazt.gy.eb.hp(this.hp), 2);
            com.byazt.ar.jx.l(this.hp, this.f21026j, false, 103, new JSONObject());
        } else {
            View view3 = this.f21029w;
            com.byazt.fb.w wVar = this.eb;
            hp(viewGroup, view2, view3, wVar != null ? wVar.w() : null);
            eb();
        }
    }

    private boolean hp(View view) {
        View childAt;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() > 0) {
                View childAt2 = viewGroup.getChildAt(0);
                if ((this.eb instanceof com.byazt.fb.eb) && childAt2 != null) {
                    ViewGroup viewGroup2 = (ViewGroup) childAt2;
                    return viewGroup2.getChildCount() > 0 && (childAt = viewGroup2.getChildAt(0)) != null && childAt.getVisibility() == 0;
                }
                if (childAt2 != null && childAt2.getVisibility() == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.byazt.ar.l
    public eb hp() {
        return this.f21025e;
    }

    public void hp(com.byazt.jt.l lVar) {
        this.f21028s = lVar;
    }

    public void hp(Context context) {
        this.f21027q = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2) {
        new com.byazt.vv.hp(this.hp, this.f21027q).hp(i2, this.f21028s);
    }
}
