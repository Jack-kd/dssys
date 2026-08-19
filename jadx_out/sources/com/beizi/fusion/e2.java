package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.ChannelBidResult;
import com.beizi.fusion.model.EventItem;
import com.beizi.fusion.unified.BZUnifiedAdActionData;
import com.beizi.fusion.widget.BZLpView;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class e2 extends Observable implements b2 {

    /* renamed from: E, reason: collision with root package name */
    protected g5 f13595E;

    /* renamed from: F, reason: collision with root package name */
    protected int f13596F;

    /* renamed from: G, reason: collision with root package name */
    protected int f13597G;

    /* renamed from: H, reason: collision with root package name */
    protected String f13598H;

    /* renamed from: P, reason: collision with root package name */
    private BZLpView f13606P;

    /* renamed from: Q, reason: collision with root package name */
    private boolean f13607Q;

    /* renamed from: R, reason: collision with root package name */
    private ViewGroup f13608R;

    /* renamed from: S, reason: collision with root package name */
    private boolean f13609S;

    /* renamed from: a, reason: collision with root package name */
    protected lk f13611a;

    /* renamed from: b, reason: collision with root package name */
    protected EventBean f13612b;

    /* renamed from: c, reason: collision with root package name */
    protected String f13613c;

    /* renamed from: d, reason: collision with root package name */
    protected n3 f13614d;

    /* renamed from: e, reason: collision with root package name */
    protected AdSpacesBean.BuyerBean f13615e;

    /* renamed from: f, reason: collision with root package name */
    protected AdSpacesBean.ForwardBean f13616f;

    /* renamed from: h, reason: collision with root package name */
    protected String f13618h;

    /* renamed from: i, reason: collision with root package name */
    protected String f13619i;

    /* renamed from: g, reason: collision with root package name */
    protected u5 f13617g = null;

    /* renamed from: j, reason: collision with root package name */
    protected c2 f13620j = c2.ADDEFAULT;

    /* renamed from: k, reason: collision with root package name */
    private int f13621k = 0;

    /* renamed from: l, reason: collision with root package name */
    private int f13622l = 0;

    /* renamed from: m, reason: collision with root package name */
    private int f13623m = 0;

    /* renamed from: n, reason: collision with root package name */
    private int f13624n = 0;

    /* renamed from: o, reason: collision with root package name */
    private boolean f13625o = false;

    /* renamed from: p, reason: collision with root package name */
    private long f13626p = 0;

    /* renamed from: q, reason: collision with root package name */
    private boolean f13627q = false;

    /* renamed from: r, reason: collision with root package name */
    private boolean f13628r = false;

    /* renamed from: s, reason: collision with root package name */
    private boolean f13629s = false;

    /* renamed from: t, reason: collision with root package name */
    private boolean f13630t = false;

    /* renamed from: u, reason: collision with root package name */
    private TimerTask f13631u = null;

    /* renamed from: v, reason: collision with root package name */
    private Timer f13632v = null;

    /* renamed from: w, reason: collision with root package name */
    private long f13633w = 0;

    /* renamed from: x, reason: collision with root package name */
    private boolean f13634x = false;

    /* renamed from: y, reason: collision with root package name */
    private String f13635y = "WATERFALL";

    /* renamed from: z, reason: collision with root package name */
    private int f13636z = 0;

    /* renamed from: A, reason: collision with root package name */
    private boolean f13591A = false;

    /* renamed from: B, reason: collision with root package name */
    private boolean f13592B = false;

    /* renamed from: C, reason: collision with root package name */
    private String f13593C = null;

    /* renamed from: D, reason: collision with root package name */
    protected int f13594D = 0;

    /* renamed from: I, reason: collision with root package name */
    protected boolean f13599I = false;

    /* renamed from: J, reason: collision with root package name */
    protected boolean f13600J = false;

    /* renamed from: K, reason: collision with root package name */
    protected long f13601K = 0;

    /* renamed from: L, reason: collision with root package name */
    protected Handler f13602L = new a(Looper.getMainLooper());

    /* renamed from: M, reason: collision with root package name */
    private boolean f13603M = false;

    /* renamed from: N, reason: collision with root package name */
    private boolean f13604N = false;

    /* renamed from: O, reason: collision with root package name */
    private ViewGroup f13605O = null;

    /* renamed from: T, reason: collision with root package name */
    private boolean f13610T = true;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 1) {
                n3 n3Var = e2.this.f13614d;
                if (n3Var == null || n3Var.n() >= 1 || e2.this.f13614d.z() == 2) {
                    return;
                }
                e2.this.A0();
                return;
            }
            if (i2 == 2) {
                mh.c("BeiZis", "before handleAdClose");
                e2.this.c0();
                e2.this.y();
            } else if (i2 == 3 && message.obj != null) {
                e2.this.a(message);
                e2.this.K0();
                if (e2.this.Q()) {
                    return;
                }
                e2.this.a(message.arg1);
            }
        }
    }

    public class b implements BZLpView.d {
        public b() {
        }

        @Override // com.beizi.fusion.widget.BZLpView.d
        public void onDetachedFromWindow() {
            e2.this.U();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (e2.this.f13610T) {
                    e2.this.Y();
                    e2.this.U();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private boolean K() {
        return J() && E();
    }

    private boolean R() {
        lk lkVar = this.f13611a;
        return (lkVar == null || lkVar.c()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        BZLpView bZLpView;
        BZLpView bZLpView2;
        try {
            ViewGroup viewGroup = this.f13605O;
            if (viewGroup != null && (bZLpView2 = this.f13606P) != null) {
                viewGroup.removeView(bZLpView2);
            }
            this.f13605O = null;
            ViewGroup viewGroup2 = this.f13608R;
            if (viewGroup2 != null && (bZLpView = this.f13606P) != null) {
                viewGroup2.removeView(bZLpView);
            }
            this.f13608R = null;
            this.f13606P = null;
        } catch (Throwable unused) {
        }
    }

    private void e() {
        Timer timer;
        StringBuilder sb = new StringBuilder();
        sb.append("mAdLifeManager != null ? ");
        sb.append(this.f13614d != null);
        mh.b("BeiZis", sb.toString());
        if (this.f13614d != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("enter cancelExposureTaskIfNeed (System.currentTimeMillis() - mStartLoadTime) = ");
            sb2.append(System.currentTimeMillis() - this.f13633w);
            sb2.append(",mAdLifeManager.getValidExposureTime() = ");
            sb2.append(this.f13614d.A());
            sb2.append(",mExposureTimerTask != null ? ");
            sb2.append(this.f13631u != null);
            sb2.append(",mExposureTimer != null ? ");
            sb2.append(this.f13632v != null);
            mh.b("BeiZis", sb2.toString());
        }
        if (this.f13614d == null || System.currentTimeMillis() - this.f13633w >= this.f13614d.A() || this.f13631u == null || (timer = this.f13632v) == null) {
            return;
        }
        timer.cancel();
        x0();
    }

    public void A() {
        r0();
    }

    public abstract void A0();

    public void B() {
        f0();
        n3 n3Var = this.f13614d;
        if (n3Var != null) {
            n3Var.a(10140);
        }
    }

    public abstract void B0();

    public void C() {
        n3 n3Var = this.f13614d;
        if (n3Var != null) {
            this.f13611a = n3Var.t();
        }
        AdSpacesBean.BuyerBean buyerBean = this.f13615e;
        if (buyerBean != null) {
            this.f13613c = buyerBean.getBuyerSpaceUuId();
        }
    }

    public void C0() {
        try {
            g5 g5Var = this.f13595E;
            if (g5Var == null) {
                this.f13597G = 0;
                return;
            }
            int iC = g5Var.c();
            this.f13596F = iC;
            if (iC != 0) {
                this.f13597G = this.f13595E.f() + 1;
            } else {
                this.f13597G = 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void D() {
        lk lkVar = this.f13611a;
        if (lkVar != null) {
            lkVar.a().a(this.f13615e, this.f13616f);
        }
    }

    public void D0() {
    }

    public boolean E() {
        return this.f13603M;
    }

    public void E0() {
        this.f13601K = System.currentTimeMillis() + 1000;
    }

    public boolean F() {
        return "BPDI".equalsIgnoreCase(l());
    }

    public void F0() {
        if (J()) {
            c(3);
        }
    }

    public boolean G() {
        return "C2S".equalsIgnoreCase(l());
    }

    public void G0() {
        if (w() != 3) {
            mh.a("BeiZisBid", "mWorker = " + this + ",set ad suc");
            c(2);
        }
    }

    public boolean H() {
        return "S2S".equalsIgnoreCase(l());
    }

    public abstract void H0();

    public boolean I() {
        return H() || G();
    }

    public void I0() {
        lk lkVar = this.f13611a;
        if (lkVar != null) {
            lkVar.a().a(this.f13613c, this.f13612b);
        }
    }

    public boolean J() {
        return G();
    }

    public void J0() {
        if (this.f13614d == null || !M()) {
            return;
        }
        n3 n3Var = this.f13614d;
        n3Var.a("290.300", n3Var.p(), new EventItem("290.300", String.valueOf(System.currentTimeMillis()), x(), this.f13619i));
    }

    public void K0() {
        if (this.f13614d == null || !M()) {
            return;
        }
        n3 n3Var = this.f13614d;
        n3Var.a("280.500", n3Var.p(), new EventItem("280.500", String.valueOf(System.currentTimeMillis()), x(), this.f13619i));
    }

    public boolean L() {
        return J() && !E();
    }

    public void L0() {
        if (this.f13614d == null || !M()) {
            return;
        }
        n3 n3Var = this.f13614d;
        n3Var.a("255.200", n3Var.p(), new EventItem("255.200", String.valueOf(System.currentTimeMillis()), x(), this.f13619i));
    }

    public boolean M() {
        return "WATERFALL".equalsIgnoreCase(l());
    }

    public void M0() {
        if (this.f13614d == null || !M()) {
            return;
        }
        n3 n3Var = this.f13614d;
        n3Var.a("280.300", n3Var.p(), new EventItem("280.300", String.valueOf(System.currentTimeMillis()), x(), this.f13619i));
    }

    public boolean N() {
        return M() || F();
    }

    public boolean O() {
        return ((this.f13596F == 0 && this.f13599I && !this.f13600J) || this.f13597G == 2) ? false : true;
    }

    public boolean P() {
        try {
            g5 g5Var = this.f13595E;
            if (g5Var != null) {
                if (g5Var.d() == 1) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public boolean Q() {
        return this.f13591A;
    }

    public abstract boolean S();

    public void T() {
    }

    public void U() {
    }

    public void V() {
    }

    public boolean W() {
        n3 n3Var = this.f13614d;
        if (n3Var == null || !n3Var.Q()) {
            return false;
        }
        return N() || I();
    }

    public boolean X() {
        if (this.f13614d != null) {
            mh.b("BeiZis", "adStatus = " + this.f13614d.n());
        }
        n3 n3Var = this.f13614d;
        return n3Var != null && n3Var.n() < 1;
    }

    public void Z() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportAdClick mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 7);
        }
    }

    public void a(Activity activity) {
    }

    public void a0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportAdClickCallBack mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 17);
        }
    }

    public void b(int i2) {
    }

    public void b0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportAdClickClose mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 8);
        }
    }

    public void c(int i2) {
        this.f13623m = i2;
    }

    public abstract void c(Map map);

    public void c0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportAdClose mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 9);
        }
    }

    public void d(int i2) {
        this.f13621k = i2;
    }

    public abstract void d(Map map);

    public void d0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportAdClickCallBack mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 22);
        }
    }

    public void e0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportAdExposure mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 6);
        }
    }

    public void f() {
        if (this.f13617g == null && this.f13614d != null && R()) {
            this.f13617g = this.f13614d.a(this);
        }
    }

    public void f0() {
        if (R()) {
            F0();
            if (L()) {
                k0();
                d(3);
            }
            mh.b("BeiZis", "channel " + this.f13613c + " reportAdLoadFail mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f13611a.f14884h.a(this.f13613c));
            if (K()) {
                return;
            }
            this.f13611a.f14884h.a(this.f13613c, 11);
        }
    }

    public void g() {
        Handler handler = this.f13602L;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        Y();
    }

    public void g0() {
        if (R()) {
            if (G()) {
                l0();
            }
            if (L()) {
                d(2);
                y0();
            }
            z();
            mh.b("BeiZis", "channel " + this.f13613c + " reportAdLoaded mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f13611a.f14884h.a(this.f13613c));
            if (K()) {
                return;
            }
            this.f13611a.f14884h.a(this.f13613c, 4);
        }
    }

    public abstract c2 h();

    public void h0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportAdRequest mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 3);
        }
    }

    public Map i() {
        Map mapY;
        Object obj;
        try {
            HashMap map = new HashMap();
            n3 n3Var = this.f13614d;
            if (n3Var != null && (mapY = n3Var.y()) != null && mapY.containsKey("materialInfo") && (obj = mapY.get("materialInfo")) != null && (obj instanceof Integer)) {
                map.put("materialInfo", (Integer) obj);
            }
            map.put("auctionInfo", 1);
            map.put("sensorInfo", 1);
            return map;
        } catch (Exception unused) {
            return Collections.EMPTY_MAP;
        }
    }

    public void i0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportAdRewarded mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 12);
        }
    }

    public List j() {
        Map mapY;
        try {
            n3 n3Var = this.f13614d;
            if (n3Var != null && (mapY = n3Var.y()) != null && mapY.containsKey("orderList")) {
                Object obj = mapY.get("orderList");
                if (obj instanceof List) {
                    return (List) obj;
                }
            }
        } catch (Exception unused) {
        }
        return Collections.EMPTY_LIST;
    }

    public void j0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportAdShow mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 5);
        }
    }

    public int k() {
        rh rhVarE;
        try {
            g5 g5Var = this.f13595E;
            if (g5Var == null || (rhVarE = g5Var.e()) == null) {
                return 0;
            }
            int iA = rhVarE.a();
            if (iA > 0) {
                if (rhVarE.e() != 2) {
                    return 0;
                }
            }
            return iA;
        } catch (Exception unused) {
            return 0;
        }
    }

    public void k0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportParticipateBid mManagerObserver.mBidChannelStatus.getStatus(channel)  = " + this.f13611a.f14888l.a(this.f13613c));
        }
    }

    public String l() {
        return this.f13635y;
    }

    public void l0() {
        if (this.f13611a == null || !"C2S".equalsIgnoreCase(l())) {
            return;
        }
        mh.b("BeiZis", "channel " + this.f13613c + " reportC2SPrice mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f13611a.f14884h.a(this.f13613c));
        this.f13611a.f14884h.a(this.f13613c, 20);
    }

    public abstract AdSpacesBean.BuyerBean m();

    public void m0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportChannelClickEnhance GrayPass mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = " + this.f13611a.f14886j.a(this.f13613c));
            this.f13611a.f14886j.a(this.f13613c, 1);
        }
    }

    public abstract String n();

    public void n0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportChannelClickEnhance LayerPass mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = " + this.f13611a.f14886j.a(this.f13613c));
            this.f13611a.f14886j.a(this.f13613c, 3);
        }
    }

    public Map o() {
        return null;
    }

    public void o0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportChannelClickEnhance RandomPass mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = " + this.f13611a.f14886j.a(this.f13613c));
            this.f13611a.f14886j.a(this.f13613c, 2);
        }
    }

    public JSONObject p() {
        return null;
    }

    public void p0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportChannelClickEnhance ReduceArea mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = " + this.f13611a.f14886j.a(this.f13613c));
            this.f13611a.f14886j.a(this.f13613c, 4);
        }
    }

    public NativeUnifiedAdResponse q() {
        return null;
    }

    public void q0() {
        lk lkVar = this.f13611a;
        if (lkVar != null) {
            lkVar.f14885i.a(this.f13613c, 4);
        }
    }

    public View r() {
        return null;
    }

    public void r0() {
        lk lkVar = this.f13611a;
        if (lkVar != null) {
            lkVar.f14885i.a(this.f13613c, 1);
            this.f13611a.f14885i.a(this.f13613c, 4);
        }
    }

    public String s() {
        return null;
    }

    public void s0() {
        lk lkVar = this.f13611a;
        if (lkVar != null) {
            lkVar.f14885i.a(this.f13613c, 9);
            mh.a("BeiZis", "channel == ---reportComparisonSendLossNotification---" + x());
        }
    }

    public String t() {
        n3 n3Var;
        if (!"S2S".equals(l()) || (n3Var = this.f13614d) == null) {
            return null;
        }
        String strQ = n3Var.q();
        if (TextUtils.isEmpty(strQ)) {
            return null;
        }
        return strQ;
    }

    public void t0() {
        lk lkVar = this.f13611a;
        if (lkVar != null) {
            lkVar.f14885i.a(this.f13613c, 8);
            mh.a("BeiZis", "channel == ---reportComparisonSendWinNotification---" + x());
        }
    }

    public u5 u() {
        return this.f13617g;
    }

    public void u0() {
        lk lkVar = this.f13611a;
        if (lkVar != null) {
            lkVar.f14885i.a(this.f13613c, 3);
            mh.a("BeiZis", "channel == ---reportComparisonSuccess---" + x());
        }
    }

    public int v() {
        return this.f13594D;
    }

    public void v0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportInitBegin mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 1);
        }
    }

    public int w() {
        return this.f13623m;
    }

    public void w0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportInitEnd mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 2);
        }
    }

    public abstract String x();

    public void x0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportNotEnoughExposureTime mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 14);
        }
    }

    public void y() {
        if ((this.f13627q || this.f13614d == null) && !a(x())) {
            return;
        }
        this.f13614d.c(x());
        this.f13627q = true;
        if (this.f13634x) {
            e();
        }
    }

    public void y0() {
        if (this.f13611a == null || this.f13592B) {
            return;
        }
        mh.b("BeiZis", "channel " + this.f13613c + " reportParticipateBid mManagerObserver.mBidChannelStatus.getStatus(channel)  = " + this.f13611a.f14888l.a(this.f13613c));
        this.f13592B = true;
    }

    public abstract void z();

    public void z0() {
        if (this.f13611a != null) {
            mh.b("BeiZis", "channel " + this.f13613c + " reportValidTimeExposure mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f13611a.f14884h.a(this.f13613c));
            this.f13611a.f14884h.a(this.f13613c, 13);
        }
    }

    public void a(Context context) {
    }

    public void b(ChannelBidResult channelBidResult) {
    }

    @Override // com.beizi.fusion.b2
    public void c() {
        if (h() != c2.ADSHOW) {
            q0();
        }
    }

    public void d() {
        u0();
    }

    public void a(ViewGroup viewGroup) {
    }

    public void a(ViewGroup viewGroup, List list) {
    }

    public void b(String str) {
        this.f13635y = str;
    }

    public void a(UnifiedSplashActionData unifiedSplashActionData) {
    }

    public JSONObject b(Map map) {
        if (map == null) {
            return null;
        }
        try {
            if (!map.containsKey("materialInfo")) {
                return null;
            }
            String str = (String) map.get("materialInfo");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return new JSONObject(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(ChannelBidResult channelBidResult) {
    }

    public void a(BZUnifiedAdActionData bZUnifiedAdActionData) {
    }

    private boolean a(String str) {
        return false;
    }

    public void a(AdSpacesBean.ForwardBean forwardBean) {
        this.f13616f = forwardBean;
    }

    public void a(AdSpacesBean.BuyerBean buyerBean) {
        this.f13615e = buyerBean;
    }

    public void e(Map map) {
        Object obj;
        if (map == null) {
            return;
        }
        try {
            if (map.containsKey("rollback4v") && (obj = map.get("rollback4v")) != null && (obj instanceof Integer) && ((Integer) obj).intValue() != 0) {
                qm.b().a(this.f13614d.x(), 2);
            }
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public void a(boolean z2) {
        this.f13625o = z2;
    }

    public void a(long j2) {
        this.f13626p = j2;
    }

    public void a(Message message) {
        EventBean eventBean;
        if (this.f13611a == null || (eventBean = this.f13612b) == null) {
            return;
        }
        eventBean.setError(String.valueOf(message.obj));
        this.f13612b.setErrorCode(String.valueOf(message.arg1));
        I0();
        f0();
        this.f13612b.setError(null);
        this.f13612b.setErrorCode(null);
        I0();
    }

    public void a(int i2) {
        AdSpacesBean.BuyerBean buyerBean;
        if (this.f13620j == c2.ADLOAD && (buyerBean = this.f13615e) != null && !TextUtils.isEmpty(buyerBean.getBuyerSpaceUuId()) && !TextUtils.isEmpty(this.f13614d.B()) && this.f13615e.getBuyerSpaceUuId().equals(this.f13614d.B())) {
            this.f13620j = c2.ADFAIL;
            this.f13614d.a(this.f13615e.getBuyerSpaceUuId(), i2);
            return;
        }
        this.f13620j = c2.ADFAIL;
        if (this.f13614d == null || this.f13616f == null) {
            return;
        }
        if (X()) {
            this.f13614d.a(this.f13616f.getComponent(), l(), true, i2);
        } else {
            mh.c("BeiZis", "fail distribute direct fail");
            this.f13614d.a(i2);
        }
    }

    public void a(String str, int i2) {
        if (R()) {
            Message messageObtainMessage = this.f13602L.obtainMessage(3, str);
            messageObtainMessage.arg1 = i2;
            this.f13602L.sendMessage(messageObtainMessage);
        }
    }

    public void a(double d2) {
        if (d2 > 0.0d) {
            if ("BEIZI".equalsIgnoreCase(x())) {
                this.f13615e.setAvgPrice(d2);
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setBeiZiPrice(String.valueOf(d2));
                }
            }
            if (I()) {
                this.f13615e.setBidPrice(d2);
                EventBean eventBean2 = this.f13612b;
                if (eventBean2 != null) {
                    eventBean2.setBidPrice(String.valueOf(d2));
                }
            }
            I0();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x015a A[Catch: Exception -> 0x005c, TryCatch #1 {Exception -> 0x005c, blocks: (B:6:0x000c, B:9:0x0014, B:12:0x001a, B:15:0x0022, B:18:0x002a, B:20:0x0030, B:23:0x005f, B:27:0x007a, B:58:0x0138, B:60:0x015a, B:67:0x017f, B:69:0x0185, B:71:0x0189, B:73:0x0194, B:83:0x01a7, B:85:0x01ab, B:86:0x01af, B:81:0x01a2, B:82:0x01a5, B:62:0x0162, B:63:0x0168, B:66:0x016f, B:56:0x012f, B:28:0x008a), top: B:91:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0185 A[Catch: Exception -> 0x005c, TryCatch #1 {Exception -> 0x005c, blocks: (B:6:0x000c, B:9:0x0014, B:12:0x001a, B:15:0x0022, B:18:0x002a, B:20:0x0030, B:23:0x005f, B:27:0x007a, B:58:0x0138, B:60:0x015a, B:67:0x017f, B:69:0x0185, B:71:0x0189, B:73:0x0194, B:83:0x01a7, B:85:0x01ab, B:86:0x01af, B:81:0x01a2, B:82:0x01a5, B:62:0x0162, B:63:0x0168, B:66:0x016f, B:56:0x012f, B:28:0x008a), top: B:91:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0194 A[Catch: Exception -> 0x005c, TryCatch #1 {Exception -> 0x005c, blocks: (B:6:0x000c, B:9:0x0014, B:12:0x001a, B:15:0x0022, B:18:0x002a, B:20:0x0030, B:23:0x005f, B:27:0x007a, B:58:0x0138, B:60:0x015a, B:67:0x017f, B:69:0x0185, B:71:0x0189, B:73:0x0194, B:83:0x01a7, B:85:0x01ab, B:86:0x01af, B:81:0x01a2, B:82:0x01a5, B:62:0x0162, B:63:0x0168, B:66:0x016f, B:56:0x012f, B:28:0x008a), top: B:91:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01ab A[Catch: Exception -> 0x005c, TryCatch #1 {Exception -> 0x005c, blocks: (B:6:0x000c, B:9:0x0014, B:12:0x001a, B:15:0x0022, B:18:0x002a, B:20:0x0030, B:23:0x005f, B:27:0x007a, B:58:0x0138, B:60:0x015a, B:67:0x017f, B:69:0x0185, B:71:0x0189, B:73:0x0194, B:83:0x01a7, B:85:0x01ab, B:86:0x01af, B:81:0x01a2, B:82:0x01a5, B:62:0x0162, B:63:0x0168, B:66:0x016f, B:56:0x012f, B:28:0x008a), top: B:91:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01af A[Catch: Exception -> 0x005c, TRY_LEAVE, TryCatch #1 {Exception -> 0x005c, blocks: (B:6:0x000c, B:9:0x0014, B:12:0x001a, B:15:0x0022, B:18:0x002a, B:20:0x0030, B:23:0x005f, B:27:0x007a, B:58:0x0138, B:60:0x015a, B:67:0x017f, B:69:0x0185, B:71:0x0189, B:73:0x0194, B:83:0x01a7, B:85:0x01ab, B:86:0x01af, B:81:0x01a2, B:82:0x01a5, B:62:0x0162, B:63:0x0168, B:66:0x016f, B:56:0x012f, B:28:0x008a), top: B:91:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.content.Context r12, android.view.ViewGroup r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.e2.a(android.content.Context, android.view.ViewGroup, java.lang.String):void");
    }

    public String a(Map map) {
        if (map == null) {
            return null;
        }
        try {
            if (!map.containsKey("auctionInfo")) {
                return null;
            }
            String str = (String) map.get("auctionInfo");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return str;
        } catch (Exception unused) {
            return null;
        }
    }
}
