package com.byazt.db;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.anythink.core.api.ATAdConst;
import com.byazt.ar.a;
import com.byazt.ar.e;
import com.byazt.dnb.s;
import com.byazt.gog.hp;
import com.byazt.gy.j;
import com.byazt.hp.CreativeContainer;
import com.byazt.ih.l;
import com.byazt.ij.j;
import com.byazt.jz.ec;
import com.byazt.jz.n;
import com.byazt.jz.sz;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.pg.jl;
import com.byazt.qk.cx;
import com.byazt.qk.di;
import com.byazt.qt.eb;
import com.byazt.qt.k;
import com.byazt.qt.w;
import com.byazt.qt.zy;
import com.byazt.ruu.l;
import com.byazt.vt.UpieImageView;
import com.byazt.xci.b;
import com.byazt.xci.d;
import com.byazt.xci.df;
import com.byazt.xci.dy;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.ms;
import com.byazt.xci.q;
import com.byazt.xci.x;
import com.byazt.ymw.u;
import com.byazt.zn.hq;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsIsEncryptVersion, 30})
/* loaded from: classes2.dex */
public class jx extends zy {

    /* renamed from: a, reason: collision with root package name */
    public w f19086a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f19087b;

    /* renamed from: d, reason: collision with root package name */
    public e f19088d;

    /* renamed from: e, reason: collision with root package name */
    public k f19089e;
    public int eb;
    public com.byazt.pt.jx ec;
    public volatile ViewGroup gu;
    public final ec hp;

    /* renamed from: j, reason: collision with root package name */
    public Dialog f19090j;
    public View jl;
    public final Context jx;

    /* renamed from: l, reason: collision with root package name */
    public final mp f19092l;

    /* renamed from: n, reason: collision with root package name */
    public TextView f19093n;

    /* renamed from: o, reason: collision with root package name */
    public com.byazt.ar.w f19094o;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.jt.l f19095q;

    /* renamed from: s, reason: collision with root package name */
    public int f19096s;
    public com.byazt.pt.hp sz;

    /* renamed from: u, reason: collision with root package name */
    public float f19097u;

    /* renamed from: v, reason: collision with root package name */
    public float f19098v;

    /* renamed from: w, reason: collision with root package name */
    public eb f19099w;
    public a wv;
    public boolean zy = false;

    /* renamed from: k, reason: collision with root package name */
    public boolean f19091k = true;
    public AtomicBoolean xs = new AtomicBoolean(false);
    public AtomicBoolean vv = new AtomicBoolean(false);
    public boolean ns = false;
    public boolean cx = false;
    public volatile WeakReference<NativeVideoTsView> di = null;
    public final com.byazt.oh.hp hq = new com.byazt.oh.hp() { // from class: com.byazt.db.jx.1
        @Override // com.byazt.oh.hp
        public void hp() {
            s.hp(new Runnable() { // from class: com.byazt.db.jx.1.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    View viewHp = jx.this.hp();
                    jx jxVar = jx.this;
                    jxVar.l(jxVar.gu, viewHp);
                    jx.this.jx(viewHp);
                    jx.this.l(viewHp);
                    jx.this.hp(viewHp);
                    jx.this.j(viewHp);
                }
            }, sz.l().nf());
        }
    };
    public volatile boolean ud = false;
    public com.byazt.pt.hp nu = null;

    public jx(Context context, mp mpVar, int i2, com.byazt.jt.l lVar, boolean z2) {
        com.byazt.ymw.ec.hp(mpVar, "materialMeta不能为null");
        this.f19087b = z2;
        this.f19092l = mpVar;
        if (context == null) {
            this.jx = sz.getContext();
        } else {
            this.jx = context;
        }
        this.eb = i2;
        this.f19095q = lVar;
        ec ecVar = new ec(this.jx, this, mpVar, hp(i2));
        this.hp = ecVar;
        ecVar.hp(i2);
        k kVarHp = hp(mpVar);
        this.f19089e = kVarHp;
        if (kVarHp == null) {
            com.byazt.rk.l.hp(mpVar, lVar, i2, getLifecycleId());
        }
        initComponentEngine();
    }

    @Override // com.byazt.qt.zy
    public void destroy() {
        this.ud = true;
        k kVar = this.f19089e;
        if (kVar != null) {
            kVar.destroy();
        }
        mp mpVar = this.f19092l;
        if (mpVar != null) {
            n.hp(mpVar.n());
            n.hp(this.f19092l.jm());
        }
        ec ecVar = this.hp;
        if (ecVar != null) {
            ecVar.l();
        }
        this.f19094o.l();
        this.f19088d.hp();
        this.wv.hp();
        com.byazt.rk.l.jx(getLifecycleId(), 2);
    }

    public void finalize() throws Throwable {
        super.finalize();
        if (this.ud) {
            return;
        }
        destroy();
    }

    @Override // com.byazt.qt.zy
    public Bitmap getAdLogo() {
        mp mpVar = this.f19092l;
        if (mpVar == null) {
            return j.hp(1);
        }
        String strNn = mpVar.nn();
        if (TextUtils.isEmpty(strNn)) {
            return j.hp(1);
        }
        if (this.f19093n == null) {
            this.f19093n = new TextView(sz.getContext());
            this.f19093n.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        }
        xh.hp(this.f19093n, strNn, sz.getContext());
        return xh.eb(this.f19093n);
    }

    @Override // com.byazt.qt.zy
    public View getAdView() {
        return null;
    }

    @Override // com.byazt.qt.zy
    public int getAppCommentNum() {
        if (this.f19092l.v() != null) {
            return this.f19092l.v().a();
        }
        return 0;
    }

    @Override // com.byazt.qt.zy
    public int getAppScore() {
        if (this.f19092l.v() != null) {
            return this.f19092l.v().w();
        }
        return 0;
    }

    @Override // com.byazt.qt.zy
    public int getAppSize() {
        if (this.f19092l.v() != null) {
            return this.f19092l.v().eb();
        }
        return 0;
    }

    @Override // com.byazt.qt.zy
    public String getButtonText() {
        return this.f19092l.ll();
    }

    public ViewGroup getContainer() {
        return this.gu;
    }

    public Context getContext() {
        return this.jx;
    }

    @Override // com.byazt.qt.zy
    public String getDescription() {
        mp mpVar = this.f19092l;
        if (mpVar == null) {
            return "";
        }
        if (com.byazt.we.hp.hp(mpVar) && !TextUtils.isEmpty(ms.a(this.f19092l))) {
            return ms.a(this.f19092l);
        }
        if (sz.l().gv()) {
            if (!TextUtils.isEmpty(this.f19092l.cu())) {
                return this.f19092l.cu();
            }
            if (!TextUtils.isEmpty(this.f19092l.v_())) {
                return this.f19092l.v_();
            }
        } else {
            if (!TextUtils.isEmpty(this.f19092l.v_())) {
                return this.f19092l.v_();
            }
            if (!TextUtils.isEmpty(this.f19092l.cu())) {
                return this.f19092l.cu();
            }
        }
        return "";
    }

    @Override // com.byazt.qt.zy
    public eb getDislikeDialog(Activity activity) {
        if (this.f19089e != null && this.vv.get()) {
            return this.f19089e.getDislikeDialog(activity);
        }
        if (this.f19099w == null) {
            hp(activity);
        }
        return this.f19099w;
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.j getDislikeInfo() {
        mp mpVar = this.f19092l;
        if (mpVar == null || mpVar.ju() == null) {
            return null;
        }
        this.f19092l.ju().l(hp(this.eb));
        return new com.byazt.bl.hp(this.f19092l.ju());
    }

    @Override // com.byazt.qt.zy
    public w getDownloadStatusController() {
        if (this.f19089e != null && this.xs.get()) {
            return null;
        }
        mp mpVar = this.f19092l;
        boolean z2 = mpVar != null && mpVar.q() == 4;
        if (this.f19086a == null && this.hp != null && z2) {
            this.f19086a = new w() { // from class: com.byazt.db.jx.8
                @Override // com.byazt.qt.w
                public void cancelDownload() {
                    com.byazt.gog.jx jxVarHp;
                    if (jx.this.nu == null || (jxVarHp = jx.this.hp.hp()) == null) {
                        return;
                    }
                    jxVarHp.w();
                }

                @Override // com.byazt.qt.w
                public void changeDownloadStatus() throws JSONException {
                    int iK;
                    if (jx.this.nu != null) {
                        com.byazt.gog.jx jxVarHp = jx.this.hp.hp();
                        if ((jxVarHp instanceof com.byazt.fy.hp) && (1 == (iK = ((com.byazt.fy.hp) jxVarHp).k()) || 4 == iK || 6 == iK || 7 == iK)) {
                            HashMap map = new HashMap();
                            map.put("downloadstatuscontroller_type", 1);
                            jx jxVar = jx.this;
                            String strHp = jxVar.hp(jxVar.eb);
                            q.hp hpVar = new q.hp();
                            float fA = xh.a(jx.this.jx);
                            com.byazt.jdb.j.hp("click", jx.this.f19092l, hpVar.hp(fA).l(((jl) com.byazt.ym.j.getService("device_info_new")).getDisplayDpi()).l(xh.eb(jx.this.jx)).hp(com.byazt.fy.s.l(jx.this.f19092l)).hp(), strHp, true, map, 1, false, false);
                        }
                        if (jxVarHp != null) {
                            jxVarHp.jx(true);
                            jxVarHp.hp(ky.cx(jx.this.f19092l), false);
                        }
                    }
                }
            };
        }
        return this.f19086a;
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.jl getIcon() {
        return com.byazt.we.hp.hp(this.f19092l) ? TextUtils.isEmpty(ms.q(this.f19092l)) ? dy.hp(0, 0, "", 0.0d) : dy.hp(ms.gu(this.f19092l), ms.e(this.f19092l), ms.q(this.f19092l), 0.0d) : this.f19092l.nq() == null ? dy.hp(0, 0, "", 0.0d) : dy.hp(this.f19092l.nq());
    }

    @Override // com.byazt.qt.zy
    public List<com.byazt.qt.jl> getImageList() {
        ArrayList arrayList = new ArrayList();
        if (mp.l(this.f19092l)) {
            com.byazt.lf.k.hp().hp(this.f19092l, 1, "Invalid invoke getImageList");
            return arrayList;
        }
        if (this.f19092l.vi() != null && !this.f19092l.vi().isEmpty()) {
            Iterator<dy> it = this.f19092l.vi().iterator();
            while (it.hasNext()) {
                com.byazt.qt.jl jlVarHp = dy.hp(it.next());
                if (jlVarHp != null) {
                    arrayList.add(jlVarHp);
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.qt.zy
    public int getImageMode() {
        mp mpVar = this.f19092l;
        if (mpVar == null) {
            return -1;
        }
        if (mp.l(mpVar)) {
            int iHy = this.f19092l.hy();
            if (iHy == 5) {
                return 2001;
            }
            if (iHy == 15) {
                return 2002;
            }
            if (com.byazt.we.hp.hp(this.f19092l)) {
                return ms.jl(this.f19092l) > ms.zy(this.f19092l) ? 2001 : 2002;
            }
            List<dy> listVi = this.f19092l.vi();
            if (listVi != null && !listVi.isEmpty() && listVi.get(0) != null && listVi.get(0).w() && CreativeContainer.hp(this.f19092l)) {
                return listVi.get(0).l() >= listVi.get(0).jx() ? 2001 : 2002;
            }
        }
        List<dy> listVi2 = this.f19092l.vi();
        return (listVi2 == null || listVi2.isEmpty() || listVi2.get(0) == null || !listVi2.get(0).w() || !CreativeContainer.hp(this.f19092l)) ? this.f19092l.hy() : listVi2.get(0).l() >= listVi2.get(0).jx() ? 5 : 15;
    }

    public ec getInteractionManager() {
        return this.hp;
    }

    @Override // com.byazt.qt.zy
    public int getInteractionType() {
        mp mpVar = this.f19092l;
        if (mpVar == null) {
            return -1;
        }
        return mpVar.q();
    }

    @Override // com.byazt.qt.zy
    public String getLifecycleId() {
        mp mpVar = this.f19092l;
        if (mpVar != null) {
            return mpVar.di();
        }
        return null;
    }

    public mp getMaterialMeta() {
        return this.f19092l;
    }

    @Override // com.byazt.qt.zy
    public Map<String, Object> getMediaExtraInfo() {
        mp mpVar = this.f19092l;
        if (mpVar != null) {
            return mpVar.rp();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qa.w getMediationManager() {
        return new com.byazt.pi.jx();
    }

    @Override // com.byazt.qt.zy
    public String getSource() {
        return this.f19092l.qk();
    }

    @Override // com.byazt.qt.zy
    public String getTitle() {
        mp mpVar = this.f19092l;
        if (mpVar == null) {
            return "";
        }
        if (com.byazt.we.hp.hp(mpVar) && !TextUtils.isEmpty(ms.jx(this.f19092l))) {
            return ms.jx(this.f19092l);
        }
        if (sz.l().gv()) {
            if (!TextUtils.isEmpty(this.f19092l.v_())) {
                return this.f19092l.v_();
            }
            if (this.f19092l.v() != null && !TextUtils.isEmpty(this.f19092l.v().jx())) {
                return this.f19092l.v().jx();
            }
            if (!TextUtils.isEmpty(getSource())) {
                return getSource();
            }
        } else {
            if (this.f19092l.v() != null && !TextUtils.isEmpty(this.f19092l.v().jx())) {
                return this.f19092l.v().jx();
            }
            if (!TextUtils.isEmpty(getSource())) {
                return getSource();
            }
            if (!TextUtils.isEmpty(this.f19092l.v_())) {
                return this.f19092l.v_();
            }
        }
        return "";
    }

    @Override // com.byazt.qt.zy
    public com.byazt.qt.jl getVideoCoverImage() {
        mp mpVar = this.f19092l;
        if (mpVar == null) {
            return dy.hp(0, 0, "", 0.0d);
        }
        if (com.byazt.we.hp.hp(mpVar)) {
            return TextUtils.isEmpty(ms.s(this.f19092l)) ? dy.hp(0, 0, "", 0.0d) : dy.hp(ms.zy(this.f19092l), ms.jl(this.f19092l), ms.s(this.f19092l), 0.0d);
        }
        if (df.v(this.f19092l) != null) {
            return dy.hp(df.jx(this.f19092l), df.j(this.f19092l), df.l(this.f19092l), 0.0d);
        }
        List<dy> listVi = this.f19092l.vi();
        if (listVi == null || listVi.isEmpty() || listVi.get(0) == null || !listVi.get(0).w() || !CreativeContainer.hp(this.f19092l)) {
            return dy.hp(0, 0, "", 0.0d);
        }
        return dy.hp(listVi.get(0).jx(), listVi.get(0).l(), listVi.get(0).hp(), 0.0d);
    }

    public void initComponentEngine() {
        com.byazt.ar.hp hpVar = new com.byazt.ar.hp() { // from class: com.byazt.db.jx.3
            @Override // com.byazt.qk.gu
            public void hp(float f2) {
            }

            @Override // com.byazt.qk.gu
            public void j() {
            }

            @Override // com.byazt.qk.gu
            public int jx() {
                return 0;
            }

            @Override // com.byazt.qk.gu
            public void l(int i2) {
            }

            @Override // com.byazt.qk.gu
            public void setPauseFromExpressView(boolean z2) {
            }

            @Override // com.byazt.qk.gu
            public void w() {
            }

            @Override // com.byazt.qk.gu
            public void hp(int i2) {
            }

            @Override // com.byazt.qk.gu
            public void j(int i2) {
            }

            @Override // com.byazt.qk.gu
            public void jx(int i2) {
            }

            @Override // com.byazt.qk.gu
            public int l() {
                NativeVideoTsView nativeVideoTsView;
                if (jx.this.di == null || (nativeVideoTsView = (NativeVideoTsView) jx.this.di.get()) == null) {
                    return 0;
                }
                com.byazt.su.jx nativeVideoController = nativeVideoTsView.getNativeVideoController();
                if (nativeVideoController == null) {
                    return 4;
                }
                if (nativeVideoController.sz()) {
                    return 5;
                }
                if (nativeVideoController.ns()) {
                    return 1;
                }
                return ((nativeVideoController instanceof com.byazt.oh.j) && ((com.byazt.oh.j) nativeVideoController).ms()) ? 2 : 3;
            }

            @Override // com.byazt.qk.gu
            public void hp(int i2, String str) {
            }

            @Override // com.byazt.ar.hp
            public void hp(ViewGroup viewGroup) {
            }

            @Override // com.byazt.qk.gu
            public void hp(mp mpVar) {
            }

            @Override // com.byazt.qk.gu
            public long hp() {
                NativeVideoTsView nativeVideoTsView;
                com.byazt.su.jx nativeVideoController;
                if (jx.this.di == null || (nativeVideoTsView = (NativeVideoTsView) jx.this.di.get()) == null || (nativeVideoController = nativeVideoTsView.getNativeVideoController()) == null) {
                    return 0L;
                }
                return ((int) nativeVideoController.gu()) / 1000;
            }

            @Override // com.byazt.ar.hp
            public void hp(View view) {
                com.byazt.rk.l.jx(jx.this.getLifecycleId());
                if (jx.this.sz != null) {
                    jx.this.sz.hp(view, jx.this);
                }
                com.byazt.ar.jx.l(jx.this.f19092l, d.eb(jx.this.f19092l), true, null);
            }

            @Override // com.byazt.ar.hp
            public void hp(View view, int i2, com.byazt.wkx.jx jxVar, x xVar) {
                String strOptString;
                com.byazt.xci.e eVar;
                boolean zOptBoolean;
                if (jxVar instanceof b) {
                    b bVar = (b) jxVar;
                    eVar = new com.byazt.xci.e();
                    eVar.hp(bVar.hp);
                    eVar.l(bVar.f27199l);
                    eVar.jx(bVar.jx);
                    eVar.j(bVar.f27197j);
                    eVar.hp(bVar.f27204w);
                    eVar.l(bVar.f27195a);
                    eVar.l(bVar.f27203v);
                    eVar.hp(true);
                    strOptString = bVar.hp().optString("uchain_event_name");
                    eVar.jx(strOptString);
                    zOptBoolean = bVar.hp().optBoolean("isLottieInternalClick", false);
                } else {
                    strOptString = "";
                    eVar = null;
                    zOptBoolean = false;
                }
                boolean zHp = com.byazt.ar.jx.hp(jx.this.di == null ? null : (NativeVideoTsView) jx.this.di.get(), jxVar);
                if (i2 == 1) {
                    jx.this.hp.l(view, eVar);
                    com.byazt.ar.jx.hp(jx.this.f19092l, xVar, zHp, (JSONObject) null, zOptBoolean);
                    return;
                }
                if (i2 == 2) {
                    jx.this.hp.hp(view, eVar);
                    com.byazt.ar.jx.hp(jx.this.f19092l, xVar, zHp, (JSONObject) null, zOptBoolean);
                } else {
                    if (i2 == 3) {
                        jx.this.w();
                        return;
                    }
                    if (i2 != 5) {
                        if (i2 == 7 && !ky.hp(strOptString, jx.this.f19092l, jx.this.jx)) {
                            com.byazt.zn.w.hp(jx.this.jx, jx.this.f19092l);
                            return;
                        }
                        return;
                    }
                    jx.this.l(!(jx.this.f19092l.dh() == 1));
                }
            }

            @Override // com.byazt.ar.hp
            public void hp(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
                com.byazt.xci.e eVar;
                if ((i2 == 1 || i2 == 2) && (jxVar instanceof b)) {
                    b bVar = (b) jxVar;
                    eVar = new com.byazt.xci.e();
                    eVar.hp(bVar.hp);
                    eVar.l(bVar.f27199l);
                    eVar.jx(bVar.jx);
                    eVar.j(bVar.f27197j);
                    eVar.hp(bVar.f27204w);
                    eVar.l(bVar.f27195a);
                    eVar.l(bVar.f27203v);
                } else {
                    eVar = null;
                }
                if (i2 == 2) {
                    jx.this.hp.hp(view, eVar);
                }
                if (i2 == 1) {
                    jx.this.hp.l(view, eVar);
                }
            }
        };
        this.f19094o = new com.byazt.ar.w(this.f19092l, hpVar, this.f19095q, this.jx);
        this.f19088d = new e(this.f19092l, hpVar, this.f19095q, this.jx);
        this.wv = new a(this.f19092l, hpVar, this.f19095q, this.jx);
    }

    public boolean isAllowDevOperate() {
        return this.zy;
    }

    public boolean isAutoPlay() {
        return this.f19091k;
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
        if (this.cx) {
            return;
        }
        hq.hp(this.f19092l, d2, str, str2);
        this.cx = true;
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.pt.hp hpVar, com.byazt.tl.j jVar) {
    }

    @Override // com.byazt.qt.zy
    public void render() {
        jx();
        com.byazt.kl.j.hp().hp(this.f19092l).hp(this.eb).l(this.f19096s);
    }

    @Override // com.byazt.qt.zy
    public void setActivityForDownloadApp(Activity activity) {
        if (activity != null) {
            this.hp.hp(activity);
        }
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        mp mpVar = this.f19092l;
        if (mpVar != null) {
            n.hp(mpVar.n(), lVar, com.byazt.gu.l.class);
        }
    }

    public void setAllowDevOperate(boolean z2) {
        this.zy = z2;
    }

    public void setAutoPlay(boolean z2) {
        this.f19091k = z2;
    }

    @Override // com.byazt.qt.zy
    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
        k kVar;
        if (hpVar == null || activity == null || (kVar = this.f19089e) == null) {
            return;
        }
        kVar.setDislikeCallback(activity, hpVar);
    }

    @Override // com.byazt.qt.zy
    public void setDislikeDialog(final Dialog dialog, final Integer[] numArr) {
        k kVar = this.f19089e;
        if (kVar != null) {
            kVar.setDislikeDialog(dialog, numArr);
        }
        try {
            dialog.getWindow().getDecorView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.db.jx.9
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    com.byazt.bl.l lVarJu = jx.this.f19092l != null ? jx.this.f19092l.ju() : null;
                    if (lVarJu != null) {
                        com.byazt.ruu.l.hp(lVarJu, dialog, numArr, new l.hp() { // from class: com.byazt.db.jx.9.1
                            @Override // com.byazt.ruu.l.hp
                            public void hp(com.byazt.qt.a aVar) {
                                com.byazt.rk.l.jx(jx.this.getLifecycleId(), 1);
                            }
                        });
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                }
            });
        } catch (Throwable unused) {
        }
        hp(dialog);
        mp mpVar = this.f19092l;
        if (mpVar != null) {
            n.l(mpVar.jm(), dialog, Dialog.class);
        }
    }

    @Override // com.byazt.qt.zy
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
        com.byazt.ymw.ec.hp(jxVar, "downloadListener不能为null");
        this.hp.hp(hp.C0257hp.hp(jxVar));
        k kVar = this.f19089e;
        if (kVar != null) {
            kVar.setDownloadListener(jxVar);
        }
    }

    @Override // com.byazt.qt.zy
    public void setEasyPlayWidgetListener(com.byazt.pt.l lVar) {
        this.f19094o.hp(lVar);
    }

    @Override // com.byazt.qt.zy
    public void setExpressRenderListener(com.byazt.pt.jx jxVar) {
        this.ec = jxVar;
    }

    public void setPluginAdInteractionListener(com.byazt.pt.hp hpVar) {
        this.nu = hpVar;
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
        ec ecVar = this.hp;
        if (ecVar != null) {
            ecVar.hp(d2);
        }
    }

    public void setVideoViewEasyPlayableSender() {
        if (this.di == null || this.di.get() == null) {
            return;
        }
        this.di.get().setEasyPlayableEventSender(this.f19094o.hp());
    }

    public void setWeakReferenceTsView(WeakReference<NativeVideoTsView> weakReference) {
        this.di = weakReference;
        ec ecVar = this.hp;
        if (ecVar != null) {
            ecVar.hp(weakReference);
        }
    }

    @Override // com.byazt.qt.zy
    public void showInteractionExpressAd(Activity activity) {
    }

    @Override // com.byazt.qt.zy
    public void uploadDislikeEvent(String str) {
        com.byazt.jdb.j.l(this.f19092l, str);
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
        if (this.ns) {
            return;
        }
        hq.hp(this.f19092l, d2);
        this.ns = true;
    }

    @Override // com.byazt.qt.zy
    public com.byazt.xci.jl getComplianceInfo() {
        mp mpVar = this.f19092l;
        if (mpVar == null || mpVar.q() != 4) {
            return null;
        }
        return new com.byazt.xci.jl(this.f19092l);
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, View view, com.byazt.pt.hp hpVar) {
        com.byazt.ymw.ec.hp(viewGroup != null || this.vv.get(), "container不能为null");
        com.byazt.ymw.ec.hp(view != null || this.vv.get(), "clickView不能为null");
        this.gu = viewGroup;
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(view);
        registerViewForInteraction(viewGroup, arrayList, null, hpVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(View view) throws JSONException {
        final JSONObject jSONObject;
        if (this.gu == null || com.byazt.rk.j.a(getLifecycleId())) {
            return;
        }
        final JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("x", 0);
            jSONObject2.put("y", 0);
            jSONObject2.put("w", this.gu.getWidth());
            jSONObject2.put("h", this.gu.getHeight());
        } catch (JSONException unused) {
        }
        if (view != null) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("x", (int) view.getX());
                jSONObject.put("y", (int) view.getY());
                jSONObject.put("w", view.getWidth());
                jSONObject.put("h", view.getHeight());
            } catch (JSONException unused2) {
            }
        } else {
            jSONObject = null;
        }
        com.byazt.rk.j.hp().hp(getLifecycleId(), new j.hp() { // from class: com.byazt.db.jx.5
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar) {
                if (lVar instanceof com.byazt.kf.w) {
                    com.byazt.kf.w wVar = (com.byazt.kf.w) lVar;
                    wVar.hp = jSONObject2;
                    if (mp.jx(jx.this.f19092l)) {
                        JSONObject jSONObject3 = jSONObject;
                        if (jSONObject3 != null) {
                            wVar.jx = jSONObject3;
                            return;
                        }
                        return;
                    }
                    JSONObject jSONObject4 = jSONObject;
                    if (jSONObject4 != null) {
                        wVar.f22031l = jSONObject4;
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(View view) throws JSONException {
        if (sz.l().ae()) {
            return;
        }
        this.wv.hp(this.gu, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        Dialog dialog = this.f19090j;
        if (dialog != null) {
            dialog.show();
            return;
        }
        eb ebVar = this.f19099w;
        if (ebVar != null) {
            ebVar.showDislikeDialog();
        } else {
            TTDelegateActivity.hp(getContext(), this.f19092l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(List<View> list, View view) {
        if (view != null && list != null) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                View view2 = list.get(i2);
                if (view2 == view) {
                    return true;
                }
                if ((view2 instanceof ViewGroup) && hp((ViewGroup) view2, view)) {
                    return true;
                }
            }
        }
        return false;
    }

    private NativeVideoTsView jx(ViewGroup viewGroup) {
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ("ado_tag".equals(childAt.getTag()) && (childAt instanceof NativeVideoTsView)) {
                return (NativeVideoTsView) childAt;
            }
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public eb getDislikeDialog(final Dialog dialog, Integer[] numArr) {
        if (dialog != null) {
            com.byazt.ruu.l.hp(this.f19092l.ju(), dialog, numArr, new l.hp() { // from class: com.byazt.db.jx.6
                @Override // com.byazt.ruu.l.hp
                public void hp(com.byazt.qt.a aVar) {
                    com.byazt.rk.l.jx(jx.this.getLifecycleId(), 1);
                }
            });
            return new eb() { // from class: com.byazt.db.jx.7
                @Override // com.byazt.qt.eb
                public boolean isShow() {
                    return false;
                }

                @Override // com.byazt.qt.eb
                public void resetDislikeStatus() {
                }

                @Override // com.byazt.qt.eb
                public void setDislikeInteractionCallback(com.byazt.cg.hp hpVar) {
                }

                @Override // com.byazt.qt.eb
                public void setDislikeSource(String str) {
                }

                @Override // com.byazt.qt.eb
                public void showDislikeDialog() {
                    if (!(dialog.getContext() instanceof Activity) || ((Activity) dialog.getContext()).isFinishing()) {
                        return;
                    }
                    dialog.show();
                }
            };
        }
        throw new IllegalArgumentException("dialog is null, please check");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View l(ViewGroup viewGroup) {
        ImageView imageView = null;
        if (viewGroup != null) {
            ArrayList arrayList = new ArrayList();
            UpieImageView[] upieImageViewArr = {null};
            hp(viewGroup, arrayList, upieImageViewArr);
            UpieImageView upieImageView = upieImageViewArr[0];
            if (upieImageView != null) {
                return upieImageView;
            }
            if (!arrayList.isEmpty()) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ImageView imageView2 = arrayList.get(i2);
                    if (imageView == null || (imageView2.getWidth() > imageView.getWidth() && imageView2.getHeight() > imageView.getHeight())) {
                        imageView = imageView2;
                    }
                }
            }
        }
        return imageView;
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, com.byazt.pt.hp hpVar) {
        com.byazt.ymw.ec.hp(viewGroup != null || this.vv.get(), "container不能为null");
        com.byazt.ymw.ec.hp(list != null || this.vv.get(), "clickView不能为null");
        com.byazt.ymw.ec.hp(list != null && list.size() > 0, "clickViews数量必须大于等于1");
        this.gu = viewGroup;
        registerViewForInteraction(viewGroup, list, list2, null, hpVar);
    }

    private void hp(final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, final List<View> list4) {
        s.j(new Runnable() { // from class: com.byazt.db.jx.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    View viewL = jx.this.l(viewGroup);
                    com.byazt.lf.k.hp().hp(jx.this.f19092l, jx.this.eb, jx.l((List<View>) list2, viewL) ? 1 : jx.l((List<View>) list3, viewL) ? 2 : jx.l((List<View>) list4, viewL) ? 3 : jx.l((List<View>) list, viewL) ? 4 : 0, viewL);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private static boolean hp(ViewGroup viewGroup, View view) {
        if (viewGroup != null && view != null) {
            if (viewGroup == view) {
                return true;
            }
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt == view) {
                    return true;
                }
                if (childAt instanceof ViewGroup) {
                    return hp((ViewGroup) childAt, view);
                }
            }
        }
        return false;
    }

    private void jx() {
        com.byazt.pt.jx jxVar;
        if (this.f19089e == null) {
            com.byazt.pt.jx jxVar2 = this.ec;
            if (jxVar2 != null) {
                jxVar2.hp(this.gu, this.f19095q.s(), this.f19095q.q(), false);
                return;
            }
            return;
        }
        if (this.xs.get() && (jxVar = this.ec) != null) {
            jxVar.hp(this.jl, this.f19098v, this.f19097u, this.vv.get());
        } else {
            this.f19089e.setExpressInteractionListener(new com.byazt.qrd.l(null) { // from class: com.byazt.db.jx.2
                @Override // com.byazt.qrd.l
                public void hp(View view, int i2) {
                    com.byazt.rk.l.jx(jx.this.getLifecycleId());
                    if (jx.this.sz != null) {
                        jx.this.sz.hp(view, jx.this);
                    }
                }

                @Override // com.byazt.qrd.l
                public void l(View view, int i2) {
                    com.byazt.rk.l.hp(jx.this.getLifecycleId(), false);
                    if (jx.this.sz != null) {
                        jx.this.sz.hp(jx.this);
                    }
                    if (jx.this.f19094o != null && jx.this.f19094o.hp() != null) {
                        jx.this.f19094o.hp().j();
                    }
                    if (!jx.this.f19092l.o() || jx.this.f19092l.k() == null) {
                        return;
                    }
                    com.byazt.sl.hp.hp().hp(jx.this.jx, jx.this.f19092l.k().l());
                }

                @Override // com.byazt.qrd.l
                public void hp(View view, String str, int i2) {
                    jx.this.xs.set(true);
                    jx jxVar3 = jx.this;
                    jxVar3.jl = jxVar3.gu;
                    jx jxVar4 = jx.this;
                    jxVar4.f19098v = jxVar4.f19095q.s();
                    jx jxVar5 = jx.this;
                    jxVar5.f19097u = jxVar5.f19095q.q();
                    if (jx.this.ec != null) {
                        jx.this.ec.hp(jx.this.gu, jx.this.f19095q.s(), jx.this.f19095q.q(), false);
                    }
                }

                @Override // com.byazt.qrd.l
                public void hp(View view, float f2, float f3) {
                    jx.this.xs.set(true);
                    jx.this.vv.set(true);
                    jx.this.jl = view;
                    jx.this.f19098v = f2;
                    jx.this.f19097u = f3;
                    if (jx.this.ec != null) {
                        jx.this.ec.hp(view, f2, f3, true);
                    }
                }
            });
            this.f19089e.render();
        }
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, com.byazt.pt.hp hpVar) {
        com.byazt.ymw.ec.hp(viewGroup != null || this.vv.get(), "container不能为null");
        com.byazt.ymw.ec.hp(list != null || this.vv.get(), "clickView不能为null");
        com.byazt.ymw.ec.hp(list != null && list.size() > 0, "clickViews数量必须大于等于1");
        this.gu = viewGroup;
        registerViewForInteraction(viewGroup, null, list, list2, view, hpVar);
    }

    private void hp(ViewGroup viewGroup, List<ImageView> list, UpieImageView[] upieImageViewArr) {
        if (viewGroup != null) {
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt instanceof ImageView) {
                    list.add((ImageView) childAt);
                } else if (childAt instanceof UpieImageView) {
                    upieImageViewArr[0] = (UpieImageView) childAt;
                    return;
                } else if (childAt instanceof ViewGroup) {
                    hp((ViewGroup) childAt, list, upieImageViewArr);
                }
            }
        }
    }

    private void j() {
        if (this.gu == null || this.f19089e == null || this.jl == null) {
            return;
        }
        this.gu.removeAllViews();
        if (this.jl.getParent() != null) {
            ((ViewGroup) this.jl.getParent()).removeAllViews();
        }
        this.gu.addView(this.jl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(View view) {
        this.f19088d.hp(this.gu, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(ViewGroup viewGroup, View view) throws JSONException {
        float fJ;
        float fJ2;
        float fJ3;
        float fJ4;
        if (viewGroup != null) {
            fJ2 = xh.j(this.jx, viewGroup.getWidth());
            fJ = xh.j(this.jx, viewGroup.getHeight());
        } else {
            fJ = 0.0f;
            fJ2 = 0.0f;
        }
        if (view != null) {
            fJ4 = xh.j(this.jx, view.getWidth());
            fJ3 = xh.j(this.jx, view.getHeight());
        } else {
            fJ3 = 0.0f;
            fJ4 = 0.0f;
        }
        boolean z2 = false;
        boolean z3 = fJ2 > 0.0f && fJ > 0.0f;
        if (fJ4 > 0.0f && fJ3 > 0.0f) {
            z2 = true;
        }
        if (z3 || z2) {
            mp mpVar = this.f19092l;
            com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(mpVar == null ? null : mpVar.xq(), "ad_show_real_size");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_WIDTH, fJ2);
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_HEIGHT, fJ);
                jSONObject.put("image_width", fJ4);
                jSONObject.put("image_height", fJ3);
            } catch (JSONException unused) {
            }
            jxVarHp.put(this.f19095q.j(), jSONObject.toString());
        }
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, com.byazt.pt.hp hpVar) {
        com.byazt.ymw.ec.hp(viewGroup != null || this.vv.get(), "container不能为null");
        com.byazt.ymw.ec.hp(list2 != null || this.vv.get(), "clickView不能为null");
        com.byazt.ymw.ec.hp(list2 != null && list2.size() > 0, "clickViews数量必须大于等于1");
        this.gu = viewGroup;
        registerViewForInteraction(viewGroup, list, list2, list3, (List<View>) null, view, hpVar);
    }

    private List<View> hp(List<View> list, List<View> list2) {
        LinkedList linkedList = new LinkedList();
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                linkedList.add(list.get(i2));
            }
        }
        if (list2 != null && !list2.isEmpty()) {
            int size2 = list2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                linkedList.add(list2.get(i3));
            }
        }
        return linkedList;
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view, com.byazt.pt.hp hpVar) {
        int i2;
        boolean z2 = false;
        com.byazt.ymw.ec.hp(viewGroup != null || this.vv.get(), "container不能为null");
        com.byazt.ymw.ec.hp(list2 != null || this.vv.get(), "clickView不能为null");
        com.byazt.ymw.ec.hp(list2 != null && list2.size() > 0, "clickViews数量必须大于等于1");
        this.gu = viewGroup;
        this.sz = hpVar;
        if (list3 != null && list3.size() > 0) {
            z2 = true;
        }
        hp(z2);
        List<View> listHp = l() ? hp(list2, list3) : list3;
        if (this.vv.get() && ((i2 = this.eb) == 5 || i2 == 1 || i2 == 9)) {
            j();
        }
        if (!this.vv.get()) {
            ec ecVar = this.hp;
            if (ecVar != null) {
                ecVar.hp(this.hq);
                List<View> list5 = listHp;
                this.hp.hp(viewGroup, list, list2, list5, list4, view, hpVar, this.nu);
                listHp = list5;
            }
            hp(viewGroup);
        }
        eb ebVar = this.f19099w;
        if (ebVar instanceof com.byazt.ih.l) {
            ((com.byazt.ih.l) ebVar).setMonitorView(this.gu);
        }
        if (!sz.l().e() || mp.jx(this.f19092l) || CreativeContainer.hp(this.f19092l)) {
            return;
        }
        hp(viewGroup, list, list2, listHp, list4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(View view) {
        com.byazt.ar.eb ebVarHp = this.f19094o.hp();
        if (ebVarHp != null) {
            ebVarHp.j();
        }
        if (view instanceof NativeVideoTsView) {
            ((NativeVideoTsView) view).setEasyPlayableEventSender(ebVarHp);
        }
        this.f19094o.hp(this.gu, view);
    }

    private boolean l() {
        mp mpVar = this.f19092l;
        if (mpVar == null || mpVar.q() == 5) {
            return false;
        }
        if (this.f19096s == 0) {
            this.f19096s = ky.zy(this.f19092l);
        }
        return sz.l().eb(this.f19096s) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(boolean z2) {
        NativeVideoTsView nativeVideoTsView = (this.di == null || this.di.get() == null) ? null : this.di.get();
        if (nativeVideoTsView == null) {
            return;
        }
        nativeVideoTsView.l(z2, true);
        nativeVideoTsView.setIsQuiet(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View hp() {
        if (mp.jx(this.f19092l)) {
            if (this.di == null || this.di.get() == null) {
                return null;
            }
            NativeVideoTsView nativeVideoTsView = this.di.get();
            mp mpVar = this.f19092l;
            if (mpVar != null) {
                n.l(mpVar.jm(), nativeVideoTsView, NativeVideoTsView.class);
            }
            return nativeVideoTsView;
        }
        return l(this.gu);
    }

    public void hp(ViewGroup viewGroup) {
        if (viewGroup != null && this.f19087b && com.byazt.dnb.jl.hp(this.f19092l)) {
            NativeVideoTsView nativeVideoTsViewJx = jx(viewGroup);
            if (nativeVideoTsViewJx != null) {
                if (5 == this.eb) {
                    nativeVideoTsViewJx.setIsAutoPlay(this.zy ? this.f19095q.w() : this.f19091k);
                    return;
                } else {
                    nativeVideoTsViewJx.setIsAutoPlay(this.f19091k);
                    return;
                }
            }
            NativeVideoTsView nativeVideoTsView = new NativeVideoTsView(this.jx, this.f19092l, false, false, ky.l(this.eb), false, false);
            if (5 == this.eb) {
                nativeVideoTsView.setIsAutoPlay(this.zy ? this.f19095q.w() : this.f19091k);
            } else {
                nativeVideoTsView.setIsAutoPlay(this.f19091k);
            }
            nativeVideoTsView.setTag("ado_tag");
            nativeVideoTsView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));
            viewGroup.addView(nativeVideoTsView);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v7, types: [android.content.Context] */
    private void hp(Activity activity) {
        Context context = this.jx;
        Activity activity2 = activity;
        if (context instanceof Activity) {
            activity2 = activity;
            if (!((Activity) context).isFinishing()) {
                activity2 = this.jx;
            }
        }
        Activity activity3 = activity2;
        com.byazt.ih.l lVar = new com.byazt.ih.l(activity3, this.f19092l.ju(), hp(this.eb), false, com.byazt.ws.l.hp()) { // from class: com.byazt.db.jx.10
            @Override // com.byazt.ih.l, com.byazt.qt.eb
            public void setDislikeInteractionCallback(final com.byazt.cg.hp hpVar) {
                setDislikeInteractionCallback(new l.hp() { // from class: com.byazt.db.jx.10.1
                    @Override // com.byazt.ih.l.hp
                    public void hp() {
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.hp();
                        }
                    }

                    @Override // com.byazt.ih.l.hp
                    public void l() {
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.l();
                        }
                    }

                    @Override // com.byazt.ih.l.hp
                    public void hp(int i2, String str, boolean z2) {
                        com.byazt.rk.l.jx(jx.this.getLifecycleId(), 1);
                        com.byazt.cg.hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.hp(i2, str, z2);
                        }
                    }
                });
            }
        };
        this.f19099w = lVar;
        com.byazt.jde.jx.hp(activity3, this.f19092l, lVar);
        mp mpVar = this.f19092l;
        if (mpVar != null) {
            n.l(mpVar.jm(), this.f19099w, com.byazt.ih.l.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String hp(int i2) {
        if (i2 == 1) {
            return com.byazt.ih.l.AD_TAG_BANNER;
        }
        if (i2 == 2) {
            return "interaction";
        }
        if (i2 == 5) {
            return com.byazt.ih.l.AD_TAG_FEED;
        }
        if (i2 == 6) {
            return "stream";
        }
        if (i2 != 9) {
            return com.byazt.ih.l.AD_TAG_FEED;
        }
        return "draw_ad";
    }

    private void hp(boolean z2) {
        com.byazt.lf.k.hp().hp(this.eb, this.f19092l, z2);
    }

    private k hp(mp mpVar) {
        mp mpVar2 = this.f19092l;
        if (mpVar2 == null || hd.hp(mpVar2) != 2) {
            return null;
        }
        boolean z2 = df.v(mpVar) != null;
        int i2 = this.eb;
        if (i2 == 1) {
            if (z2) {
                return new com.byazt.ux.jx(this.jx, mpVar, this.f19095q);
            }
            return new com.byazt.ux.l(this.jx, mpVar, this.f19095q);
        }
        if (i2 != 5) {
            if (i2 != 9) {
                return null;
            }
            return new com.byazt.qk.b(this.jx, mpVar, this.f19095q, i2);
        }
        if (z2) {
            return new di(this.jx, mpVar, this.f19095q, i2);
        }
        return new cx(this.jx, mpVar, this.f19095q, i2);
    }

    private void hp(Dialog dialog) {
        if (dialog == null) {
            u.hp("dialog is null, please check");
        } else {
            this.f19090j = dialog;
        }
    }
}
