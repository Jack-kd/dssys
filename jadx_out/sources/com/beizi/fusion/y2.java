package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.ob;
import com.beizi.fusion.ue;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class y2 extends e2 implements b2 {

    /* renamed from: U, reason: collision with root package name */
    private Context f17629U;

    /* renamed from: V, reason: collision with root package name */
    private String f17630V;

    /* renamed from: W, reason: collision with root package name */
    private long f17631W;

    /* renamed from: X, reason: collision with root package name */
    private long f17632X;

    /* renamed from: Y, reason: collision with root package name */
    private jm f17633Y;

    /* renamed from: a0, reason: collision with root package name */
    private AdSpacesBean.UniteControlBean f17635a0;

    /* renamed from: b0, reason: collision with root package name */
    private int f17636b0;

    /* renamed from: e0, reason: collision with root package name */
    private boolean f17639e0;

    /* renamed from: f0, reason: collision with root package name */
    private long f17640f0;

    /* renamed from: g0, reason: collision with root package name */
    private String f17641g0;

    /* renamed from: h0, reason: collision with root package name */
    private String f17642h0;

    /* renamed from: Z, reason: collision with root package name */
    protected String f17634Z = null;

    /* renamed from: c0, reason: collision with root package name */
    private boolean f17637c0 = false;

    /* renamed from: d0, reason: collision with root package name */
    private boolean f17638d0 = false;

    public class a implements BeiZiInitCallBack {
        public a() {
        }

        @Override // com.beizi.fusion.BeiZiInitCallBack
        public void fail(int i2, String str) {
            y2.this.a(String.valueOf(10160), 10160);
        }

        @Override // com.beizi.fusion.BeiZiInitCallBack
        public void success() {
            y2.this.P0();
        }
    }

    public y2(Context context, String str, long j2, long j3, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, String str2, String str3, n3 n3Var) {
        this.f17629U = context;
        this.f17630V = str;
        this.f17631W = j2;
        this.f17632X = j3;
        this.f13615e = buyerBean;
        this.f13614d = n3Var;
        this.f13616f = forwardBean;
        this.f17641g0 = str2;
        this.f17642h0 = str3;
        C();
    }

    private boolean N0() {
        try {
            AdSpacesBean.UniteControlBean uniteControlBean = this.f17635a0;
            if (uniteControlBean == null) {
                return true;
            }
            int random = uniteControlBean.getRandom();
            long duration = this.f17635a0.getDuration();
            long jLongValue = ((Long) go.a(this.f17629U, "uniteTime", (Object) 0L)).longValue();
            if (jLongValue > 0 && duration > 0 && System.currentTimeMillis() - jLongValue < duration) {
                if (random < this.f17636b0 && random != 100) {
                    return false;
                }
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0() {
        n3 n3Var = this.f13614d;
        if (n3Var == null) {
            return;
        }
        n3Var.C().toString();
        f();
        u5 u5Var = this.f13617g;
        if (u5Var == u5.SUCCESS) {
            this.f13614d.b(x(), (View) null);
        } else if (u5Var == u5.FAIL) {
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        ue.b bVar = new ue.b();
        bVar.a(j());
        bVar.b(this.f17631W);
        String strT = t();
        if (!TextUtils.isEmpty(strT)) {
            bVar.b(strT);
        }
        Map mapI = i();
        if (mapI != null) {
            bVar.a(mapI);
        }
        jm jmVar = new jm(this.f17629U, (ue) bVar.a(this.f13619i));
        this.f17633Y = jmVar;
        jmVar.a((ve) new b());
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        u2.b().a(this.f17629U, this.f13618h, new a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
    
        r6.f17638d0 = com.beizi.fusion.rl.a(java.lang.Integer.parseInt(r3.getRate()));
     */
    @Override // com.beizi.fusion.e2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void B0() {
        /*
            r6 = this;
            com.beizi.fusion.n3 r0 = r6.f13614d
            if (r0 != 0) goto L6
            goto Ldc
        L6:
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            java.lang.String r0 = r0.getAppId()
            r6.f13618h = r0
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            java.lang.String r0 = r0.getSpaceId()
            r6.f13619i = r0
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            java.lang.String r0 = r0.getBuyerSpaceUuId()
            r6.f13613c = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "complain_config_"
            r0.append(r1)
            java.lang.String r1 = r6.f13619i
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r6.f17634Z = r0
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            com.beizi.fusion.model.AdSpacesBean$FilterBean r0 = r0.getFilter()
            if (r0 == 0) goto L41
            com.beizi.fusion.model.AdSpacesBean$UniteControlBean r0 = r0.getUniteControl()
            r6.f17635a0 = r0
        L41:
            r0 = 100
            int r0 = com.beizi.fusion.rl.b(r0)
            r6.f17636b0 = r0
            boolean r0 = r6.N0()
            if (r0 != 0) goto L59
            r0 = 10170(0x27ba, float:1.4251E-41)
            java.lang.String r1 = java.lang.String.valueOf(r0)
            r6.a(r1, r0)
            return
        L59:
            r0 = 1
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r1 = r6.f13615e     // Catch: java.lang.Exception -> L92
            java.util.List r1 = r1.getCallBackStrategy()     // Catch: java.lang.Exception -> L92
            if (r1 == 0) goto L9a
            int r2 = r1.size()     // Catch: java.lang.Exception -> L92
            if (r2 <= 0) goto L9a
            r6.f17637c0 = r0     // Catch: java.lang.Exception -> L92
            r2 = 0
        L6b:
            int r3 = r1.size()     // Catch: java.lang.Exception -> L92
            if (r2 >= r3) goto L9a
            java.lang.Object r3 = r1.get(r2)     // Catch: java.lang.Exception -> L92
            com.beizi.fusion.model.AdSpacesBean$CallBackStrategyBean r3 = (com.beizi.fusion.model.AdSpacesBean.CallBackStrategyBean) r3     // Catch: java.lang.Exception -> L92
            java.lang.String r4 = "290.300"
            java.lang.String r5 = r3.getEventCode()     // Catch: java.lang.Exception -> L92
            boolean r4 = r4.equalsIgnoreCase(r5)     // Catch: java.lang.Exception -> L92
            if (r4 == 0) goto L94
            java.lang.String r1 = r3.getRate()     // Catch: java.lang.Exception -> L92
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Exception -> L92
            boolean r1 = com.beizi.fusion.rl.a(r1)     // Catch: java.lang.Exception -> L92
            r6.f17638d0 = r1     // Catch: java.lang.Exception -> L92
            goto L9a
        L92:
            r1 = move-exception
            goto L97
        L94:
            int r2 = r2 + 1
            goto L6b
        L97:
            r1.printStackTrace()
        L9a:
            com.beizi.fusion.lk r1 = r6.f13611a
            if (r1 == 0) goto Lb5
            com.beizi.fusion.s1 r1 = r1.a()
            java.lang.String r2 = r6.f13613c
            com.beizi.fusion.events.EventBean r1 = r1.b(r2)
            r6.f13612b = r1
            if (r1 == 0) goto Lb5
            r6.D()
            r6.v0()
            r6.w0()
        Lb5:
            r6.x()
            long r1 = r6.f17632X
            r3 = 0
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 <= 0) goto Lc6
            android.os.Handler r3 = r6.f13602L
            r3.sendEmptyMessageDelayed(r0, r1)
            goto Ldc
        Lc6:
            com.beizi.fusion.n3 r1 = r6.f13614d
            if (r1 == 0) goto Ldc
            int r1 = r1.n()
            if (r1 >= r0) goto Ldc
            com.beizi.fusion.n3 r0 = r6.f13614d
            int r0 = r0.z()
            r1 = 2
            if (r0 == r1) goto Ldc
            r6.A0()
        Ldc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.y2.B0():void");
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        jm jmVar = this.f17633Y;
        if (jmVar == null) {
            return false;
        }
        return jmVar.f();
    }

    public class b implements ve {
        public b() {
        }

        @Override // com.beizi.fusion.ve
        public void a() {
            if (y2.this.f13614d != null) {
                y2.this.f13614d.N();
            }
        }

        @Override // com.beizi.fusion.aa
        public void b() {
            y2.this.f13620j = c2.ADSHOW;
            if (y2.this.f17639e0) {
                y2.this.f13612b.setIsCacheAd("1");
                if (y2.this.f17640f0 > 0) {
                    y2.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - y2.this.f17640f0));
                }
                y2.this.I0();
            }
            if (y2.this.f13614d != null && y2.this.f13614d.z() != 2) {
                y2.this.f13614d.d(y2.this.x());
                y2.this.M0();
            }
            y2.this.j0();
            y2.this.z0();
            y2.this.e0();
        }

        @Override // com.beizi.fusion.ve
        public void c() {
            y2.this.i0();
            if (y2.this.f13614d != null) {
                y2.this.f13614d.M();
            }
        }

        @Override // com.beizi.fusion.ve
        public void d() {
            if (y2.this.f13614d != null) {
                y2.this.f13614d.P();
            }
        }

        @Override // com.beizi.fusion.aa
        public void e() {
            y2.this.f13620j = c2.ADLOAD;
            try {
                if (y2.this.f17633Y != null) {
                    y2.this.a(r0.f17633Y.getECPM());
                    y2 y2Var = y2.this;
                    y2Var.e(y2Var.f17633Y.c());
                }
            } catch (Exception unused) {
            }
            y2.this.g0();
            if (y2.this.W()) {
                y2.this.O0();
            } else {
                y2.this.A();
            }
        }

        @Override // com.beizi.fusion.ve
        public void f() {
            if (y2.this.f13614d != null) {
                y2.this.f13614d.O();
            }
        }

        @Override // com.beizi.fusion.aa
        public void onAdClicked() {
            if (y2.this.f17637c0 && y2.this.f13615e != null) {
                y2.this.f13612b.setCallBackStrategyUuid(y2.this.f13615e.getCallBackStrategyUuid());
                y2.this.I0();
            }
            y2.this.a0();
            if (!y2.this.f17637c0 || y2.this.f17638d0) {
                if (y2.this.f13614d != null && y2.this.f13614d.z() != 2) {
                    y2.this.f13614d.b(y2.this.x());
                }
                y2.this.Z();
                y2.this.J0();
            }
        }

        @Override // com.beizi.fusion.aa
        public void onAdClosed() {
            if (y2.this.f13614d != null && y2.this.f13614d.z() != 2) {
                y2.this.f13614d.c(y2.this.x());
            }
            y2.this.c0();
        }

        @Override // com.beizi.fusion.aa
        public void onAdLoaded() {
        }

        @Override // com.beizi.fusion.aa
        public void onAdShown() {
        }

        @Override // com.beizi.fusion.ga
        public void a(int i2, String str) {
            y2.this.a(str, i2);
        }
    }

    @Override // com.beizi.fusion.e2
    public void c(Map map) throws NumberFormatException {
        String str;
        String str2;
        int i2;
        Object obj;
        Object obj2;
        Object obj3;
        try {
            if (this.f17633Y == null) {
                return;
            }
            String str3 = null;
            if (map.containsKey("winPrice") && (obj3 = map.get("winPrice")) != null && (obj3 instanceof String)) {
                str = (String) obj3;
                if (!TextUtils.isEmpty(str)) {
                    this.f13612b.setWinPrice(str);
                }
            } else {
                str = null;
            }
            if (map.containsKey("adnId") && (obj2 = map.get("adnId")) != null && (obj2 instanceof String)) {
                str2 = (String) obj2;
                if (!TextUtils.isEmpty(str2)) {
                    this.f13612b.setAdnId(str2);
                }
            } else {
                str2 = null;
            }
            if (map.containsKey("lossReason") && (obj = map.get("lossReason")) != null && (obj instanceof String)) {
                str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    this.f13612b.setLossReason(str3);
                }
            }
            if (TextUtils.isEmpty(str)) {
                i2 = 0;
            } else {
                try {
                    i2 = Integer.parseInt(str);
                } catch (Exception unused) {
                }
            }
            this.f17633Y.b(ob.a.a(i2, -1, str2, str3, -1));
            I0();
            s0();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void d(Map map) {
        String str;
        String str2;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            jm jmVar = this.f17633Y;
            if (jmVar == null) {
                return;
            }
            int ecpm = jmVar.getECPM();
            if (map.containsKey("winPrice") && (obj4 = map.get("winPrice")) != null && (obj4 instanceof String)) {
                String str3 = (String) obj4;
                if (!TextUtils.isEmpty(str3)) {
                    this.f13612b.setWinPrice(str3);
                }
            }
            String str4 = null;
            if (map.containsKey("adnId") && (obj3 = map.get("adnId")) != null && (obj3 instanceof String)) {
                str = (String) obj3;
                if (!TextUtils.isEmpty(str)) {
                    this.f13612b.setAdnId(str);
                }
            } else {
                str = null;
            }
            if (map.containsKey("highestLossPrice") && (obj2 = map.get("highestLossPrice")) != null && (obj2 instanceof String)) {
                str2 = (String) obj2;
                if (!TextUtils.isEmpty(str2)) {
                    this.f13612b.setHighestLossPrice(str2);
                }
            } else {
                str2 = null;
            }
            if (map.containsKey("auctionExt") && (obj = map.get("auctionExt")) != null && (obj instanceof String)) {
                str4 = (String) obj;
                if (!TextUtils.isEmpty(str4)) {
                    this.f13612b.setSecondPrice(str4);
                }
            }
            int i2 = !TextUtils.isEmpty(str2) ? Integer.parseInt(str2) : 0;
            Map mapA = ob.a.a(ecpm, i2, str, -1);
            if (mapA != null && !TextUtils.isEmpty(str4)) {
                mapA.put("auctionPrice", str4);
            }
            this.f17633Y.a(mapA);
            I0();
            t0();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void g() {
        jm jmVar = this.f17633Y;
        if (jmVar != null) {
            jmVar.d();
        }
        this.f17629U = null;
    }

    @Override // com.beizi.fusion.e2
    public c2 h() {
        return this.f13620j;
    }

    @Override // com.beizi.fusion.e2
    public AdSpacesBean.BuyerBean m() {
        return this.f13615e;
    }

    @Override // com.beizi.fusion.e2
    public String n() {
        jm jmVar = this.f17633Y;
        if (jmVar == null) {
            return null;
        }
        return a(jmVar.e());
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        jm jmVar = this.f17633Y;
        if (jmVar == null) {
            return null;
        }
        return b(jmVar.e());
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        jm jmVar = this.f17633Y;
        if (jmVar == null) {
            return null;
        }
        return String.valueOf(jmVar.getECPM());
    }

    @Override // com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        if (!L() || this.f17633Y == null) {
            return;
        }
        G0();
    }

    @Override // com.beizi.fusion.e2
    public void a(Activity activity) {
        x();
        try {
            if (!N0()) {
                a(String.valueOf(10170), 10170);
                return;
            }
            jm jmVar = this.f17633Y;
            if (jmVar == null || !jmVar.f()) {
                return;
            }
            this.f17633Y.b(activity);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
