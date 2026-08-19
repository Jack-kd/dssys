package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.ob;
import com.beizi.fusion.qd;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class x2 extends e2 implements b2 {

    /* renamed from: U, reason: collision with root package name */
    private Context f17389U;

    /* renamed from: V, reason: collision with root package name */
    private String f17390V;

    /* renamed from: W, reason: collision with root package name */
    private long f17391W;

    /* renamed from: X, reason: collision with root package name */
    private long f17392X;

    /* renamed from: Y, reason: collision with root package name */
    private ki f17393Y;

    /* renamed from: a0, reason: collision with root package name */
    private AdSpacesBean.UniteControlBean f17395a0;

    /* renamed from: b0, reason: collision with root package name */
    private int f17396b0;

    /* renamed from: e0, reason: collision with root package name */
    private boolean f17399e0;

    /* renamed from: f0, reason: collision with root package name */
    private long f17400f0;

    /* renamed from: g0, reason: collision with root package name */
    private rd f17401g0;

    /* renamed from: h0, reason: collision with root package name */
    private float f17402h0;

    /* renamed from: i0, reason: collision with root package name */
    private float f17403i0;

    /* renamed from: Z, reason: collision with root package name */
    protected String f17394Z = null;

    /* renamed from: c0, reason: collision with root package name */
    private boolean f17397c0 = false;

    /* renamed from: d0, reason: collision with root package name */
    private boolean f17398d0 = false;

    public class a implements BeiZiInitCallBack {
        public a() {
        }

        @Override // com.beizi.fusion.BeiZiInitCallBack
        public void fail(int i2, String str) {
            x2.this.a(String.valueOf(10160), 10160);
        }

        @Override // com.beizi.fusion.BeiZiInitCallBack
        public void success() {
            x2.this.P0();
        }
    }

    public class c implements vd {
        public c() {
        }

        @Override // com.beizi.fusion.vd
        public void onAdClicked() {
            if (x2.this.f17397c0 && x2.this.f13615e != null) {
                x2.this.f13612b.setCallBackStrategyUuid(x2.this.f13615e.getCallBackStrategyUuid());
                x2.this.I0();
            }
            x2.this.a0();
            if (!x2.this.f17397c0 || x2.this.f17398d0) {
                if (x2.this.f13614d != null && x2.this.f13614d.z() != 2) {
                    x2.this.f13614d.b(x2.this.x());
                }
                x2.this.Z();
                x2.this.J0();
            }
        }
    }

    public class d implements ud {
        public d() {
        }

        @Override // com.beizi.fusion.ud
        public void b() {
            x2.this.f13620j = c2.ADSHOW;
            if (x2.this.f17399e0) {
                x2.this.f13612b.setIsCacheAd("1");
                if (x2.this.f17400f0 > 0) {
                    x2.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - x2.this.f17400f0));
                }
                x2.this.I0();
            }
            if (x2.this.f13614d != null && x2.this.f13614d.z() != 2) {
                x2.this.f13614d.d(x2.this.x());
                x2.this.M0();
            }
            x2.this.j0();
            x2.this.z0();
            x2.this.e0();
        }

        @Override // com.beizi.fusion.ud
        public void onAdClosed() {
            if (x2.this.f13614d != null && x2.this.f13614d.z() != 2) {
                x2.this.f13614d.a(x2.this.x(), x2.this.r());
            }
            x2.this.c0();
        }

        @Override // com.beizi.fusion.ud
        public void onAdShown() {
        }
    }

    public class e implements wd {
        public e() {
        }

        @Override // com.beizi.fusion.wd
        public void a(View view) {
            x2.this.f13614d.b(x2.this.x(), view);
        }

        @Override // com.beizi.fusion.wd
        public void f() {
            x2.this.f13614d.a(10190);
        }
    }

    public x2(Context context, String str, long j2, long j3, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, float f2, float f3, n3 n3Var) {
        this.f17389U = context;
        this.f17390V = str;
        this.f17391W = j2;
        this.f17392X = j3;
        this.f13615e = buyerBean;
        this.f13614d = n3Var;
        this.f13616f = forwardBean;
        this.f17402h0 = f2;
        this.f17403i0 = f3;
        C();
    }

    private boolean N0() {
        try {
            AdSpacesBean.UniteControlBean uniteControlBean = this.f17395a0;
            if (uniteControlBean == null) {
                return true;
            }
            int random = uniteControlBean.getRandom();
            long duration = this.f17395a0.getDuration();
            long jLongValue = ((Long) go.a(this.f17389U, "uniteTime", (Object) 0L)).longValue();
            if (jLongValue > 0 && duration > 0 && System.currentTimeMillis() - jLongValue < duration) {
                if (random < this.f17396b0 && random != 100) {
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
            this.f17401g0.a(new c());
            this.f17401g0.a(new d());
            this.f17401g0.a(new e());
        } else if (u5Var == u5.FAIL) {
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        qd.b bVar = new qd.b();
        bVar.b(this.f17391W);
        float f2 = this.f17402h0;
        bVar.b(f2 > 0.0f ? vo.a(this.f17389U, f2) : 0, this.f17403i0 > 0.0f ? vo.a(this.f17389U, r3) : 0);
        String strT = t();
        if (!TextUtils.isEmpty(strT)) {
            bVar.b(strT);
        }
        Map mapI = i();
        if (mapI != null) {
            bVar.a(mapI);
        }
        bVar.a(j());
        ki kiVar = new ki(this.f17389U, (qd) bVar.a(this.f13619i));
        this.f17393Y = kiVar;
        kiVar.a((sd) new b());
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        u2.b().a(this.f17389U, this.f13618h, new a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
    
        r6.f17398d0 = com.beizi.fusion.rl.a(java.lang.Integer.parseInt(r3.getRate()));
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
            r6.f17394Z = r0
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            com.beizi.fusion.model.AdSpacesBean$FilterBean r0 = r0.getFilter()
            if (r0 == 0) goto L41
            com.beizi.fusion.model.AdSpacesBean$UniteControlBean r0 = r0.getUniteControl()
            r6.f17395a0 = r0
        L41:
            r0 = 100
            int r0 = com.beizi.fusion.rl.b(r0)
            r6.f17396b0 = r0
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
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Exception -> L92
            if (r2 != 0) goto L9a
            r6.f17397c0 = r0     // Catch: java.lang.Exception -> L92
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
            r6.f17398d0 = r1     // Catch: java.lang.Exception -> L92
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
            long r1 = r6.f17392X
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
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.x2.B0():void");
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        rd rdVar = this.f17401g0;
        if (rdVar == null) {
            return false;
        }
        return rdVar.j();
    }

    @Override // com.beizi.fusion.e2
    public void g() {
        rd rdVar = this.f17401g0;
        if (rdVar != null) {
            rdVar.b();
            this.f17401g0 = null;
        }
        this.f17393Y = null;
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
        rd rdVar = this.f17401g0;
        if (rdVar == null) {
            return null;
        }
        return a(rdVar.e());
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        rd rdVar = this.f17401g0;
        if (rdVar == null) {
            return null;
        }
        return b(rdVar.e());
    }

    @Override // com.beizi.fusion.e2
    public View r() {
        rd rdVar = this.f17401g0;
        if (rdVar != null) {
            return rdVar.a();
        }
        return null;
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        ob obVarF;
        rd rdVar = this.f17401g0;
        if (rdVar == null || (obVarF = rdVar.f()) == null) {
            return null;
        }
        return String.valueOf(obVarF.getECPM());
    }

    @Override // com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        if (!L() || this.f17393Y == null) {
            return;
        }
        G0();
    }

    @Override // com.beizi.fusion.e2
    public void c(Map map) throws NumberFormatException {
        String str;
        String str2;
        int i2;
        ob obVarF;
        Object obj;
        Object obj2;
        Object obj3;
        try {
            if (this.f17393Y == null) {
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
            Map mapA = ob.a.a(i2, -1, str2, str3, -1);
            rd rdVar = this.f17401g0;
            if (rdVar != null && (obVarF = rdVar.f()) != null) {
                obVarF.b(mapA);
            }
            I0();
            s0();
        } catch (Exception unused2) {
        }
    }

    @Override // com.beizi.fusion.e2
    public void d(Map map) throws NumberFormatException {
        int ecpm;
        ob obVarF;
        String str;
        String str2;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            if (this.f17393Y == null) {
                return;
            }
            rd rdVar = this.f17401g0;
            int i2 = 0;
            String str3 = null;
            if (rdVar != null) {
                obVarF = rdVar.f();
                ecpm = obVarF != null ? obVarF.getECPM() : 0;
            } else {
                ecpm = 0;
                obVarF = null;
            }
            if (map.containsKey("winPrice") && (obj4 = map.get("winPrice")) != null && (obj4 instanceof String)) {
                String str4 = (String) obj4;
                if (!TextUtils.isEmpty(str4)) {
                    this.f13612b.setWinPrice(str4);
                }
            }
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
                str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    this.f13612b.setSecondPrice(str3);
                }
            }
            try {
                if (!TextUtils.isEmpty(str2)) {
                    i2 = Integer.parseInt(str2);
                }
            } catch (Exception unused) {
            }
            Map mapA = ob.a.a(ecpm, i2, str, -1);
            if (mapA != null && !TextUtils.isEmpty(str3)) {
                mapA.put("auctionPrice", str3);
            }
            if (obVarF != null) {
                obVarF.a(mapA);
            }
            I0();
            t0();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public class b implements sd {
        public b() {
        }

        @Override // com.beizi.fusion.sd
        public void a(List list) {
            x2.this.f13620j = c2.ADLOAD;
            if (list == null || list.isEmpty()) {
                x2.this.a("3", 3);
                return;
            }
            x2.this.f17401g0 = (rd) list.get(0);
            if (x2.this.f17401g0 == null) {
                x2.this.a("3", 3);
                return;
            }
            try {
                if (x2.this.f17401g0.f() != null) {
                    x2.this.a(r5.getECPM());
                }
                if (x2.this.f17393Y != null) {
                    x2 x2Var = x2.this;
                    x2Var.e(x2Var.f17393Y.c());
                }
            } catch (Exception unused) {
            }
            x2.this.g0();
            if (x2.this.W()) {
                x2.this.O0();
            } else {
                x2.this.A();
            }
        }

        @Override // com.beizi.fusion.ga
        public void a(int i2, String str) {
            try {
                if (x2.this.f17393Y != null) {
                    x2 x2Var = x2.this;
                    x2Var.e(x2Var.f17393Y.c());
                }
            } catch (Exception unused) {
            }
            x2.this.a(str, i2);
        }
    }
}
