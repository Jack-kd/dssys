package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class c4 extends e2 implements b2 {

    /* renamed from: U, reason: collision with root package name */
    private Context f13216U;

    /* renamed from: V, reason: collision with root package name */
    private String f13217V;

    /* renamed from: W, reason: collision with root package name */
    private long f13218W;

    /* renamed from: X, reason: collision with root package name */
    private long f13219X;

    /* renamed from: Y, reason: collision with root package name */
    private bg f13220Y;

    /* renamed from: Z, reason: collision with root package name */
    protected String f13221Z = null;

    /* renamed from: a0, reason: collision with root package name */
    private AdSpacesBean.UniteControlBean f13222a0;

    /* renamed from: b0, reason: collision with root package name */
    private int f13223b0;

    /* renamed from: c0, reason: collision with root package name */
    private boolean f13224c0;

    /* renamed from: d0, reason: collision with root package name */
    private long f13225d0;

    public c4(Context context, String str, long j2, long j3, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var) {
        this.f13216U = context;
        this.f13217V = str;
        this.f13218W = j2;
        this.f13219X = j3;
        this.f13615e = buyerBean;
        this.f13614d = n3Var;
        this.f13616f = forwardBean;
        C();
    }

    private boolean N0() {
        try {
            AdSpacesBean.UniteControlBean uniteControlBean = this.f13222a0;
            if (uniteControlBean == null) {
                return true;
            }
            int random = uniteControlBean.getRandom();
            long duration = this.f13222a0.getDuration();
            long jLongValue = ((Long) go.a(this.f13216U, "uniteTime", (Object) 0L)).longValue();
            if (jLongValue > 0 && duration > 0 && System.currentTimeMillis() - jLongValue < duration) {
                if (random < this.f13223b0 && random != 100) {
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

    private void P0() {
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule = this.f13615e.getEulerAngleRule();
        if (eulerAngleRule == null) {
            return;
        }
        AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBeanA = a(eulerAngleRule.getOrderData(), this.f13220Y.c());
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule2 = (orderDataEulerAngleViewBeanA == null || orderDataEulerAngleViewBeanA.getEulerAngleRule() == null) ? null : orderDataEulerAngleViewBeanA.getEulerAngleRule();
        if (eulerAngleRule2 != null) {
            EventBean eventBean = this.f13612b;
            if (eventBean != null) {
                eventBean.setEulerAngleUuid(eulerAngleRule2.getEulerAngleUuid());
                I0();
                return;
            }
            return;
        }
        EventBean eventBean2 = this.f13612b;
        if (eventBean2 != null) {
            eventBean2.setEulerAngleUuid(eulerAngleRule.getEulerAngleUuid());
            I0();
        }
    }

    private void Q0() {
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClick = this.f13615e.getFullScreenClick();
        if (fullScreenClick == null) {
            return;
        }
        AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBeanB = b(fullScreenClick.getOrderData(), this.f13220Y.c());
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClick2 = (orderDataFullScreenClickBeanB == null || orderDataFullScreenClickBeanB.getFullScreenClick() == null) ? null : orderDataFullScreenClickBeanB.getFullScreenClick();
        if (fullScreenClick2 != null) {
            EventBean eventBean = this.f13612b;
            if (eventBean != null) {
                eventBean.setFullScreenClickUuid(fullScreenClick2.getFullScreenClickUuid());
                I0();
                return;
            }
            return;
        }
        EventBean eventBean2 = this.f13612b;
        if (eventBean2 != null) {
            eventBean2.setFullScreenClickUuid(fullScreenClick.getFullScreenClickUuid());
            I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R0() {
        S0();
        Q0();
        U0();
        T0();
        P0();
    }

    private void S0() {
        AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickView = this.f13615e.getRegionalClickView();
        if (regionalClickView == null) {
            return;
        }
        AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBeanC = c(regionalClickView.getOrderData(), this.f13220Y.c());
        AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickView2 = (orderDataRegionalClickViewBeanC == null || orderDataRegionalClickViewBeanC.getRegionalClickView() == null) ? null : orderDataRegionalClickViewBeanC.getRegionalClickView();
        if (regionalClickView2 != null) {
            EventBean eventBean = this.f13612b;
            if (eventBean != null) {
                eventBean.setRegionalClickUuid(regionalClickView2.getRegionalClickUuid());
                I0();
                return;
            }
            return;
        }
        EventBean eventBean2 = this.f13612b;
        if (eventBean2 != null) {
            eventBean2.setRegionalClickUuid(regionalClickView.getRegionalClickUuid());
            I0();
        }
    }

    private void T0() {
        AdSpacesBean.BuyerBean.ScrollClickBean scrollClick = this.f13615e.getScrollClick();
        if (scrollClick == null) {
            return;
        }
        AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBeanD = d(scrollClick.getOrderData(), this.f13220Y.c());
        AdSpacesBean.BuyerBean.ScrollClickBean scrollClick2 = (orderDataScrollViewOrderBeanD == null || orderDataScrollViewOrderBeanD.getScrollClick() == null) ? null : orderDataScrollViewOrderBeanD.getScrollClick();
        if (scrollClick2 != null) {
            EventBean eventBean = this.f13612b;
            if (eventBean != null) {
                eventBean.setScrollClickUuid(scrollClick2.getScrollClickUuid());
                I0();
                return;
            }
            return;
        }
        EventBean eventBean2 = this.f13612b;
        if (eventBean2 != null) {
            eventBean2.setScrollClickUuid(scrollClick.getScrollClickUuid());
            I0();
        }
    }

    private void U0() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView = this.f13615e.getShakeView();
        if (shakeView == null) {
            return;
        }
        AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanE = e(shakeView.getOrderData(), this.f13220Y.c());
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView2 = (orderDataShakeViewBeanE == null || orderDataShakeViewBeanE.getShakeView() == null) ? null : orderDataShakeViewBeanE.getShakeView();
        if (shakeView2 != null) {
            EventBean eventBean = this.f13612b;
            if (eventBean != null) {
                eventBean.setShakeViewUuid(shakeView2.getShakeViewUuid());
                I0();
                return;
            }
            return;
        }
        EventBean eventBean2 = this.f13612b;
        if (eventBean2 != null) {
            eventBean2.setShakeViewUuid(shakeView.getShakeViewUuid());
            I0();
        }
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        bg bgVar = new bg(this.f13216U, false);
        this.f13220Y = bgVar;
        bgVar.a(this.f13619i);
        this.f13220Y.a(this.f13615e);
        this.f13220Y.a(new a());
        this.f13220Y.b(true);
        try {
            this.f13220Y.a(this.f13612b.m44clone());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f13220Y.a((int) this.f13218W);
        this.f13220Y.a(this.f13615e);
        if ("S2S".equals(l())) {
            this.f13220Y.c(l());
            n3 n3Var = this.f13614d;
            if (n3Var != null) {
                String strQ = n3Var.q();
                if (!TextUtils.isEmpty(strQ)) {
                    this.f13220Y.b(strQ);
                }
            }
        }
        n3 n3Var2 = this.f13614d;
        if (n3Var2 != null) {
            this.f13220Y.c(n3Var2.y());
            this.f13220Y.d(this.f13614d.v());
        }
        this.f13220Y.w();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
    
        r6.f13600J = com.beizi.fusion.rl.a(java.lang.Integer.parseInt(r3.getRate()));
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
            goto Le3
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
            r6.f13221Z = r0
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            com.beizi.fusion.model.AdSpacesBean$FilterBean r0 = r0.getFilter()
            if (r0 == 0) goto L41
            com.beizi.fusion.model.AdSpacesBean$UniteControlBean r0 = r0.getUniteControl()
            r6.f13222a0 = r0
        L41:
            r0 = 100
            int r0 = com.beizi.fusion.rl.b(r0)
            r6.f13223b0 = r0
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
            r6.f13599I = r0     // Catch: java.lang.Exception -> L92
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
            r6.f13600J = r1     // Catch: java.lang.Exception -> L92
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
            if (r1 == 0) goto Lbc
            com.beizi.fusion.s1 r1 = r1.a()
            java.lang.String r2 = r6.f13613c
            com.beizi.fusion.events.EventBean r1 = r1.b(r2)
            r6.f13612b = r1
            if (r1 == 0) goto Lbc
            r6.D()
            r6.v0()
            android.content.Context r1 = r6.f13216U
            java.lang.String r2 = r6.f13618h
            com.beizi.fusion.yq.b(r1, r2)
            r6.w0()
        Lbc:
            r6.x()
            long r1 = r6.f13219X
            r3 = 0
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 <= 0) goto Lcd
            android.os.Handler r3 = r6.f13602L
            r3.sendEmptyMessageDelayed(r0, r1)
            goto Le3
        Lcd:
            com.beizi.fusion.n3 r1 = r6.f13614d
            if (r1 == 0) goto Le3
            int r1 = r1.n()
            if (r1 >= r0) goto Le3
            com.beizi.fusion.n3 r0 = r6.f13614d
            int r0 = r0.z()
            r1 = 2
            if (r0 == r1) goto Le3
            r6.A0()
        Le3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.c4.B0():void");
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        bg bgVar = this.f13220Y;
        if (bgVar == null) {
            return false;
        }
        return bgVar.v();
    }

    private AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean c(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBean = (AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean) it.next();
                List<String> orderList = orderDataRegionalClickViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataRegionalClickViewBean;
                }
            }
        }
        return null;
    }

    private AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean d(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBean = (AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean) it.next();
                List<String> orderList = orderDataScrollViewOrderBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataScrollViewOrderBean;
                }
            }
        }
        return null;
    }

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean e(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBean = (AdSpacesBean.BuyerBean.OrderDataShakeViewBean) it.next();
                List<String> orderList = orderDataShakeViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataShakeViewBean;
                }
            }
        }
        return null;
    }

    @Override // com.beizi.fusion.e2
    public void g() {
        bg bgVar = this.f13220Y;
        if (bgVar != null) {
            bgVar.a();
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
        bg bgVar = this.f13220Y;
        if (bgVar == null) {
            return null;
        }
        return bgVar.d();
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        bg bgVar = this.f13220Y;
        if (bgVar == null) {
            return null;
        }
        return bgVar.l();
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        bg bgVar = this.f13220Y;
        if (bgVar == null) {
            return null;
        }
        return bgVar.q();
    }

    @Override // com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        bg bgVar;
        if (L() && (bgVar = this.f13220Y) != null && bgVar.t()) {
            G0();
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean b(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBean = (AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean) it.next();
                List<String> orderList = orderDataFullScreenClickBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataFullScreenClickBean;
                }
            }
        }
        return null;
    }

    @Override // com.beizi.fusion.e2
    public void c(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            bg bgVar = this.f13220Y;
            if (bgVar == null) {
                return;
            }
            bgVar.a(map);
            if (map.containsKey("winPrice") && (obj3 = map.get("winPrice")) != null && (obj3 instanceof String)) {
                String str = (String) obj3;
                if (!TextUtils.isEmpty(str)) {
                    this.f13612b.setWinPrice(str);
                }
            }
            if (map.containsKey("adnId") && (obj2 = map.get("adnId")) != null && (obj2 instanceof String)) {
                String str2 = (String) obj2;
                if (!TextUtils.isEmpty(str2)) {
                    this.f13612b.setAdnId(str2);
                }
            }
            if (map.containsKey("lossReason") && (obj = map.get("lossReason")) != null && (obj instanceof String)) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    this.f13612b.setLossReason(str3);
                }
            }
            I0();
            s0();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void d(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            bg bgVar = this.f13220Y;
            if (bgVar == null) {
                return;
            }
            bgVar.b(map);
            if (map.containsKey("winPrice") && (obj4 = map.get("winPrice")) != null && (obj4 instanceof String)) {
                String str = (String) obj4;
                if (!TextUtils.isEmpty(str)) {
                    this.f13612b.setWinPrice(str);
                }
            }
            if (map.containsKey("adnId") && (obj3 = map.get("adnId")) != null && (obj3 instanceof String)) {
                String str2 = (String) obj3;
                if (!TextUtils.isEmpty(str2)) {
                    this.f13612b.setAdnId(str2);
                }
            }
            if (map.containsKey("highestLossPrice") && (obj2 = map.get("highestLossPrice")) != null && (obj2 instanceof String)) {
                String str3 = (String) obj2;
                if (!TextUtils.isEmpty(str3)) {
                    this.f13612b.setHighestLossPrice(str3);
                }
            }
            if (map.containsKey("auctionExt") && (obj = map.get("auctionExt")) != null && (obj instanceof String)) {
                String str4 = (String) obj;
                if (!TextUtils.isEmpty(str4)) {
                    this.f13612b.setSecondPrice(str4);
                }
            }
            I0();
            t0();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void a(Activity activity) {
        x();
        try {
            if (!N0()) {
                a(String.valueOf(10170), 10170);
                return;
            }
            bg bgVar = this.f13220Y;
            if (bgVar == null || !bgVar.t()) {
                return;
            }
            this.f13220Y.a(activity);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public class a extends p1 {
        public a() {
        }

        @Override // com.beizi.fusion.p1
        public void a() {
            super.a();
            if (c4.this.f13599I && c4.this.f13615e != null) {
                c4.this.f13612b.setCallBackStrategyUuid(c4.this.f13615e.getCallBackStrategyUuid());
                c4.this.I0();
            }
            c4.this.a0();
            if (c4.this.O()) {
                if (c4.this.f13220Y == null || c4.this.f13220Y.g() != 2) {
                    if (c4.this.f13614d != null && c4.this.f13614d.z() != 2) {
                        c4.this.f13614d.b(c4.this.x());
                    }
                    c4.this.Z();
                    c4.this.J0();
                }
            }
        }

        @Override // com.beizi.fusion.p1
        public void b() {
            if (c4.this.f13614d != null && c4.this.f13614d.z() != 2) {
                c4.this.f13614d.c(c4.this.x());
            }
            c4.this.c0();
        }

        @Override // com.beizi.fusion.p1
        public void c() {
            super.c();
            c4.this.f13620j = c2.ADLOAD;
            if (c4.this.f13220Y.q() != null) {
                try {
                    c4 c4Var = c4.this;
                    c4Var.a(Double.parseDouble(c4Var.f13220Y.q()));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            c4 c4Var2 = c4.this;
            c4Var2.f13224c0 = c4Var2.f13220Y.u();
            if (c4.this.f13220Y != null) {
                c4 c4Var3 = c4.this;
                c4Var3.f13595E = c4Var3.f13220Y.i();
                if (c4.this.f13595E != null) {
                    c4 c4Var4 = c4.this;
                    c4Var4.f13596F = c4Var4.f13595E.c();
                    if (c4.this.f13596F != 0) {
                        c4 c4Var5 = c4.this;
                        c4Var5.f13597G = c4Var5.f13595E.f() + 1;
                    }
                }
                c4 c4Var6 = c4.this;
                c4Var6.f13598H = c4Var6.f13220Y.m();
            }
            if (c4.this.f13224c0) {
                c4 c4Var7 = c4.this;
                c4Var7.f13225d0 = c4Var7.f13220Y.f();
                c4.this.f13612b.setIsCacheAd("1");
                if (c4.this.f13225d0 > 0) {
                    c4.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - c4.this.f13225d0));
                }
                c4.this.I0();
            }
            c4.this.g0();
            if (c4.this.W()) {
                c4.this.O0();
            } else {
                c4.this.A();
            }
            c4.this.R0();
        }

        @Override // com.beizi.fusion.p1
        public void d() {
            super.d();
            c4.this.f13620j = c2.ADSHOW;
            if (c4.this.f13224c0) {
                c4.this.f13612b.setIsCacheAd("1");
                if (c4.this.f13225d0 > 0) {
                    c4.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - c4.this.f13225d0));
                }
                c4.this.I0();
            }
            if (c4.this.f13614d != null && c4.this.f13614d.z() != 2) {
                c4.this.f13614d.d(c4.this.x());
                c4.this.M0();
            }
            c4.this.j0();
            c4.this.z0();
            c4.this.e0();
        }

        @Override // com.beizi.fusion.p1
        public void a(int i2) {
            super.a(i2);
            c4.this.a(String.valueOf(i2), i2);
        }

        @Override // com.beizi.fusion.p1
        public void a(String str) {
            super.a(str);
            try {
                go.b(c4.this.f13216U, c4.this.f13221Z, Long.valueOf(System.currentTimeMillis()));
                c4.this.f13612b.setComplain(str);
                c4.this.I0();
                c4.this.d0();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean a(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBean = (AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean) it.next();
                List<String> orderList = orderDataEulerAngleViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataEulerAngleViewBean;
                }
            }
        }
        return null;
    }
}
