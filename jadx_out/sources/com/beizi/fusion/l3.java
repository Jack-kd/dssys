package com.beizi.fusion;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.AdSpacesBean;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class l3 {

    /* renamed from: A, reason: collision with root package name */
    protected boolean f14780A;

    /* renamed from: B, reason: collision with root package name */
    private String f14781B;

    /* renamed from: C, reason: collision with root package name */
    private String f14782C;

    /* renamed from: D, reason: collision with root package name */
    private Map f14783D;

    /* renamed from: E, reason: collision with root package name */
    protected boolean f14784E;

    /* renamed from: F, reason: collision with root package name */
    protected boolean f14785F;

    /* renamed from: G, reason: collision with root package name */
    protected boolean f14786G;

    /* renamed from: H, reason: collision with root package name */
    protected boolean f14787H;

    /* renamed from: K, reason: collision with root package name */
    private boolean f14790K;

    /* renamed from: L, reason: collision with root package name */
    private String f14791L;

    /* renamed from: M, reason: collision with root package name */
    private String f14792M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f14793N;

    /* renamed from: O, reason: collision with root package name */
    private String f14794O;

    /* renamed from: a, reason: collision with root package name */
    protected Context f14795a;

    /* renamed from: b, reason: collision with root package name */
    protected r1 f14796b;

    /* renamed from: c, reason: collision with root package name */
    protected rn f14797c;

    /* renamed from: d, reason: collision with root package name */
    protected boolean f14798d;

    /* renamed from: e, reason: collision with root package name */
    protected String f14799e;

    /* renamed from: f, reason: collision with root package name */
    protected String f14800f;

    /* renamed from: k, reason: collision with root package name */
    protected String f14805k;

    /* renamed from: l, reason: collision with root package name */
    protected String f14806l;

    /* renamed from: m, reason: collision with root package name */
    protected wh f14807m;

    /* renamed from: n, reason: collision with root package name */
    protected int f14808n;

    /* renamed from: o, reason: collision with root package name */
    protected int f14809o;

    /* renamed from: p, reason: collision with root package name */
    protected int f14810p;

    /* renamed from: q, reason: collision with root package name */
    protected int f14811q;

    /* renamed from: r, reason: collision with root package name */
    protected a5 f14812r;

    /* renamed from: s, reason: collision with root package name */
    protected boolean f14813s;

    /* renamed from: t, reason: collision with root package name */
    protected boolean f14814t;

    /* renamed from: u, reason: collision with root package name */
    protected boolean f14815u;

    /* renamed from: v, reason: collision with root package name */
    protected boolean f14816v;

    /* renamed from: w, reason: collision with root package name */
    protected EventBean f14817w;

    /* renamed from: x, reason: collision with root package name */
    protected boolean f14818x;

    /* renamed from: y, reason: collision with root package name */
    protected String f14819y;

    /* renamed from: z, reason: collision with root package name */
    protected AdSpacesBean.BuyerBean f14820z;

    /* renamed from: g, reason: collision with root package name */
    protected boolean f14801g = false;

    /* renamed from: h, reason: collision with root package name */
    protected boolean f14802h = false;

    /* renamed from: i, reason: collision with root package name */
    protected boolean f14803i = false;

    /* renamed from: j, reason: collision with root package name */
    protected boolean f14804j = false;

    /* renamed from: I, reason: collision with root package name */
    private boolean f14788I = false;

    /* renamed from: J, reason: collision with root package name */
    protected Handler f14789J = new a(Looper.getMainLooper());

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 16) {
                return;
            }
            l3.this.H();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                EventBean eventBeanM44clone = l3.this.f14817w.m44clone();
                eventBeanM44clone.setEventCode("280.000");
                if (l3.this.f14814t) {
                    eventBeanM44clone.setIsCacheAd("1");
                }
                EventCar.getInstance(l3.this.f14795a).goRoad(eventBeanM44clone);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public l3(Context context, wh whVar) {
        this.f14796b = null;
        this.f14795a = context.getApplicationContext();
        this.f14807m = whVar;
        r1 r1Var = new r1(context);
        this.f14796b = r1Var;
        r1Var.a(whVar);
    }

    private void I() {
        x3.c().a().execute(new c());
    }

    private void J() {
        if (this.f14811q <= 0) {
            return;
        }
        b();
        int i2 = this.f14810p;
        if (i2 <= 0) {
            H();
            return;
        }
        Handler handler = this.f14789J;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(16, i2);
        }
    }

    private void K() {
        String str = this.f14806l;
        this.f14805k = str;
        r1 r1Var = this.f14796b;
        if (r1Var != null) {
            r1Var.b(str);
        }
    }

    private void L() {
        if (this.f14816v || !this.f14814t || this.f14815u) {
            return;
        }
        this.f14816v = true;
        v3.b().a(this.f14812r, 1, this.f14811q);
    }

    public String A() {
        return this.f14792M;
    }

    public boolean B() {
        return this.f14818x;
    }

    public boolean C() {
        return this.f14798d;
    }

    public boolean D() {
        return this.f14801g;
    }

    public boolean E() {
        return this.f14814t;
    }

    public boolean F() {
        try {
            rn rnVar = this.f14797c;
            if (rnVar == null) {
                return false;
            }
            return rnVar.o0();
        } catch (Exception unused) {
            return false;
        }
    }

    public void G() {
        if (this.f14802h) {
            return;
        }
        this.f14802h = true;
        if (TextUtils.isEmpty(this.f14781B)) {
            if ("S2S".equalsIgnoreCase(this.f14782C)) {
                a(3);
                return;
            } else {
                J();
                x3.c().b().execute(new b());
                return;
            }
        }
        rn rnVar = new rn(this.f14781B, null, this.f14796b.a());
        if (!rnVar.b()) {
            a(3);
        } else if (!a(rnVar.g())) {
            a(12);
        } else {
            this.f14806l = rnVar.W();
            a(true, rnVar.d(), null, rnVar);
        }
    }

    public boolean H() {
        rn rnVarA;
        if (this.f14788I) {
            return false;
        }
        this.f14788I = true;
        if (this.f14811q <= 0 || this.f14813s) {
            return false;
        }
        try {
            a5 a5VarC = v3.b().c(i());
            if (a5VarC == null || (rnVarA = v3.b().a(a5VarC, this.f14807m)) == null) {
                return false;
            }
            if (this.f14813s) {
                v3.b().a(a5VarC, 1, this.f14811q);
                return false;
            }
            if (!a(rnVarA, a5VarC)) {
                return false;
            }
            a(false, null, a5VarC, rnVarA);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public abstract void a(int i2);

    public abstract void a(rn rnVar);

    public void b(int i2) {
        this.f14809o = i2;
    }

    public void c() {
    }

    public void d() {
        rn rnVar = this.f14797c;
        if (rnVar != null) {
            rnVar.a(false);
            this.f14797c.a();
        }
        L();
        e();
    }

    public void e(String str) {
        this.f14799e = str;
    }

    public void f(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f14806l = so.a();
            K();
        } else {
            this.f14806l = str;
            K();
        }
    }

    public AdSpacesBean.BuyerBean g() {
        return this.f14820z;
    }

    public String h() {
        return this.f14800f;
    }

    public String i() {
        return this.f14819y;
    }

    public String j() {
        rn rnVar = this.f14797c;
        if (rnVar == null) {
            return null;
        }
        return rnVar.s();
    }

    public int k() {
        int i2 = this.f14808n;
        if (i2 <= 0) {
            return 5;
        }
        return i2;
    }

    public long l() {
        a5 a5Var;
        try {
            if (this.f14814t && (a5Var = this.f14812r) != null) {
                return a5Var.a();
            }
            return 0L;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public int m() {
        rn rnVar = this.f14797c;
        if (rnVar == null) {
            return 0;
        }
        return rnVar.u();
    }

    public List n() {
        rn rnVar = this.f14797c;
        if (rnVar == null) {
            return null;
        }
        return rnVar.v();
    }

    public g5 o() {
        rn rnVar = this.f14797c;
        if (rnVar == null) {
            return null;
        }
        return rnVar.w();
    }

    public fl p() {
        rn rnVar = this.f14797c;
        if (rnVar == null) {
            return null;
        }
        return rnVar.y();
    }

    public Map q() {
        rn rnVar = this.f14797c;
        if (rnVar == null) {
            return null;
        }
        return rnVar.z();
    }

    public JSONObject r() throws JSONException {
        int iIntValue;
        try {
            if (this.f14783D == null) {
                return null;
            }
            rn rnVar = this.f14797c;
            if ((rnVar != null && rnVar.x() == 1) || !this.f14783D.containsKey("materialInfo")) {
                return null;
            }
            Object obj = this.f14783D.get("materialInfo");
            if (!(obj instanceof Integer) || (iIntValue = ((Integer) obj).intValue()) == 0) {
                return null;
            }
            if (iIntValue != 1 && iIntValue != 101 && iIntValue != 1001) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            if (this.f14797c != null) {
                JSONObject jSONObject2 = new JSONObject();
                if (iIntValue == 1 || iIntValue == 101 || iIntValue == 1001) {
                    wh whVar = this.f14807m;
                    String strJ = (whVar == wh.NEW_SPLASH || whVar == wh.NATIVE) ? this.f14797c.J() : whVar == wh.INTERSTITIAL ? this.f14797c.E() : whVar == wh.REWARDEDVIDEO ? this.f14797c.H() : whVar == wh.SPLASHUNIFIED ? this.f14797c.d0() : null;
                    if (!TextUtils.isEmpty(strJ) && strJ.startsWith("http")) {
                        jSONObject2.put("imageUrl", strJ);
                        JSONArray jSONArray = new JSONArray();
                        jSONArray.put(strJ);
                        jSONObject2.put("imageUrls", jSONArray);
                    }
                    String strF0 = this.f14797c.f0();
                    if (!TextUtils.isEmpty(strF0)) {
                        jSONObject2.put("videoUrl", strF0);
                    }
                    String strI = this.f14797c.i();
                    if (!TextUtils.isEmpty(strI)) {
                        jSONObject2.put("crid", strI);
                    }
                }
                if (iIntValue == 101 || iIntValue == 1001) {
                    String strA = this.f14797c.A();
                    if (!TextUtils.isEmpty(strA)) {
                        jSONObject2.put("deeplinkUrl", strA);
                    }
                    String strG = this.f14797c.G();
                    if (!TextUtils.isEmpty(strG)) {
                        jSONObject2.put("landingPageUrl", strG);
                    }
                    String strB = this.f14797c.B();
                    if (!TextUtils.isEmpty(strB)) {
                        jSONObject2.put("downloadUrl", strB);
                    }
                    String strN = this.f14797c.N();
                    if (!TextUtils.isEmpty(strN)) {
                        jSONObject2.put("miniProgramId", strN);
                    }
                    String strO = this.f14797c.O();
                    if (!TextUtils.isEmpty(strO)) {
                        jSONObject2.put("miniProgramPath", strO);
                    }
                }
                if (iIntValue == 1001) {
                    String strT = this.f14797c.T();
                    if (!TextUtils.isEmpty(strT)) {
                        jSONObject2.put("orderId", strT);
                    }
                }
                jSONObject.put("materialInfo", jSONObject2);
            }
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public String s() {
        rn rnVar = this.f14797c;
        if (rnVar == null) {
            return null;
        }
        return rnVar.G();
    }

    public qp t() {
        rn rnVar = this.f14797c;
        if (rnVar == null) {
            return null;
        }
        return rnVar.Q();
    }

    public nj u() {
        rn rnVar = this.f14797c;
        if (rnVar == null) {
            return null;
        }
        return rnVar.R();
    }

    public zk v() {
        rn rnVar = this.f14797c;
        if (rnVar == null) {
            return null;
        }
        return rnVar.S();
    }

    public String w() {
        return this.f14799e;
    }

    public String x() {
        return this.f14806l;
    }

    public Map y() {
        rn rnVar = this.f14797c;
        if (rnVar == null) {
            return null;
        }
        return rnVar.Y();
    }

    public rn z() {
        return this.f14797c;
    }

    public void b(String str) {
        this.f14819y = str;
        r1 r1Var = this.f14796b;
        if (r1Var != null) {
            r1Var.a(str);
        }
    }

    public void c(String str) {
        this.f14781B = str;
    }

    public void e() {
        Handler handler = this.f14789J;
        if (handler != null) {
            handler.removeMessages(16);
        }
    }

    public void c(Map map) {
        this.f14783D = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i2) {
        try {
            if (TextUtils.isEmpty(this.f14794O) || i2 == 0) {
                return;
            }
            qm.b().a(this.f14794O, 1);
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public void a(AdSpacesBean.BuyerBean buyerBean) {
        if (buyerBean == null) {
            return;
        }
        this.f14820z = buyerBean;
        int cacheNum = buyerBean.getCacheNum();
        this.f14811q = cacheNum;
        if (cacheNum > 0) {
            int waitTime = buyerBean.getWaitTime();
            int lastTime = buyerBean.getLastTime();
            if (lastTime <= 0) {
                lastTime = 100;
            }
            if (waitTime >= 0) {
                this.f14810p = Math.min(waitTime, this.f14809o - lastTime);
            } else {
                this.f14810p = this.f14809o - lastTime;
            }
            if (this.f14810p <= 0) {
                this.f14810p = 100;
            }
        }
        this.f14784E = buyerBean.getIsImageSpeed() == 1;
        this.f14785F = buyerBean.getIsHideInteraction() == 1;
        this.f14786G = buyerBean.getIsPlaceHolder() == 1;
        this.f14787H = buyerBean.getIsAnimation() == 1;
    }

    public void b(boolean z2) {
        this.f14798d = z2;
    }

    public void b(Map map) {
        rn rnVar = this.f14797c;
        if (rnVar == null || map == null) {
            return;
        }
        rnVar.b(map);
    }

    public void d(String str) {
        this.f14782C = str;
    }

    public String f() {
        return this.f14791L;
    }

    private void b() {
        Object obj;
        Object obj2;
        x1 x1Var = new x1();
        x1Var.d(this.f14819y);
        Map map = this.f14783D;
        if (map != null) {
            if (map.containsKey("orderList") && (obj2 = this.f14783D.get("orderList")) != null && (obj2 instanceof List)) {
                List list = (List) obj2;
                if (list.size() > 0) {
                    x1Var.a(list);
                }
            }
            if (this.f14783D.containsKey("interactionType") && (obj = this.f14783D.get("interactionType")) != null && (obj instanceof Integer)) {
                x1Var.b(((Integer) obj).intValue());
            }
        }
        v3.b().a(this.f14817w, this.f14811q, x1Var, this.f14807m);
    }

    public l3(Context context, String str, wh whVar) {
        this.f14796b = null;
        this.f14795a = context.getApplicationContext();
        this.f14819y = str;
        this.f14807m = whVar;
        r1 r1Var = new r1(context);
        this.f14796b = r1Var;
        r1Var.a(str);
        this.f14796b.a(whVar);
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            new yi().a(l3.this.a(), new a(), l3.this.f14807m);
        }

        public class a implements wi {
            public a() {
            }

            @Override // com.beizi.fusion.wi
            public void a(String str) {
                try {
                    rn rnVar = new rn(str, null, l3.this.f14796b.a());
                    l3.this.c(rnVar.a0());
                    b4.j().a(rnVar.t());
                    l3 l3Var = l3.this;
                    if (l3Var.f14814t) {
                        l3Var.a(rnVar, str);
                        return;
                    }
                    l3Var.e();
                    if (rnVar.b()) {
                        l3.this.a(true, rnVar.d(), null, rnVar);
                    } else {
                        if (l3.this.H()) {
                            return;
                        }
                        l3.this.a(3);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.beizi.fusion.wi
            public void a(int i2) {
                l3 l3Var = l3.this;
                l3Var.f14802h = false;
                if (l3Var.f14814t) {
                    return;
                }
                l3Var.e();
                if (l3.this.H()) {
                    return;
                }
                l3.this.a(i2);
            }
        }
    }

    public void a(EventBean eventBean) {
        this.f14817w = eventBean;
    }

    public void a(String str) {
        this.f14800f = str;
    }

    public void a(Map map) {
        if (this.f14797c == null || map == null) {
            return;
        }
        L();
        this.f14797c.a(map);
    }

    private boolean a(rn rnVar, a5 a5Var) {
        Object obj;
        try {
            Map map = this.f14783D;
            if (map == null || !map.containsKey("orderList") || (obj = this.f14783D.get("orderList")) == null || !(obj instanceof List)) {
                return true;
            }
            List list = (List) obj;
            if (list.isEmpty()) {
                return true;
            }
            String strT = rnVar.T();
            if (TextUtils.isEmpty(strT) || list.contains(strT)) {
                return true;
            }
            v3.b().a(a5Var);
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(boolean z2, String str, a5 a5Var, rn rnVar) {
        if (this.f14780A) {
            if (z2) {
                a(rnVar, str);
                return;
            } else {
                if (this.f14813s) {
                    v3.b().a(a5Var, 1, this.f14811q);
                    return;
                }
                return;
            }
        }
        this.f14780A = true;
        this.f14797c = rnVar;
        if (z2) {
            this.f14813s = true;
        } else {
            this.f14814t = true;
            if (a5Var != null) {
                String strC = a5Var.c();
                this.f14806l = strC;
                r1 r1Var = this.f14796b;
                if (r1Var != null) {
                    r1Var.b(strC);
                }
            }
            this.f14812r = a5Var;
            rn rnVar2 = this.f14797c;
            if (rnVar2 != null) {
                rnVar2.d(true);
            }
        }
        I();
        a(rnVar);
    }

    public void a(rn rnVar, String str) {
        if (rnVar == null || !rnVar.b() || TextUtils.isEmpty(str)) {
            return;
        }
        v3.b().a(rnVar, str, this.f14805k, this.f14819y, this.f14807m);
    }

    public boolean a(k7 k7Var) {
        wh whVar = this.f14807m;
        return (whVar == wh.NEW_SPLASH || whVar == wh.SPLASHUNIFIED || whVar == wh.SPLASH) ? k7Var == k7.ADP_LOADING : whVar == wh.NATIVE ? k7Var == k7.ADP_NATIVE : whVar == wh.INTERSTITIAL ? k7Var == k7.ADP_TABLE : whVar == wh.REWARDEDVIDEO && k7Var == k7.ADP_IVIDEO;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public x1 a() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        x1 x1Var = new x1();
        x1Var.d(this.f14819y);
        x1Var.c(this.f14806l);
        x1Var.a(false);
        x1Var.b(this.f14790K);
        Map map = this.f14783D;
        if (map != null) {
            if (map.containsKey("orderList") && (obj6 = this.f14783D.get("orderList")) != null && (obj6 instanceof List)) {
                List list = (List) obj6;
                if (list.size() > 0) {
                    x1Var.a(list);
                }
            }
            if (this.f14783D.containsKey("interactionType") && (obj5 = this.f14783D.get("interactionType")) != null && (obj5 instanceof Integer)) {
                x1Var.b(((Integer) obj5).intValue());
            }
            if (this.f14783D.containsKey("bz_user_id") && (obj4 = this.f14783D.get("bz_user_id")) != null && (obj4 instanceof String)) {
                this.f14791L = (String) obj4;
            }
            if (this.f14783D.containsKey("bz_user_custom_data") && (obj3 = this.f14783D.get("bz_user_custom_data")) != null && (obj3 instanceof String)) {
                this.f14792M = (String) obj3;
            }
            if (this.f14783D.containsKey("window_scene") && (obj2 = this.f14783D.get("window_scene")) != null && (obj2 instanceof Boolean)) {
                this.f14793N = ((Boolean) obj2).booleanValue();
            }
            if (this.f14783D.containsKey("bz_spaceId") && (obj = this.f14783D.get("bz_spaceId")) != null && (obj instanceof String)) {
                this.f14794O = (String) obj;
            }
        }
        if (b4.j().p()) {
            String strA = new ci().a();
            if (!TextUtils.isEmpty(strA)) {
                strA = i3.b(strA);
            }
            x1Var.b(strA);
        }
        return x1Var;
    }

    public void a(boolean z2) {
        this.f14790K = z2;
    }

    public void a(ViewGroup viewGroup, int i2) {
        try {
            rn rnVar = this.f14797c;
            if (rnVar == null) {
                return;
            }
            if (i2 == 0) {
                rnVar.e(viewGroup, this.f14806l);
                return;
            }
            if (i2 == 25) {
                rnVar.b(viewGroup, this.f14806l);
                return;
            }
            if (i2 == 50) {
                rnVar.c(viewGroup, this.f14806l);
            } else if (i2 == 75) {
                rnVar.d(viewGroup, this.f14806l);
            } else if (i2 == 100) {
                rnVar.a(viewGroup, this.f14806l);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
