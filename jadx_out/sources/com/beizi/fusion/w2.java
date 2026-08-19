package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.fusion.asnp.adn.ad.publish.ad.unified.view.ASNPUnifiedExpressContainer;
import com.beizi.fusion.bf;
import com.beizi.fusion.ef;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.UnifiedAdDownloadAppInfo;
import com.beizi.fusion.ob;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class w2 extends e2 implements b2 {

    /* renamed from: U, reason: collision with root package name */
    private Context f16789U;

    /* renamed from: V, reason: collision with root package name */
    private String f16790V;

    /* renamed from: W, reason: collision with root package name */
    private long f16791W;

    /* renamed from: X, reason: collision with root package name */
    private long f16792X;

    /* renamed from: Y, reason: collision with root package name */
    private kp f16793Y;

    /* renamed from: a0, reason: collision with root package name */
    private AdSpacesBean.UniteControlBean f16795a0;

    /* renamed from: b0, reason: collision with root package name */
    private int f16796b0;

    /* renamed from: e0, reason: collision with root package name */
    private boolean f16799e0;

    /* renamed from: f0, reason: collision with root package name */
    private long f16800f0;

    /* renamed from: g0, reason: collision with root package name */
    private cf f16801g0;

    /* renamed from: h0, reason: collision with root package name */
    private NativeUnifiedAdResponse f16802h0;

    /* renamed from: i0, reason: collision with root package name */
    protected FrameLayout f16803i0;

    /* renamed from: Z, reason: collision with root package name */
    protected String f16794Z = null;

    /* renamed from: c0, reason: collision with root package name */
    private boolean f16797c0 = false;

    /* renamed from: d0, reason: collision with root package name */
    private boolean f16798d0 = false;

    public class a implements BeiZiInitCallBack {
        public a() {
        }

        @Override // com.beizi.fusion.BeiZiInitCallBack
        public void fail(int i2, String str) {
            w2.this.a(String.valueOf(10160), 10160);
        }

        @Override // com.beizi.fusion.BeiZiInitCallBack
        public void success() {
            w2.this.P0();
        }
    }

    public class c implements NativeUnifiedAdResponse {

        public class a implements ud {
            public a() {
            }

            @Override // com.beizi.fusion.ud
            public void b() {
                w2.this.f13620j = c2.ADSHOW;
                if (w2.this.f16799e0) {
                    w2.this.f13612b.setIsCacheAd("1");
                    if (w2.this.f16800f0 > 0) {
                        w2.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - w2.this.f16800f0));
                    }
                    w2.this.I0();
                }
                if (w2.this.f13614d != null && w2.this.f13614d.z() != 2) {
                    w2.this.f13614d.d(w2.this.x());
                    w2.this.M0();
                }
                w2.this.j0();
                w2.this.z0();
                w2.this.e0();
            }

            @Override // com.beizi.fusion.ud
            public void onAdClosed() {
                if (w2.this.f13614d != null && w2.this.f13614d.z() != 2) {
                    w2.this.f13614d.a(w2.this.x(), w2.this.f16803i0);
                }
                w2.this.c0();
            }

            @Override // com.beizi.fusion.ud
            public void onAdShown() {
            }
        }

        public class b implements vd {
            public b() {
            }

            @Override // com.beizi.fusion.vd
            public void onAdClicked() {
                if (w2.this.f16797c0 && w2.this.f13615e != null) {
                    w2.this.f13612b.setCallBackStrategyUuid(w2.this.f13615e.getCallBackStrategyUuid());
                    w2.this.I0();
                }
                w2.this.a0();
                if (!w2.this.f16797c0 || w2.this.f16798d0) {
                    if (w2.this.f13614d != null && w2.this.f13614d.z() != 2) {
                        w2.this.f13614d.b(w2.this.x());
                    }
                    w2.this.Z();
                    w2.this.J0();
                }
            }
        }

        public c() {
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getActionText() {
            if (w2.this.f16801g0 != null) {
                return w2.this.f16801g0.g();
            }
            return null;
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getAdLogoUrl() {
            if (w2.this.f16801g0 != null) {
                return w2.this.f16801g0.getAdLogoUrl();
            }
            return null;
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getDescription() {
            if (w2.this.f16801g0 != null) {
                return w2.this.f16801g0.getDesc();
            }
            return null;
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public UnifiedAdDownloadAppInfo getDownloadAppInfo() {
            ef efVarD;
            try {
                if (w2.this.f16801g0 == null || (efVarD = w2.this.f16801g0.d()) == null) {
                    return null;
                }
                UnifiedAdDownloadAppInfo unifiedAdDownloadAppInfo = new UnifiedAdDownloadAppInfo();
                unifiedAdDownloadAppInfo.setAppName(efVarD.getName());
                unifiedAdDownloadAppInfo.setAppVersion(efVarD.c());
                unifiedAdDownloadAppInfo.setAppDeveloper(efVarD.e());
                String strB = efVarD.b();
                if (TextUtils.isEmpty(strB)) {
                    List<ef.a> listA = efVarD.a();
                    if (listA != null && !listA.isEmpty()) {
                        HashMap map = new HashMap();
                        for (ef.a aVar : listA) {
                            if (aVar != null) {
                                map.put(aVar.getTitle(), aVar.a());
                            }
                        }
                        unifiedAdDownloadAppInfo.setAppPermission(map.toString());
                    }
                } else {
                    unifiedAdDownloadAppInfo.setAppPermission(strB);
                }
                String strF = efVarD.f();
                if (!TextUtils.isEmpty(strF)) {
                    unifiedAdDownloadAppInfo.setAppPrivacy(strF);
                }
                unifiedAdDownloadAppInfo.setAppIntro(efVarD.d());
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public int getECPM() {
            String strS = w2.this.s();
            if (strS == null) {
                return -1;
            }
            try {
                return Integer.parseInt(strS);
            } catch (Exception unused) {
                return -1;
            }
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getIconUrl() {
            if (w2.this.f16801g0 != null) {
                return w2.this.f16801g0.getIconUrl();
            }
            return null;
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getImageUrl() {
            if (w2.this.f16801g0 != null) {
                return w2.this.f16801g0.h();
            }
            return null;
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public List getImgList() {
            if (w2.this.f16801g0 != null) {
                return w2.this.f16801g0.c();
            }
            return null;
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public int getMaterialType() {
            if (w2.this.f16801g0 == null) {
                return 0;
            }
            int iOrdinal = w2.this.f16801g0.i().ordinal();
            return (iOrdinal == 0 || iOrdinal == 1) ? 1 : 0;
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getTitle() {
            if (w2.this.f16801g0 != null) {
                return w2.this.f16801g0.getTitle();
            }
            return null;
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public View getVideoView() {
            return null;
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public ViewGroup getViewContainer() {
            return w2.this.f16803i0;
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public boolean isVideo() {
            return false;
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public void registerDownloadAppInfoClickEvent(View view) {
            w2.this.a(view);
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public void registerViewForInteraction(List list) {
            try {
                if (w2.this.f16789U != null) {
                    w2 w2Var = w2.this;
                    if (w2Var.f16803i0 != null && w2Var.f16801g0 != null && (w2.this.f16789U instanceof Activity)) {
                        ASNPUnifiedExpressContainer aSNPUnifiedExpressContainer = new ASNPUnifiedExpressContainer(w2.this.f16789U);
                        w2 w2Var2 = w2.this;
                        w2Var2.a(w2Var2.f16803i0, aSNPUnifiedExpressContainer);
                        w2.this.f16801g0.a(new a());
                        w2.this.f16801g0.a(new b());
                        w2.this.f16801g0.a((Activity) w2.this.f16789U, aSNPUnifiedExpressContainer, list);
                    }
                }
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ef efVarD;
            try {
                if (w2.this.f16789U == null || w2.this.f16801g0 == null || (efVarD = w2.this.f16801g0.d()) == null) {
                    return;
                }
                String name = efVarD.getName();
                String string = "";
                String strB = efVarD.b();
                if (TextUtils.isEmpty(strB)) {
                    List<ef.a> listA = efVarD.a();
                    if (listA != null && !listA.isEmpty()) {
                        HashMap map = new HashMap();
                        for (ef.a aVar : listA) {
                            if (aVar != null) {
                                map.put(aVar.getTitle(), aVar.a());
                            }
                        }
                        string = map.toString();
                    }
                } else {
                    string = strB;
                }
                String strF = efVarD.f();
                String strD = efVarD.d();
                Intent intent = new Intent(w2.this.f16789U, (Class<?>) DownloadAppInfoActivity.class);
                intent.putExtra("title_content_key", name);
                intent.putExtra("privacy_content_key", strF);
                intent.putExtra("permission_content_key", string);
                intent.putExtra("intro_content_key", strD);
                intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                w2.this.f16789U.startActivity(intent);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public w2(Context context, String str, long j2, long j3, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var) {
        this.f16789U = context;
        this.f16790V = str;
        this.f16791W = j2;
        this.f16792X = j3;
        this.f13615e = buyerBean;
        this.f13614d = n3Var;
        this.f13616f = forwardBean;
        C();
    }

    private boolean N0() {
        try {
            AdSpacesBean.UniteControlBean uniteControlBean = this.f16795a0;
            if (uniteControlBean == null) {
                return true;
            }
            int random = uniteControlBean.getRandom();
            long duration = this.f16795a0.getDuration();
            long jLongValue = ((Long) go.a(this.f16789U, "uniteTime", (Object) 0L)).longValue();
            if (jLongValue > 0 && duration > 0 && System.currentTimeMillis() - jLongValue < duration) {
                if (random < this.f16796b0 && random != 100) {
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
            Q0();
            this.f13614d.b(x(), (View) null);
        } else if (u5Var == u5.FAIL) {
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        bf.a aVar = new bf.a();
        aVar.a(j());
        aVar.b(this.f16791W);
        String strT = t();
        if (!TextUtils.isEmpty(strT)) {
            aVar.b(strT);
        }
        Map mapI = i();
        if (mapI != null) {
            aVar.a(mapI);
        }
        kp kpVar = new kp(this.f16789U, (bf) aVar.a(this.f13619i));
        this.f16793Y = kpVar;
        kpVar.a((df) new b());
    }

    private void Q0() {
        try {
            this.f16803i0 = new FrameLayout(this.f16789U);
            this.f16802h0 = new c();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        u2.b().a(this.f16789U, this.f13618h, new a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
    
        r6.f16798d0 = com.beizi.fusion.rl.a(java.lang.Integer.parseInt(r3.getRate()));
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
            r6.f16794Z = r0
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            com.beizi.fusion.model.AdSpacesBean$FilterBean r0 = r0.getFilter()
            if (r0 == 0) goto L41
            com.beizi.fusion.model.AdSpacesBean$UniteControlBean r0 = r0.getUniteControl()
            r6.f16795a0 = r0
        L41:
            r0 = 100
            int r0 = com.beizi.fusion.rl.b(r0)
            r6.f16796b0 = r0
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
            r6.f16797c0 = r0     // Catch: java.lang.Exception -> L92
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
            r6.f16798d0 = r1     // Catch: java.lang.Exception -> L92
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
            long r1 = r6.f16792X
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
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.w2.B0():void");
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        cf cfVar = this.f16801g0;
        if (cfVar == null) {
            return false;
        }
        return cfVar.j();
    }

    @Override // com.beizi.fusion.e2
    public void g() {
        cf cfVar = this.f16801g0;
        if (cfVar != null) {
            cfVar.b();
            this.f16801g0 = null;
        }
        this.f16793Y = null;
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
        cf cfVar = this.f16801g0;
        if (cfVar == null) {
            return null;
        }
        return a(cfVar.e());
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        cf cfVar = this.f16801g0;
        if (cfVar == null) {
            return null;
        }
        return b(cfVar.e());
    }

    @Override // com.beizi.fusion.e2
    public NativeUnifiedAdResponse q() {
        return this.f16802h0;
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        ob obVarF;
        cf cfVar = this.f16801g0;
        if (cfVar == null || (obVarF = cfVar.f()) == null) {
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
        if (!L() || this.f16793Y == null) {
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
            if (this.f16793Y == null) {
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
            cf cfVar = this.f16801g0;
            if (cfVar != null && (obVarF = cfVar.f()) != null) {
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
            if (this.f16793Y == null) {
                return;
            }
            cf cfVar = this.f16801g0;
            int i2 = 0;
            String str3 = null;
            if (cfVar != null) {
                obVarF = cfVar.f();
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

    public void a(View view) {
        if (view == null) {
            return;
        }
        try {
            view.setOnClickListener(new d());
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FrameLayout frameLayout, ViewGroup viewGroup) {
        if (frameLayout == null || viewGroup == null) {
            return;
        }
        try {
            int childCount = frameLayout.getChildCount();
            if (childCount <= 0) {
                return;
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = frameLayout.getChildAt(i2);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                frameLayout.removeView(childAt);
                viewGroup.addView(childAt, layoutParams);
            }
            frameLayout.addView(viewGroup, new FrameLayout.LayoutParams(-1, -1));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public class b implements df {
        public b() {
        }

        @Override // com.beizi.fusion.df
        public void a(List list) {
            w2.this.f13620j = c2.ADLOAD;
            if (list == null || list.isEmpty()) {
                w2.this.a("3", 3);
                return;
            }
            w2.this.f16801g0 = (cf) list.get(0);
            if (w2.this.f16801g0 == null) {
                w2.this.a("3", 3);
                return;
            }
            try {
                if (w2.this.f16801g0.f() != null) {
                    w2.this.a(r5.getECPM());
                }
                if (w2.this.f16793Y != null) {
                    w2 w2Var = w2.this;
                    w2Var.e(w2Var.f16793Y.c());
                }
            } catch (Exception unused) {
            }
            w2.this.g0();
            if (w2.this.W()) {
                w2.this.O0();
            } else {
                w2.this.A();
            }
        }

        @Override // com.beizi.fusion.ga
        public void a(int i2, String str) {
            try {
                if (w2.this.f16793Y != null) {
                    w2 w2Var = w2.this;
                    w2Var.e(w2Var.f16793Y.c());
                }
            } catch (Exception unused) {
            }
            w2.this.a(str, i2);
        }
    }
}
