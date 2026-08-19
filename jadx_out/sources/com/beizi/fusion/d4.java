package com.beizi.fusion;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity;
import com.beizi.ad.lance.ApkBean;
import com.beizi.ad.v2.activity.BeiZiLandingPageActivity;
import com.beizi.fusion.pi;
import com.beizi.fusion.rn;
import com.beizi.fusion.y1;
import java.io.File;
import java.io.Serializable;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class d4 implements pi {

    /* renamed from: A0, reason: collision with root package name */
    public static d4 f13282A0;

    /* renamed from: A, reason: collision with root package name */
    private boolean f13283A;

    /* renamed from: B, reason: collision with root package name */
    private f5 f13284B;

    /* renamed from: C, reason: collision with root package name */
    private View f13285C;

    /* renamed from: D, reason: collision with root package name */
    private List f13286D;

    /* renamed from: E, reason: collision with root package name */
    private mi f13287E;

    /* renamed from: F, reason: collision with root package name */
    private View.OnClickListener f13288F;

    /* renamed from: H, reason: collision with root package name */
    private long f13290H;

    /* renamed from: I, reason: collision with root package name */
    private float f13291I;

    /* renamed from: J, reason: collision with root package name */
    private float f13292J;

    /* renamed from: K, reason: collision with root package name */
    private float f13293K;

    /* renamed from: L, reason: collision with root package name */
    private float f13294L;

    /* renamed from: M, reason: collision with root package name */
    private int f13295M;

    /* renamed from: N, reason: collision with root package name */
    private String f13296N;

    /* renamed from: O, reason: collision with root package name */
    private String f13297O;

    /* renamed from: P, reason: collision with root package name */
    private String f13298P;

    /* renamed from: Q, reason: collision with root package name */
    private String f13299Q;

    /* renamed from: R, reason: collision with root package name */
    private String f13300R;

    /* renamed from: S, reason: collision with root package name */
    private String f13301S;

    /* renamed from: T, reason: collision with root package name */
    private String f13302T;

    /* renamed from: U, reason: collision with root package name */
    private String f13303U;

    /* renamed from: V, reason: collision with root package name */
    private String f13304V;

    /* renamed from: W, reason: collision with root package name */
    private String f13305W;

    /* renamed from: X, reason: collision with root package name */
    private String f13306X;

    /* renamed from: Y, reason: collision with root package name */
    private y1.b.C0179b f13307Y;

    /* renamed from: Z, reason: collision with root package name */
    private y1.b.a f13308Z;

    /* renamed from: a, reason: collision with root package name */
    private pi.a f13309a;

    /* renamed from: a0, reason: collision with root package name */
    private boolean f13310a0;

    /* renamed from: b, reason: collision with root package name */
    private String f13311b;

    /* renamed from: b0, reason: collision with root package name */
    private boolean f13312b0;

    /* renamed from: c, reason: collision with root package name */
    private String f13313c;

    /* renamed from: d, reason: collision with root package name */
    private String f13315d;

    /* renamed from: d0, reason: collision with root package name */
    private int f13316d0;

    /* renamed from: f, reason: collision with root package name */
    private String f13319f;

    /* renamed from: g, reason: collision with root package name */
    private String f13321g;

    /* renamed from: h, reason: collision with root package name */
    private String f13323h;

    /* renamed from: i, reason: collision with root package name */
    private y1.b f13325i;

    /* renamed from: i0, reason: collision with root package name */
    private qh f13326i0;

    /* renamed from: j, reason: collision with root package name */
    private String f13327j;

    /* renamed from: j0, reason: collision with root package name */
    private int f13328j0;

    /* renamed from: k, reason: collision with root package name */
    private double f13329k;

    /* renamed from: k0, reason: collision with root package name */
    private String f13330k0;

    /* renamed from: l, reason: collision with root package name */
    private String f13331l;

    /* renamed from: l0, reason: collision with root package name */
    private String f13332l0;

    /* renamed from: m, reason: collision with root package name */
    private String f13333m;

    /* renamed from: m0, reason: collision with root package name */
    private String f13334m0;

    /* renamed from: n, reason: collision with root package name */
    private String f13335n;

    /* renamed from: n0, reason: collision with root package name */
    private nj f13336n0;

    /* renamed from: o, reason: collision with root package name */
    private HashMap f13337o;

    /* renamed from: o0, reason: collision with root package name */
    private boolean f13338o0;

    /* renamed from: p0, reason: collision with root package name */
    private List f13340p0;

    /* renamed from: q0, reason: collision with root package name */
    private jp f13342q0;

    /* renamed from: r0, reason: collision with root package name */
    private boolean f13344r0;

    /* renamed from: s0, reason: collision with root package name */
    private String f13346s0;

    /* renamed from: t0, reason: collision with root package name */
    private String f13348t0;

    /* renamed from: u0, reason: collision with root package name */
    private boolean f13350u0;

    /* renamed from: v0, reason: collision with root package name */
    private int f13352v0;

    /* renamed from: w0, reason: collision with root package name */
    private int f13354w0;

    /* renamed from: x, reason: collision with root package name */
    private rn.e f13355x;

    /* renamed from: x0, reason: collision with root package name */
    private xk f13356x0;

    /* renamed from: y, reason: collision with root package name */
    private rn.e f13357y;

    /* renamed from: y0, reason: collision with root package name */
    private int f13358y0;

    /* renamed from: z, reason: collision with root package name */
    private String f13359z;

    /* renamed from: z0, reason: collision with root package name */
    private g5 f13360z0;

    /* renamed from: e, reason: collision with root package name */
    private ArrayList f13317e = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    private boolean f13339p = false;

    /* renamed from: q, reason: collision with root package name */
    private boolean f13341q = false;

    /* renamed from: r, reason: collision with root package name */
    private boolean f13343r = false;

    /* renamed from: s, reason: collision with root package name */
    private ArrayList f13345s = new ArrayList();

    /* renamed from: t, reason: collision with root package name */
    private ArrayList f13347t = new ArrayList();

    /* renamed from: u, reason: collision with root package name */
    private ArrayList f13349u = new ArrayList();

    /* renamed from: v, reason: collision with root package name */
    private ArrayList f13351v = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    private ArrayList f13353w = new ArrayList();

    /* renamed from: G, reason: collision with root package name */
    private String f13289G = "";

    /* renamed from: c0, reason: collision with root package name */
    private int f13314c0 = 0;

    /* renamed from: e0, reason: collision with root package name */
    private boolean f13318e0 = true;

    /* renamed from: f0, reason: collision with root package name */
    private boolean f13320f0 = false;

    /* renamed from: g0, reason: collision with root package name */
    private long f13322g0 = System.currentTimeMillis();

    /* renamed from: h0, reason: collision with root package name */
    private boolean f13324h0 = true;

    public class a implements bo {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f13361a;

        public a(View view) {
            this.f13361a = view;
        }

        @Override // com.beizi.fusion.bo
        public void a() {
            if (d4.this.f13351v == null || d4.this.f13351v.size() == 0) {
                return;
            }
            ArrayList arrayList = d4.this.f13351v;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                new co(d4.this.a((String) obj, this.f13361a)).b();
            }
            d4.this.f13351v = null;
        }
    }

    public class b implements GestureDetector.OnGestureListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f13363a;

        public b(View view) {
            this.f13363a = view;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            d4.this.f13290H = System.currentTimeMillis();
            if (motionEvent == null) {
                return false;
            }
            d4.this.f13291I = motionEvent.getX();
            d4.this.f13292J = motionEvent.getY();
            d4.this.f13293K = motionEvent.getRawX();
            d4.this.f13294L = motionEvent.getRawY();
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (d4.this.f13353w != null) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                ArrayList arrayList = d4.this.f13353w;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    String strA = sp.a((String) obj, x2 + "", y2 + "", rawX + "", rawY + "", String.valueOf(d4.this.f13290H), String.valueOf(System.currentTimeMillis()), "", 0, d4.this.f13358y0);
                    if (!TextUtils.isEmpty(d4.this.f13289G)) {
                        strA = strA.replace("__REQUESTUUID__", d4.this.f13289G);
                    }
                    if (d4.this.f13283A) {
                        strA = strA.replace(xo.f17473b, "1");
                    }
                    new i5(so.a(this.f13363a, strA)).execute(new Void[0]);
                }
            }
            d4.this.f13353w = null;
            return false;
        }
    }

    public class c implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ GestureDetector f13365a;

        public c(GestureDetector gestureDetector) {
            this.f13365a = gestureDetector;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return this.f13365a.onTouchEvent(motionEvent);
        }
    }

    public class d implements GestureDetector.OnGestureListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f13367a;

        public d(View view) {
            this.f13367a = view;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            d4.this.f13290H = System.currentTimeMillis();
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (d4.this.f13353w != null) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                ArrayList arrayList = d4.this.f13353w;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    String strA = sp.a((String) obj, x2 + "", y2 + "", rawX + "", rawY + "", String.valueOf(d4.this.f13290H), String.valueOf(System.currentTimeMillis()), "", 0, d4.this.f13358y0);
                    if (!TextUtils.isEmpty(d4.this.f13289G)) {
                        strA = strA.replace("__REQUESTUUID__", d4.this.f13289G);
                    }
                    if (d4.this.f13283A) {
                        strA = strA.replace(xo.f17473b, "1");
                    }
                    new i5(so.a(this.f13367a, strA)).execute(new Void[0]);
                }
            }
            d4.this.f13353w = null;
            return false;
        }
    }

    public class e implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ GestureDetector f13369a;

        public e(GestureDetector gestureDetector) {
            this.f13369a = gestureDetector;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return this.f13369a.onTouchEvent(motionEvent);
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (d4.this.f13353w != null) {
                    ArrayList arrayList = d4.this.f13353w;
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj = arrayList.get(i2);
                        i2++;
                        String strA = sp.a((String) obj, d4.this.f13291I + "", d4.this.f13292J + "", d4.this.f13293K + "", d4.this.f13294L + "", String.valueOf(d4.this.f13290H), String.valueOf(System.currentTimeMillis()), "", 0, d4.this.f13358y0);
                        if (!TextUtils.isEmpty(d4.this.f13289G)) {
                            strA = strA.replace("__REQUESTUUID__", d4.this.f13289G);
                        }
                        if (d4.this.f13283A) {
                            strA = strA.replace(xo.f17473b, "1");
                        }
                        new i5(so.a(view, strA)).execute(new Void[0]);
                    }
                }
                Context context = view.getContext();
                View rootView = view.getRootView();
                if (rootView != null) {
                    context = rootView.getContext();
                }
                d4.this.f13314c0 = 0;
                d4 d4Var = d4.this;
                d4Var.a(d4Var.f13323h, d4.this.f13321g, context);
                if (d4.this.f13287E != null) {
                    d4.this.f13287E.a();
                }
                d4.this.f13353w = null;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class g implements m1 {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f13372a;

        public g(Context context) {
            this.f13372a = context;
        }

        @Override // com.beizi.fusion.m1
        public void a() {
            try {
                if (d4.this.f13307Y != null) {
                    List listK = d4.this.f13307Y.k();
                    d4.this.f13307Y.q(null);
                    em.a(listK);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.beizi.fusion.m1
        public void b() {
            try {
                if (d4.this.f13324h0 && System.currentTimeMillis() - d4.this.f13322g0 <= 2000) {
                    if (d4.this.f13307Y != null) {
                        List listJ = d4.this.f13307Y.j();
                        d4.this.f13307Y.p(null);
                        em.a(listJ);
                    }
                    d4 d4Var = d4.this;
                    d4Var.a(d4Var.f13321g, this.f13372a);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class h implements m1 {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f13374a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f13375b;

        public h(int i2, Context context) {
            this.f13374a = i2;
            this.f13375b = context;
        }

        @Override // com.beizi.fusion.m1
        public void a() {
        }

        @Override // com.beizi.fusion.m1
        public void b() {
            try {
                if (this.f13374a == 0) {
                    d4.this.f13324h0 = true;
                    d4.this.b(this.f13375b);
                }
            } catch (Exception unused) {
                d4.this.f13324h0 = false;
                if (d4.this.f13307Y != null) {
                    List listC = d4.this.f13307Y.c();
                    d4.this.f13307Y.e(null);
                    em.a(listC);
                }
                d4 d4Var = d4.this;
                d4Var.a(this.f13375b, d4Var.f13321g);
            }
        }
    }

    private void B() {
        this.f13288F = new f();
    }

    private boolean w() {
        rh rhVarE;
        try {
            g5 g5Var = this.f13360z0;
            if (g5Var == null || (rhVarE = g5Var.e()) == null) {
                return false;
            }
            int iE = rhVarE.e();
            return iE == 1 || iE == 2;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean x() {
        int i2 = this.f13295M;
        return i2 == 2 ? !TextUtils.isEmpty(this.f13299Q) && this.f13299Q.startsWith("http") : i2 == 5 && !TextUtils.isEmpty(this.f13299Q);
    }

    private boolean y() {
        if (TextUtils.isEmpty(this.f13296N) || TextUtils.isEmpty(this.f13301S) || TextUtils.isEmpty(this.f13300R) || TextUtils.isEmpty(this.f13304V) || TextUtils.isEmpty(this.f13306X)) {
            return false;
        }
        if (TextUtils.isEmpty(this.f13303U) && TextUtils.isEmpty(this.f13302T)) {
            return false;
        }
        int i2 = this.f13295M;
        return i2 == 2 || i2 == 5;
    }

    public boolean A() {
        return this.f13344r0;
    }

    @Override // com.beizi.fusion.pi
    public void destroy() {
        f5 f5Var = this.f13284B;
        if (f5Var != null) {
            f5Var.a();
        }
        this.f13339p = true;
        this.f13285C = null;
        this.f13286D = null;
        this.f13287E = null;
        r();
    }

    @Override // com.beizi.fusion.pi
    public String getAppName() {
        return this.f13334m0;
    }

    @Override // com.beizi.fusion.pi
    public String getIconUrl() {
        return this.f13319f;
    }

    @Override // com.beizi.fusion.pi
    public String getImageUrl() {
        return this.f13315d;
    }

    @Override // com.beizi.fusion.pi
    public String q() {
        return this.f13346s0;
    }

    public void r() {
        f13282A0 = null;
    }

    public List s() {
        return this.f13340p0;
    }

    public int t() {
        return this.f13314c0;
    }

    public nj u() {
        return this.f13336n0;
    }

    public jp v() {
        return this.f13342q0;
    }

    public boolean z() {
        return this.f13338o0;
    }

    public void e(String str) {
        this.f13289G = str;
    }

    @Override // com.beizi.fusion.pi
    public boolean f() {
        return this.f13339p;
    }

    @Override // com.beizi.fusion.pi
    public String g() {
        return this.f13348t0;
    }

    @Override // com.beizi.fusion.pi
    public boolean h() {
        return this.f13350u0;
    }

    @Override // com.beizi.fusion.pi
    public String i() {
        return TextUtils.isEmpty(this.f13330k0) ? "0" : this.f13330k0;
    }

    @Override // com.beizi.fusion.pi
    public ArrayList j() {
        return this.f13345s;
    }

    @Override // com.beizi.fusion.pi
    public String k() {
        return this.f13327j;
    }

    @Override // com.beizi.fusion.pi
    public ArrayList l() {
        return this.f13349u;
    }

    @Override // com.beizi.fusion.pi
    public int m() {
        return this.f13352v0;
    }

    @Override // com.beizi.fusion.pi
    public rn.e n() {
        return this.f13357y;
    }

    @Override // com.beizi.fusion.pi
    public int o() {
        return this.f13354w0;
    }

    @Override // com.beizi.fusion.pi
    public ApkBean p() {
        int i2 = this.f13295M;
        if (i2 != 2 && i2 != 5) {
            return null;
        }
        ApkBean apkBean = new ApkBean();
        apkBean.setApkName(this.f13296N);
        apkBean.setAppVersion(this.f13300R);
        apkBean.setAppDeveloper(this.f13301S);
        apkBean.setAppPermissionsDesc(this.f13302T);
        apkBean.setAppPermissionsUrl(this.f13303U);
        apkBean.setAppPrivacyUrl(this.f13304V);
        apkBean.setAppintro(this.f13306X);
        apkBean.setPkgName(this.f13297O);
        return apkBean;
    }

    @Override // com.beizi.fusion.pi
    public String c() {
        return this.f13321g;
    }

    @Override // com.beizi.fusion.pi
    public String d() {
        return this.f13313c;
    }

    public void e(boolean z2) {
        this.f13283A = z2;
    }

    public void b(rn.e eVar) {
        this.f13355x = eVar;
    }

    public void c(String str) {
        this.f13321g = str;
    }

    public void d(String str) {
        this.f13323h = str;
    }

    @Override // com.beizi.fusion.pi
    public String e() {
        return this.f13332l0;
    }

    private void c(Context context) throws URISyntaxException {
        this.f13322g0 = System.currentTimeMillis();
        b4.j().a(new g(context));
        if (a(context)) {
            return;
        }
        b(context);
    }

    private boolean d(Context context) {
        y1.b bVar = this.f13325i;
        if (bVar == null) {
            return false;
        }
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (bVar.o() == 0) {
            return false;
        }
        String strR = this.f13325i.r();
        String strS = this.f13325i.s();
        String strQ = this.f13325i.q();
        if (!TextUtils.isEmpty(strR) && !TextUtils.isEmpty(strS)) {
            return kq.a(context, strR, strS, strQ);
        }
        String strW = this.f13325i.w();
        if (!TextUtils.isEmpty(strW)) {
            return kq.a(context, strW);
        }
        return false;
    }

    @Override // com.beizi.fusion.pi
    public String b() {
        return this.f13311b;
    }

    public void b(String str) {
        this.f13351v.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context) throws URISyntaxException {
        if (context == null) {
            return;
        }
        Uri uri = Uri.parse(this.f13323h);
        if (uri.getScheme() != null && uri.getScheme().equals("bzopen") && !TextUtils.isEmpty(uri.getHost()) && uri.getPathSegments().size() > 0) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
            intent.addCategory("android.intent.category.LAUNCHER");
            String queryParameter = uri.getQueryParameter("flags");
            if (!TextUtils.isEmpty(queryParameter)) {
                try {
                    if (!queryParameter.startsWith("0x") && !queryParameter.startsWith("0X")) {
                        intent.setFlags(Integer.parseInt(queryParameter));
                    } else {
                        intent.setFlags(Integer.parseInt(queryParameter.substring(2), 16));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            intent.setComponent(new ComponentName(uri.getHost(), uri.getPathSegments().get(0)));
            String queryParameter2 = uri.getQueryParameter("rect");
            if (!TextUtils.isEmpty(queryParameter2)) {
                try {
                    String[] strArrSplit = queryParameter2.split(":");
                    if (strArrSplit.length == 4) {
                        Rect rect = new Rect();
                        rect.set(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]));
                        intent.setSourceBounds(rect);
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            context.startActivity(intent);
            return;
        }
        if (this.f13323h.startsWith("hwpps://landingpage")) {
            Intent intent2 = new Intent();
            intent2.setData(uri);
            intent2.addFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent2);
            return;
        }
        if (this.f13323h.startsWith("intent")) {
            Intent uri2 = null;
            try {
                uri2 = Intent.parseUri(this.f13323h, 1);
                uri2.addFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            context.startActivity(uri2);
            return;
        }
        Intent intent3 = new Intent("android.intent.action.VIEW", uri);
        intent3.addFlags(805339136);
        context.startActivity(intent3);
    }

    public void c(boolean z2) {
        this.f13338o0 = z2;
    }

    public y1.d c(int i2) {
        List list = this.f13340p0;
        if (list != null && !list.isEmpty()) {
            for (y1.d dVar : this.f13340p0) {
                if (dVar.y() == i2) {
                    return dVar;
                }
            }
        }
        return null;
    }

    public void a(rn.e eVar) {
        this.f13357y = eVar;
    }

    public static d4 a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        ArrayList arrayListA = qg.a(qg.a(jSONObject, "ImpressionTrackers"));
        d4 d4Var = new d4();
        if (arrayListA != null) {
            d4Var.f13351v = arrayListA;
        }
        d4Var.f13311b = qg.e(jSONObject, "Headline");
        d4Var.f13313c = qg.e(jSONObject, "Body");
        d4Var.f13315d = qg.e(jSONObject, "Image");
        JSONArray jSONArrayA = qg.a(jSONObject, "Images");
        JSONArray jSONArrayA2 = qg.a(jSONObject, "Videos");
        JSONArray jSONArrayA3 = qg.a(jSONObject, "Texts");
        if (jSONArrayA != null) {
            for (int i2 = 0; i2 < jSONArrayA.length(); i2++) {
                d4Var.f13345s.add((String) jSONArrayA.get(i2));
            }
        }
        if (jSONArrayA2 != null) {
            for (int i3 = 0; i3 < jSONArrayA2.length(); i3++) {
                d4Var.f13347t.add((String) jSONArrayA2.get(i3));
            }
        }
        if (jSONArrayA3 != null) {
            for (int i4 = 0; i4 < jSONArrayA3.length(); i4++) {
                d4Var.f13349u.add((String) jSONArrayA3.get(i4));
            }
        }
        if (jSONObject.has("AppIcon")) {
            d4Var.f13309a = pi.a.APP_INSTALL;
            d4Var.f13319f = qg.e(jSONObject, "AppIcon");
            d4Var.f13327j = qg.e(jSONObject, "Action");
            d4Var.f13329k = qg.b(jSONObject, "Star");
            d4Var.f13331l = qg.e(jSONObject, "Store");
            d4Var.f13333m = qg.e(jSONObject, "Price");
        } else {
            d4Var.f13309a = pi.a.CONTENT;
            d4Var.f13319f = qg.e(jSONObject, "Logo");
            d4Var.f13327j = qg.e(jSONObject, "Action");
            d4Var.f13335n = qg.e(jSONObject, "Advertiser");
        }
        ArrayList arrayListA2 = qg.a(qg.a(jSONObject, "ClickTrackers"));
        if (arrayListA2 != null) {
            d4Var.f13353w = arrayListA2;
        }
        d4Var.f13337o = qg.a(qg.d(jSONObject, "Custom"));
        d4Var.f13330k0 = qg.e(jSONObject, "taskAction");
        d4Var.f13332l0 = qg.e(jSONObject, "packName");
        d4Var.f13334m0 = qg.e(jSONObject, com.umeng.analytics.pro.cl.f49061p);
        d4Var.f13346s0 = qg.e(jSONObject, "videoUrl");
        d4Var.f13348t0 = qg.e(jSONObject, "lauchImageUrl");
        d4Var.f13352v0 = qg.c(jSONObject, "videoW");
        d4Var.f13354w0 = qg.c(jSONObject, "videoH");
        return d4Var;
    }

    public void d(boolean z2) {
        this.f13344r0 = z2;
    }

    private boolean b(String str, Context context) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    @Override // com.beizi.fusion.pi
    public void b(int i2) {
        this.f13328j0 = i2;
    }

    public void b(boolean z2) {
        this.f13350u0 = z2;
    }

    @Override // com.beizi.fusion.pi
    public boolean a(View view, ri riVar) {
        if (!this.f13339p && view != null) {
            f5 f5Var = this.f13284B;
            if (f5Var != null) {
                this.f13285C = null;
                f5Var.a();
                this.f13284B = null;
            }
            this.f13284B = new f5(view, riVar, new a(view));
            this.f13285C = view;
        }
        return false;
    }

    public String a(String str, View view) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(this.f13359z)) {
            str = str.replace(xo.f17472a, this.f13359z);
        }
        String strReplace = str;
        if (view != null) {
            if (!TextUtils.isEmpty(this.f13289G)) {
                strReplace = strReplace.replace("__REQUESTUUID__", this.f13289G);
            }
            if (this.f13283A) {
                strReplace = strReplace.replace(xo.f17473b, "1");
            }
            return so.a(0, view, strReplace);
        }
        return sp.a(strReplace, "", "", "", "", "", "", "");
    }

    @Override // com.beizi.fusion.pi
    public rn.e a() {
        return this.f13355x;
    }

    @Override // com.beizi.fusion.pi
    public boolean a(View view, mi miVar) {
        if (this.f13339p || view == null) {
            return false;
        }
        this.f13287E = miVar;
        this.f13285C = view;
        GestureDetector gestureDetector = new GestureDetector(new b(view));
        B();
        view.setOnTouchListener(new c(gestureDetector));
        view.setOnClickListener(this.f13288F);
        return true;
    }

    @Override // com.beizi.fusion.pi
    public boolean a(View view, List list, mi miVar) {
        if (!a(view, miVar)) {
            return false;
        }
        if (list == null || list.size() <= 0) {
            return true;
        }
        view.setOnClickListener(null);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            View view2 = (View) it.next();
            view2.setOnTouchListener(new e(new GestureDetector(new d(view))));
            view2.setOnClickListener(this.f13288F);
        }
        this.f13286D = list;
        return true;
    }

    public void a(y1.b bVar) {
        this.f13325i = bVar;
        this.f13307Y = bVar.m();
        this.f13295M = bVar.n();
        this.f13296N = bVar.a();
        this.f13297O = bVar.t();
        this.f13298P = bVar.b();
        this.f13299Q = bVar.d();
        if (TextUtils.isEmpty(this.f13296N)) {
            this.f13296N = "BeiZi";
        }
        if (TextUtils.isEmpty(this.f13298P)) {
            this.f13298P = "Ad Download";
        }
        this.f13300R = bVar.i();
        this.f13301S = bVar.c();
        this.f13302T = bVar.f();
        this.f13303U = bVar.g();
        this.f13304V = bVar.h();
        this.f13305W = bVar.e();
        this.f13306X = bVar.j();
        y1.b.a aVarL = bVar.l();
        this.f13308Z = aVarL;
        if (aVarL != null) {
            if (aVarL.a() == 1) {
                this.f13310a0 = true;
            }
            if (this.f13308Z.b() == 1) {
                this.f13312b0 = true;
            }
            this.f13316d0 = this.f13308Z.c();
        }
    }

    public void a(String str) {
        this.f13353w.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, String str2, Context context) {
        y1.b.C0179b c0179b;
        y1.b.C0179b c0179b2;
        if (w()) {
            return true;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                boolean z2 = sg.a(context, str) || c8.a(context, this.f13297O) || str.startsWith("hwpps://landingpage") || str.startsWith("intent") || str.startsWith("hap://");
                if (z2 && (c0179b2 = this.f13307Y) != null) {
                    List listF = c0179b2.f();
                    this.f13307Y.h(null);
                    em.a(listF);
                }
                this.f13324h0 = true;
                c(context);
                if (!z2 && (c0179b = this.f13307Y) != null) {
                    List listG = c0179b.g();
                    this.f13307Y.i(null);
                    em.a(listG);
                }
                y1.b.C0179b c0179b3 = this.f13307Y;
                if (c0179b3 != null) {
                    List listD = c0179b3.d();
                    this.f13307Y.f(null);
                    em.a(listD);
                }
                return true;
            } catch (Exception unused) {
                this.f13324h0 = false;
                y1.b.C0179b c0179b4 = this.f13307Y;
                if (c0179b4 != null) {
                    List listC = c0179b4.c();
                    this.f13307Y.e(null);
                    em.a(listC);
                }
                a(context, str2);
                return true;
            }
        }
        a(context, str2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str) {
        try {
            if (y() && x()) {
                int i2 = this.f13295M;
                if (i2 == 2) {
                    if (c8.a(context, this.f13297O)) {
                        c8.b(context, this.f13297O);
                        y1.b.C0179b c0179b = this.f13307Y;
                        if (c0179b != null) {
                            List listI = c0179b.i();
                            this.f13307Y.l(null);
                            em.a(listI);
                            return;
                        }
                        return;
                    }
                    a(context, 1);
                    return;
                }
                if (i2 == 5) {
                    if (sg.a(context, this.f13299Q)) {
                        if (!this.f13312b0 && this.f13314c0 != 0) {
                            a(context, 2);
                            return;
                        }
                        b(this.f13299Q, context);
                        y1.b.C0179b c0179b2 = this.f13307Y;
                        if (c0179b2 != null) {
                            List listI2 = c0179b2.i();
                            this.f13307Y.l(null);
                            em.a(listI2);
                            return;
                        }
                        return;
                    }
                    a(str, context);
                    return;
                }
                return;
            }
            a(str, context);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(Context context, int i2) {
        try {
            File fileF = c8.f(context);
            String absolutePath = "";
            if (fileF != null) {
                absolutePath = fileF.getAbsolutePath();
            }
            String str = absolutePath;
            ApkBean apkBean = new ApkBean(this.f13299Q, this.f13297O + ".apk", this.f13297O, str, this.f13296N, this.f13298P, context.getPackageName() + ".bz.fileprovider", this.f13307Y, this.f13300R, this.f13301S, this.f13302T, this.f13303U, this.f13304V, this.f13305W, this.f13306X);
            apkBean.setSendLocalBroadcast(true);
            Bundle bundle = new Bundle();
            bundle.putSerializable("apkBean", apkBean);
            bundle.putInt("type", i2);
            bundle.putBoolean("isCanJump", this.f13310a0);
            bundle.putBoolean("isDownload", y());
            if (i2 == 2) {
                y1.b.C0179b c0179b = this.f13307Y;
                if (c0179b != null) {
                    bundle.putStringArrayList("openList", (ArrayList) c0179b.i());
                }
                bundle.putString("landingPageUrl", this.f13321g);
            }
            if (!TextUtils.isEmpty(this.f13323h)) {
                bundle.putString("deeplinkUrl", this.f13323h);
                bundle.putInt("webDeepLink", this.f13316d0);
            }
            Serializable serializable = this.f13326i0;
            if (serializable != null) {
                bundle.putSerializable("lpOptimizeModule", serializable);
            }
            Intent intent = new Intent(context, (Class<?>) BeiZiDownloadDialogActivity.class);
            intent.putExtra("data", bundle);
            intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, Context context) {
        if (str != null && !str.isEmpty()) {
            if (d(context)) {
                y1.b.C0179b c0179b = this.f13307Y;
                if (c0179b != null) {
                    List listH = c0179b.h();
                    this.f13307Y.k(null);
                    em.a(listH);
                }
                return true;
            }
            if (!this.f13318e0) {
                if (!b(str, context)) {
                    return false;
                }
                mi miVar = this.f13287E;
                if (miVar != null) {
                    miVar.b();
                }
                return true;
            }
            try {
                Intent intent = new Intent(context, (Class<?>) BeiZiLandingPageActivity.class);
                Bundle bundle = new Bundle();
                bundle.putBoolean("isRedirectionCanJump", this.f13310a0);
                bundle.putBoolean("isDownload", y());
                if (!TextUtils.isEmpty(this.f13323h)) {
                    bundle.putBoolean("webDeepLink", this.f13316d0 == 1);
                    bundle.putString("deeplinkUrl", this.f13323h);
                }
                if (!TextUtils.isEmpty(str)) {
                    bundle.putString("landingPageUrl", str);
                }
                y1.b.C0179b c0179b2 = this.f13307Y;
                if (c0179b2 != null) {
                    bundle.putSerializable("followTrackExt", c0179b2);
                }
                qh qhVar = this.f13326i0;
                if (qhVar != null) {
                    bundle.putSerializable("lpOptimizeModule", qhVar);
                }
                intent.putExtra("data", bundle);
                intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                context.startActivity(intent);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.beizi.fusion.pi
    public void a(View view, String str, String str2, String str3, String str4, int i2, mi miVar) {
        int i3 = i2;
        try {
            this.f13314c0 = i3;
            ArrayList arrayList = this.f13353w;
            if (arrayList != null) {
                int size = arrayList.size();
                int i4 = 0;
                while (i4 < size) {
                    int i5 = i4 + 1;
                    String strA = sp.a((String) arrayList.get(i4), str + "", str2 + "", str3 + "", str4 + "", String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis()), "", i3, this.f13358y0);
                    if (!TextUtils.isEmpty(this.f13289G)) {
                        strA = strA.replace("__REQUESTUUID__", this.f13289G);
                    }
                    if (this.f13283A) {
                        strA = strA.replace(xo.f17473b, "1");
                    }
                    new i5(so.a(view, strA)).execute(new Void[0]);
                    i3 = i2;
                    i4 = i5;
                }
            }
            this.f13353w = null;
            Context context = view.getContext();
            View rootView = view.getRootView();
            if (rootView != null) {
                context = rootView.getContext();
            }
            a(this.f13323h, this.f13321g, context);
            if (miVar != null) {
                miVar.a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(boolean z2) {
        this.f13324h0 = z2;
    }

    public void a(qh qhVar) {
        this.f13326i0 = qhVar;
    }

    public void a(nj njVar) {
        this.f13336n0 = njVar;
    }

    public void a(List list) {
        this.f13340p0 = list;
    }

    public void a(y1.d dVar, View view) {
        y1.b bVarM;
        String strG;
        if (dVar == null || (bVarM = dVar.m()) == null) {
            return;
        }
        dVar.b(true);
        List listV = bVarM.v();
        if (listV != null) {
            for (int i2 = 0; i2 < listV.size(); i2++) {
                y1.h hVar = (y1.h) listV.get(i2);
                if (hVar != null && !TextUtils.isEmpty(hVar.g()) && view != null) {
                    if (!TextUtils.isEmpty(this.f13289G)) {
                        strG = hVar.g().replace("__REQUESTUUID__", this.f13289G);
                    } else {
                        strG = hVar.g();
                    }
                    if (!TextUtils.isEmpty(this.f13359z)) {
                        strG = strG.replace(xo.f17472a, this.f13359z);
                    }
                    if (this.f13283A) {
                        strG = strG.replace(xo.f17473b, "1");
                    }
                    new i5(so.a(0, view, strG)).executeOnExecutor(x3.c().g(), new Void[0]);
                }
                hVar.j(null);
            }
        }
    }

    public void a(y1.d dVar, View view, h5 h5Var, String str, String str2, int i2) {
        String strA;
        y1.b bVarM = dVar.m();
        if (bVarM == null) {
            return;
        }
        dVar.a(true);
        List listV = bVarM.v();
        if (listV != null) {
            for (int i3 = 0; i3 < listV.size(); i3++) {
                y1.h hVar = (y1.h) listV.get(i3);
                if (hVar != null && !TextUtils.isEmpty(hVar.a())) {
                    if (!TextUtils.isEmpty(this.f13289G)) {
                        strA = sp.a(hVar.a(), h5Var, str, str2, "", i2).replace("__REQUESTUUID__", this.f13289G);
                    } else {
                        strA = sp.a(hVar.a(), h5Var, str, str2, "", i2);
                    }
                    if (this.f13283A) {
                        strA = strA.replace(xo.f17473b, "1");
                    }
                    new i5(so.a(view, strA)).executeOnExecutor(x3.c().g(), new Void[0]);
                }
                hVar.a(null);
            }
        }
    }

    public void a(jp jpVar) {
        this.f13342q0 = jpVar;
    }

    public void a(xk xkVar) {
        this.f13356x0 = xkVar;
    }

    private boolean a(Context context) {
        try {
            xk xkVar = this.f13356x0;
            if (xkVar == null) {
                return false;
            }
            String strC = xkVar.c();
            String strB = this.f13356x0.b();
            int iA = this.f13356x0.a();
            if (TextUtils.isEmpty(strC) || TextUtils.isEmpty(strB) || !b4.j().p()) {
                return false;
            }
            String strA = i3.a(strC);
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            new ci().a(this.f13323h, strA, strB, new h(iA, context));
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.beizi.fusion.pi
    public void a(int i2) {
        this.f13358y0 = i2;
    }

    public void a(g5 g5Var) {
        this.f13360z0 = g5Var;
    }
}
