package com.beizi.fusion;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.beizi.ad.internal.splash.SplashUnifiedActionData;
import com.beizi.ad.internal.splash.SplashUnifiedAdResponse;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.update.ShakeArcView;
import com.beizi.fusion.wn;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class s4 extends e2 {

    /* renamed from: U, reason: collision with root package name */
    private Context f16140U;

    /* renamed from: V, reason: collision with root package name */
    private hj f16141V;

    /* renamed from: W, reason: collision with root package name */
    private SplashUnifiedAdResponse f16142W;

    /* renamed from: X, reason: collision with root package name */
    private List f16143X;

    /* renamed from: Y, reason: collision with root package name */
    private ViewGroup f16144Y;

    /* renamed from: Z, reason: collision with root package name */
    private long f16145Z;

    /* renamed from: a0, reason: collision with root package name */
    private boolean f16146a0;

    /* renamed from: b0, reason: collision with root package name */
    private long f16147b0;

    /* renamed from: c0, reason: collision with root package name */
    private boolean f16148c0;

    /* renamed from: d0, reason: collision with root package name */
    private boolean f16149d0;

    /* renamed from: e0, reason: collision with root package name */
    private boolean f16150e0;

    /* renamed from: f0, reason: collision with root package name */
    private wn f16151f0;

    /* renamed from: g0, reason: collision with root package name */
    private String f16152g0 = null;

    /* renamed from: h0, reason: collision with root package name */
    private boolean f16153h0 = false;

    /* renamed from: i0, reason: collision with root package name */
    private int f16154i0 = -1;

    public class a implements jo {
        public a() {
        }

        @Override // com.beizi.fusion.jo
        public void a(SplashUnifiedAdResponse splashUnifiedAdResponse) {
            if (splashUnifiedAdResponse == null) {
                s4.this.a(String.valueOf(3), 3);
                return;
            }
            System.currentTimeMillis();
            s4.this.f16142W = splashUnifiedAdResponse;
            s4.this.f13620j = c2.ADLOAD;
            if (s4.this.f16141V.q() != null) {
                try {
                    s4 s4Var = s4.this;
                    s4Var.a(Double.parseDouble(s4Var.f16141V.q()));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            s4 s4Var2 = s4.this;
            s4Var2.f16146a0 = s4Var2.f16141V.u();
            if (s4.this.f16146a0) {
                s4 s4Var3 = s4.this;
                s4Var3.f16147b0 = s4Var3.f16141V.f();
                s4.this.f13612b.setIsCacheAd("1");
                if (s4.this.f16147b0 > 0) {
                    s4.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - s4.this.f16147b0));
                }
                s4.this.I0();
            }
            s4.this.g0();
            if (s4.this.W()) {
                s4.this.P0();
            } else {
                s4.this.A();
            }
        }

        @Override // com.beizi.fusion.jo
        public void onAdClick() {
            s4.this.a0();
            s4.this.N0();
        }

        @Override // com.beizi.fusion.jo
        public void onAdClosed() {
            if (s4.this.f13614d != null) {
                s4.this.f13614d.c(s4.this.x());
            }
            s4.this.c0();
        }

        @Override // com.beizi.fusion.jo
        public void onAdFailed(int i2) {
            s4.this.a(String.valueOf(i2), i2);
        }

        @Override // com.beizi.fusion.jo
        public void onAdShown() {
            s4.this.f13620j = c2.ADSHOW;
            if (s4.this.f16146a0) {
                s4.this.f13612b.setIsCacheAd("1");
                if (s4.this.f16147b0 > 0) {
                    s4.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - s4.this.f16147b0));
                }
                s4.this.I0();
            }
            if (s4.this.f13614d != null) {
                if (s4.this.f13614d.z() != 2) {
                    s4.this.f13614d.d(s4.this.x());
                }
                s4.this.M0();
            }
            s4.this.j0();
            s4.this.z0();
            s4.this.e0();
            s4.this.O0();
        }
    }

    public class b implements UnifiedSplashAdResponse {
        public b() {
        }

        @Override // com.beizi.fusion.UnifiedSplashAdResponse
        public String getElements() {
            if (s4.this.f16142W == null) {
                return null;
            }
            return s4.this.f16142W.getElements();
        }

        @Override // com.beizi.fusion.UnifiedSplashAdResponse
        public String getIconUrl() {
            if (s4.this.f16142W == null) {
                return null;
            }
            return s4.this.f16142W.getIconUrl();
        }

        @Override // com.beizi.fusion.UnifiedSplashAdResponse
        public String getImageUrl() {
            if (s4.this.f16142W == null) {
                return null;
            }
            return s4.this.f16142W.getImageUrl();
        }

        @Override // com.beizi.fusion.UnifiedSplashAdResponse
        public String getTextUrl() {
            if (s4.this.f16142W == null) {
                return null;
            }
            return s4.this.f16142W.getTextUrl();
        }

        @Override // com.beizi.fusion.UnifiedSplashAdResponse
        public boolean isDownloadApp() {
            if (s4.this.f16142W == null) {
                return false;
            }
            return s4.this.f16142W.isDownloadApp();
        }
    }

    public class c implements wn.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f16157a;

        public c(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f16157a = shakeViewBean;
        }

        @Override // com.beizi.fusion.wn.c
        public void a() {
            if (s4.this.f16148c0) {
                return;
            }
            if (s4.this.f16153h0 && this.f16157a.getCoolShakeView() != null) {
                go.b(s4.this.f16140U, s4.this.f16152g0, Long.valueOf(System.currentTimeMillis()));
            }
            s4.this.f13612b.setClickType("shake");
            s4.this.I0();
            SplashUnifiedActionData splashUnifiedActionData = new SplashUnifiedActionData();
            splashUnifiedActionData.setClickType(2);
            s4.this.a(1, splashUnifiedActionData);
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f16159a;

        public d(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f16159a = shakeViewBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            s4.this.f16153h0 = true;
            s4.this.f16151f0.a(this.f16159a);
        }
    }

    public class e implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f16161a;

        public e(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f16161a = shakeViewBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            s4.this.f16153h0 = true;
            if (s4.this.f16151f0 != null) {
                s4.this.f16151f0.a(this.f16161a);
            }
        }
    }

    public s4(Context context, long j2, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var) {
        this.f16140U = context;
        this.f16145Z = j2;
        this.f13615e = buyerBean;
        this.f13616f = forwardBean;
        this.f13614d = n3Var;
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void N0() {
        if (this.f16149d0 && !this.f16150e0) {
            this.f16150e0 = true;
            Z();
            n3 n3Var = this.f13614d;
            if (n3Var != null) {
                n3Var.b(x());
                J0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView2;
        try {
            zk zkVarP = this.f16141V.p();
            if (zkVarP != null && zkVarP.b() == 1) {
                int iC = zkVarP.c();
                AdSpacesBean.BuyerBean buyerBean = this.f13615e;
                if (buyerBean == null || this.f16144Y == null || (shakeView = buyerBean.getShakeView()) == null || shakeView.getPosition() == null) {
                    return;
                }
                if (this.f16151f0 == null) {
                    this.f16151f0 = new wn(this.f16140U);
                }
                String shakeViewUuid = shakeView.getShakeViewUuid();
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(shakeView.getOrderData(), this.f16141V.c());
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
                hj hjVar = this.f16141V;
                if (hjVar != null) {
                    this.f16151f0.a(Boolean.valueOf(hjVar.s()));
                }
                View viewA = this.f16151f0.a(vo.b(this.f16140U, this.f16144Y.getWidth()), vo.b(this.f16140U, this.f16144Y.getHeight()), shakeView.getPosition());
                if (viewA != null) {
                    ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                        layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                        layoutParams2.topMargin = marginLayoutParams.topMargin;
                        if (iC == 0) {
                            viewA.setVisibility(4);
                        } else {
                            viewA.setVisibility(0);
                        }
                        this.f16144Y.addView(viewA, layoutParams2);
                    }
                }
                a(shakeView);
                b(shakeView2, shakeView);
                this.f16151f0.a(new c(shakeView));
                a(shakeView2, shakeView, viewA);
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
            this.f13614d.a(x(), new b());
        } else if (u5Var == u5.FAIL) {
            x();
        }
    }

    private void Q0() {
        try {
            wn wnVar = this.f16151f0;
            if (wnVar != null) {
                wnVar.q();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        this.f16143X = this.f13615e.getScreenConfigVo();
        hj hjVar = new hj(this.f16140U, this.f13619i);
        this.f16141V = hjVar;
        hjVar.a(new a());
        this.f16141V.a((int) this.f16145Z);
        this.f16141V.a(this.f13615e);
        try {
            this.f16141V.a(this.f13612b.m44clone());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if ("S2S".equals(l())) {
            this.f16141V.c(l());
            n3 n3Var = this.f13614d;
            if (n3Var != null) {
                String strQ = n3Var.q();
                if (!TextUtils.isEmpty(strQ)) {
                    this.f16141V.b(strQ);
                }
            }
        }
        n3 n3Var2 = this.f13614d;
        if (n3Var2 != null) {
            this.f16141V.c(n3Var2.y());
            this.f16141V.d(this.f13614d.v());
        }
        this.f16141V.w();
    }

    @Override // com.beizi.fusion.e2
    public void B0() {
        if (this.f13614d == null) {
            return;
        }
        this.f13618h = this.f13615e.getAppId();
        this.f13619i = this.f13615e.getSpaceId();
        this.f13613c = this.f13615e.getBuyerSpaceUuId();
        this.f16152g0 = "splash_cool_" + this.f13619i;
        mh.c("BeiZis", "AdWorker chanel = " + this.f13613c);
        lk lkVar = this.f13611a;
        if (lkVar != null) {
            EventBean eventBeanB = lkVar.a().b(this.f13613c);
            this.f13612b = eventBeanB;
            if (eventBeanB != null) {
                D();
                v0();
                yq.b(this.f16140U, this.f13618h);
                w0();
            }
        }
        long sleepTime = this.f13616f.getSleepTime();
        if (this.f13614d.I()) {
            sleepTime = Math.max(sleepTime, this.f13616f.getHotRequestDelay());
        }
        x();
        if (sleepTime > 0) {
            this.f13602L.sendEmptyMessageDelayed(1, sleepTime);
            return;
        }
        n3 n3Var = this.f13614d;
        if (n3Var == null || n3Var.n() >= 1 || this.f13614d.z() == 2) {
            return;
        }
        A0();
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        hj hjVar = this.f16141V;
        if (hjVar == null) {
            return false;
        }
        return hjVar.v();
    }

    @Override // com.beizi.fusion.e2
    public void c(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            hj hjVar = this.f16141V;
            if (hjVar == null) {
                return;
            }
            hjVar.a(map);
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
            hj hjVar = this.f16141V;
            if (hjVar == null) {
                return;
            }
            hjVar.b(map);
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
            hj hjVar = this.f16141V;
            if (hjVar != null) {
                hjVar.a();
                this.f16141V = null;
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
        hj hjVar = this.f16141V;
        if (hjVar == null) {
            return null;
        }
        return hjVar.d();
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        hj hjVar = this.f16141V;
        if (hjVar == null) {
            return null;
        }
        return hjVar.l();
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        SplashUnifiedAdResponse splashUnifiedAdResponse = this.f16142W;
        if (splashUnifiedAdResponse == null) {
            return null;
        }
        return splashUnifiedAdResponse.getPrice();
    }

    @Override // com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        if (!L() || this.f16141V == null) {
            return;
        }
        G0();
    }

    private void b(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean, AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2) {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean3 = shakeViewBean != null ? shakeViewBean : shakeViewBean2;
        int regulatoryAngle = shakeViewBean3.getRegulatoryAngle();
        wn wnVar = this.f16151f0;
        if (wnVar != null) {
            wnVar.g(regulatoryAngle);
            g5 g5Var = this.f13595E;
            if (g5Var != null) {
                this.f16151f0.a(g5Var.b());
            }
        }
        AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeView = shakeViewBean2.getCoolShakeView();
        if (coolShakeView == null) {
            if (a(shakeViewBean, shakeViewBean2)) {
                AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView = shakeViewBean3.getAliaseShakeView();
                if (aliaseShakeView != null) {
                    this.f16151f0.a(aliaseShakeView);
                    new Handler().postDelayed(new d(shakeViewBean3), rl.b(aliaseShakeView.getPassivationTime()));
                    return;
                }
                return;
            }
            this.f16153h0 = true;
            this.f16151f0.a(shakeViewBean3);
            return;
        }
        if (b(coolShakeView.getCoolTime())) {
            this.f16154i0 = coolShakeView.getFeedback();
            this.f16151f0.a(coolShakeView);
            return;
        }
        if (c(coolShakeView.getUserProtectTime())) {
            this.f16154i0 = coolShakeView.getFeedback();
            this.f16151f0.a(coolShakeView);
        } else {
            if (a(shakeViewBean, shakeViewBean2)) {
                AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView2 = shakeViewBean3.getAliaseShakeView();
                if (aliaseShakeView2 != null) {
                    this.f16151f0.a(aliaseShakeView2);
                    new Handler().postDelayed(new e(shakeViewBean3), rl.b(aliaseShakeView2.getPassivationTime()));
                    return;
                }
                return;
            }
            this.f16153h0 = true;
            this.f16151f0.a(shakeViewBean3);
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
    public void a(ViewGroup viewGroup) {
        hj hjVar;
        try {
            x();
            if (viewGroup != null && (hjVar = this.f16141V) != null) {
                this.f16144Y = viewGroup;
                hjVar.a(viewGroup);
                return;
            }
            B();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void a(UnifiedSplashActionData unifiedSplashActionData) {
        try {
            if (this.f16141V != null && this.f16144Y != null) {
                SplashUnifiedActionData splashUnifiedActionData = new SplashUnifiedActionData();
                int type = unifiedSplashActionData.getType();
                splashUnifiedActionData.setClickType(type);
                if (type != 10 && type != 20) {
                    int downX = unifiedSplashActionData.getDownX();
                    int downY = unifiedSplashActionData.getDownY();
                    int upX = unifiedSplashActionData.getUpX();
                    int upY = unifiedSplashActionData.getUpY();
                    int[] iArr = new int[2];
                    this.f16144Y.getLocationOnScreen(iArr);
                    int i2 = iArr[0];
                    int i3 = iArr[1];
                    int i4 = downY + i3;
                    splashUnifiedActionData.setDownX(String.valueOf(downX));
                    splashUnifiedActionData.setDownY(String.valueOf(downY));
                    splashUnifiedActionData.setDownRawX(String.valueOf(downX + i2));
                    splashUnifiedActionData.setDownRawY(String.valueOf(i4));
                    splashUnifiedActionData.setUpX(String.valueOf(upX));
                    splashUnifiedActionData.setUpY(String.valueOf(upY));
                    splashUnifiedActionData.setUpRawX(String.valueOf(i2 + upX));
                    splashUnifiedActionData.setUpRawY(String.valueOf(i3 + upY));
                    a(0, splashUnifiedActionData);
                    return;
                }
                this.f16141V.a(splashUnifiedActionData);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean c(long j2) {
        try {
            return System.currentTimeMillis() - vo.a(this.f16140U).longValue() < j2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean b(long j2) {
        long jLongValue = ((Long) go.a(this.f16140U, this.f16152g0, (Object) 0L)).longValue();
        return jLongValue != 0 && System.currentTimeMillis() - jLongValue < j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(int i2, SplashUnifiedActionData splashUnifiedActionData) {
        if (i2 == 0) {
            try {
                this.f16149d0 = true;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.f16148c0) {
            if (i2 == 0) {
                N0();
            }
        } else {
            this.f16148c0 = true;
            Q0();
            this.f16141V.a(splashUnifiedActionData);
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
        if (this.f16154i0 == -1) {
            this.f16154i0 = shakeViewBean2.getFeedback();
            if (shakeViewBean != null) {
                this.f16154i0 = shakeViewBean.getFeedback();
            }
        }
        if (this.f16154i0 == 0 || view == null || this.f16151f0 == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ShakeArcView shakeArcView = new ShakeArcView(this.f16140U);
            shakeArcView.setLineRadius(5);
            int i2 = (int) (r8.width * 0.5d);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
            layoutParams2.leftMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (((r8.width - i2) - 12) / 2);
            layoutParams2.topMargin = (int) (r8.topMargin + (r8.height * 0.08d));
            this.f16144Y.addView(shakeArcView, layoutParams2);
            this.f16151f0.a(shakeArcView, this.f16154i0);
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
        hj hjVar = this.f16141V;
        Map mapR = hjVar != null ? hjVar.r() : null;
        wn wnVar = this.f16151f0;
        if (wnVar == null) {
            return;
        }
        wnVar.a(sensorParam, compliantAngle, zIsReturnAngle, isUnidirection, mapR);
    }
}
