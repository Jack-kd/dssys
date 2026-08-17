package com.beizi.fusion;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.unified.BZUnifiedAdActionData;
import com.beizi.fusion.unified.BZUnifiedAdResponse;
import com.beizi.fusion.update.ShakeArcView;
import com.beizi.fusion.wn;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class e3 extends e2 {

    /* renamed from: U, reason: collision with root package name */
    private Context f13640U;

    /* renamed from: V, reason: collision with root package name */
    private jj f13641V;

    /* renamed from: W, reason: collision with root package name */
    private BZUnifiedAdResponse f13642W;

    /* renamed from: X, reason: collision with root package name */
    private ViewGroup f13643X;

    /* renamed from: Y, reason: collision with root package name */
    private long f13644Y;

    /* renamed from: Z, reason: collision with root package name */
    private boolean f13645Z;

    /* renamed from: a0, reason: collision with root package name */
    private long f13646a0;

    /* renamed from: b0, reason: collision with root package name */
    private int f13647b0;

    /* renamed from: c0, reason: collision with root package name */
    private boolean f13648c0;

    /* renamed from: d0, reason: collision with root package name */
    private boolean f13649d0;

    /* renamed from: g0, reason: collision with root package name */
    private wn f13652g0;

    /* renamed from: k0, reason: collision with root package name */
    private View f13656k0;

    /* renamed from: e0, reason: collision with root package name */
    private boolean f13650e0 = false;

    /* renamed from: f0, reason: collision with root package name */
    private boolean f13651f0 = false;

    /* renamed from: h0, reason: collision with root package name */
    private String f13653h0 = null;

    /* renamed from: i0, reason: collision with root package name */
    private boolean f13654i0 = false;

    /* renamed from: j0, reason: collision with root package name */
    private int f13655j0 = -1;

    public class a implements lj {
        public a() {
        }

        @Override // com.beizi.fusion.lj
        public void onAdClick() {
            e3.this.a0();
            e3.this.N0();
        }

        @Override // com.beizi.fusion.lj
        public void onAdFailed(int i2) {
            e3.this.a(String.valueOf(i2), i2);
        }

        @Override // com.beizi.fusion.lj
        public void onAdLoaded(BZUnifiedAdResponse bZUnifiedAdResponse) {
            if (bZUnifiedAdResponse == null) {
                e3.this.a(String.valueOf(3), 3);
                return;
            }
            System.currentTimeMillis();
            e3.this.f13642W = bZUnifiedAdResponse;
            e3.this.f13620j = c2.ADLOAD;
            if (bZUnifiedAdResponse.getEcpm() != 0) {
                try {
                    e3.this.a(bZUnifiedAdResponse.getEcpm());
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            e3 e3Var = e3.this;
            e3Var.f13645Z = e3Var.f13641V.u();
            if (e3.this.f13645Z) {
                e3 e3Var2 = e3.this;
                e3Var2.f13646a0 = e3Var2.f13641V.f();
                e3.this.f13612b.setIsCacheAd("1");
                if (e3.this.f13646a0 > 0) {
                    e3.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - e3.this.f13646a0));
                }
                e3.this.I0();
            }
            e3.this.g0();
            if (e3.this.W()) {
                e3.this.P0();
            } else {
                e3.this.A();
            }
        }

        @Override // com.beizi.fusion.lj
        public void onAdShown() {
            e3.this.f13620j = c2.ADSHOW;
            if (e3.this.f13645Z) {
                e3.this.f13612b.setIsCacheAd("1");
                if (e3.this.f13646a0 > 0) {
                    e3.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - e3.this.f13646a0));
                }
                e3.this.I0();
            }
            if (e3.this.f13614d != null) {
                if (e3.this.f13614d.z() != 2) {
                    e3.this.f13614d.d(e3.this.x());
                }
                e3.this.M0();
            }
            e3.this.j0();
            e3.this.z0();
            e3.this.e0();
            e3.this.O0();
        }
    }

    public class b implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String[] f13658a;

        public b(String[] strArr) {
            this.f13658a = strArr;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (e3.this.f13641V != null) {
                kj kjVar = new kj();
                kjVar.a(0);
                kjVar.c(this.f13658a[0]);
                kjVar.d(this.f13658a[1]);
                kjVar.a(this.f13658a[2]);
                kjVar.b(this.f13658a[3]);
                kjVar.g(this.f13658a[0]);
                kjVar.h(this.f13658a[1]);
                kjVar.e(this.f13658a[2]);
                kjVar.f(this.f13658a[3]);
                e3.this.a(0, kjVar);
            }
        }
    }

    public class c implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String[] f13660a;

        public c(String[] strArr) {
            this.f13660a = strArr;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (motionEvent.getAction() == 0) {
                    this.f13660a[0] = String.valueOf(motionEvent.getX());
                    this.f13660a[1] = String.valueOf(motionEvent.getY());
                    this.f13660a[2] = String.valueOf(motionEvent.getRawX());
                    this.f13660a[3] = String.valueOf(motionEvent.getRawY());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return false;
        }
    }

    public class d implements wn.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f13662a;

        public d(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f13662a = shakeViewBean;
        }

        @Override // com.beizi.fusion.wn.c
        public void a() {
            try {
                if (e3.this.f13648c0) {
                    return;
                }
                if (e3.this.f13654i0 && this.f13662a.getCoolShakeView() != null) {
                    go.b(e3.this.f13640U, e3.this.f13653h0, Long.valueOf(System.currentTimeMillis()));
                }
                e3.this.f13612b.setClickType("shake");
                e3.this.I0();
                kj kjVar = new kj();
                kjVar.a(2);
                e3.this.a(1, kjVar);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class e implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f13664a;

        public e(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f13664a = shakeViewBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            e3.this.f13654i0 = true;
            e3.this.f13652g0.a(this.f13664a);
        }
    }

    public class f implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f13666a;

        public f(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f13666a = shakeViewBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            e3.this.f13654i0 = true;
            if (e3.this.f13652g0 != null) {
                e3.this.f13652g0.a(this.f13666a);
            }
        }
    }

    public e3(Context context, long j2, int i2, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var) {
        this.f13640U = context;
        this.f13644Y = j2;
        this.f13647b0 = i2;
        this.f13615e = buyerBean;
        this.f13616f = forwardBean;
        this.f13614d = n3Var;
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void N0() {
        try {
            if (this.f13649d0 || !this.f13650e0 || this.f13651f0) {
                Z();
                n3 n3Var = this.f13614d;
                if (n3Var != null) {
                    n3Var.b(x());
                    J0();
                }
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView2;
        try {
            zk zkVarP = this.f13641V.p();
            if (zkVarP != null && zkVarP.b() == 1) {
                int iC = zkVarP.c();
                AdSpacesBean.BuyerBean buyerBean = this.f13615e;
                if (buyerBean == null || this.f13643X == null || (shakeView = buyerBean.getShakeView()) == null || shakeView.getPosition() == null) {
                    return;
                }
                if (this.f13652g0 == null) {
                    this.f13652g0 = new wn(this.f13640U);
                }
                String shakeViewUuid = shakeView.getShakeViewUuid();
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(shakeView.getOrderData(), this.f13641V.c());
                if (orderDataShakeViewBeanA == null || orderDataShakeViewBeanA.getShakeView() == null) {
                    shakeView2 = null;
                } else {
                    shakeView2 = orderDataShakeViewBeanA.getShakeView();
                    if (shakeView2 != null) {
                        shakeViewUuid = shakeView2.getShakeViewUuid();
                    }
                }
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setShakeViewUuid(shakeViewUuid);
                    I0();
                }
                jj jjVar = this.f13641V;
                if (jjVar != null) {
                    this.f13652g0.a(Boolean.valueOf(jjVar.s()));
                }
                View viewA = this.f13652g0.a(vo.b(this.f13640U, this.f13643X.getWidth()), vo.b(this.f13640U, this.f13643X.getHeight()), shakeView.getPosition());
                this.f13656k0 = viewA;
                if (viewA != null) {
                    ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                        layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                        layoutParams2.topMargin = marginLayoutParams.topMargin;
                        if (iC == 0) {
                            this.f13656k0.setVisibility(4);
                        } else {
                            this.f13656k0.setVisibility(0);
                        }
                        this.f13643X.addView(this.f13656k0, layoutParams2);
                    }
                }
                a(shakeView);
                b(shakeView2, shakeView);
                this.f13652g0.a(new d(shakeView));
                a(shakeView2, shakeView, this.f13656k0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        n3 n3Var = this.f13614d;
        if (n3Var == null) {
            return;
        }
        n3Var.C().toString();
        f();
        u5 u5Var = this.f13617g;
        if (u5Var == u5.SUCCESS) {
            this.f13614d.a(x(), this.f13642W);
        } else if (u5Var == u5.FAIL) {
            x();
        }
    }

    private void Q0() {
        try {
            wn wnVar = this.f13652g0;
            if (wnVar != null) {
                wnVar.q();
            }
            this.f13652g0 = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        jj jjVar = new jj(this.f13640U, this.f13619i, this.f13647b0);
        this.f13641V = jjVar;
        jjVar.a(new a());
        this.f13641V.a((int) this.f13644Y);
        this.f13641V.a(this.f13615e);
        try {
            this.f13641V.a(this.f13612b.m44clone());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if ("S2S".equals(l())) {
            this.f13641V.c(l());
            n3 n3Var = this.f13614d;
            if (n3Var != null) {
                String strQ = n3Var.q();
                if (!TextUtils.isEmpty(strQ)) {
                    this.f13641V.b(strQ);
                }
            }
        }
        n3 n3Var2 = this.f13614d;
        if (n3Var2 != null) {
            this.f13641V.c(n3Var2.y());
            this.f13641V.d(this.f13614d.v());
        }
        this.f13641V.w();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0075, code lost:
    
        r6.f13651f0 = com.beizi.fusion.rl.a(java.lang.Integer.parseInt(r3.getRate()));
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
            goto Leb
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
            java.lang.String r1 = "splash_cool_"
            r0.append(r1)
            java.lang.String r1 = r6.f13619i
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r6.f13653h0 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "AdWorker chanel = "
            r0.append(r1)
            java.lang.String r1 = r6.f13613c
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "BeiZis"
            com.beizi.fusion.mh.c(r1, r0)
            r0 = 1
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r1 = r6.f13615e     // Catch: java.lang.Exception -> L84
            java.util.List r1 = r1.getCallBackStrategy()     // Catch: java.lang.Exception -> L84
            if (r1 == 0) goto L8c
            int r2 = r1.size()     // Catch: java.lang.Exception -> L84
            if (r2 <= 0) goto L8c
            r6.f13650e0 = r0     // Catch: java.lang.Exception -> L84
            r2 = 0
        L5d:
            int r3 = r1.size()     // Catch: java.lang.Exception -> L84
            if (r2 >= r3) goto L8c
            java.lang.Object r3 = r1.get(r2)     // Catch: java.lang.Exception -> L84
            com.beizi.fusion.model.AdSpacesBean$CallBackStrategyBean r3 = (com.beizi.fusion.model.AdSpacesBean.CallBackStrategyBean) r3     // Catch: java.lang.Exception -> L84
            java.lang.String r4 = "290.300"
            java.lang.String r5 = r3.getEventCode()     // Catch: java.lang.Exception -> L84
            boolean r4 = r4.equalsIgnoreCase(r5)     // Catch: java.lang.Exception -> L84
            if (r4 == 0) goto L86
            java.lang.String r1 = r3.getRate()     // Catch: java.lang.Exception -> L84
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Exception -> L84
            boolean r1 = com.beizi.fusion.rl.a(r1)     // Catch: java.lang.Exception -> L84
            r6.f13651f0 = r1     // Catch: java.lang.Exception -> L84
            goto L8c
        L84:
            r1 = move-exception
            goto L89
        L86:
            int r2 = r2 + 1
            goto L5d
        L89:
            r1.printStackTrace()
        L8c:
            com.beizi.fusion.lk r1 = r6.f13611a
            if (r1 == 0) goto Lae
            com.beizi.fusion.s1 r1 = r1.a()
            java.lang.String r2 = r6.f13613c
            com.beizi.fusion.events.EventBean r1 = r1.b(r2)
            r6.f13612b = r1
            if (r1 == 0) goto Lae
            r6.D()
            r6.v0()
            android.content.Context r1 = r6.f13640U
            java.lang.String r2 = r6.f13618h
            com.beizi.fusion.yq.b(r1, r2)
            r6.w0()
        Lae:
            com.beizi.fusion.model.AdSpacesBean$ForwardBean r1 = r6.f13616f
            long r1 = r1.getSleepTime()
            com.beizi.fusion.n3 r3 = r6.f13614d
            boolean r3 = r3.I()
            if (r3 == 0) goto Lc6
            com.beizi.fusion.model.AdSpacesBean$ForwardBean r3 = r6.f13616f
            long r3 = r3.getHotRequestDelay()
            long r1 = java.lang.Math.max(r1, r3)
        Lc6:
            r6.x()
            r3 = 0
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 <= 0) goto Ld5
            android.os.Handler r3 = r6.f13602L
            r3.sendEmptyMessageDelayed(r0, r1)
            goto Leb
        Ld5:
            com.beizi.fusion.n3 r1 = r6.f13614d
            if (r1 == 0) goto Leb
            int r1 = r1.n()
            if (r1 >= r0) goto Leb
            com.beizi.fusion.n3 r0 = r6.f13614d
            int r0 = r0.z()
            r1 = 2
            if (r0 == r1) goto Leb
            r6.A0()
        Leb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.e3.B0():void");
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        jj jjVar = this.f13641V;
        if (jjVar == null) {
            return false;
        }
        return jjVar.v();
    }

    @Override // com.beizi.fusion.e2
    public void c(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            jj jjVar = this.f13641V;
            if (jjVar == null) {
                return;
            }
            jjVar.a(map);
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
            jj jjVar = this.f13641V;
            if (jjVar == null) {
                return;
            }
            jjVar.b(map);
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
    public void g() {
        try {
            super.g();
            jj jjVar = this.f13641V;
            if (jjVar != null) {
                jjVar.a();
                this.f13641V = null;
            }
            Q0();
        } catch (Exception e2) {
            e2.printStackTrace();
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
        jj jjVar = this.f13641V;
        if (jjVar == null) {
            return null;
        }
        return jjVar.d();
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        if (this.f13642W == null) {
            return null;
        }
        return this.f13642W.getEcpm() + "";
    }

    @Override // com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        if (!L() || this.f13641V == null) {
            return;
        }
        G0();
    }

    @Override // com.beizi.fusion.e2
    public void b(int i2) {
        jj jjVar = this.f13641V;
        if (jjVar == null) {
            return;
        }
        jjVar.a(this.f13643X, i2);
    }

    private void b(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean, AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2) {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean3 = shakeViewBean != null ? shakeViewBean : shakeViewBean2;
        int regulatoryAngle = shakeViewBean3.getRegulatoryAngle();
        wn wnVar = this.f13652g0;
        if (wnVar != null) {
            wnVar.g(regulatoryAngle);
            g5 g5Var = this.f13595E;
            if (g5Var != null) {
                this.f13652g0.a(g5Var.b());
            }
        }
        AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeView = shakeViewBean2.getCoolShakeView();
        if (coolShakeView == null) {
            if (a(shakeViewBean, shakeViewBean2)) {
                AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView = shakeViewBean3.getAliaseShakeView();
                if (aliaseShakeView != null) {
                    this.f13652g0.a(aliaseShakeView);
                    new Handler().postDelayed(new e(shakeViewBean3), rl.b(aliaseShakeView.getPassivationTime()));
                    return;
                }
                return;
            }
            this.f13654i0 = true;
            this.f13652g0.a(shakeViewBean3);
            return;
        }
        if (b(coolShakeView.getCoolTime())) {
            this.f13655j0 = coolShakeView.getFeedback();
            this.f13652g0.a(coolShakeView);
            return;
        }
        if (c(coolShakeView.getUserProtectTime())) {
            this.f13655j0 = coolShakeView.getFeedback();
            this.f13652g0.a(coolShakeView);
        } else {
            if (a(shakeViewBean, shakeViewBean2)) {
                AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView2 = shakeViewBean3.getAliaseShakeView();
                if (aliaseShakeView2 != null) {
                    this.f13652g0.a(aliaseShakeView2);
                    new Handler().postDelayed(new f(shakeViewBean3), rl.b(aliaseShakeView2.getPassivationTime()));
                    return;
                }
                return;
            }
            this.f13654i0 = true;
            this.f13652g0.a(shakeViewBean3);
        }
    }

    @Override // com.beizi.fusion.e2
    public void a(Message message) {
        EventBean eventBean = this.f13612b;
        if (eventBean != null) {
            eventBean.setError(String.valueOf(message.obj));
            this.f13612b.setErrorCode(String.valueOf(message.obj));
            I0();
            f0();
        }
    }

    @Override // com.beizi.fusion.e2
    public void a(ViewGroup viewGroup, List list) {
        this.f13643X = viewGroup;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                a((View) it.next());
            }
        }
        jj jjVar = this.f13641V;
        if (jjVar == null) {
            return;
        }
        jjVar.a(this.f13643X);
    }

    private void a(View view) {
        if (view == null) {
            return;
        }
        String[] strArr = new String[4];
        view.setOnClickListener(new b(strArr));
        view.setOnTouchListener(new c(strArr));
    }

    @Override // com.beizi.fusion.e2
    public void a(BZUnifiedAdActionData bZUnifiedAdActionData) {
        try {
            if (this.f13641V != null && this.f13643X != null && bZUnifiedAdActionData != null) {
                kj kjVar = new kj();
                kjVar.a(bZUnifiedAdActionData.getType());
                int downX = bZUnifiedAdActionData.getDownX();
                int downY = bZUnifiedAdActionData.getDownY();
                int upX = bZUnifiedAdActionData.getUpX();
                int upY = bZUnifiedAdActionData.getUpY();
                int[] iArr = new int[2];
                this.f13643X.getLocationOnScreen(iArr);
                int i2 = iArr[0];
                int i3 = iArr[1];
                int i4 = downY + i3;
                kjVar.c(String.valueOf(downX));
                kjVar.d(String.valueOf(downY));
                kjVar.a(String.valueOf(downX + i2));
                kjVar.b(String.valueOf(i4));
                kjVar.g(String.valueOf(upX));
                kjVar.h(String.valueOf(upY));
                kjVar.e(String.valueOf(i2 + upX));
                kjVar.f(String.valueOf(i3 + upY));
                a(0, kjVar);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean c(long j2) {
        try {
            return System.currentTimeMillis() - vo.a(this.f13640U).longValue() < j2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean b(long j2) {
        long jLongValue = ((Long) go.a(this.f13640U, this.f13653h0, (Object) 0L)).longValue();
        return jLongValue != 0 && System.currentTimeMillis() - jLongValue < j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(int i2, kj kjVar) {
        try {
            try {
                View view = this.f13656k0;
                if (view != null) {
                    view.setVisibility(4);
                }
                if (i2 == 0) {
                    this.f13649d0 = true;
                }
                this.f13648c0 = true;
                this.f13641V.a(this.f13643X, kjVar);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean a(List list, String str) {
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

    private boolean a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean, AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2) {
        if (shakeViewBean != null) {
            AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView = shakeViewBean.getAliaseShakeView();
            if (aliaseShakeView == null || aliaseShakeView.getPassivationTime() <= 0) {
                return false;
            }
            return aliaseShakeView.getShakeCount() > 0 || aliaseShakeView.getRotatCount() > 0;
        }
        AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView2 = shakeViewBean2.getAliaseShakeView();
        if (shakeViewBean2.getAliaseShakeView() == null || aliaseShakeView2.getPassivationTime() <= 0) {
            return false;
        }
        return aliaseShakeView2.getShakeCount() > 0 || aliaseShakeView2.getRotatCount() > 0;
    }

    private void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean, AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2, View view) {
        if (this.f13655j0 == -1) {
            this.f13655j0 = shakeViewBean2.getFeedback();
            if (shakeViewBean != null) {
                this.f13655j0 = shakeViewBean.getFeedback();
            }
        }
        if (this.f13655j0 == 0 || view == null || this.f13652g0 == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ShakeArcView shakeArcView = new ShakeArcView(this.f13640U);
            shakeArcView.setLineRadius(5);
            int i2 = (int) (r8.width * 0.5d);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
            layoutParams2.leftMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (((r8.width - i2) - 12) / 2);
            layoutParams2.topMargin = (int) (r8.topMargin + (r8.height * 0.08d));
            this.f13643X.addView(shakeArcView, layoutParams2);
            this.f13652g0.a(shakeArcView, this.f13655j0);
        }
    }

    private void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            return;
        }
        int sensorParam = shakeViewBean.getSensorParam();
        int compliantAngle = shakeViewBean.getCompliantAngle();
        int isUnidirection = shakeViewBean.getIsUnidirection();
        boolean zIsReturnAngle = shakeViewBean.isReturnAngle();
        jj jjVar = this.f13641V;
        Map mapR = jjVar != null ? jjVar.r() : null;
        wn wnVar = this.f13652g0;
        if (wnVar == null) {
            return;
        }
        wnVar.a(sensorParam, compliantAngle, zIsReturnAngle, isUnidirection, mapR);
    }
}
