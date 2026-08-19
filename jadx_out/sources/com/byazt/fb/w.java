package com.byazt.fb;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.ar.s;
import com.byazt.fub.k;
import com.byazt.gg.a;
import com.byazt.jkd.gu;
import com.byazt.ql.q;
import com.byazt.ql.sz;
import com.byazt.ql.u;
import com.byazt.ql.v;
import com.byazt.ql.vv;
import com.byazt.xci.b;
import com.byazt.xci.e;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.x;
import com.byazt.ymw.di;
import com.byazt.zn.ky;
import com.byazt.zn.lv;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.common.C1244a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 528, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements sz, vv, com.byazt.wsc.j, com.byazt.fub.j<View> {

    /* renamed from: a, reason: collision with root package name */
    public mp f19626a;

    /* renamed from: b, reason: collision with root package name */
    public String f19627b;
    public String cx;

    /* renamed from: d, reason: collision with root package name */
    public final com.byazt.tg.eb f19628d;
    public com.byazt.ib.w di;

    /* renamed from: e, reason: collision with root package name */
    public s f19629e;
    public l eb;
    public AtomicBoolean ec;
    public k gu;
    public v hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f19630j;
    public com.byazt.xs.jx<View> jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f19632l;

    /* renamed from: n, reason: collision with root package name */
    public com.byazt.xn.hp f19633n;
    public List<com.byazt.xs.jx<View>> ns;

    /* renamed from: o, reason: collision with root package name */
    public com.byazt.ar.hp f19634o;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.fub.s f19635q;

    /* renamed from: s, reason: collision with root package name */
    public UGTimerContainer f19636s;
    public di sz;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.xs.jx f19637u;

    /* renamed from: v, reason: collision with root package name */
    public WeakReference<ViewGroup> f19638v;
    public com.byazt.ar.eb vv;

    /* renamed from: w, reason: collision with root package name */
    public JSONObject f19639w;
    public boolean wv;
    public com.byazt.xs.jx xs;
    public com.byazt.ci.l zy;
    public List<com.byazt.ql.s> jl = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    public e f19631k = new e();

    public w(Context context, mp mpVar, l lVar, ViewGroup viewGroup) throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        this.wv = false;
        this.f19632l = context;
        this.hp = new v(context);
        this.f19626a = mpVar;
        this.eb = lVar;
        com.byazt.tg.eb ebVar = new com.byazt.tg.eb(mpVar);
        this.f19628d = ebVar;
        this.f19636s = new UGTimerContainer(context, ebVar);
        this.f19638v = new WeakReference<>(viewGroup);
        this.ec = new AtomicBoolean(false);
        JSONObject jSONObjectHp = hp();
        this.f19630j = jSONObjectHp;
        if (mpVar != null && jSONObjectHp != null && (jSONObjectOptJSONObject = jSONObjectHp.optJSONObject("event_template")) != null) {
            this.wv = true;
            com.byazt.psp.l.INSTANCE.hp(jSONObjectOptJSONObject);
        }
        if (com.byazt.nwu.hp.j(mpVar)) {
            hp(new com.byazt.ql.s() { // from class: com.byazt.fb.w.1
                @Override // com.byazt.ql.s
                public void hp(q.hp hpVar) throws JSONException {
                    com.byazt.nwu.hp.hp(true, hpVar);
                }

                @Override // com.byazt.ql.s
                public void l(q.hp hpVar) throws JSONException {
                    com.byazt.nwu.hp.hp(false, hpVar);
                }
            });
        }
        this.hp.hp(new com.byazt.ql.s() { // from class: com.byazt.fb.w.2
            @Override // com.byazt.ql.s
            public void hp(q.hp hpVar) {
                Iterator<com.byazt.ql.s> it = w.this.jl.iterator();
                while (it.hasNext()) {
                    it.next().hp(hpVar);
                }
            }

            @Override // com.byazt.ql.s
            public void l(q.hp hpVar) {
                Iterator<com.byazt.ql.s> it = w.this.jl.iterator();
                while (it.hasNext()) {
                    it.next().l(hpVar);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int vv() {
        mp mpVar = this.f19626a;
        if (mpVar != null) {
            return mpVar.nu();
        }
        return 0;
    }

    public com.byazt.xs.jx a() {
        com.byazt.xs.jx<View> jxVar = this.jx;
        if (jxVar == null) {
            return null;
        }
        return jxVar.w("VideoPlaceholder");
    }

    public boolean e() {
        return this.wv;
    }

    @Override // com.byazt.fub.j
    public View eb() {
        return this.f19636s;
    }

    public JSONObject gu() {
        return this.eb.dy();
    }

    public void hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
    }

    public void j() {
        List<com.byazt.xs.jx<View>> list = this.ns;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<com.byazt.xs.jx<View>> it = this.ns.iterator();
        while (it.hasNext()) {
            it.next().mp();
        }
    }

    public void jl() {
        this.ec.set(false);
        di diVar = this.sz;
        if (diVar != null) {
            diVar.l(vv());
        }
        com.byazt.xn.hp hpVar = this.f19633n;
        if (hpVar != null) {
            hpVar.l();
        }
        List<com.byazt.ql.s> list = this.jl;
        if (list != null) {
            list.clear();
        }
    }

    @Override // com.byazt.fub.j
    public int jx() {
        return hd.l(this.f19626a);
    }

    public void k() {
        com.byazt.xs.jx<T> jxVarJ;
        com.byazt.xs.jx<View> jxVar = this.jx;
        if (jxVar == null || (jxVarJ = jxVar.j("corver_container")) == 0 || jxVarJ.q() == null) {
            return;
        }
        jxVarJ.q().setVisibility(8);
    }

    public boolean l() {
        if (this.eb == null) {
            return false;
        }
        gu guVarL = com.byazt.jz.sz.l();
        int iPu = this.eb.pu();
        boolean z2 = this instanceof eb;
        if (z2 && iPu == 1) {
            return guVarL.ty();
        }
        if (z2 && iPu == 2) {
            return guVarL.ci();
        }
        if (z2 || iPu != 2) {
            return false;
        }
        return guVarL.zv();
    }

    public List<com.byazt.xs.jx<View>> q() {
        return this.ns;
    }

    public com.byazt.xs.jx s() {
        com.byazt.xs.jx<View> jxVar = this.jx;
        if (jxVar == null) {
            return null;
        }
        return jxVar.w("PlayableComponent");
    }

    @Override // com.byazt.wsc.j
    public void setSoundMute(boolean z2) throws JSONException {
        com.byazt.xs.jx<T> jxVarJ;
        com.byazt.xs.jx<View> jxVar = this.jx;
        if (jxVar == null || (jxVarJ = jxVar.j("mute_image")) == 0) {
            return;
        }
        if (z2) {
            if (!TextUtils.isEmpty(this.cx)) {
                ((com.byazt.qp.l) jxVarJ).jl(this.cx);
            }
        } else if (!TextUtils.isEmpty(this.f19627b)) {
            ((com.byazt.qp.l) jxVarJ).jl(this.f19627b);
        }
        jxVarJ.l();
    }

    public void u() throws JSONException {
        this.f19628d.hp();
    }

    public void v() {
        com.byazt.xs.jx<View> jxVar = this.jx;
        if (jxVar == null) {
            return;
        }
        this.f19628d.hp(jxVar);
    }

    public float[] w() {
        com.byazt.xs.jx<View> jxVar = this.jx;
        if (jxVar == null) {
            return null;
        }
        vv.l lVarW = jxVar.w("InteractContainerView");
        if (lVarW instanceof com.byazt.ar.gu) {
            return ((com.byazt.ar.gu) lVarW).rv();
        }
        return null;
    }

    public void xs() throws JSONException {
        this.f19628d.hp();
    }

    public void zy() {
        com.byazt.xs.jx<T> jxVarJ;
        com.byazt.xs.jx<View> jxVar = this.jx;
        if (jxVar == null || (jxVarJ = jxVar.j("corver_container")) == 0 || jxVarJ.q() == null) {
            return;
        }
        jxVarJ.q().setVisibility(0);
    }

    private void jx(u uVar) {
        JSONObject jSONObjectJx;
        if (uVar == null || (jSONObjectJx = uVar.jx()) == null) {
            return;
        }
        com.byazt.lf.k.hp().hp(this.f19626a, jSONObjectJx.optString("uttieUrl"), jSONObjectJx.optLong("duration"));
    }

    private boolean j(u uVar) {
        JSONObject jSONObjectJx;
        return uVar != null && uVar.l() == 1 && (jSONObjectJx = uVar.jx()) != null && jSONObjectJx.optBoolean("lottieEvent", false);
    }

    public void hp(com.byazt.ci.l lVar) {
        this.zy = lVar;
    }

    public void hp(com.byazt.fub.s sVar) {
        this.f19635q = sVar;
    }

    private void jx(final u uVar, final vv.l lVar, final vv.hp hpVar) {
        if (this.sz == null) {
            di diVar = new di(com.byazt.jz.sz.getContext(), 2, this.eb.q());
            this.sz = diVar;
            diVar.hp(this.f19626a.rm());
            this.sz.jx(this.f19626a.kq());
            this.sz.l(this.f19626a.aj());
            this.sz.hp(this.f19626a.ki());
            this.sz.a(this.f19626a.gv());
            this.sz.w(this.f19626a.cs());
            this.sz.l(this.f19626a.sf());
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        final float[] fArr = {0.0f};
        this.sz.hp(new di.hp() { // from class: com.byazt.fb.w.3
            @Override // com.byazt.ymw.di.hp
            public void hp(int i2) throws JSONException {
                if (i2 != 2) {
                    return;
                }
                w wVar = w.this;
                wVar.sz.l(wVar.vv());
                fArr[0] = 0.0f;
                View viewQ = ((com.byazt.xs.jx) lVar).q();
                if (viewQ != null) {
                    viewQ.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.byazt.fb.w.3.1
                        @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
                        public void onWindowFocusChanged(boolean z2) {
                            if (z2) {
                                w wVar2 = w.this;
                                wVar2.sz.hp(wVar2.vv());
                            } else {
                                w wVar3 = w.this;
                                wVar3.sz.l(wVar3.vv());
                                fArr[0] = 0.0f;
                            }
                        }
                    });
                }
                AtomicBoolean atomicBoolean2 = atomicBoolean;
                if (atomicBoolean2 != null) {
                    atomicBoolean2.set(true);
                }
                w.this.hp(uVar, lVar, hpVar, 2, false);
            }
        });
        this.sz.hp(new di.l() { // from class: com.byazt.fb.w.4
            public float hp = 0.0f;

            /* renamed from: l, reason: collision with root package name */
            public float f19647l = 0.0f;
            public float jx = 0.0f;

            /* renamed from: j, reason: collision with root package name */
            public float f19646j = 0.0f;

            /* renamed from: w, reason: collision with root package name */
            public float f19650w = 0.0f;

            /* renamed from: a, reason: collision with root package name */
            public float f19644a = 0.0f;
            public long eb = System.currentTimeMillis();

            @Override // com.byazt.ymw.di.l
            public void hp(float f2, float f3, float f4) {
                JSONObject jSONObjectJx;
                View viewQ;
                boolean z2;
                float f5;
                float fCeil;
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.eb < 100) {
                    return;
                }
                this.eb = jCurrentTimeMillis;
                u uVar2 = uVar;
                if (uVar2 == null || (jSONObjectJx = uVar2.jx()) == null) {
                    return;
                }
                double dOptDouble = jSONObjectJx.optDouble("rotateZ", -1.0d);
                if (dOptDouble == -1.0d) {
                    return;
                }
                vv.l lVar2 = lVar;
                if ((lVar2 instanceof com.byazt.xs.jx) && (viewQ = ((com.byazt.xs.jx) lVar2).q()) != null && viewQ.isShown()) {
                    float fAbs = Math.abs(f2);
                    float fAbs2 = Math.abs(f3);
                    float fAbs3 = Math.abs(f4);
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    if (atomicBoolean2 != null && atomicBoolean2.get()) {
                        if (f2 != 0.0f && f3 != 0.0f && f4 != 0.0f) {
                            atomicBoolean.set(false);
                        }
                        this.hp = fAbs;
                        this.f19647l = fAbs2;
                        this.jx = fAbs3;
                        this.f19646j = f2;
                        this.f19650w = f3;
                        this.f19644a = f4;
                        return;
                    }
                    float fMax = Math.max(Math.abs(fAbs - this.hp), Math.max(Math.abs(fAbs2 - this.f19647l), Math.abs(fAbs3 - this.jx)));
                    int iAj = w.this.f19626a.aj();
                    if (iAj <= 0) {
                        iAj = 50;
                    }
                    if (Math.abs(fAbs - this.hp) == fMax) {
                        f5 = f2 >= this.f19646j ? fMax : -fMax;
                        z2 = true;
                    } else {
                        z2 = false;
                        f5 = 0.0f;
                    }
                    if (Math.abs(fAbs2 - this.f19647l) == fMax) {
                        f5 = f3 >= this.f19650w ? fMax : -fMax;
                        z2 = true;
                    }
                    if (Math.abs(fAbs3 - this.jx) != fMax) {
                        fMax = f5;
                    } else if (f4 < this.f19644a) {
                        fMax = -fMax;
                    }
                    if (w.this.f19626a.gv() == 0) {
                        fCeil = (float) Math.ceil((fMax * 180.0f) / dOptDouble);
                    } else {
                        double degrees = Math.toDegrees(fMax);
                        float fCeil2 = (float) Math.ceil(degrees / dOptDouble);
                        if (z2 && Math.abs(degrees) < iAj - 8) {
                            return;
                        } else {
                            fCeil = z2 ? -Math.abs(fCeil2) : fCeil2;
                        }
                    }
                    if (Math.abs(fCeil - fArr[0]) < 1.3d) {
                        return;
                    }
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewQ, C1244a.f35650B, fArr[0], fCeil);
                    objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
                    objectAnimatorOfFloat.setDuration(100L);
                    objectAnimatorOfFloat.start();
                    fArr[0] = fCeil;
                }
            }
        });
        this.sz.hp(vv());
    }

    private void w(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("params")) == null) {
            return;
        }
        hp(jSONObjectOptJSONObject.optString(com.umeng.ccg.a.f49756j));
    }

    public void hp(s sVar) {
        this.f19629e = sVar;
    }

    private void j(final u uVar, final vv.l lVar, final vv.hp hpVar) {
        WeakReference<ViewGroup> weakReference = this.f19638v;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        lv.hp(this.f19638v, new com.byazt.go.jx() { // from class: com.byazt.fb.w.5
            @Override // com.byazt.go.jx
            public void hp() throws JSONException {
                WeakReference<ViewGroup> weakReference2 = w.this.f19638v;
                if (weakReference2 == null || weakReference2.get() == null || !lv.hp(w.this.f19638v.get())) {
                    return;
                }
                w.this.hp(uVar, lVar, hpVar, 1, false);
            }
        });
    }

    public void hp(com.byazt.ar.hp hpVar) {
        this.f19634o = hpVar;
    }

    private void hp(com.byazt.xs.jx<View> jxVar, List<com.byazt.xs.jx<View>> list) {
        if (jxVar instanceof com.byazt.xs.hp) {
            if (jxVar.hp(4)) {
                list.add(jxVar);
            }
            List<com.byazt.xs.jx<View>> listEb = ((com.byazt.xs.hp) jxVar).eb();
            if (listEb == null || listEb.size() == 0) {
                return;
            }
            Iterator<com.byazt.xs.jx<View>> it = listEb.iterator();
            while (it.hasNext()) {
                hp(it.next(), list);
            }
            return;
        }
        if (jxVar == null || !jxVar.hp(4)) {
            return;
        }
        list.add(jxVar);
    }

    public void l(com.byazt.fub.eb ebVar) throws JSONException {
        this.hp.hp((vv) this);
        this.hp.hp((sz) this);
        this.jx = this.hp.hp(this.f19630j);
        this.eb.lv().l();
        this.eb.lv().jx();
        this.hp.l(this.f19639w);
    }

    private void j(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("params")) == null) {
            return;
        }
        hp(jSONObjectOptJSONObject.optString(com.umeng.ccg.a.f49756j), jSONObjectOptJSONObject.optString("ugen_id"), jSONObjectOptJSONObject.optString("ugen_md5"), jSONObjectOptJSONObject.optString("ugen_url"), jSONObjectOptJSONObject.optString("displayAreaAndroid"), jSONObjectOptJSONObject.optString("render_sequence"));
    }

    private void l(u uVar) {
        JSONObject jSONObjectJx;
        if (uVar == null || (jSONObjectJx = uVar.jx()) == null) {
            return;
        }
        com.byazt.lf.k.hp().l(this.f19626a, jSONObjectJx.optString("uttieUrl"));
    }

    private void l(u uVar, vv.l lVar, vv.hp hpVar) throws JSONException {
        JSONObject jSONObjectJx = uVar.jx();
        if (jSONObjectJx == null) {
            return;
        }
        String strOptString = jSONObjectJx.optString("type", null);
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        strOptString.getClass();
        if (strOptString.equals("clickEvent")) {
            hp(uVar, lVar, hpVar, 0, true);
            return;
        }
        if (strOptString.equals("close")) {
            s sVar = this.f19629e;
            if (sVar != null) {
                sVar.hp();
            }
            com.byazt.lf.k.hp().jx(this.f19626a, jSONObjectJx.optString("uttieUrl"));
        }
    }

    @Override // com.byazt.fub.j
    public void hp(com.byazt.fub.eb ebVar) throws JSONException {
        this.eb.lv().hp();
        this.f19630j = hp();
        JSONObject jSONObjectGu = gu();
        this.f19639w = jSONObjectGu;
        if (this.f19630j != null && jSONObjectGu != null) {
            l(ebVar);
            if (this.jx != null) {
                jx jxVar = new jx();
                this.gu = jxVar;
                jxVar.hp(true);
                this.gu.hp(jx());
                com.byazt.xs.jx jxVarA = a();
                this.f19637u = jxVarA;
                if (jxVarA != null && (jxVarA instanceof com.byazt.rms.hp)) {
                    ((jx) this.gu).hp((FrameLayout) jxVarA.q());
                }
                com.byazt.xs.jx jxVarS = s();
                this.xs = jxVarS;
                if (jxVarS != null && (jxVarS instanceof com.byazt.ie.hp)) {
                    ((jx) this.gu).l((FrameLayout) jxVarS.q());
                }
                k kVar = this.gu;
                if (kVar instanceof jx) {
                    ((jx) kVar).hp(this.f19633n);
                }
                this.f19636s.setTimerHolder(this.f19633n);
                int iLv = this.jx.lv();
                int iR = this.jx.r();
                ArrayList arrayList = new ArrayList();
                this.ns = arrayList;
                hp(this.jx, arrayList);
                View viewQ = this.jx.q();
                ViewGroup viewGroup = (ViewGroup) viewQ.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(viewQ);
                }
                this.f19636s.addView(this.jx.q(), new FrameLayout.LayoutParams(iLv, iR));
                float fUd = this.eb.ud();
                float fNu = this.eb.nu();
                float fJx = xh.jx(this.f19632l, fUd);
                float fJx2 = xh.jx(this.f19632l, fNu);
                int iJ = xh.j(this.f19632l);
                int iS = (int) (xh.s(this.f19632l) + xh.e(this.f19632l));
                float f2 = iJ;
                if (fJx > f2) {
                    fJx = f2;
                }
                float f3 = iS;
                if (fJx2 > f3) {
                    fJx2 = f3;
                }
                if (fNu <= 0.0f) {
                    this.f19636s.setLayoutParams(new FrameLayout.LayoutParams((int) fJx, -2));
                } else {
                    this.f19636s.setLayoutParams(new FrameLayout.LayoutParams((int) fJx, (int) fJx2));
                }
                if (fNu <= 0.0f) {
                    this.f19636s.measure(View.MeasureSpec.makeMeasureSpec((int) fJx, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
                    int iJ2 = xh.j(this.f19632l, this.f19636s.getMeasuredWidth());
                    int iJ3 = xh.j(this.f19632l, this.f19636s.getMeasuredHeight());
                    this.gu.hp(iJ2);
                    this.gu.l(iJ3);
                } else {
                    this.gu.hp(xh.j(this.f19632l, fJx));
                    this.gu.l(xh.j(this.f19632l, fJx2));
                }
                if (this.ec.get()) {
                    ebVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, (String) null);
                    return;
                } else {
                    ebVar.hp(this.f19636s, this.gu);
                    return;
                }
            }
            ebVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_END_TIME, (String) null);
            return;
        }
        ebVar.hp(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ACCURATE_START, (String) null);
    }

    private void jx(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("params")) == null) {
            return;
        }
        com.byazt.bi.jx.hp(jSONObjectOptJSONObject, this.f19632l, this.f19626a);
    }

    private void l(JSONObject jSONObject) {
        com.byazt.xs.jx<View> jxVar;
        com.byazt.xs.jx jxVarJ;
        if (jSONObject == null) {
            return;
        }
        String strHp = com.byazt.ss.l.hp(jSONObject.optString("type"), gu());
        String strHp2 = com.byazt.ss.l.hp(jSONObject.optString("nodeId"), gu());
        if (TextUtils.isEmpty(strHp2) || (jxVar = this.jx) == null || (jxVarJ = jxVar.l(jxVar).j(strHp2)) == null) {
            return;
        }
        if (TextUtils.equals(strHp, "onDismiss")) {
            jxVarJ.l(8);
            return;
        }
        if (TextUtils.equals(strHp, "onShow")) {
            jxVarJ.l(0);
        } else if (TextUtils.equals(strHp, "haptic")) {
            jx(jSONObject);
        } else if (TextUtils.equals(strHp, "dismissScene")) {
            w(jSONObject);
        }
    }

    public JSONObject hp() {
        return this.eb.w();
    }

    public void hp(boolean z2) {
        this.ec.set(z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    @Override // com.byazt.ql.vv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(com.byazt.ql.u r9, com.byazt.ql.vv.l r10, com.byazt.ql.vv.hp r11) throws org.json.JSONException {
        /*
            r8 = this;
            if (r9 != 0) goto L5
            r2 = r8
            goto Lb5
        L5:
            int r0 = r9.l()
            r1 = 18
            if (r0 != r1) goto L14
            r8.jx(r9, r10, r11)
        L10:
            r2 = r8
            r3 = r9
            goto L85
        L14:
            int r0 = r9.l()
            r1 = 3
            if (r0 != r1) goto L1f
            r8.j(r9, r10, r11)
            goto L10
        L1f:
            int r0 = r9.l()
            r1 = 9
            if (r0 != r1) goto L2f
            org.json.JSONObject r10 = r9.jx()
            r8.l(r10)
            goto L10
        L2f:
            int r0 = r9.l()
            r1 = 10
            if (r0 != r1) goto L3f
            org.json.JSONObject r10 = r9.jx()
            r8.hp(r10)
            goto L10
        L3f:
            int r0 = r9.l()
            r1 = 21
            if (r0 != r1) goto L4b
            r8.l(r9)
            goto L10
        L4b:
            int r0 = r9.l()
            r1 = 19
            if (r0 != r1) goto L5a
            r8.l(r9, r10, r11)
            r8.jx(r9)
            goto L10
        L5a:
            int r0 = r9.l()
            r1 = 20
            if (r0 != r1) goto L66
            r8.l(r9, r10, r11)
            goto L10
        L66:
            boolean r0 = r8.j(r9)
            if (r0 == 0) goto L70
            r8.l(r9, r10, r11)
            goto L10
        L70:
            int r0 = r9.l()
            r1 = 22
            if (r0 != r1) goto L7c
            r8.hp(r9)
            goto L10
        L7c:
            r6 = 0
            r7 = 0
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = r11
            r2.hp(r3, r4, r5, r6, r7)
        L85:
            org.json.JSONObject r9 = r3.jx()
            if (r9 == 0) goto Lb5
            org.json.JSONObject r9 = r3.jx()
            java.lang.String r10 = "next"
            java.lang.String r9 = r9.optString(r10)
            boolean r10 = android.text.TextUtils.isEmpty(r9)     // Catch: org.json.JSONException -> Lb5
            if (r10 != 0) goto Lb5
            com.byazt.ql.u r10 = new com.byazt.ql.u     // Catch: org.json.JSONException -> Lb5
            r10.<init>()     // Catch: org.json.JSONException -> Lb5
            r11 = 1
            r10.hp(r11)     // Catch: org.json.JSONException -> Lb5
            org.json.JSONObject r11 = new org.json.JSONObject     // Catch: org.json.JSONException -> Lb5
            r11.<init>(r9)     // Catch: org.json.JSONException -> Lb5
            r10.hp(r11)     // Catch: org.json.JSONException -> Lb5
            com.byazt.xs.jx<android.view.View> r9 = r2.jx     // Catch: org.json.JSONException -> Lb5
            r10.hp(r9)     // Catch: org.json.JSONException -> Lb5
            r9 = 0
            r8.hp(r10, r9, r9)     // Catch: org.json.JSONException -> Lb5
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fb.w.hp(com.byazt.ql.u, com.byazt.ql.vv$l, com.byazt.ql.vv$hp):void");
    }

    private void hp(u uVar) throws JSONException {
        JSONObject jSONObjectJx;
        if (uVar == null || (jSONObjectJx = uVar.jx()) == null) {
            return;
        }
        String strOptString = jSONObjectJx.optString("type");
        String strOptString2 = jSONObjectJx.optString("uchain");
        JSONObject jSONObjectOptJSONObject = jSONObjectJx.optJSONObject("params");
        JSONObject jSONObject = new JSONObject();
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    jSONObject.put(next, com.byazt.ss.l.hp(jSONObjectOptJSONObject.optString(next), gu()));
                } catch (Throwable unused) {
                }
            }
        }
        if ("true".equals(strOptString2)) {
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            map2.put("material_meta", this.f19626a);
            HashMap map3 = new HashMap();
            map3.put("ugen_event_params", jSONObject);
            String strL = ky.l(this.f19626a);
            ky.wv();
            com.byazt.rj.jx.hp(this.f19626a, map, strOptString, map2, strL, map3, -1L);
        }
    }

    private void hp(JSONObject jSONObject) {
        com.byazt.xs.jx<View> jxVar;
        com.byazt.xs.jx jxVarJ;
        if (jSONObject == null) {
            return;
        }
        String strHp = com.byazt.ss.l.hp(jSONObject.optString("type"), gu());
        String strHp2 = com.byazt.ss.l.hp(jSONObject.optString("nodeId"), gu());
        if (TextUtils.isEmpty(strHp2) || (jxVar = this.jx) == null || (jxVarJ = jxVar.l(jxVar).j(strHp2)) == null) {
            return;
        }
        if (TextUtils.equals(strHp, "onShow")) {
            jxVarJ.l(0);
            return;
        }
        if (TextUtils.equals(strHp, "onDismiss")) {
            jxVarJ.l(8);
        } else if (TextUtils.equals(strHp, "haptic")) {
            jx(jSONObject);
        } else if (TextUtils.equals(strHp, "dismissScene")) {
            w(jSONObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(u uVar, vv.l lVar, vv.hp hpVar, int i2, boolean z2) throws JSONException {
        com.byazt.xs.jx jxVarHp;
        int i3;
        String strOptString;
        int iOptInt;
        JSONObject jSONObjectDy;
        CharSequence text;
        if (uVar == null || (jxVarHp = uVar.hp()) == null) {
            return;
        }
        JSONObject jSONObjectJx = uVar.jx();
        String strHp = com.byazt.ss.l.hp(jSONObjectJx.optString("nodeId"), gu());
        String strHp2 = com.byazt.ss.l.hp(jSONObjectJx.optString("type"), gu());
        if (l()) {
            HashMap map = new HashMap();
            map.put("ugen_click_event_params", this.f19631k);
            map.put("convert_action_type", Integer.valueOf(i2));
            if (com.byazt.ci.hp.hp().hp(uVar, this.f19626a, this.f19632l, jxVarHp, gu(), this.zy, map)) {
                return;
            }
        }
        if (TextUtils.equals(strHp2, "clickEvent")) {
            strOptString = jSONObjectJx.optString("subConvertLinkTag");
            iOptInt = jSONObjectJx.optInt("dpaPosition", -1);
            i3 = 2;
        } else {
            if (TextUtils.equals(strHp2, "muteVideo")) {
                this.cx = jSONObjectJx.optString("muteSrc");
                this.f19627b = jSONObjectJx.optString("unmuteSrc");
                i3 = 5;
            } else if (TextUtils.equals(strHp2, "dislike")) {
                i3 = 3;
            } else if (TextUtils.equals(strHp2, "skip")) {
                i3 = 6;
            } else if (TextUtils.equals(strHp2, "openPolicy")) {
                i3 = 7;
            } else if (TextUtils.equals(strHp2, "openAppPolicy")) {
                i3 = 9;
            } else if (TextUtils.equals(strHp2, "openAppPermission")) {
                i3 = 10;
            } else {
                i3 = 8;
                if (!TextUtils.equals(strHp2, "close")) {
                    if (TextUtils.equals(strHp2, "openAppFunctionDesc")) {
                        i3 = 12;
                    } else if (TextUtils.equals(strHp2, "videoControl") || TextUtils.equals(strHp2, "pauseVideo")) {
                        i3 = 4;
                    } else if (TextUtils.equals(strHp2, "openCommonUrl")) {
                        i3 = 13;
                    } else {
                        if (TextUtils.equals(strHp2, "onDismiss")) {
                            com.byazt.xs.jx jxVarJ = uVar.hp().l(uVar.hp()).j(strHp);
                            if (jxVarJ != null) {
                                jxVarJ.l(8);
                                return;
                            }
                            return;
                        }
                        if (TextUtils.equals(strHp2, "onShow")) {
                            com.byazt.xs.jx jxVarJ2 = uVar.hp().l(uVar.hp()).j(strHp);
                            if (jxVarJ2 != null) {
                                jxVarJ2.l(0);
                                return;
                            }
                            return;
                        }
                        if (TextUtils.equals(strHp2, "haptic")) {
                            jx(uVar.jx());
                            return;
                        }
                        if (TextUtils.equals(strHp2, "closeWidget")) {
                            com.byazt.ar.eb ebVar = this.vv;
                            if (ebVar != null) {
                                ebVar.w();
                                return;
                            }
                            return;
                        }
                        if (TextUtils.equals(strHp2, "dismiss")) {
                            jxVarHp.l(8);
                            return;
                        } else if (TextUtils.equals(strHp2, "renderScene")) {
                            j(jSONObjectJx);
                            return;
                        } else {
                            if (TextUtils.equals(strHp2, "dismissScene")) {
                                w(jSONObjectJx);
                                return;
                            }
                            i3 = 0;
                        }
                    }
                }
            }
            strOptString = "";
            iOptInt = -1;
        }
        b.hp hpVarW = new b.hp().j(this.f19631k.xs()).jx(this.f19631k.vv()).l(this.f19631k.ec()).hp(this.f19631k.sz()).hp(jxVarHp.nu()).l(this.f19631k.v()).hp(this.f19631k.u()).w(strOptString).w(iOptInt);
        JSONObject jSONObject = new JSONObject();
        if (i2 > 0) {
            try {
                jSONObject.put("convertActionType", i2);
            } catch (Throwable unused) {
            }
        }
        View viewQ = jxVarHp.q();
        try {
            if ((viewQ instanceof TextView) && (text = ((TextView) viewQ).getText()) != null && text.toString().contains("下载")) {
                jSONObject.put("is_compliant_download", true);
            }
        } catch (JSONException unused2) {
        }
        try {
            if (this.f19626a != null && this.wv && jSONObjectJx.optBoolean("uchain", false)) {
                jSONObject.put("uchain_event_name", strHp2);
            }
        } catch (JSONException unused3) {
        }
        try {
            l lVar2 = this.eb;
            if (lVar2 != null && (jSONObjectDy = lVar2.dy()) != null) {
                jSONObject.put("ugen_id", jSONObjectDy.optString("ugen_id"));
            }
        } catch (JSONException unused4) {
        }
        try {
            String strHp3 = com.byazt.ss.l.hp(jSONObjectJx.optString("webUrl"), gu());
            String strHp4 = com.byazt.ss.l.hp(jSONObjectJx.optString("webTitle"), gu());
            jSONObject.put("openCommonWebUrl", strHp3);
            jSONObject.put("openCommonWebTitle", strHp4);
        } catch (JSONException unused5) {
        }
        if (z2) {
            try {
                jSONObject.put("isLottieInternalClick", true);
            } catch (JSONException unused6) {
            }
        }
        hpVarW.hp(jSONObject);
        b bVarHp = hpVarW.hp();
        com.byazt.fub.s sVar = this.f19635q;
        if (sVar != null) {
            sVar.hp(viewQ, i3, bVarHp, -1);
        }
        if (lVar == null || uVar.j() == null) {
            return;
        }
        lVar.hp(uVar.j());
    }

    public void hp(String str, String str2, String str3, String str4, String str5, String str6) {
        int i2;
        int i3;
        x xVarHp;
        String strHp = com.byazt.ss.l.hp(str, gu());
        String strHp2 = com.byazt.ss.l.hp(str2, gu());
        String strHp3 = com.byazt.ss.l.hp(str3, gu());
        String strHp4 = com.byazt.ss.l.hp(str4, gu());
        try {
            i2 = Integer.parseInt(com.byazt.ss.l.hp(str5, gu()));
        } catch (Exception unused) {
            i2 = 0;
        }
        int i4 = i2;
        try {
            i3 = Integer.parseInt(com.byazt.ss.l.hp(str6, gu()));
        } catch (Exception unused2) {
            i3 = 2;
        }
        int i5 = i3;
        if (hp(strHp, i4)) {
            com.byazt.xs.jx<View> jxVar = this.jx;
            View viewQ = jxVar != null ? jxVar.q() : null;
            if (viewQ == null || this.f19626a == null || (xVarHp = com.byazt.ar.j.hp(strHp2, strHp3, strHp4, i4, i5, 5)) == null || !xVarHp.jl()) {
                return;
            }
            com.byazt.ib.w wVar = new com.byazt.ib.w(this.f19626a, this.f19634o, xVarHp);
            this.di = wVar;
            wVar.hp(viewQ);
        }
    }

    public void hp(String str) {
        com.byazt.ar.eb ebVar;
        if (!TextUtils.equals("scene1", com.byazt.ss.l.hp(str, gu())) || (ebVar = this.vv) == null) {
            return;
        }
        ebVar.w();
    }

    private boolean hp(String str, int i2) {
        return TextUtils.equals("scene1", str) && com.byazt.ar.j.hp(i2);
    }

    public void hp(com.byazt.ar.eb ebVar) {
        this.vv = ebVar;
    }

    public void hp(long j2, long j3) {
        com.byazt.xs.jx jxVar = this.f19637u;
        if (jxVar instanceof com.byazt.rms.hp) {
            ((com.byazt.rms.hp) jxVar).hp(j2, j3);
        }
    }

    public void hp(CharSequence charSequence, int i2, int i3, boolean z2) {
        com.byazt.xs.jx<View> jxVar = this.jx;
        if (jxVar == null) {
            return;
        }
        com.byazt.xs.jx<T> jxVarJ = jxVar.j("count_down_skip_container");
        if (jxVarJ != 0 && jxVarJ.q() != null) {
            jxVarJ.q().setVisibility(0);
        }
        vv.l lVarJ = this.jx.j("count_down");
        vv.l lVarJ2 = this.jx.j("skip");
        if ((lVarJ instanceof com.byazt.nf.l) && (lVarJ2 instanceof com.byazt.nf.l)) {
            if (i3 != 0) {
                ((com.byazt.nf.l) lVarJ).jl(((Object) charSequence) + "s ");
                return;
            }
            if (!TextUtils.equals(charSequence, "0") && !z2) {
                ((com.byazt.nf.l) lVarJ).jl(((Object) charSequence) + "s ");
                com.byazt.nf.l lVar = (com.byazt.nf.l) lVarJ2;
                lVar.jl("| 跳过");
                lVar.q().setVisibility(0);
                return;
            }
            ((com.byazt.nf.l) lVarJ).q().setVisibility(8);
            ((com.byazt.nf.l) lVarJ2).jl("跳过");
        }
    }

    @Override // com.byazt.ql.sz
    public void hp(com.byazt.xs.jx jxVar, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                return;
            }
            this.f19631k.jx(motionEvent.getRawX());
            this.f19631k.j(motionEvent.getRawY());
            this.f19631k.l(System.currentTimeMillis());
            return;
        }
        this.f19631k.w((int) motionEvent.getRawX());
        this.f19631k.a((int) motionEvent.getRawY());
        this.f19631k.hp(motionEvent.getRawX());
        this.f19631k.l(motionEvent.getRawY());
        this.f19631k.hp(System.currentTimeMillis());
        this.f19631k.l(motionEvent.getToolType(0));
        this.f19631k.jx(motionEvent.getDeviceId());
        this.f19631k.j(motionEvent.getSource());
    }

    public void hp(com.byazt.ql.s sVar) {
        this.jl.add(sVar);
    }
}
