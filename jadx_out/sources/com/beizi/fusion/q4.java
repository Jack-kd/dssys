package com.beizi.fusion;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.kn;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.rf;
import com.beizi.fusion.wn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class q4 extends q3 implements wn.c, kn.d, View.OnClickListener {

    /* renamed from: D0, reason: collision with root package name */
    private ViewGroup f15763D0;

    /* renamed from: E0, reason: collision with root package name */
    private FrameLayout f15764E0;

    /* renamed from: F0, reason: collision with root package name */
    private mp f15765F0;

    /* renamed from: G0, reason: collision with root package name */
    private pi f15766G0;

    /* renamed from: H0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f15767H0;

    /* renamed from: I0, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickBean f15768I0;

    /* renamed from: J0, reason: collision with root package name */
    private List f15769J0;

    /* renamed from: K0, reason: collision with root package name */
    private Boolean f15770K0;

    public class a implements ni {
        public a() {
        }

        @Override // com.beizi.fusion.ni
        public void a(pi piVar) {
            q4.this.f13620j = c2.ADLOAD;
            q4 q4Var = q4.this;
            q4Var.f15770K0 = Boolean.valueOf(q4Var.f15765F0.s());
            if (q4.this.f15765F0.q() != null) {
                try {
                    q4 q4Var2 = q4.this;
                    q4Var2.a(Double.parseDouble(q4Var2.f15765F0.q()));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            q4.this.g0();
            if (piVar == null) {
                q4.this.a(-991);
            } else {
                q4.this.f15766G0 = piVar;
                q4.this.Z0();
            }
        }

        @Override // com.beizi.fusion.ni
        public void onAdFailed(int i2) {
            q4.this.a(String.valueOf(i2), i2);
        }
    }

    public class c implements mi {
        public c() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            q4.this.N0();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public class d implements mi {
        public d() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            q4.this.N0();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public class e implements ri {
        public e() {
        }

        @Override // com.beizi.fusion.ri
        public void onAdShown() {
            q4.this.O0();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q4.this.c("optimize");
        }
    }

    public class g implements ViewTreeObserver.OnGlobalLayoutListener {
        public g() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() throws NumberFormatException {
            ViewGroup viewGroup = q4.this.f15726e0;
            if (viewGroup == null) {
                return;
            }
            viewGroup.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            q4.this.k1();
            q4.this.j1();
        }
    }

    public q4(Context context, long j2, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var, int i2) {
        super(context, j2, buyerBean, forwardBean, n3Var, i2);
        this.f15769J0 = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j1() throws NumberFormatException {
        AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f15768I0;
        if (scrollClickBean == null || this.f15745x0 == null || scrollClickBean.getPosition() == null) {
            return;
        }
        String scrollClickUuid = this.f15768I0.getScrollClickUuid();
        AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBeanA = a(this.f15768I0.getOrderData(), this.f15765F0.c());
        if (orderDataScrollViewOrderBeanA != null) {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClick = orderDataScrollViewOrderBeanA.getScrollClick();
            if (scrollClick != null) {
                scrollClickUuid = scrollClick.getScrollClickUuid();
            }
            this.f15745x0.a(orderDataScrollViewOrderBeanA.getScrollClick());
        } else {
            this.f15745x0.a(this.f15768I0);
        }
        EventBean eventBean = this.f13612b;
        if (eventBean != null) {
            eventBean.setScrollClickUuid(scrollClickUuid);
            I0();
        }
        this.f15745x0.a(this.f15770K0);
        View viewA = this.f15745x0.a(vo.b(this.f15742u0, this.f15726e0.getWidth()), vo.b(this.f15742u0, this.f15726e0.getHeight()), this.f15768I0.getPosition());
        if (viewA != null) {
            ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                layoutParams2.topMargin = marginLayoutParams.topMargin;
                try {
                    this.f15726e0.addView(viewA, layoutParams2);
                    this.f15745x0.a(this);
                    a(this.f15726e0, this.f15768I0.getScrollDirection(), this.f15768I0.getScrollDistance(), this);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k1() throws NumberFormatException {
        if (P() || q1.i().v()) {
            return;
        }
        if (this.f15744w0 == null) {
            this.f15744w0 = new wn(this.f15742u0);
        }
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f15767H0;
        if (shakeViewBean == null || this.f15744w0 == null || shakeViewBean.getPosition() == null) {
            return;
        }
        String shakeViewUuid = this.f15767H0.getShakeViewUuid();
        AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanB = b(this.f15767H0.getOrderData(), this.f15765F0.c());
        if (orderDataShakeViewBeanB != null) {
            AdSpacesBean.BuyerBean.ShakeViewBean shakeView = orderDataShakeViewBeanB.getShakeView();
            if (shakeView != null) {
                shakeViewUuid = shakeView.getShakeViewUuid();
            }
            this.f15744w0.a(orderDataShakeViewBeanB.getShakeView());
        } else {
            this.f15744w0.a(this.f15767H0);
        }
        EventBean eventBean = this.f13612b;
        if (eventBean != null) {
            eventBean.setShakeViewUuid(shakeViewUuid);
            I0();
        }
        this.f15744w0.a(this.f15770K0);
        View viewA = this.f15744w0.a(vo.b(this.f15742u0, this.f15726e0.getWidth()), vo.b(this.f15742u0, this.f15726e0.getHeight()), this.f15767H0.getPosition());
        if (viewA != null) {
            ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                layoutParams2.topMargin = marginLayoutParams.topMargin;
                try {
                    this.f15726e0.addView(viewA, layoutParams2);
                    this.f15744w0.a(this);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    private void l1() {
        if (this.f15765F0 == null) {
            B();
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("shakeViewBean != null ? ");
        sb.append(this.f15767H0 != null);
        mh.a("BeiZis", sb.toString());
        this.f15726e0.removeAllViews();
        this.f15726e0.getViewTreeObserver().addOnGlobalLayoutListener(new g());
    }

    @Override // com.beizi.fusion.q3
    public void P0() {
        if (rl.a(this.f15713A0.getCec())) {
            c("regionalClick");
        } else {
            V0();
        }
    }

    @Override // com.beizi.fusion.q3
    public String Q0() {
        ArrayList arrayListL;
        String strK = this.f15766G0.k();
        return (!TextUtils.isEmpty(strK) || (arrayListL = this.f15766G0.l()) == null || arrayListL.size() < 3) ? strK : (String) arrayListL.get(2);
    }

    @Override // com.beizi.fusion.q3
    public String R0() {
        return this.f15766G0.d();
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        mp mpVar = this.f15765F0;
        if (mpVar == null) {
            return false;
        }
        return mpVar.v();
    }

    @Override // com.beizi.fusion.q3
    public String S0() {
        return this.f15766G0.getIconUrl();
    }

    @Override // com.beizi.fusion.q3
    public int T0() {
        return R.layout.beizi_layout_unified_view;
    }

    @Override // com.beizi.fusion.q3
    public String U0() {
        return this.f15766G0.b();
    }

    @Override // com.beizi.fusion.q3
    public void X0() {
        super.X0();
        this.f15763D0 = (ViewGroup) this.f15717V.findViewById(R.id.fl_container_mask);
    }

    @Override // com.beizi.fusion.kn.d
    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
    }

    @Override // com.beizi.fusion.q3
    public void b1() {
        v0();
        yq.b(this.f15742u0, this.f13618h);
        w0();
        x();
        long j2 = this.f15736o0;
        if (j2 > 0) {
            this.f13602L.sendEmptyMessageDelayed(1, j2);
        } else {
            n3 n3Var = this.f13614d;
            if (n3Var != null && n3Var.n() < 1 && this.f13614d.z() != 2) {
                A0();
            }
        }
        this.f15745x0 = new kn(this.f15742u0);
    }

    @Override // com.beizi.fusion.q3
    public void c1() {
        this.f15767H0 = this.f13615e.getShakeView();
        this.f15768I0 = this.f13615e.getScrollClick();
        mp mpVar = new mp(this.f15742u0, this.f13619i, new a());
        this.f15765F0 = mpVar;
        mpVar.b(true);
        if ("S2S".equals(l())) {
            this.f15765F0.c(l());
            n3 n3Var = this.f13614d;
            if (n3Var != null) {
                String strQ = n3Var.q();
                if (!TextUtils.isEmpty(strQ)) {
                    this.f15765F0.b(strQ);
                }
            }
        }
        n3 n3Var2 = this.f13614d;
        if (n3Var2 != null) {
            this.f15765F0.c(n3Var2.y());
            this.f15765F0.d(this.f13614d.v());
        }
        this.f15765F0.w();
    }

    @Override // com.beizi.fusion.q3
    public void d1() {
        l1();
        List list = this.f15769J0;
        if (list == null || list.size() <= 0) {
            si.a(this.f15766G0, this.f15764E0, new d());
        } else {
            si.a(this.f15766G0, this.f15764E0, this.f15769J0, new c());
        }
        mp mpVar = this.f15765F0;
        if (mpVar != null) {
            mpVar.a(this.f15764E0, new e());
        }
        if (rl.a(this.f15713A0.getRmc())) {
            new Handler().postDelayed(new f(), (long) ((Math.random() * 1000.0d) + 1000.0d));
        }
    }

    @Override // com.beizi.fusion.q3, com.beizi.fusion.e2
    public void g() {
        pi piVar = this.f15766G0;
        if (piVar != null) {
            piVar.destroy();
        }
        mp mpVar = this.f15765F0;
        if (mpVar != null) {
            mpVar.a();
        }
    }

    @Override // com.beizi.fusion.q3
    public void h1() {
        this.f15722a0.removeAllViews();
        this.f15722a0.addView(this.f15764E0, new FrameLayout.LayoutParams(-1, -1));
        this.f15763D0.setLayoutParams(this.f15722a0.getLayoutParams());
    }

    @Override // com.beizi.fusion.q3
    public void i1() {
        if (this.f15766G0 == null) {
            a(-991);
        } else {
            rf.a((Context) null).a(this.f15766G0.getImageUrl(), new b());
        }
    }

    @Override // com.beizi.fusion.e2
    public String n() {
        mp mpVar = this.f15765F0;
        if (mpVar == null) {
            return null;
        }
        return mpVar.d();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        c("regionalClick");
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        mp mpVar = this.f15765F0;
        if (mpVar == null) {
            return null;
        }
        return mpVar.l();
    }

    @Override // com.beizi.fusion.q3, com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        if (!L() || this.f15765F0 == null) {
            return;
        }
        G0();
    }

    public class b implements rf.f {
        public b() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            q4 q4Var = q4.this;
            q4Var.f15764E0 = si.a(q4Var.f15742u0, bitmap, q4Var.f15766G0);
            q4.this.W0();
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
            q4.this.a("sdk custom error ".concat("onBitmapLoadFailed"), 99991);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        try {
            if (this.f15765F0 != null) {
                this.f13612b.setClickType(str);
                I0();
                mh.a("BeiZis", "enter showBeiZiUnifiedCustomAd clickUnifiedAd clickEventType:" + str);
                int[] iArr = new int[2];
                this.f15764E0.getLocationOnScreen(iArr);
                this.f15764E0.measure(0, 0);
                int[] iArrB = rl.b(this.f15764E0.getMeasuredWidth() / 2, this.f15764E0.getMeasuredHeight() / 2);
                si.a(this.f15766G0, this.f15764E0, String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), 2);
            }
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
            mp mpVar = this.f15765F0;
            if (mpVar == null) {
                return;
            }
            mpVar.b(map);
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

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean b(List list, String str) {
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

    @Override // com.beizi.fusion.kn.d
    public void b() {
        if (this.f15768I0 != null) {
            mh.a("BeiZis", "enter showBeiZiUnifiedCustomAd onScrollDistanceMeet  ");
            c("scroll");
        }
    }

    @Override // com.beizi.fusion.q3
    public void b(boolean z2) {
        boolean zA = rl.a(this.f15713A0.getSlc());
        boolean zA2 = rl.a(this.f15713A0.getSlac());
        if (z2 && zA) {
            c("regionalClick");
        } else if (!z2 && zA2) {
            c("regionalClick");
        } else {
            V0();
        }
    }

    @Override // com.beizi.fusion.q3
    public void a(List list) {
        List<String> clickView = this.f15713A0.getClickView();
        if (clickView != null && clickView.size() > 0) {
            if (!clickView.contains("bg") && !clickView.contains("ad") && !clickView.contains("image")) {
                this.f15763D0.setVisibility(0);
            } else {
                this.f15763D0.setVisibility(8);
            }
            this.f15769J0.clear();
            this.f15769J0.addAll(list);
            return;
        }
        this.f15763D0.setVisibility(0);
    }

    @Override // com.beizi.fusion.e2
    public void c(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            mp mpVar = this.f15765F0;
            if (mpVar == null) {
                return;
            }
            mpVar.a(map);
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

    private AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean a(List list, String str) {
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

    @Override // com.beizi.fusion.wn.c
    public void a() {
        mh.a("BeiZis", "enter showBeiZiUnifiedCustomAd onShakeHappened  ");
        c("shake");
    }
}
