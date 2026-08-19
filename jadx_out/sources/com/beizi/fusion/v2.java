package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.beizi.fusion.gd;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.ob;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class v2 extends e2 implements b2 {

    /* renamed from: U, reason: collision with root package name */
    private Context f16606U;

    /* renamed from: V, reason: collision with root package name */
    private String f16607V;

    /* renamed from: W, reason: collision with root package name */
    private long f16608W;

    /* renamed from: X, reason: collision with root package name */
    private long f16609X;

    /* renamed from: Y, reason: collision with root package name */
    private cg f16610Y;

    /* renamed from: a0, reason: collision with root package name */
    private AdSpacesBean.UniteControlBean f16612a0;

    /* renamed from: b0, reason: collision with root package name */
    private int f16613b0;

    /* renamed from: e0, reason: collision with root package name */
    private boolean f16616e0;

    /* renamed from: f0, reason: collision with root package name */
    private long f16617f0;

    /* renamed from: Z, reason: collision with root package name */
    protected String f16611Z = null;

    /* renamed from: c0, reason: collision with root package name */
    private boolean f16614c0 = false;

    /* renamed from: d0, reason: collision with root package name */
    private boolean f16615d0 = false;

    public class a implements BeiZiInitCallBack {
        public a() {
        }

        @Override // com.beizi.fusion.BeiZiInitCallBack
        public void fail(int i2, String str) {
            v2.this.a(String.valueOf(10160), 10160);
        }

        @Override // com.beizi.fusion.BeiZiInitCallBack
        public void success() {
            v2.this.P0();
        }
    }

    public class b implements aa {
        public b() {
        }

        @Override // com.beizi.fusion.ga
        public void a(int i2, String str) {
            try {
                if (v2.this.f16610Y != null) {
                    v2 v2Var = v2.this;
                    v2Var.e(v2Var.f16610Y.c());
                }
            } catch (Exception unused) {
            }
            v2.this.a(str, i2);
        }

        @Override // com.beizi.fusion.aa
        public void b() {
            v2.this.f13620j = c2.ADSHOW;
            if (v2.this.f16616e0) {
                v2.this.f13612b.setIsCacheAd("1");
                if (v2.this.f16617f0 > 0) {
                    v2.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - v2.this.f16617f0));
                }
                v2.this.I0();
            }
            if (v2.this.f13614d != null && v2.this.f13614d.z() != 2) {
                v2.this.f13614d.d(v2.this.x());
                v2.this.M0();
            }
            v2.this.j0();
            v2.this.z0();
            v2.this.e0();
        }

        @Override // com.beizi.fusion.aa
        public void e() {
            v2.this.f13620j = c2.ADLOAD;
            try {
                if (v2.this.f16610Y != null) {
                    v2.this.a(r0.f16610Y.getECPM());
                    v2 v2Var = v2.this;
                    v2Var.e(v2Var.f16610Y.c());
                }
            } catch (Exception unused) {
            }
            v2.this.g0();
            if (v2.this.W()) {
                v2.this.O0();
            } else {
                v2.this.A();
            }
        }

        @Override // com.beizi.fusion.aa
        public void onAdClicked() {
            if (v2.this.f16614c0 && v2.this.f13615e != null) {
                v2.this.f13612b.setCallBackStrategyUuid(v2.this.f13615e.getCallBackStrategyUuid());
                v2.this.I0();
            }
            v2.this.a0();
            if (!v2.this.f16614c0 || v2.this.f16615d0) {
                if (v2.this.f13614d != null && v2.this.f13614d.z() != 2) {
                    v2.this.f13614d.b(v2.this.x());
                }
                v2.this.Z();
                v2.this.J0();
            }
        }

        @Override // com.beizi.fusion.aa
        public void onAdClosed() {
            if (v2.this.f13614d != null && v2.this.f13614d.z() != 2) {
                v2.this.f13614d.c(v2.this.x());
            }
            v2.this.c0();
        }

        @Override // com.beizi.fusion.aa
        public void onAdLoaded() {
        }

        @Override // com.beizi.fusion.aa
        public void onAdShown() {
        }
    }

    public v2(Context context, String str, long j2, long j3, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var) {
        this.f16606U = context;
        this.f16607V = str;
        this.f16608W = j2;
        this.f16609X = j3;
        this.f13615e = buyerBean;
        this.f13614d = n3Var;
        this.f13616f = forwardBean;
        C();
    }

    private boolean N0() {
        try {
            AdSpacesBean.UniteControlBean uniteControlBean = this.f16612a0;
            if (uniteControlBean == null) {
                return true;
            }
            int random = uniteControlBean.getRandom();
            long duration = this.f16612a0.getDuration();
            long jLongValue = ((Long) go.a(this.f16606U, "uniteTime", (Object) 0L)).longValue();
            if (jLongValue > 0 && duration > 0 && System.currentTimeMillis() - jLongValue < duration) {
                if (random < this.f16613b0 && random != 100) {
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
        gd.b bVar = new gd.b();
        bVar.a(j());
        bVar.b(this.f16608W);
        String strT = t();
        if (!TextUtils.isEmpty(strT)) {
            bVar.b(strT);
        }
        Map mapI = i();
        if (mapI != null) {
            bVar.a(mapI);
        }
        cg cgVar = new cg(this.f16606U, (gd) bVar.a(this.f13619i));
        this.f16610Y = cgVar;
        cgVar.a((aa) new b());
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        u2.b().a(this.f16606U, this.f13618h, new a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
    
        r6.f16615d0 = com.beizi.fusion.rl.a(java.lang.Integer.parseInt(r3.getRate()));
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
            r6.f16611Z = r0
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            com.beizi.fusion.model.AdSpacesBean$FilterBean r0 = r0.getFilter()
            if (r0 == 0) goto L41
            com.beizi.fusion.model.AdSpacesBean$UniteControlBean r0 = r0.getUniteControl()
            r6.f16612a0 = r0
        L41:
            r0 = 100
            int r0 = com.beizi.fusion.rl.b(r0)
            r6.f16613b0 = r0
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
            r6.f16614c0 = r0     // Catch: java.lang.Exception -> L92
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
            r6.f16615d0 = r1     // Catch: java.lang.Exception -> L92
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
            long r1 = r6.f16609X
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
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.v2.B0():void");
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        cg cgVar = this.f16610Y;
        if (cgVar == null) {
            return false;
        }
        return cgVar.f();
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
            if (this.f16610Y == null) {
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
            this.f16610Y.b(ob.a.a(i2, -1, str2, str3, -1));
            I0();
            s0();
        } catch (Exception unused2) {
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
            cg cgVar = this.f16610Y;
            if (cgVar == null) {
                return;
            }
            int ecpm = cgVar.getECPM();
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
            this.f16610Y.a(mapA);
            I0();
            t0();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void g() {
        cg cgVar = this.f16610Y;
        if (cgVar != null) {
            cgVar.d();
        }
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
        cg cgVar = this.f16610Y;
        if (cgVar == null) {
            return null;
        }
        return a(cgVar.e());
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        cg cgVar = this.f16610Y;
        if (cgVar == null) {
            return null;
        }
        return b(cgVar.e());
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        cg cgVar = this.f16610Y;
        if (cgVar == null) {
            return null;
        }
        return String.valueOf(cgVar.getECPM());
    }

    @Override // com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        if (!L() || this.f16610Y == null) {
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
            cg cgVar = this.f16610Y;
            if (cgVar != null) {
                cgVar.b(activity);
            }
        } catch (Throwable unused) {
        }
    }
}
