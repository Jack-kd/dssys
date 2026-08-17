package com.byazt.xs;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.gg.k;
import com.byazt.gg.q;
import com.byazt.gg.zy;
import com.byazt.oi.a;
import com.byazt.oi.j;
import com.byazt.oi.w;
import com.byazt.ql.e;
import com.byazt.ql.eb;
import com.byazt.ql.ns;
import com.byazt.ql.q;
import com.byazt.ql.sz;
import com.byazt.ql.u;
import com.byazt.ql.vv;
import com.byazt.ql.xs;
import com.byazt.xa.hp;
import com.byazt.xa.s;
import com.byazt.xs.hp;
import com.byazt.zs.hp;
import com.byazt.zs.j;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME, 30})
/* loaded from: classes3.dex */
public abstract class jx<T extends View> implements View.OnTouchListener, j, vv.hp, vv.l {

    /* renamed from: a, reason: collision with root package name */
    public hp<ViewGroup> f27766a;
    public boolean ad;
    public boolean ae;
    public float an;
    public float as;

    /* renamed from: b, reason: collision with root package name */
    public boolean f27767b;
    public boolean be;
    public float bu;

    /* renamed from: c, reason: collision with root package name */
    public boolean f27768c;
    public zy cd;
    public boolean ci;
    public boolean cs;
    public boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public float f27769d;
    public boolean db;
    public e df;
    public boolean di;
    public boolean dy;

    /* renamed from: e, reason: collision with root package name */
    public boolean f27770e;
    public float ea;
    public hp<ViewGroup> eb;
    public float ec;
    public eb ed;

    /* renamed from: f, reason: collision with root package name */
    public float f27771f;
    public JSONObject fe;
    public ViewGroup.LayoutParams fi;
    public com.byazt.ql.hp fu;

    /* renamed from: g, reason: collision with root package name */
    public boolean f27772g;
    public boolean gb;
    public float gd;
    public boolean gh;
    public String gu;
    public boolean gv;

    @Deprecated
    public com.byazt.oi.jx gy;

    /* renamed from: h, reason: collision with root package name */
    public boolean f27773h;
    public boolean hd;
    public boolean hp;
    public float hq;

    /* renamed from: i, reason: collision with root package name */
    public boolean f27774i;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f27775j;
    public com.byazt.jk.hp jb;
    public float jd;
    public String jl;
    public boolean jw;
    public JSONObject jx;

    /* renamed from: k, reason: collision with root package name */
    public float f27776k;
    public boolean kg;
    public hp.C0402hp ku;
    public int ky;

    /* renamed from: l, reason: collision with root package name */
    public Context f27777l;

    @Deprecated
    public a ld;
    public Map<Integer, u> lp;
    public boolean lv;

    @Deprecated
    public com.byazt.oi.l ly;

    /* renamed from: m, reason: collision with root package name */
    public float f27778m;
    public boolean mp;

    /* renamed from: ms, reason: collision with root package name */
    public ImageView.ScaleType f27779ms;
    public k mt;

    /* renamed from: n, reason: collision with root package name */
    public float f27780n;
    public String nc;
    public float nd;
    public boolean nl;
    public com.byazt.mw.hp nr;
    public boolean ns;
    public boolean nu;

    /* renamed from: o, reason: collision with root package name */
    public float f27781o;
    public boolean on;
    public q ov;
    public boolean pc;
    public com.byazt.ql.zy pf;
    public boolean pg;
    public sz pi;
    public boolean pu;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.ql.k f27782q;
    public GradientDrawable qa;
    public float qh;
    public int qu;
    public boolean qy;

    /* renamed from: r, reason: collision with root package name */
    public boolean f27783r;
    public com.byazt.mw.a rk;
    public float ru;
    public String rv;
    public float rz;

    /* renamed from: s, reason: collision with root package name */
    public q.hp f27784s;
    public float sh;
    public int su;
    public float sz;

    /* renamed from: t, reason: collision with root package name */
    public float f27785t;
    public String ti;

    @Deprecated
    public w tn;

    @Deprecated
    public j.hp tr;
    public float tw;
    public boolean ty;

    /* renamed from: u, reason: collision with root package name */
    public float f27786u;
    public float ud;
    public vv ux;

    /* renamed from: v, reason: collision with root package name */
    public float f27787v;
    public long vg;
    public boolean vq;
    public ns vt;
    public float vv;
    public com.byazt.us.jx vx;

    /* renamed from: w, reason: collision with root package name */
    public T f27788w;
    public float wt;
    public float wv;

    /* renamed from: x, reason: collision with root package name */
    public float f27789x;
    public String xh;
    public float xs;
    public boolean xv;

    /* renamed from: y, reason: collision with root package name */
    public boolean f27790y;
    public float yj;
    public float yr;

    /* renamed from: z, reason: collision with root package name */
    public boolean f27791z;
    public float zb;
    public com.byazt.ba.hp zv;
    public boolean zx;
    public float zy;

    public jx(Context context) {
        this(context, null);
    }

    private com.byazt.jk.hp an() {
        if (this.jb == null) {
            this.jb = new com.byazt.jk.hp();
        }
        return this.jb;
    }

    private void eb() {
        if (this.hp) {
            this.f27788w.setTranslationX(this.ru);
        }
        if (this.gb) {
            this.f27788w.setTranslationY(this.gd);
        }
        if (this.xv) {
            this.f27788w.setScaleX(this.tw);
        }
        if (this.pg) {
            this.f27788w.setScaleY(this.jd);
        }
        if (this.f27773h) {
            this.f27788w.setRotation(this.qh);
        }
        if (this.ad) {
            this.f27788w.setRotationX(this.f27785t);
        }
        if (this.f27791z) {
            this.f27788w.setRotationY(-this.f27789x);
        }
        if (this.db) {
            this.f27788w.setAlpha(this.zb);
        }
        float f2 = this.bu;
        if (f2 != 0.0f) {
            this.f27788w.setRotation(f2);
        }
        if (this.f27773h || this.ad || this.f27791z) {
            this.f27788w.setCameraDistance(10000.0f);
        }
    }

    private void fi() {
        this.qa.setCornerRadii(nr());
    }

    private float[] nr() {
        float f2 = this.hd ? this.f27771f : this.f27778m;
        float f3 = this.zx ? this.rz : this.f27778m;
        float f4 = this.f27790y ? this.yr : this.f27778m;
        float f5 = this.vq ? this.nd : this.f27778m;
        return new float[]{f2, f2, f3, f3, f5, f5, f4, f4};
    }

    private void pc() {
        com.byazt.jk.hp hpVar = this.jb;
        if (hpVar == null || !hpVar.hp()) {
            if (TextUtils.equals("dashed", this.rv)) {
                GradientDrawable gradientDrawable = this.qa;
                float f2 = this.ea;
                gradientDrawable.setStroke((int) f2, this.su, 3.0f * f2, f2);
            } else {
                if (!TextUtils.equals("dotted", this.rv)) {
                    this.qa.setStroke((int) this.ea, this.su);
                    return;
                }
                GradientDrawable gradientDrawable2 = this.qa;
                float f3 = this.ea;
                gradientDrawable2.setStroke((int) f3, this.su, f3 / 2.0f, f3);
            }
        }
    }

    private void qu() {
        com.byazt.jk.hp hpVar = this.jb;
        if (hpVar == null || !hpVar.l()) {
            this.f27788w.setBackground(this.qa);
        } else {
            this.jb.hp(this.f27788w, this.qa, this.ea, nr());
        }
    }

    private void rv() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.gu);
        this.f27788w.setContentDescription(sb);
    }

    @Deprecated
    private void s() throws JSONException {
        com.byazt.oi.j jVarJ;
        this.f27788w.setVisibility(this.qu);
        float f2 = this.bu;
        if (f2 != 0.0f) {
            this.f27788w.setRotation(f2);
        }
        q.hp hpVar = this.f27784s;
        if (hpVar != null && TextUtils.isEmpty(hpVar.l())) {
            this.f27788w.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.xs.jx.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    jx jxVar = jx.this;
                    if (jxVar.df == null || !jxVar.ae) {
                        return;
                    }
                    jx jxVar2 = jx.this;
                    jxVar2.df.hp(jxVar2);
                }
            });
        } else if (hp(1) && !this.jw) {
            this.f27788w.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.xs.jx.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    jx jxVar = jx.this;
                    if (jxVar.ux == null || !jxVar.ae) {
                        return;
                    }
                    jx jxVar2 = jx.this;
                    vv vvVar = jxVar2.ux;
                    u uVar = jxVar2.lp.get(1);
                    jx jxVar3 = jx.this;
                    vvVar.hp(uVar, jxVar3, jxVar3);
                }
            });
        }
        if (this.ux != null && hp(4)) {
            if (hp(1)) {
                this.f27772g = true;
                this.tn = new w(this.f27777l, this.lp.get(4), this.lp.get(1), this.f27772g, zx(), this.qy);
            } else {
                this.tn = new w(this.f27777l, this.lp.get(4), this.f27772g, zx(), this.qy);
            }
        }
        if (this.ux != null && hp(1) && this.jw) {
            this.gy = new com.byazt.oi.jx(this.f27777l, this.lp.get(1));
        }
        su();
        if (this.ux != null && hp(3) && (jVarJ = com.byazt.zs.w.hp().j()) != null) {
            j.hp hpVar2 = this.tr;
            if (hpVar2 != null) {
                hpVar2.l();
            }
            j.hp hpVarHp = jVarJ.hp(this.f27777l, this);
            this.tr = hpVarHp;
            hpVarHp.hp(this.sh);
            this.tr.hp();
            this.tr.hp(new j.l() { // from class: com.byazt.xs.jx.3
                @Override // com.byazt.oi.j.l
                public void hp(int i2) {
                    jx jxVar;
                    vv vvVar;
                    jx.this.tr.l();
                    if (jx.this.f27788w.isShown() && (vvVar = (jxVar = jx.this).ux) != null && i2 == 1) {
                        u uVar = jxVar.lp.get(3);
                        jx jxVar2 = jx.this;
                        vvVar.hp(uVar, jxVar2, jxVar2);
                    }
                }
            });
        }
        if (this.ux != null && hp(9)) {
            a aVar = new a(this.f27777l, this.lp.get(9), this);
            this.ld = aVar;
            aVar.hp(this.ux);
        }
        if (hp(10)) {
            com.byazt.oi.l lVar = new com.byazt.oi.l(this.f27777l, this.lp.get(10), this);
            this.ly = lVar;
            lVar.hp(this.ux);
        }
    }

    private void su() throws JSONException {
        u uVar;
        if (this.ux == null || !hp(18) || (uVar = this.lp.get(18)) == null) {
            return;
        }
        JSONObject jSONObjectJx = uVar.jx();
        if (jSONObjectJx != null) {
            try {
                jSONObjectJx.put("rotateZ", com.byazt.ss.l.hp(jSONObjectJx.optString("rotateZ"), this.f27775j));
            } catch (JSONException unused) {
            }
        }
        this.ux.hp(uVar, this, this);
    }

    public void a() {
        com.byazt.ql.zy zyVar = this.pf;
        if (zyVar != null) {
            zyVar.l();
        }
        com.byazt.mw.hp hpVar = this.nr;
        if (hpVar != null) {
            hpVar.jx();
        }
        com.byazt.mw.a aVar = this.rk;
        if (aVar != null) {
            aVar.jx();
        }
        ns nsVar = this.vt;
        if (nsVar != null) {
            nsVar.w();
        }
        j.hp hpVar2 = this.tr;
        if (hpVar2 != null) {
            hpVar2.l();
        }
        com.byazt.jk.hp hpVar3 = this.jb;
        if (hpVar3 != null) {
            hpVar3.j();
        }
        com.byazt.us.jx jxVar = this.vx;
        if (jxVar != null) {
            jxVar.j();
        }
    }

    public void as() {
    }

    public JSONObject b() {
        return this.jx;
    }

    public long cx() {
        return this.vg;
    }

    public ViewGroup.LayoutParams d() {
        return this.fi;
    }

    public void di() {
        BitmapDrawable bitmapDrawable;
        Bitmap bitmapHp;
        if (TextUtils.isEmpty(this.xh)) {
            if (this.f27768c) {
                hp(this.ku);
                return;
            } else {
                this.qa.setColor(this.ky);
                jx(this.ky);
                return;
            }
        }
        if (!this.xh.startsWith("local://")) {
            o();
            return;
        }
        String strReplace = this.xh.replace("local://", "");
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = this.kg ? Bitmap.Config.ARGB_4444 : Bitmap.Config.RGB_565;
            options.inPurgeable = true;
            options.inInputShareable = true;
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(this.f27777l.getResources().openRawResource(com.byazt.xa.j.l(this.f27777l, strReplace)), null, options);
            if (this.kg && (bitmapHp = s.hp(this.f27777l, bitmapDecodeStream, (int) this.as)) != null) {
                bitmapDrawable = new BitmapDrawable(this.f27777l.getResources(), bitmapHp);
                hp(bitmapDrawable);
            } else {
                BitmapDrawable bitmapDrawable2 = new BitmapDrawable(this.f27777l.getResources(), bitmapDecodeStream);
                bitmapDrawable = bitmapDrawable2;
                hp(bitmapDrawable);
            }
        } catch (Throwable unused) {
        }
    }

    public String dy() {
        return this.jl;
    }

    public JSONObject e() {
        return this.f27775j;
    }

    public com.byazt.gg.q ea() {
        return this.ov;
    }

    public float ec() {
        return this.bu;
    }

    public float f() {
        T t2 = this.f27788w;
        if (t2 instanceof com.byazt.mw.eb) {
            return ((com.byazt.mw.eb) t2).getRipple();
        }
        return 0.0f;
    }

    public void gu() {
        boolean zOptBoolean = this.f27775j.optBoolean("gesture_through_enable", false);
        q.hp hpVar = this.f27784s;
        this.on = zOptBoolean && (hpVar == null || hpVar.jx());
        this.qy = this.f27775j.optBoolean("is_adapt_two_finger", false);
    }

    public boolean hd() {
        return this.f27774i;
    }

    public T hp() {
        return null;
    }

    public boolean hq() {
        return this.f27770e;
    }

    public void jl() {
        this.f27788w.setPadding((int) (this.dy ? this.f27769d : this.f27781o), (int) (this.f27783r ? this.hq : this.f27781o), (int) (this.lv ? this.wv : this.f27781o), (int) (this.pu ? this.ud : this.f27781o));
    }

    public float k() {
        return this.gd;
    }

    public void kg() {
    }

    public boolean ky() {
        return this.pc;
    }

    public void l(JSONObject jSONObject) {
        this.f27775j = jSONObject;
        gu();
    }

    public int lv() {
        return (int) this.zy;
    }

    public boolean m() {
        return this.an > 0.0f;
    }

    public void mp() {
        w wVar = this.tn;
        if (wVar != null) {
            wVar.l();
        }
    }

    public com.byazt.ba.hp ms() {
        return this.zv;
    }

    public float n() {
        return this.f27778m;
    }

    public float nd() {
        T t2 = this.f27788w;
        if (t2 instanceof com.byazt.mw.eb) {
            return ((com.byazt.mw.eb) t2).getRubIn();
        }
        return 0.0f;
    }

    public vv ns() {
        return this.ux;
    }

    public String nu() {
        return this.gu;
    }

    public void o() {
        eb ebVar = this.ed;
        if (ebVar != null) {
            ebVar.hp();
        }
        com.byazt.zs.w.hp().l().hp(this.f27782q, this.xh, new hp.InterfaceC0439hp() { // from class: com.byazt.xs.jx.4
            @Override // com.byazt.zs.hp.InterfaceC0439hp
            public void hp(final Bitmap bitmap) {
                if (bitmap == null) {
                    jx jxVar = jx.this;
                    eb ebVar2 = jxVar.ed;
                    if (ebVar2 != null) {
                        ebVar2.l(jxVar, jxVar.xh);
                        return;
                    }
                    return;
                }
                jx jxVar2 = jx.this;
                eb ebVar3 = jxVar2.ed;
                if (ebVar3 != null) {
                    ebVar3.hp(jxVar2, jxVar2.xh);
                }
                jx jxVar3 = jx.this;
                if (!jxVar3.kg) {
                    s.hp(new Runnable() { // from class: com.byazt.xs.jx.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            jx.this.hp(new BitmapDrawable(bitmap));
                        }
                    });
                    return;
                }
                final Bitmap bitmapHp = s.hp(jxVar3.f27777l, bitmap, (int) jxVar3.as);
                if (bitmapHp != null) {
                    s.hp(new Runnable() { // from class: com.byazt.xs.jx.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            jx.this.hp(new BitmapDrawable(bitmapHp));
                        }
                    });
                }
            }
        });
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        w wVar;
        vv vvVar;
        com.byazt.oi.jx jxVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            as();
        } else if (action == 1 || action == 3) {
            kg();
        }
        sz szVar = this.pi;
        if (szVar != null) {
            szVar.hp(this, motionEvent);
        }
        if (hp(17) && motionEvent.getAction() == 0) {
            this.ux.hp(this.lp.get(17), this, this);
        }
        if (hp(1) && this.jw && (vvVar = this.ux) != null && (jxVar = this.gy) != null) {
            return jxVar.hp(vvVar, this, motionEvent);
        }
        vv vvVar2 = this.ux;
        if (vvVar2 != null && (wVar = this.tn) != null) {
            return wVar.hp(vvVar2, this, motionEvent, zx());
        }
        com.byazt.gg.q qVar = this.ov;
        if (qVar != null) {
            return qVar.hp(motionEvent);
        }
        return false;
    }

    public com.byazt.ql.k pu() {
        return this.f27782q;
    }

    public T q() {
        return this.f27788w;
    }

    public int r() {
        return (int) this.f27776k;
    }

    public float rz() {
        T t2 = this.f27788w;
        if (t2 instanceof com.byazt.mw.eb) {
            return ((com.byazt.mw.eb) t2).getStretch();
        }
        return 0.0f;
    }

    public float sz() {
        return this.zb;
    }

    public float u() {
        return this.jd;
    }

    public hp ud() {
        return this.f27766a;
    }

    public float v() {
        return this.tw;
    }

    public zy vq() {
        return this.cd;
    }

    public float vv() {
        return this.f27789x;
    }

    public void w() {
        com.byazt.ql.hp hpVar = this.fu;
        if (hpVar != null) {
            com.byazt.ql.zy zyVar = new com.byazt.ql.zy(this.f27788w, hpVar);
            this.pf = zyVar;
            zyVar.hp();
        }
        com.byazt.mw.hp hpVar2 = this.nr;
        if (hpVar2 != null) {
            hpVar2.hp();
        }
        com.byazt.mw.a aVar = this.rk;
        if (aVar != null) {
            aVar.l();
        }
        ns nsVar = this.vt;
        if (nsVar != null) {
            nsVar.j();
        }
        com.byazt.gg.q qVar = this.ov;
        if (qVar != null) {
            qVar.eb();
        }
        if (this.ly != null && hp(10)) {
            this.ly.hp();
        }
        if (this.ld != null && hp(9)) {
            this.ld.hp();
        }
        w wVar = this.tn;
        if (wVar != null) {
            wVar.hp();
        }
        com.byazt.jk.hp hpVar3 = this.jb;
        if (hpVar3 != null) {
            hpVar3.jx();
        }
        com.byazt.us.jx jxVar = this.vx;
        if (jxVar != null) {
            jxVar.jx();
        }
        this.vg = System.currentTimeMillis();
    }

    public q.hp wv() {
        return this.f27784s;
    }

    public int xh() {
        return this.ky;
    }

    public float xs() {
        return this.f27785t;
    }

    public k y() {
        return this.mt;
    }

    public float yr() {
        T t2 = this.f27788w;
        if (t2 instanceof com.byazt.mw.eb) {
            return ((com.byazt.mw.eb) t2).getShine();
        }
        return 0.0f;
    }

    public boolean zx() {
        return this.on;
    }

    public float zy() {
        return this.ru;
    }

    public jx(Context context, hp<ViewGroup> hpVar) {
        this.zy = -2.0f;
        this.f27776k = -2.0f;
        this.rv = "solid";
        this.qu = 0;
        this.pc = true;
        this.wt = 0.0f;
        this.ru = 0.0f;
        this.gd = 0.0f;
        this.yj = 1.0f;
        this.tw = 1.0f;
        this.jd = 1.0f;
        this.qh = 0.0f;
        this.f27785t = 0.0f;
        this.f27789x = 0.0f;
        this.bu = 0.0f;
        this.zb = 1.0f;
        this.gh = true;
        this.ae = true;
        this.ty = false;
        this.ci = false;
        this.on = false;
        this.qy = false;
        this.sh = 12.0f;
        this.f27777l = context;
        this.f27766a = hpVar;
        this.lp = new HashMap();
        this.qa = new GradientDrawable();
        this.f27788w = (T) hp();
    }

    public com.byazt.mw.hp e(String str) {
        com.byazt.mw.hp hpVar = this.nr;
        if (hpVar != null && TextUtils.equals(str, hpVar.w())) {
            return this.nr;
        }
        com.byazt.mw.a aVar = this.rk;
        if (aVar != null) {
            return aVar.hp(str);
        }
        return null;
    }

    public void hp(String str, Map<String, Object> map) {
    }

    public jx<T> j(String str) {
        return hp(str);
    }

    public void jx(JSONObject jSONObject) {
        this.jx = jSONObject;
    }

    public List<com.byazt.it.l> q(String str) {
        com.byazt.gg.q qVar;
        if (TextUtils.isEmpty(str) || (qVar = this.ov) == null) {
            return null;
        }
        return qVar.l(str);
    }

    public void hp(JSONObject jSONObject) throws JSONException {
        this.f27775j = jSONObject;
        gu();
        JSONObject jSONObject2 = this.jx;
        if (jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject2.keys();
        hp.C0411hp c0411hpS = this.f27766a != null ? this.f27766a.s() : null;
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strHp = com.byazt.ss.l.hp(this.jx.optString(next), jSONObject);
            hp(next, strHp);
            if (c0411hpS != null) {
                c0411hpS.hp(this.f27777l, next, strHp);
            }
        }
        if (c0411hpS != null) {
            hp(c0411hpS.hp());
        }
        if (this.fe == null || this.f27775j == null) {
            return;
        }
        try {
            if (hq()) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("i18n", this.fe);
                this.f27775j.put("xNode", jSONObject3);
                return;
            }
            this.f27775j.put("i18n", this.fe);
        } catch (JSONException unused) {
        }
    }

    @Override // com.byazt.zs.j
    public void j() {
        if (this.vt == null || this.be) {
            return;
        }
        this.be = true;
    }

    public void jx(int i2) {
        this.qa.setShape(0);
        this.qa.setColor(i2);
        fi();
        pc();
        qu();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void l() throws JSONException {
        di();
        jl();
        l(this.qu);
        eb();
        s();
        com.byazt.gg.q qVar = this.ov;
        if (qVar != null) {
            qVar.l();
            this.ov.jx();
            this.ov.j();
        }
        this.f27788w.setOnTouchListener(this);
        rv();
        ViewGroup viewGroup = (ViewGroup) this.f27788w.getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(!this.gh);
        }
        com.byazt.mw.hp hpVar = this.nr;
        if (hpVar != null) {
            hpVar.j();
        }
        com.byazt.mw.a aVar = this.rk;
        if (aVar != null) {
            aVar.hp();
        }
        com.byazt.gg.q qVar2 = this.ov;
        if (qVar2 != null) {
            qVar2.w();
            this.ov.a();
        }
        if (this.ux != null && hp(22)) {
            this.ux.hp(this.lp.get(22), this, this);
        }
        com.byazt.us.jx jxVar = this.vx;
        if (jxVar == null || !jxVar.hp()) {
            return;
        }
        this.vx.hp(this.f27788w);
    }

    private ImageView.ScaleType gu(String str) {
        str.getClass();
        switch (str) {
            case "center":
                this.f27779ms = ImageView.ScaleType.CENTER;
                break;
            case "fit":
                this.f27779ms = ImageView.ScaleType.FIT_CENTER;
                break;
            case "crop":
                this.f27779ms = ImageView.ScaleType.CENTER_CROP;
                break;
            default:
                this.f27779ms = ImageView.ScaleType.FIT_XY;
                break;
        }
        return this.f27779ms;
    }

    private boolean jl(String str) {
        return TextUtils.isEmpty(str) || !TextUtils.equals(str, "hidden");
    }

    public void j(int i2) {
        if (hq()) {
            T t2 = this.f27788w;
            if (t2 instanceof l) {
                ((l) t2).hp(i2);
                return;
            }
            ViewParent viewParent = (ViewGroup) t2.getParent();
            if (viewParent instanceof l) {
                ((l) viewParent).hp(this.f27788w, i2);
                return;
            }
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f27788w.getLayoutParams();
        layoutParams.width = i2;
        this.f27788w.setLayoutParams(layoutParams);
    }

    public jx<T> jx(String str) {
        if (e(str) != null) {
            return this;
        }
        return null;
    }

    public void jx(boolean z2) {
        this.f27770e = z2;
    }

    @Override // com.byazt.zs.j
    public void jx() {
        if (this.vt == null || this.cs) {
            return;
        }
        this.cs = true;
    }

    public jx<T> a(String str) {
        return jx(str);
    }

    public void eb(String str) {
        this.gu = str;
    }

    public void hp(ns nsVar) {
        this.vt = nsVar;
    }

    public void hp(boolean z2) {
        ns nsVar = this.vt;
        if (nsVar != null) {
            nsVar.hp(z2);
        }
        com.byazt.gg.q qVar = this.ov;
        if (qVar != null) {
            qVar.hp(z2);
        }
    }

    public jx<T> w(String str) {
        return l(str);
    }

    public void w(int i2) {
        if (hq()) {
            T t2 = this.f27788w;
            if (t2 instanceof l) {
                ((l) t2).l(i2);
                return;
            }
            ViewParent viewParent = (ViewGroup) t2.getParent();
            if (viewParent instanceof l) {
                ((l) viewParent).l(this.f27788w, i2);
                return;
            }
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f27788w.getLayoutParams();
        layoutParams.height = i2;
        this.f27788w.setLayoutParams(layoutParams);
    }

    public boolean hp(int i2) {
        Map<Integer, u> map = this.lp;
        return map != null && map.containsKey(Integer.valueOf(i2));
    }

    public void hp(sz szVar) {
        this.pi = szVar;
    }

    public void hp(vv vvVar) {
        this.ux = vvVar;
    }

    public void l(boolean z2) {
        this.jw = z2;
    }

    public void hp(hp.C0402hp c0402hp) {
        if (c0402hp == null) {
            return;
        }
        this.qa.setShape(0);
        this.qa.setOrientation(c0402hp.hp);
        if (Build.VERSION.SDK_INT >= 29) {
            this.qa.setColors(c0402hp.f27164l, c0402hp.jx);
        } else {
            this.qa.setColors(c0402hp.f27164l);
        }
        fi();
        pc();
        qu();
    }

    public void l(int i2) {
        ViewParent viewParent = (ViewGroup) this.f27788w.getParent();
        if (viewParent instanceof l) {
            ((l) viewParent).jx(this.f27788w, i2);
        } else {
            this.f27788w.setVisibility(i2);
        }
        com.byazt.gg.q qVar = this.ov;
        if (qVar != null) {
            qVar.hp(i2);
        }
    }

    public void s(String str) {
        this.jl = str;
    }

    public jx<T> l(String str) {
        if (TextUtils.isEmpty(this.jl) || !TextUtils.equals(this.jl, str)) {
            return null;
        }
        return this;
    }

    public void l(String str, String str2) {
        if (TextUtils.isEmpty(str2) || this.lp == null) {
            return;
        }
        try {
            int type = xs.hp(str).getType();
            u uVar = new u();
            uVar.hp(type);
            uVar.hp(this);
            JSONObject jSONObject = new JSONObject(str2);
            if (type == 3) {
                try {
                    this.sh = Float.parseFloat(com.byazt.ss.l.hp(jSONObject.optString("shakeAmplitude"), this.f27775j));
                } catch (NumberFormatException unused) {
                    this.sh = 12.0f;
                }
            }
            vv vvVar = this.ux;
            if (!(vvVar instanceof com.byazt.ks.l)) {
                hp(type, jSONObject, uVar);
            } else if (!((com.byazt.ks.l) vvVar).hp()) {
                hp(type, jSONObject, uVar);
            } else {
                uVar.hp(jSONObject);
                this.lp.put(Integer.valueOf(type), uVar);
            }
        } catch (JSONException unused2) {
        }
    }

    public void hp(Drawable drawable) {
        this.f27788w.setBackground(drawable);
    }

    public void hp(ViewGroup.LayoutParams layoutParams) {
        T t2 = this.f27788w;
        if (t2 != null) {
            t2.setLayoutParams(layoutParams);
        }
        this.fi = layoutParams;
    }

    public void hp(boolean z2, boolean z3) {
        if (this.f27788w != null) {
            hp(this.fi);
            if (z2) {
                j((int) this.zy);
            }
            if (z3) {
                w((int) this.f27776k);
            }
        }
    }

    public void hp(q.hp hpVar) {
        this.f27784s = hpVar;
    }

    public jx<T> hp(String str) {
        if (TextUtils.isEmpty(this.gu) || !TextUtils.equals(this.gu, str)) {
            return null;
        }
        return this;
    }

    public void hp(hp hpVar) {
        this.f27766a = hpVar;
    }

    public void hp(com.byazt.ql.k kVar) {
        this.f27782q = kVar;
    }

    public void hp(e eVar) {
        this.df = eVar;
    }

    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.getClass();
        switch (str) {
            case "clickable":
                this.ae = com.byazt.xa.jx.hp(str2, true);
                break;
            case "onRenderSuccess":
            case "onDelay":
            case "onShake":
            case "onSlide":
            case "onTimer":
            case "onTwist":
            case "onDown":
            case "onTap":
            case "onLoadMore":
            case "onExposure":
            case "onAnimation":
            case "onPullToRefresh":
            case "onScroll":
            case "onLongTap":
                l(str, str2);
                break;
            case "translateX":
                this.hp = true;
                this.ru = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 0.0f));
                break;
            case "translateY":
                this.gb = true;
                this.gd = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 0.0f));
                break;
            case "paddingLeft":
                this.f27769d = s.hp(this.f27777l, str2);
                this.dy = true;
                break;
            case "minWidth":
                this.sz = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "background":
            case "backgroundColor":
                if (com.byazt.xa.hp.jx(str2)) {
                    this.f27768c = true;
                    this.ku = com.byazt.xa.hp.l(str2);
                    break;
                } else {
                    this.ky = com.byazt.xa.hp.hp(str2, 0);
                    this.f27768c = false;
                    break;
                }
            case "events":
                this.ov = com.byazt.gg.q.hp(this, str2);
                break;
            case "opacity":
                this.db = true;
                this.zb = com.byazt.xa.jx.hp(str2, 1.0f);
                break;
            case "borderTopLeftRadius":
                this.f27771f = s.hp(this.f27777l, str2);
                this.hd = true;
                break;
            case "height":
                if (TextUtils.equals(str2, "match_parent")) {
                    this.f27776k = -1.0f;
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.f27776k = -2.0f;
                } else {
                    this.f27776k = s.hp(this.f27777l, str2);
                }
                this.ci = true;
                break;
            case "margin":
                this.f27787v = s.hp(this.f27777l, str2);
                break;
            case "marginTop":
                this.vv = s.hp(this.f27777l, str2);
                this.f27767b = true;
                break;
            case "backgroundDrawable":
            case "backgroundImage":
                this.xh = str2;
                break;
            case "rotate":
                this.f27773h = true;
                this.qh = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "scaleX":
                this.xv = true;
                this.tw = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "scaleY":
                this.pg = true;
                this.jd = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "particleEffect":
                if (this.vx == null) {
                    this.vx = new com.byazt.us.jx(this.f27777l);
                }
                this.vx.hp(str2);
                break;
            case "padding":
                this.f27781o = s.hp(this.f27777l, str2);
                this.nu = true;
                break;
            case "triggerFunc":
                this.ti = str2;
                break;
            case "borderGradient":
                an().hp(str2);
                break;
            case "marginBottom":
                this.ec = s.hp(this.f27777l, str2);
                this.di = true;
                break;
            case "minHeight":
                this.f27780n = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "id":
                this.gu = str2;
                break;
            case "i18n":
                this.fe = com.byazt.xa.l.hp(str2, (JSONObject) null);
                break;
            case "name":
                this.jl = str2;
                break;
            case "backgroundImageBlur":
                float fHp = com.byazt.xa.jx.hp(str2, 0.0f);
                this.as = fHp;
                if (fHp > 0.0f) {
                    this.kg = true;
                    break;
                }
                break;
            case "paddingTop":
                this.hq = s.hp(this.f27777l, str2);
                this.f27783r = true;
                break;
            case "click":
                this.nc = str2;
                break;
            case "ratio":
                this.an = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "scale":
                this.xv = true;
                this.pg = true;
                float[] fArrL = com.byazt.mw.j.l(str2, this.f27775j);
                this.tw = fArrL[0];
                this.jd = fArrL[1];
                break;
            case "width":
                if (TextUtils.equals(str2, "match_parent")) {
                    this.zy = -1.0f;
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.zy = -2.0f;
                } else {
                    this.zy = s.hp(this.f27777l, str2);
                }
                this.ty = true;
                break;
            case "borderFog":
                an().hp(str2, this.f27777l);
                break;
            case "paddingBottom":
                this.ud = s.hp(this.f27777l, str2);
                this.pu = true;
                break;
            case "animations":
                List<com.byazt.mw.jx> listHp = com.byazt.mw.j.hp(str2, this.f27775j);
                if (listHp != null && !listHp.isEmpty()) {
                    this.rk = new com.byazt.mw.a(this.f27777l, this, listHp);
                    break;
                }
                break;
            case "borderTopRightRadius":
                this.rz = s.hp(this.f27777l, str2);
                this.zx = true;
                break;
            case "overflow":
                this.gh = jl(str2);
                break;
            case "borderBottomLeftRadius":
                this.yr = s.hp(this.f27777l, str2);
                this.f27790y = true;
                break;
            case "borderBottomRightRadius":
                this.nd = s.hp(this.f27777l, str2);
                this.vq = true;
                break;
            case "paddingRight":
                this.wv = s.hp(this.f27777l, str2);
                this.lv = true;
                break;
            case "borderColor":
                this.su = com.byazt.xa.hp.hp(str2);
                break;
            case "borderStyle":
                this.rv = str2;
                break;
            case "borderWidth":
                this.ea = s.hp(this.f27777l, str2);
                break;
            case "marginRight":
                this.xs = s.hp(this.f27777l, str2);
                this.cx = true;
                break;
            case "translate":
                this.hp = true;
                this.gb = true;
                float[] fArrL2 = com.byazt.mw.j.l(str2, this.f27775j);
                this.ru = s.hp(this.f27777l, fArrL2[0]);
                this.gd = s.hp(this.f27777l, fArrL2[1]);
                break;
            case "animation":
                try {
                    this.nr = new com.byazt.mw.hp(this.f27777l, this, com.byazt.mw.j.hp(new JSONObject(str2), this.f27775j));
                    break;
                } catch (JSONException unused) {
                    return;
                }
            case "animatorSet":
                this.fu = com.byazt.ql.hp.hp(str2, this);
                break;
            case "backgroundScale":
                this.mp = true;
                this.f27779ms = gu(str2);
                break;
            case "borderRadius":
                this.f27778m = s.hp(this.f27777l, str2);
                break;
            case "rotateX":
                this.ad = true;
                this.f27785t = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "rotateY":
                this.f27791z = true;
                this.f27789x = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "rotateZ":
                this.bu = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "disable":
                this.f27774i = com.byazt.xa.jx.hp(str2, false);
                break;
            case "borderFlow":
                an().l(str2);
                break;
            case "visibility":
                if (TextUtils.equals("visible", str2)) {
                    this.qu = 0;
                } else if (TextUtils.equals("invisible", str2)) {
                    this.qu = 4;
                } else if (TextUtils.equals("gone", str2) || TextUtils.equals("hidden", str2)) {
                    this.qu = 8;
                }
                this.f27788w.setVisibility(this.qu);
                com.byazt.gg.q qVar = this.ov;
                if (qVar != null) {
                    qVar.hp(this.qu);
                    break;
                }
                break;
            case "marginLeft":
                this.f27786u = s.hp(this.f27777l, str2);
                this.ns = true;
                break;
            case "availability":
                this.pc = !TextUtils.equals(str2, "unavailable");
                break;
        }
    }

    @Override // com.byazt.zs.j
    public void l(Canvas canvas) {
        if (this instanceof hp) {
            com.byazt.mw.hp hpVar = this.nr;
            if (hpVar != null) {
                hpVar.l(canvas);
            }
            com.byazt.mw.a aVar = this.rk;
            if (aVar != null) {
                aVar.l(canvas);
            }
        }
    }

    @Override // com.byazt.zs.j
    public void l(int i2, int i3, int i4, int i5) {
        com.byazt.ql.zy zyVar = this.pf;
        if (zyVar != null) {
            zyVar.hp(i2, i3);
        }
        com.byazt.mw.hp hpVar = this.nr;
        if (hpVar != null) {
            hpVar.hp(i2, i3);
        }
        com.byazt.mw.a aVar = this.rk;
        if (aVar != null) {
            aVar.hp(i2, i3);
        }
    }

    public jx l(jx jxVar) {
        return (jxVar.ud() == null && (jxVar instanceof hp)) ? jxVar : l(jxVar.ud());
    }

    @Deprecated
    public void hp(int i2, JSONObject jSONObject, u uVar) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(cb.f11292o);
        if (jSONObjectOptJSONObject != null) {
            u uVar2 = new u();
            uVar2.hp(jSONObjectOptJSONObject);
            uVar2.hp(this);
            uVar.hp(uVar2);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("fail");
        if (jSONObjectOptJSONObject2 != null) {
            u uVar3 = new u();
            uVar3.hp(jSONObjectOptJSONObject2);
            uVar3.hp(this);
            uVar.l(uVar3);
        }
        uVar.hp(jSONObject);
        this.lp.put(Integer.valueOf(i2), uVar);
    }

    @Override // com.byazt.zs.j
    public int[] hp(int i2, int i3) {
        if (this.an > 0.0f) {
            if (this.ty) {
                int size = View.MeasureSpec.getSize(i2);
                float f2 = this.an;
                if (f2 != 0.0f) {
                    i3 = View.MeasureSpec.makeMeasureSpec((int) (size / f2), C.ENCODING_PCM_32BIT);
                }
            } else if (this.ci) {
                int size2 = View.MeasureSpec.getSize(i3);
                float f3 = this.an;
                if (f3 != 0.0f) {
                    i2 = View.MeasureSpec.makeMeasureSpec((int) (size2 * f3), C.ENCODING_PCM_32BIT);
                }
            }
        }
        if (this.vt != null && !this.gv) {
            this.gv = true;
        }
        return new int[]{i2, i3};
    }

    @Override // com.byazt.zs.j
    public void hp(int i2, int i3, int i4, int i5) {
        if (this.vt == null || this.nl) {
            return;
        }
        this.nl = true;
    }

    @Override // com.byazt.zs.j
    public void hp(Canvas canvas, com.byazt.ql.w wVar) {
        com.byazt.ql.zy zyVar = this.pf;
        if (zyVar != null) {
            zyVar.hp(canvas, wVar);
        }
    }

    @Override // com.byazt.zs.j
    public void hp(Canvas canvas) {
        if (this instanceof hp) {
            return;
        }
        com.byazt.mw.hp hpVar = this.nr;
        if (hpVar != null) {
            hpVar.hp(canvas);
        }
        com.byazt.mw.a aVar = this.rk;
        if (aVar != null) {
            aVar.hp(canvas);
        }
    }

    @Override // com.byazt.ql.vv.l
    public void hp(u uVar) {
        hp<ViewGroup> hpVar;
        jx<T> jxVarJ;
        if (uVar == null || uVar.jx() == null) {
            return;
        }
        j.hp hpVar2 = this.tr;
        if (hpVar2 != null) {
            hpVar2.l();
        }
        if (TextUtils.equals(uVar.jx().optString("type"), "onDismiss")) {
            String strOptString = uVar.jx().optString("nodeId");
            l(8);
            this.eb = (hp) l(this);
            if (TextUtils.isEmpty(strOptString) || (hpVar = this.eb) == null || (jxVarJ = hpVar.j(strOptString)) == null) {
                return;
            }
            jxVarJ.l(8);
        }
    }

    public void hp(com.byazt.ba.hp hpVar) {
        this.zv = hpVar;
    }

    public void hp(String str, Object... objArr) {
        List<com.byazt.it.l> listQ = q(str);
        if (listQ == null || listQ.isEmpty()) {
            return;
        }
        for (com.byazt.it.l lVar : listQ) {
            lVar.hp(this.ov);
            lVar.hp(objArr);
        }
    }

    public void hp(com.byazt.ql.a aVar) {
        com.byazt.gg.q qVar = this.ov;
        if (qVar != null) {
            qVar.hp(aVar);
        }
    }

    public void hp(eb ebVar) {
        this.ed = ebVar;
    }

    public void hp(k kVar) {
        com.byazt.gg.q qVar = this.ov;
        if (qVar != null) {
            qVar.hp(kVar);
        }
        this.mt = kVar;
    }

    public void hp(zy zyVar) {
        com.byazt.gg.q qVar = this.ov;
        if (qVar != null) {
            qVar.hp(zyVar);
        }
        this.cd = zyVar;
    }
}
