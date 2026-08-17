package com.beizi.fusion;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.network.beizi.BzATConst;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdListener;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.ChannelBidResult;
import com.beizi.fusion.model.EventItem;
import com.beizi.fusion.model.Manager;
import com.beizi.fusion.model.ResponseInfo;
import com.beizi.fusion.unified.BZUnifiedAdListener;
import com.beizi.fusion.unified.BZUnifiedAdResponse;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.sigmob.sdk.base.mta.PointType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class n3 implements o1, Observer {

    /* renamed from: X, reason: collision with root package name */
    protected static Context f15218X = null;

    /* renamed from: Y, reason: collision with root package name */
    private static boolean f15219Y = false;

    /* renamed from: A, reason: collision with root package name */
    private long f15220A;

    /* renamed from: B, reason: collision with root package name */
    private List f15221B;

    /* renamed from: D, reason: collision with root package name */
    private ih f15223D;

    /* renamed from: E, reason: collision with root package name */
    private e f15224E;

    /* renamed from: F, reason: collision with root package name */
    private boolean f15225F;

    /* renamed from: R, reason: collision with root package name */
    private long f15237R;

    /* renamed from: S, reason: collision with root package name */
    private Map f15238S;

    /* renamed from: T, reason: collision with root package name */
    protected boolean f15239T;

    /* renamed from: W, reason: collision with root package name */
    private String f15242W;

    /* renamed from: a, reason: collision with root package name */
    protected Context f15243a;

    /* renamed from: b, reason: collision with root package name */
    protected EventBean f15244b;

    /* renamed from: c, reason: collision with root package name */
    protected ViewGroup f15245c;

    /* renamed from: d, reason: collision with root package name */
    protected String f15246d;

    /* renamed from: e, reason: collision with root package name */
    protected long f15247e;

    /* renamed from: f, reason: collision with root package name */
    protected View f15248f;

    /* renamed from: g, reason: collision with root package name */
    protected j3 f15249g;

    /* renamed from: h, reason: collision with root package name */
    protected e2 f15250h;

    /* renamed from: l, reason: collision with root package name */
    protected String f15254l;

    /* renamed from: n, reason: collision with root package name */
    private n3 f15256n;

    /* renamed from: o, reason: collision with root package name */
    private AdSpacesBean f15257o;

    /* renamed from: r, reason: collision with root package name */
    private long f15260r;

    /* renamed from: z, reason: collision with root package name */
    private lk f15268z;

    /* renamed from: i, reason: collision with root package name */
    protected Map f15251i = new Hashtable();

    /* renamed from: j, reason: collision with root package name */
    protected ArrayList f15252j = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    protected boolean f15253k = false;

    /* renamed from: m, reason: collision with root package name */
    private boolean f15255m = false;

    /* renamed from: p, reason: collision with root package name */
    private long f15258p = 500;

    /* renamed from: q, reason: collision with root package name */
    private long f15259q = 100;

    /* renamed from: s, reason: collision with root package name */
    private volatile int f15261s = 0;

    /* renamed from: t, reason: collision with root package name */
    private int f15262t = 0;

    /* renamed from: u, reason: collision with root package name */
    private int f15263u = 0;

    /* renamed from: v, reason: collision with root package name */
    private int f15264v = 1;

    /* renamed from: w, reason: collision with root package name */
    private int f15265w = 2;

    /* renamed from: x, reason: collision with root package name */
    private Timer f15266x = null;

    /* renamed from: y, reason: collision with root package name */
    private boolean f15267y = false;

    /* renamed from: C, reason: collision with root package name */
    private boolean f15222C = false;

    /* renamed from: G, reason: collision with root package name */
    private boolean f15226G = false;

    /* renamed from: H, reason: collision with root package name */
    private AdSpacesBean f15227H = null;

    /* renamed from: I, reason: collision with root package name */
    private s1 f15228I = null;

    /* renamed from: J, reason: collision with root package name */
    protected boolean f15229J = false;

    /* renamed from: K, reason: collision with root package name */
    private int f15230K = 0;

    /* renamed from: L, reason: collision with root package name */
    private int f15231L = 1;

    /* renamed from: M, reason: collision with root package name */
    private int f15232M = 2;

    /* renamed from: N, reason: collision with root package name */
    protected boolean f15233N = false;

    /* renamed from: O, reason: collision with root package name */
    private boolean f15234O = false;

    /* renamed from: P, reason: collision with root package name */
    private boolean f15235P = false;

    /* renamed from: Q, reason: collision with root package name */
    protected e2 f15236Q = null;

    /* renamed from: U, reason: collision with root package name */
    protected Handler f15240U = new a(Looper.getMainLooper());

    /* renamed from: V, reason: collision with root package name */
    private TimerTask f15241V = null;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                n3 n3Var = n3.this;
                n3Var.f15262t = n3Var.f15264v;
                n3 n3Var2 = n3.this;
                if (n3Var2.f15250h != null) {
                    n3Var2.b(2);
                    return;
                }
                return;
            }
            if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                n3.this.X();
                lk lkVarH = q1.i().h();
                n3.this.f15268z = new lk(new EventBean(q1.f15683u, "", "", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                n3 n3Var3 = n3.this;
                n3Var3.f15228I = n3Var3.f15268z.a();
                n3 n3Var4 = n3.this;
                n3Var4.f15244b = n3Var4.f15268z.b();
                n3.this.S();
                n3.this.f15228I.a(n3.this.f15244b);
                n3.this.b();
                if (lkVarH == null || lkVarH.f14878b.a() != 2 || n3.this.f15268z.f14879c.a() != 0) {
                    n3.this.a(10000);
                    return;
                }
                n3.this.f15268z.f14879c.a(1);
                if (n3.this.f15268z.f14879c.a() != 1) {
                    n3.this.f15268z.f14879c.a(-2);
                    n3.this.a("kGetLocalConfigStatusInternalError");
                    return;
                }
                n3.this.f15268z.f14879c.a(2);
                n3 n3Var5 = n3.this;
                n3Var5.f15257o = c5.a(n3Var5.f15243a, n3Var5.f15254l, n3Var5.o());
                if (n3.this.f15257o != null) {
                    n3.this.a(AVMDLDataLoader.KeyIsEnableEventInfo);
                    return;
                }
                if (n3.this.f15268z.f14879c.a() != 2) {
                    n3.this.f15268z.f14879c.a(-2);
                    n3.this.a("kGetLocalConfigStatusInternalError");
                    return;
                }
                int iA = c5.a();
                if (iA == 1) {
                    n3.this.f15268z.f14879c.a(4);
                    n3.this.a(10001);
                    return;
                } else if (iA == 2) {
                    n3.this.f15268z.f14879c.a(5);
                    n3.this.a(10100);
                    return;
                } else if (iA != 3) {
                    n3.this.a(AVMDLDataLoader.KeyIsEnableEventInfo);
                    return;
                } else {
                    n3.this.f15268z.f14879c.a(6);
                    n3.this.a(10110);
                    return;
                }
            }
            System.currentTimeMillis();
            n3 n3Var6 = n3.this;
            n3Var6.f15262t = n3Var6.f15265w;
            if (n3.this.f15268z != null) {
                n3.this.f15268z.a(true);
            }
            if (n3.this.f15268z == null) {
                return;
            }
            n3 n3Var7 = n3.this;
            e2 e2Var = n3Var7.f15250h;
            if (e2Var == null) {
                n3Var7.a(AVMDLDataLoader.KeyIsEnableEventInfo);
                Map mapC = n3.this.C();
                if (mapC != null) {
                    for (e2 e2Var2 : mapC.values()) {
                        AdSpacesBean.BuyerBean buyerBeanM = e2Var2.m();
                        if (buyerBeanM != null) {
                            n3.this.b(e2Var2, 2);
                            mh.a("BeiZis", "AdRequest timeout channel = " + buyerBeanM.getId() + ",mManagerObserver.mChannelResultStatus.getStatus(channel) = " + n3.this.f15268z.f14884h.a(buyerBeanM.getBuyerSpaceUuId()));
                            if (n3.this.f15268z.f14884h.a(buyerBeanM.getBuyerSpaceUuId()) < 4) {
                                n3.this.f15268z.f14884h.a(buyerBeanM.getBuyerSpaceUuId(), -1);
                            }
                        }
                    }
                    return;
                }
                return;
            }
            e2Var.d();
            n3 n3Var8 = n3.this;
            n3Var8.b(n3Var8.f15250h.x(), n3.this.f15250h.r());
            if ("4".equals(n3.this.o())) {
                n3 n3Var9 = n3.this;
                if (!n3Var9.f15229J) {
                    n3Var9.f15250h.H0();
                    n3.this.f15229J = true;
                }
            }
            Map mapC2 = n3.this.C();
            if (mapC2 != null) {
                for (e2 e2Var3 : mapC2.values()) {
                    AdSpacesBean.BuyerBean buyerBeanM2 = e2Var3.m();
                    AdSpacesBean.BuyerBean buyerBeanM3 = n3.this.f15250h.m();
                    if (buyerBeanM2 != null && buyerBeanM3 != null && (TextUtils.isEmpty(buyerBeanM2.getBuyerSpaceUuId()) || TextUtils.isEmpty(buyerBeanM3.getBuyerSpaceUuId()) || !buyerBeanM2.getBuyerSpaceUuId().equals(buyerBeanM3.getBuyerSpaceUuId()))) {
                        n3.this.b(e2Var3, 2);
                        mh.a("BeiZis", "AdRequest timeout channel = " + buyerBeanM2.getId() + ",mManagerObserver.mChannelResultStatus.getStatus(channel) = " + n3.this.f15268z.f14884h.a(buyerBeanM2.getBuyerSpaceUuId()));
                        if (e2Var3.h() == c2.ADDEFAULT) {
                            n3.this.f15268z.f14884h.a(buyerBeanM2.getBuyerSpaceUuId(), -1);
                        }
                    }
                }
            }
        }
    }

    public class b extends TimerTask {
        public b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                System.currentTimeMillis();
                Handler handler = n3.this.f15240U;
                if (handler != null) {
                    handler.sendEmptyMessage(3);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f15271a;

        public c(ViewGroup viewGroup) {
            this.f15271a = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            n3.this.b(this.f15271a);
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f15273a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ EventItem f15274b;

        public d(String str, EventItem eventItem) {
            this.f15273a = str;
            this.f15274b = eventItem;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                k6.a(n3.this.f15243a).a(this.f15273a, this.f15274b);
            } catch (Exception unused) {
            }
        }
    }

    public class e extends BroadcastReceiver {
        public e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                String action = intent.getAction();
                int intExtra = intent.getIntExtra("updateResult", 0);
                n3.this.f15225F = true;
                if (TextUtils.equals(action, "com.ad.action.UPDATE_CONFIG_SUCCESS")) {
                    if (intExtra == 1) {
                        if (n3.this.f15266x != null) {
                            n3.this.f15266x.cancel();
                            n3.this.f15266x = null;
                        }
                        n3 n3Var = n3.this;
                        n3Var.a(n3Var.f15245c);
                    } else if (intExtra == 0 && n3.this.f15226G) {
                        if (n3.this.f15266x != null) {
                            n3.this.f15266x.cancel();
                            n3.this.f15266x = null;
                        }
                        n3 n3Var2 = n3.this;
                        n3Var2.a(n3Var2.f15245c);
                    }
                }
                n3.this.X();
            } catch (Exception unused) {
            }
        }
    }

    public n3(Context context, String str, j3 j3Var, long j2) {
        if (context != null) {
            this.f15243a = context;
            f15218X = context.getApplicationContext();
        }
        this.f15254l = str;
        this.f15249g = j3Var;
        this.f15247e = j2;
        this.f15256n = this;
        if (f15218X != null || j3Var == null) {
            return;
        }
        a(10132);
    }

    private boolean E() {
        AdSpacesBean adSpacesBean = this.f15257o;
        if (adSpacesBean == null) {
            return false;
        }
        if (adSpacesBean.getBid() != null) {
            this.f15258p = r0.getReserveFRWTime();
            this.f15259q = r0.getReserveTime();
            this.f15260r = r0.getTimeOut();
            if (q1.i().A() && this.f15260r <= 0) {
                this.f15260r = 800L;
            }
        }
        long j2 = this.f15247e;
        if (j2 <= this.f15259q) {
            a(10120);
            this.f15268z.f14879c.a(7);
            return true;
        }
        if (j2 > this.f15258p) {
            U();
        } else {
            this.f15262t = this.f15264v;
        }
        V();
        return false;
    }

    private void F() {
        try {
            if (this.f15250h == null) {
                return;
            }
            e2 e2VarW = w();
            ChannelBidResult channelBidResult = new ChannelBidResult();
            if (e2VarW != null) {
                channelBidResult.setEcpm(c(e2VarW));
                channelBidResult.setChannelName(e2VarW.x());
                channelBidResult.setBidType(e2VarW.l());
            } else {
                channelBidResult.setEcpm(c(this.f15250h));
                channelBidResult.setChannelName(this.f15250h.x());
                channelBidResult.setBidType(this.f15250h.l());
            }
            this.f15250h.b(channelBidResult);
        } catch (Exception unused) {
        }
    }

    private void G() throws InterruptedException {
        l8.a(f15218X, this.f15254l);
    }

    private void H() {
        if (this.f15223D != null) {
            return;
        }
        this.f15223D = ih.a(f15218X);
        IntentFilter intentFilter = new IntentFilter("com.ad.action.UPDATE_CONFIG_SUCCESS");
        e eVar = new e();
        this.f15224E = eVar;
        this.f15223D.a(eVar, intentFilter);
    }

    private boolean K() {
        Iterator it = C().values().iterator();
        while (it.hasNext()) {
            if (((e2) it.next()).h() == c2.ADDEFAULT) {
                return true;
            }
        }
        return false;
    }

    private boolean L() {
        if (!this.f15235P) {
            return false;
        }
        e2 e2Var = this.f15236Q;
        return e2Var == null || e2Var.h() == c2.ADDEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        EventBean eventBean = this.f15244b;
        if (eventBean != null) {
            eventBean.setReqId(this.f15246d);
            R();
            this.f15244b.setAppId(q1.i().c());
            this.f15244b.setSpaceId(this.f15254l);
            this.f15244b.setReserveTime(String.valueOf(this.f15247e));
        }
    }

    private void T() {
        String str;
        AdSpacesBean adSpacesBean = this.f15257o;
        if (adSpacesBean != null) {
            String adType = adSpacesBean.getAdType();
            adType.getClass();
            switch (adType) {
                case "NATIVE":
                    str = "5";
                    break;
                case "SPLASH":
                    str = "2";
                    break;
                case "INTERSTITIAL":
                    str = "3";
                    break;
                case "REWARDEDVIDEO":
                    str = "1";
                    break;
                case "DRAWFLOW":
                    str = "7";
                    break;
                case "INTERACTIVECARD":
                    str = PointType.SIGMOB_REPORT_TRACKING;
                    break;
                case "FULLSCREENVIDEO":
                    str = "6";
                    break;
                case "REGIONALNATIVE":
                    str = "12";
                    break;
                case "BANNER":
                    str = "4";
                    break;
                default:
                    str = null;
                    break;
            }
            EventBean eventBean = this.f15244b;
            if (eventBean != null) {
                eventBean.setAdType(str);
            }
        }
    }

    private void U() {
        if (this.f15240U != null) {
            long jMin = this.f15247e - this.f15258p;
            long j2 = this.f15260r;
            if (j2 > 0) {
                jMin = Math.min(jMin, j2 - 50);
            }
            if (jMin <= 0) {
                jMin = 100;
            }
            this.f15240U.sendEmptyMessageDelayed(1, jMin);
        }
    }

    private void V() {
        if (this.f15240U != null) {
            long jMin = this.f15247e - this.f15259q;
            long j2 = this.f15260r;
            if (j2 > 0) {
                jMin = Math.min(jMin, j2);
            }
            if (jMin <= 0) {
                jMin = 1000;
            }
            this.f15240U.sendEmptyMessageDelayed(2, jMin);
        }
    }

    private void W() {
        try {
            if (this.f15225F) {
                return;
            }
            H();
            h9.a(f15218X).b(5);
            if (this.f15266x == null) {
                this.f15266x = new Timer();
            }
            if (this.f15241V == null) {
                this.f15241V = new b();
            }
            if (this.f15266x == null || this.f15241V == null) {
                return;
            }
            long jMin = this.f15247e;
            if (jMin > 2000) {
                jMin = 2000;
            }
            long j2 = this.f15260r;
            if (j2 > 0) {
                jMin = Math.min(jMin, j2);
            }
            this.f15266x.schedule(this.f15241V, jMin);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        e eVar;
        try {
            ih ihVar = this.f15223D;
            if (ihVar == null || (eVar = this.f15224E) == null) {
                return;
            }
            ihVar.a(eVar);
        } catch (Exception unused) {
        }
    }

    private boolean h(String str) {
        return false;
    }

    private synchronized void k() {
        this.f15252j.clear();
    }

    private e2 w() {
        Map mapC;
        AdSpacesBean.BuyerBean buyerBeanM;
        try {
            AdSpacesBean.BuyerBean buyerBeanM2 = this.f15250h.m();
            if (buyerBeanM2 != null && (mapC = C()) != null && mapC.size() > 0) {
                e2 e2Var = null;
                for (e2 e2Var2 : mapC.values()) {
                    if (e2Var2 != null && (buyerBeanM = e2Var2.m()) != null && (TextUtils.isEmpty(buyerBeanM.getBuyerSpaceUuId()) || TextUtils.isEmpty(buyerBeanM2.getBuyerSpaceUuId()) || !buyerBeanM.getBuyerSpaceUuId().equals(buyerBeanM2.getBuyerSpaceUuId()))) {
                        if (e2Var2.h() == c2.ADLOAD) {
                            mh.a("BeiZis", "handleSendWinNotice ---getSecondAdWorker---" + e2Var2.h() + "---" + e2Var2.x() + ";getPrice:" + c(e2Var2));
                            if (e2Var == null || c(e2Var2) > c(e2Var)) {
                                e2Var = e2Var2;
                            }
                        }
                    }
                }
                return e2Var;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public int A() {
        AdSpacesBean adSpacesBean = this.f15257o;
        if (adSpacesBean == null || adSpacesBean.getEventStrategy() == null) {
            return Integer.MAX_VALUE;
        }
        AdSpacesBean.EventStrategyBean eventStrategy = this.f15257o.getEventStrategy();
        if (eventStrategy.getValidTimeShow() >= 0) {
            return eventStrategy.getValidTimeShow();
        }
        return Integer.MAX_VALUE;
    }

    public String B() {
        AdSpacesBean.BuyerBean buyerBeanM;
        e2 e2Var = this.f15250h;
        if (e2Var == null || (buyerBeanM = e2Var.m()) == null || TextUtils.isEmpty(buyerBeanM.getBuyerSpaceUuId())) {
            return null;
        }
        return buyerBeanM.getBuyerSpaceUuId();
    }

    public Map C() {
        return this.f15251i;
    }

    public void D() {
        this.f15268z.f14881e.a(3);
        a(10140);
    }

    public boolean I() {
        return f15219Y;
    }

    public boolean J() {
        e2 e2Var = this.f15250h;
        if (e2Var == null) {
            return false;
        }
        return e2Var.S();
    }

    public void M() {
        j3 j3Var = this.f15249g;
        if (j3Var == null || !(j3Var instanceof RewardedVideoAdListener)) {
            return;
        }
        ((RewardedVideoAdListener) j3Var).onRewarded();
    }

    public void N() {
        j3 j3Var = this.f15249g;
        if (j3Var == null || !(j3Var instanceof RewardedVideoAdListener)) {
            return;
        }
        ((RewardedVideoAdListener) j3Var).onRewardedVideoCacheSuccess();
    }

    public void O() {
        j3 j3Var = this.f15249g;
        if (j3Var == null || !(j3Var instanceof RewardedVideoAdListener)) {
            return;
        }
        ((RewardedVideoAdListener) j3Var).onRewardedVideoComplete();
    }

    public void P() {
        j3 j3Var = this.f15249g;
        if (j3Var == null || !(j3Var instanceof RewardedVideoAdListener)) {
            return;
        }
        ((RewardedVideoAdListener) j3Var).onRewardedVideoPlayError();
    }

    public boolean Q() {
        return (n() == 2 || n() == 3) ? false : true;
    }

    public abstract void R();

    public abstract e2 a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List list, e2 e2Var);

    public void l() {
        lk lkVar = this.f15268z;
        if (lkVar != null) {
            lkVar.f14879c.deleteObservers();
            this.f15268z.f14880d.deleteObservers();
            this.f15268z.f14881e.deleteObservers();
            this.f15268z.f14882f.deleteObservers();
            this.f15268z.f14883g.deleteObservers();
            this.f15268z.f14884h.deleteObservers();
            this.f15268z.f14885i.deleteObservers();
            this.f15268z.f14886j.deleteObservers();
            this.f15268z.f14887k.deleteObservers();
            this.f15268z.f14888l.deleteObservers();
        }
    }

    public synchronized void m() {
        try {
            ArrayList arrayList = this.f15252j;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                ((b2) obj).c();
            }
            k();
        } catch (Throwable th) {
            throw th;
        }
    }

    public int n() {
        return this.f15261s;
    }

    public String o() {
        EventBean eventBean = this.f15244b;
        if (eventBean != null) {
            return eventBean.getAdType();
        }
        return null;
    }

    public String p() {
        return this.f15254l;
    }

    public String q() {
        return this.f15242W;
    }

    public String r() {
        e2 e2Var = this.f15250h;
        if (e2Var == null) {
            return null;
        }
        return e2Var.n();
    }

    public String s() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(BzATConst.BZ_REQUEST_ID, this.f15246d);
            a(jSONObject);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public lk t() {
        return this.f15268z;
    }

    public long u() {
        return this.f15237R;
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
    }

    public String v() {
        return this.f15246d;
    }

    public String x() {
        AdSpacesBean adSpacesBean = this.f15227H;
        if (adSpacesBean != null) {
            return adSpacesBean.getSpaceId();
        }
        return null;
    }

    public Map y() {
        if (this.f15238S == null) {
            this.f15238S = new HashMap();
        }
        this.f15238S.put("bz_spaceId", this.f15254l);
        return this.f15238S;
    }

    public int z() {
        return this.f15262t;
    }

    private void d(Map map) {
        if (map == null || map.size() == 0) {
            D();
            return;
        }
        for (e2 e2Var : map.values()) {
            e2Var.B0();
            e2Var.a(true);
        }
    }

    private String e(String str) {
        mh.a("BeiZis", "enter convertSelfChannel buyerId = " + str);
        return ro.b().equals(str) ? "BEIZI" : str;
    }

    private boolean f(e2 e2Var) {
        if (e2Var == null) {
            return false;
        }
        for (e2 e2Var2 : C().values()) {
            AdSpacesBean.BuyerBean buyerBeanM = e2Var2.m();
            AdSpacesBean.BuyerBean buyerBeanM2 = e2Var.m();
            if (buyerBeanM != null && buyerBeanM2 != null && (TextUtils.isEmpty(buyerBeanM.getBuyerSpaceUuId()) || TextUtils.isEmpty(buyerBeanM2.getBuyerSpaceUuId()) || !buyerBeanM.getBuyerSpaceUuId().equals(buyerBeanM2.getBuyerSpaceUuId()))) {
                if (e(e2Var2) || d(e2Var2)) {
                    double dB = b(e2Var2);
                    if (e2Var2.h() == c2.ADDEFAULT || dB > c(e2Var)) {
                        return false;
                    }
                } else {
                    mh.b("BeiZis", "worker.getAdStatus():" + e2Var2.h() + ":" + e2Var2.x());
                    if (e2Var2.h() != c2.ADFAIL && c(e2Var2) > c(e2Var)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private void g() {
        lk lkVar = this.f15268z;
        if (lkVar == null || lkVar.f14887k.a() != 0) {
            return;
        }
        this.f15268z.f14887k.a(1);
    }

    private void i() {
        Handler handler = this.f15240U;
        if (handler != null) {
            handler.removeMessages(1);
        }
        Timer timer = this.f15266x;
        if (timer != null) {
            timer.cancel();
            this.f15266x = null;
        }
    }

    private void j() {
        Handler handler = this.f15240U;
        if (handler != null) {
            handler.removeMessages(2);
        }
        Timer timer = this.f15266x;
        if (timer != null) {
            timer.cancel();
            this.f15266x = null;
        }
    }

    public void c() {
        this.f15233N = true;
        i();
        j();
        e2 e2Var = this.f15250h;
        if (e2Var != null) {
            e2Var.g();
        }
        if (this.f15230K != this.f15231L) {
            this.f15249g = null;
        }
        Map map = this.f15251i;
        if (map != null) {
            map.clear();
        }
        ArrayList arrayList = this.f15252j;
        if (arrayList != null) {
            arrayList.clear();
        }
        if (this.f15256n != null) {
            this.f15256n = null;
        }
        X();
        l();
    }

    public void k(String str) {
        lk lkVar = this.f15268z;
        if (lkVar != null) {
            lkVar.f14885i.a(str, 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ViewGroup viewGroup) throws InterruptedException {
        AdSpacesBean.ComponentBean component;
        List<AdSpacesBean.BuyerBean> buyer;
        AdSpacesBean.BidComponent bidComponent;
        List<AdSpacesBean> adSpaces;
        AdSpacesBean adSpacesBean;
        if (this.f15222C || this.f15243a == null || f15218X == null) {
            return;
        }
        this.f15237R = System.currentTimeMillis();
        q1.i().B();
        q1.i().C();
        this.f15245c = viewGroup;
        this.f15220A = System.currentTimeMillis();
        this.f15246d = ro.a();
        lk lkVarH = q1.i().h();
        lk lkVar = new lk(new EventBean(q1.f15683u, "", "", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        this.f15268z = lkVar;
        this.f15228I = lkVar.a();
        this.f15244b = this.f15268z.b();
        S();
        this.f15228I.a(this.f15244b);
        b();
        if (!BeiZis.isIsSyncInit() && ((lkVarH == null || lkVarH.f14878b.a() != 2) && !this.f15234O)) {
            ResponseInfo.getInstance(f15218X).init();
            this.f15234O = true;
        }
        if (lkVarH != null) {
            mh.c("BeiZis", "mInitObserver.mInitStatus.getStatus() = " + lkVarH.f14878b.a() + ",mManagerObserver.mGetLocalConfigStatus.getStatus() = " + this.f15268z.f14879c.a());
        }
        if ((lkVarH != null && lkVarH.f14878b.a() == 2 && this.f15268z.f14879c.a() == 0) || this.f15234O) {
            this.f15268z.f14879c.a(1);
            if (this.f15268z.f14879c.a() == 1) {
                this.f15268z.f14879c.a(2);
                AdSpacesBean adSpacesBeanA = c5.a(this.f15243a, this.f15254l, o());
                this.f15257o = adSpacesBeanA;
                if (adSpacesBeanA != null) {
                    EventBean eventBean = this.f15244b;
                    if (eventBean != null) {
                        eventBean.setPlatformFilterSsid(adSpacesBeanA.getFilterSsid());
                        this.f15244b.setComponentSsid(this.f15257o.getComponentSsid());
                        this.f15244b.setBzComponentSsid(this.f15257o.getBzComponentSsid());
                        T();
                    }
                    ResponseInfo responseInfo = ResponseInfo.getInstance(f15218X);
                    Manager manager = responseInfo.getManager();
                    if (manager == null || (adSpaces = manager.getAdSpaces()) == null || adSpaces.size() <= 0 || (adSpacesBean = adSpaces.get(0)) == null) {
                        component = null;
                        buyer = null;
                        bidComponent = null;
                    } else {
                        component = adSpacesBean.getComponent();
                        bidComponent = adSpacesBean.getBidComponent();
                        buyer = adSpacesBean.getBuyer();
                    }
                    if ((component != null || bidComponent != null) && buyer != null && buyer.size() > 0) {
                        long maxValidTime = responseInfo.getMaxValidTime();
                        if (maxValidTime == 0) {
                            maxValidTime = 2592000000L;
                        }
                        if (System.currentTimeMillis() - ((Long) go.a(f15218X, "lastUpdateTime", (Object) Long.valueOf(new Date(0L).getTime()))).longValue() <= maxValidTime) {
                            this.f15226G = false;
                            this.f15222C = true;
                            if (this.f15268z.f14879c.a() == 2) {
                                this.f15268z.f14879c.a(3);
                                if (E()) {
                                    return;
                                }
                                G();
                                if (this.f15268z.c()) {
                                    this.f15268z.f14879c.a(-1);
                                    return;
                                } else {
                                    a(this.f15257o);
                                    return;
                                }
                            }
                            return;
                        }
                        this.f15222C = false;
                        this.f15226G = true;
                        W();
                        return;
                    }
                    this.f15222C = false;
                    W();
                    return;
                }
                if (this.f15225F) {
                    if (this.f15268z.f14879c.a() == 2) {
                        int iA = c5.a();
                        if (iA == 1) {
                            this.f15268z.f14879c.a(4);
                            a(10001);
                            return;
                        } else if (iA == 2) {
                            this.f15268z.f14879c.a(5);
                            a(10100);
                            return;
                        } else {
                            if (iA == 3) {
                                this.f15268z.f14879c.a(6);
                                a(10110);
                                return;
                            }
                            return;
                        }
                    }
                    this.f15268z.f14879c.a(-2);
                    a("kGetLocalConfigStatusInternalError");
                    return;
                }
                Log.e("BeiZis", "startUpdateConfig");
                this.f15222C = false;
                W();
                return;
            }
            this.f15268z.f14879c.a(-2);
            a("kGetLocalConfigStatusInternalError");
            return;
        }
        if (this.f15225F) {
            this.f15222C = false;
            W();
        } else {
            a(10000);
        }
    }

    public void h() {
        lk lkVar = this.f15268z;
        if (lkVar != null) {
            if (lkVar.f14887k.a() == 1 || this.f15268z.f14887k.a() == 3 || this.f15268z.f14887k.a() == 4) {
                this.f15268z.f14887k.a(2);
            }
        }
    }

    private u5 g(String str) {
        l(str);
        return u5.SUCCESS;
    }

    public void m(String str) {
        this.f15242W = str;
    }

    private void e() {
        if (this.f15268z != null) {
            mh.c("BeiZis", "mManagerObserver.mManagerResultStatus.getStatus() = " + this.f15268z.f14887k.a());
        }
        lk lkVar = this.f15268z;
        if (lkVar != null) {
            if (lkVar.f14887k.a() == 3 || this.f15268z.f14887k.a() == 1 || this.f15268z.f14887k.a() == 2) {
                this.f15268z.f14887k.a(4);
            }
        }
    }

    private boolean i(String str) {
        return str.equals("HPFRW");
    }

    public void d(String str) {
        if (this.f15261s < 2 || h(str)) {
            if (this.f15230K == 0) {
                this.f15230K = this.f15231L;
            }
            this.f15261s = 2;
            j3 j3Var = this.f15249g;
            if (j3Var != null) {
                if (j3Var instanceof AdListener) {
                    ((AdListener) j3Var).onAdShown();
                } else if (j3Var instanceof RewardedVideoAdListener) {
                    ((RewardedVideoAdListener) j3Var).onRewardedVideoAdShown();
                } else if (j3Var instanceof NativeAdListener) {
                    ((NativeAdListener) j3Var).onAdShown();
                } else if (j3Var instanceof InterstitialAdListener) {
                    ((InterstitialAdListener) j3Var).onAdShown();
                } else if (j3Var instanceof NativeUnifiedAdListener) {
                    ((NativeUnifiedAdListener) j3Var).onAdShown();
                } else if (j3Var instanceof UnifiedSplashAdListener) {
                    ((UnifiedSplashAdListener) j3Var).onAdShown();
                } else if (j3Var instanceof BZUnifiedAdListener) {
                    ((BZUnifiedAdListener) j3Var).onAdShown();
                }
            }
            h();
            m();
        }
    }

    public void j(String str) {
        lk lkVar = this.f15268z;
        if (lkVar != null) {
            lkVar.f14885i.a(str, 4);
        }
    }

    public void a(ViewGroup viewGroup) throws InterruptedException {
        if (q1.i().y()) {
            w3.b().a().execute(new c(viewGroup));
        } else {
            b(viewGroup);
        }
    }

    public boolean e(e2 e2Var) {
        return "S2S".equalsIgnoreCase(e2Var.l());
    }

    private void l(String str) {
        lk lkVar = this.f15268z;
        if (lkVar != null) {
            lkVar.f14885i.a(str, 3);
        }
    }

    public void f() {
        lk lkVar = this.f15268z;
        if (lkVar != null) {
            if (lkVar.f14887k.a() == 0 || this.f15268z.f14887k.a() == 1) {
                this.f15268z.f14887k.a(5);
            }
        }
    }

    @Override // com.beizi.fusion.o1
    public void a(String str) {
        mh.b("BeiZis", "enter handleAdRequestStatusError error is " + str);
        a(10131);
    }

    private u5 f(String str) {
        j(str);
        return u5.FAIL;
    }

    public void a(String str, String str2, EventItem eventItem) {
        if (Arrays.asList(b6.f13071a).contains(str)) {
            l8.a(str2, eventItem);
            w3.b().a().execute(new d(str2, eventItem));
        }
    }

    public void c(String str) {
        if (this.f15230K == this.f15231L) {
            this.f15230K = this.f15232M;
        }
        j3 j3Var = this.f15249g;
        if (j3Var != null) {
            if (j3Var instanceof AdListener) {
                ((AdListener) j3Var).onAdClosed();
            } else if (j3Var instanceof RewardedVideoAdListener) {
                ((RewardedVideoAdListener) j3Var).onRewardedVideoAdClosed();
            } else if (j3Var instanceof NativeAdListener) {
                ((NativeAdListener) j3Var).onAdClosed();
            } else if (j3Var instanceof InterstitialAdListener) {
                ((InterstitialAdListener) j3Var).onAdClosed();
            } else if (j3Var instanceof UnifiedSplashAdListener) {
                ((UnifiedSplashAdListener) j3Var).onAdClosed();
            }
        }
        e();
    }

    public void a(AdSpacesBean adSpacesBean) {
        if (this.f15268z.f14879c.a() == 3 && this.f15268z.f14880d.a() == 0) {
            this.f15268z.f14880d.a(1);
            this.f15251i.clear();
            AdSpacesBean.FilterBean filter = adSpacesBean.getFilter();
            this.f15221B = adSpacesBean.getBuyer();
            d2.a(this.f15243a, this.f15247e, filter, this.f15268z, p(), null, null, this);
            if (this.f15268z.f14880d.a() == 2) {
                if (this.f15268z.c()) {
                    this.f15268z.f14880d.a(-1);
                    return;
                }
                a("200.000", this.f15254l, new EventItem("200.000", String.valueOf(System.currentTimeMillis()), null, null));
                this.f15227H = adSpacesBean;
                mh.b("BeiZis", "normal request");
                a(this.f15227H.getComponent(), false);
                return;
            }
            a(this.f15268z.f14880d.a(), 6, "platform error = ");
            s1.a(this.f15268z.f14880d);
            a(10130);
            return;
        }
        this.f15268z.f14880d.a(-2);
        a("kPlatformFilterStatusInternalError");
    }

    private void d() {
        if (this.f15268z != null) {
            mh.c("BeiZis", "mManagerObserver.mManagerResultStatus.getStatus() = " + this.f15268z.f14887k.a());
        }
        lk lkVar = this.f15268z;
        if (lkVar != null) {
            if (lkVar.f14887k.a() == 1 || this.f15268z.f14887k.a() == 2 || this.f15268z.f14887k.a() == 3) {
                this.f15268z.f14887k.a(3);
            }
        }
    }

    private double c(e2 e2Var) {
        if (e2Var == null || e2Var.m() == null) {
            return 0.0d;
        }
        AdSpacesBean.BuyerBean buyerBeanM = e2Var.m();
        if (!d(e2Var) && !e(e2Var)) {
            return buyerBeanM.getAvgPrice();
        }
        if (buyerBeanM.getBidPrice() > 0.0d) {
            return buyerBeanM.getBidPrice();
        }
        return buyerBeanM.getAvgPrice();
    }

    public boolean d(e2 e2Var) {
        return "C2S".equalsIgnoreCase(e2Var.l());
    }

    public void c(Map map) {
        this.f15238S = map;
    }

    public void a(AdSpacesBean.ComponentBean componentBean, boolean z2) {
        EventBean eventBean;
        mh.a("BeiZis", "enter auctionAndRequestAd");
        if (this.f15257o == null) {
            return;
        }
        List list = this.f15221B;
        if (list != null && list.size() != 0) {
            if (n() >= 1) {
                mh.a("BeiZis", "auctionAndRequestAd ad aleady callback");
                return;
            }
            if (!z2) {
                this.f15268z.f14881e.a(1);
            }
            List<AdSpacesBean.ForwardBean> listA = a(componentBean, this.f15221B, z2);
            if (!z2) {
                this.f15268z.f14881e.a(2);
            }
            ArrayList arrayList = new ArrayList();
            if (listA != null && listA.size() > 0) {
                for (AdSpacesBean.ForwardBean forwardBean : listA) {
                    if (a(forwardBean.getBuyerId(), this.f15221B, forwardBean.getBuyerSpaceUuId()) != null) {
                        arrayList.add(forwardBean);
                    }
                }
            }
            int switchFiveVersion = this.f15257o.getSwitchFiveVersion();
            int iA = qm.b().a(this.f15257o.getSpaceId());
            if (iA == 0) {
                if (switchFiveVersion == 1) {
                    this.f15239T = true;
                }
            } else if (iA == 1) {
                this.f15239T = true;
            }
            if (this.f15239T) {
                if (!TextUtils.isEmpty(this.f15242W) || q1.i().v()) {
                    this.f15239T = false;
                } else {
                    Map map = this.f15238S;
                    if (map != null && (map.containsKey("materialInfo") || this.f15238S.containsKey("returnInteraction"))) {
                        this.f15239T = false;
                    }
                }
            }
            if (this.f15239T && (eventBean = this.f15244b) != null) {
                eventBean.setIsFiveVersion("1");
            }
            d(a(arrayList));
            return;
        }
        mh.a("BeiZis", "auctionAndRequestAd mBuyerBeanList == null ");
    }

    private List a(AdSpacesBean.ComponentBean componentBean, List list, boolean z2) {
        List listA;
        AdSpacesBean adSpacesBean;
        ArrayList arrayList = new ArrayList();
        if (!z2 && (adSpacesBean = this.f15257o) != null && adSpacesBean.getBid() != null && this.f15257o.getBidComponent() != null && this.f15257o.getBidComponent().getBidList() != null && this.f15257o.getBidComponent().getBidList().size() > 0) {
            arrayList.addAll(this.f15257o.getBidComponent().getBidList());
        }
        if (this.f15257o != null && componentBean != null && (listA = d2.a(componentBean, list, p())) != null && listA.size() > 0) {
            arrayList.addAll(listA);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map a(java.util.List r13) throws java.lang.CloneNotSupportedException {
        /*
            r12 = this;
            r0 = 0
            if (r13 == 0) goto L9
            int r1 = r13.size()
            if (r1 != 0) goto Lc
        L9:
            r5 = r12
            goto Lc9
        Lc:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "generateWorkers forwardBeans.size() = "
            r1.append(r2)
            int r2 = r13.size()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "BeiZis"
            com.beizi.fusion.mh.a(r2, r1)
            java.util.Hashtable r1 = new java.util.Hashtable
            r1.<init>()
            r3 = 0
        L2c:
            int r4 = r13.size()
            if (r3 >= r4) goto Lc7
            java.lang.Object r4 = r13.get(r3)
            r6 = r4
            com.beizi.fusion.model.AdSpacesBean$ForwardBean r6 = (com.beizi.fusion.model.AdSpacesBean.ForwardBean) r6
            if (r6 != 0) goto L3e
        L3b:
            r5 = r12
            goto Lc3
        L3e:
            java.lang.String r7 = r6.getBuyerId()
            java.lang.String r4 = r6.getBuyerSpaceUuId()
            java.util.List r5 = r12.f15221B
            java.lang.String r8 = r6.getBuyerSpaceUuId()
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r5 = r12.a(r7, r5, r8)
            if (r5 != 0) goto L53
            goto L3b
        L53:
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r5 = r5.m45clone()     // Catch: java.lang.CloneNotSupportedException -> L59
            r8 = r5
            goto L5a
        L59:
            r8 = r0
        L5a:
            if (r8 != 0) goto L5d
            goto L3b
        L5d:
            com.beizi.fusion.s1 r5 = r12.f15228I
            r5.a(r8, r6)
            com.beizi.fusion.lk r5 = r12.f15268z
            com.beizi.fusion.s1$d r5 = r5.f14882f
            r9 = 1
            r5.a(r4, r9)
            boolean r5 = r12.a(r6, r8, r4)
            if (r5 != 0) goto L71
            goto L3b
        L71:
            java.util.List r9 = r8.getRenderView()
            r10 = 0
            r5 = r12
            com.beizi.fusion.e2 r9 = r5.a(r6, r7, r8, r9, r10)
            if (r9 == 0) goto Lc3
            long r10 = r6.getSleepTime()
            r9.a(r10)
            r9.a(r6)
            r9.a(r8)
            java.lang.String r6 = r8.getBidType()
            r9.b(r6)
            r12.a(r7, r4, r9)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r8 = r12.e(r7)
            r6.append(r8)
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            r1.put(r4, r9)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r6 = "generateWorkers put new "
            r4.append(r6)
            r4.append(r7)
            java.lang.String r6 = " worker into workerList"
            r4.append(r6)
            java.lang.String r4 = r4.toString()
            com.beizi.fusion.mh.a(r2, r4)
        Lc3:
            int r3 = r3 + 1
            goto L2c
        Lc7:
            r5 = r12
            return r1
        Lc9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.n3.a(java.util.List):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        lk lkVar = this.f15268z;
        if (lkVar != null) {
            lkVar.f14879c.addObserver(lkVar);
            lk lkVar2 = this.f15268z;
            lkVar2.f14880d.addObserver(lkVar2);
            lk lkVar3 = this.f15268z;
            lkVar3.f14881e.addObserver(lkVar3);
            lk lkVar4 = this.f15268z;
            lkVar4.f14882f.addObserver(lkVar4);
            lk lkVar5 = this.f15268z;
            lkVar5.f14883g.addObserver(lkVar5);
            lk lkVar6 = this.f15268z;
            lkVar6.f14884h.addObserver(lkVar6);
            lk lkVar7 = this.f15268z;
            lkVar7.f14885i.addObserver(lkVar7);
            lk lkVar8 = this.f15268z;
            lkVar8.f14886j.addObserver(lkVar8);
            lk lkVar9 = this.f15268z;
            lkVar9.f14887k.addObserver(lkVar9);
            lk lkVar10 = this.f15268z;
            lkVar10.f14888l.addObserver(lkVar10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(e2 e2Var, int i2) {
        try {
            if (e(e2Var) || d(e2Var)) {
                ChannelBidResult channelBidResult = new ChannelBidResult();
                e2 e2Var2 = this.f15250h;
                if (e2Var2 != null) {
                    channelBidResult.setBidType(e2Var2.l());
                    channelBidResult.setChannelName(this.f15250h.x());
                    channelBidResult.setReason(i2);
                    channelBidResult.setEcpm(c(this.f15250h));
                } else {
                    channelBidResult.setEcpm(0.0d);
                    channelBidResult.setChannelName("other");
                    channelBidResult.setBidType("other");
                    channelBidResult.setReason(i2);
                }
                e2Var.a(channelBidResult);
            }
        } catch (Exception unused) {
        }
    }

    private boolean a(AdSpacesBean.ForwardBean forwardBean, AdSpacesBean.BuyerBean buyerBean, String str) {
        this.f15268z.f14882f.a(str, 2);
        if (buyerBean != null) {
            try {
                long jLongValue = ((Long) go.a(this.f15243a, "complain_config_" + buyerBean.getSpaceId(), (Object) 0L)).longValue();
                AdSpacesBean.ComplainBean complain = buyerBean.getComplain();
                if (complain != null) {
                    if (System.currentTimeMillis() - jLongValue < complain.getDuration()) {
                        this.f15268z.f14882f.a(str, 10);
                        return false;
                    }
                }
            } catch (Exception unused) {
            }
        }
        d2.a(this.f15243a, this.f15247e, buyerBean.getFilter(), this.f15268z, p(), buyerBean.getBuyerSpaceUuId(), buyerBean.getSpaceId(), this);
        if (this.f15268z.f14882f.a(str) == 3) {
            if (this.f15268z.c()) {
                this.f15268z.f14882f.a(str, -1);
                return false;
            }
            if (a(forwardBean, buyerBean) != 2) {
                return false;
            }
            this.f15268z.f14882f.a(str, 3);
            return true;
        }
        a(this.f15268z.f14882f.a(str), 7, "channel error = ");
        s1.a(str, this.f15268z.f14882f);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i2) {
        a(this.f15250h, i2);
        this.f15250h.d();
        b(this.f15250h.x(), this.f15250h.r());
        if (!"4".equals(o()) || this.f15229J) {
            return;
        }
        this.f15250h.H0();
        this.f15229J = true;
    }

    public void b(String str, View view) {
        if (this.f15253k) {
            return;
        }
        F();
        a(this.f15250h, 1);
        this.f15253k = true;
        this.f15261s = 1;
        i();
        j();
        j3 j3Var = this.f15249g;
        if (j3Var != null) {
            if (j3Var instanceof AdListener) {
                ((AdListener) j3Var).onAdLoaded();
            } else if (j3Var instanceof RewardedVideoAdListener) {
                ((RewardedVideoAdListener) j3Var).onRewardedVideoAdLoaded();
            } else if (j3Var instanceof InterstitialAdListener) {
                ((InterstitialAdListener) j3Var).onAdLoaded();
            } else if (j3Var instanceof NativeAdListener) {
                if (view != null) {
                    e2 e2Var = this.f15250h;
                    if (e2Var != null && e2Var.v() == 1) {
                        ((NativeAdListener) this.f15249g).onAdLoaded(null);
                    } else {
                        e2 e2Var2 = this.f15250h;
                        if (e2Var2 != null && e2Var2.r() != null) {
                            ((NativeAdListener) this.f15249g).onAdLoaded(this.f15250h.r());
                        } else {
                            D();
                        }
                    }
                } else {
                    D();
                }
            } else if (j3Var instanceof NativeUnifiedAdListener) {
                ((NativeUnifiedAdListener) j3Var).onAdLoaded(this.f15250h.q());
            }
        }
        g();
        f15219Y = true;
    }

    public u5 a(e2 e2Var) {
        AdSpacesBean.BuyerBean buyerBeanM = e2Var.m();
        if (buyerBeanM == null) {
            return null;
        }
        String id = buyerBeanM.getId();
        String buyerSpaceUuId = buyerBeanM.getBuyerSpaceUuId();
        String zone = buyerBeanM.getZone();
        mh.a("BeiZis", "enter comparePrices compareWorker:" + e2Var.x() + ",mCurrentHighestWorker:" + this.f15250h);
        if (h(e2Var.x())) {
            return a(buyerSpaceUuId, e2Var, id);
        }
        lk lkVar = this.f15268z;
        if (lkVar != null) {
            lkVar.f14885i.a(buyerSpaceUuId, 1);
        }
        if (this.f15261s >= 1) {
            b(e2Var, 1);
            return f(buyerSpaceUuId);
        }
        if (L()) {
            return a(buyerSpaceUuId, e2Var);
        }
        boolean zI = i(zone);
        boolean zF = f(e2Var);
        StringBuilder sb = new StringBuilder();
        sb.append("channel == mTimeStage = ");
        sb.append(this.f15262t == this.f15264v);
        sb.append(";isNeedComparePrices = ");
        sb.append(zI);
        sb.append(",isHighestPrice:");
        sb.append(zF);
        sb.append(";mCurrentHighestWorker:");
        sb.append(this.f15250h);
        mh.a("BeiZis", sb.toString());
        if (this.f15262t == this.f15263u && zI && !zF) {
            double dC = c(e2Var);
            double dC2 = c(this.f15250h);
            if (this.f15250h != null && dC <= dC2) {
                b(e2Var, 1);
                if (f(this.f15250h)) {
                    b(1);
                }
                return f(buyerSpaceUuId);
            }
            return a(buyerSpaceUuId, e2Var);
        }
        return a(buyerSpaceUuId, e2Var, id);
    }

    public void b(String str) {
        j3 j3Var = this.f15249g;
        if (j3Var != null) {
            if (j3Var instanceof AdListener) {
                ((AdListener) j3Var).onAdClicked();
            } else if (j3Var instanceof RewardedVideoAdListener) {
                ((RewardedVideoAdListener) j3Var).onRewardedVideoClick();
            } else if (j3Var instanceof NativeAdListener) {
                ((NativeAdListener) j3Var).onAdClick();
            } else if (j3Var instanceof InterstitialAdListener) {
                ((InterstitialAdListener) j3Var).onAdClick();
            } else if (j3Var instanceof NativeUnifiedAdListener) {
                ((NativeUnifiedAdListener) j3Var).onAdClick();
            } else if (j3Var instanceof UnifiedSplashAdListener) {
                ((UnifiedSplashAdListener) j3Var).onAdClick();
            } else if (j3Var instanceof BZUnifiedAdListener) {
                ((BZUnifiedAdListener) j3Var).onAdClick();
            }
        }
        d();
    }

    private void a(e2 e2Var, int i2) {
        if (e2Var == null) {
            return;
        }
        for (e2 e2Var2 : C().values()) {
            AdSpacesBean.BuyerBean buyerBeanM = e2Var2.m();
            AdSpacesBean.BuyerBean buyerBeanM2 = e2Var.m();
            if (buyerBeanM != null && buyerBeanM2 != null && (TextUtils.isEmpty(buyerBeanM.getBuyerSpaceUuId()) || TextUtils.isEmpty(buyerBeanM2.getBuyerSpaceUuId()) || !buyerBeanM.getBuyerSpaceUuId().equals(buyerBeanM2.getBuyerSpaceUuId()))) {
                b(e2Var2, i2);
                if (e2Var2.u() == u5.TO_DETERMINE) {
                    j(buyerBeanM.getBuyerSpaceUuId());
                } else if (e2Var2.h() == c2.ADDEFAULT) {
                    k(buyerBeanM.getBuyerSpaceUuId());
                }
            }
        }
    }

    private double b(e2 e2Var) {
        AdSpacesBean.BuyerBean buyerBeanM;
        if (e2Var == null || (buyerBeanM = e2Var.m()) == null) {
            return 0.0d;
        }
        return buyerBeanM.getBidPrice();
    }

    private void a(String str, String str2, e2 e2Var) {
        this.f15251i.put(e(str) + "_" + str2, e2Var);
    }

    public AdSpacesBean.BuyerBean a(String str, List list, String str2) {
        return d2.a(str, list, str2);
    }

    public void b(Map map) {
        e2 e2Var = this.f15250h;
        if (e2Var == null || map == null) {
            return;
        }
        e2Var.d(map);
    }

    public void a(int i2, int i3, String str) {
        if (i2 != i3 || l8.b(this.f15254l) == null) {
            return;
        }
        l8.d(str + l8.b(this.f15254l).toString());
    }

    private int a(AdSpacesBean.ForwardBean forwardBean, AdSpacesBean.BuyerBean buyerBean) {
        if (forwardBean == null || buyerBean == null) {
            return 0;
        }
        String buyerSpaceUuId = buyerBean.getBuyerSpaceUuId();
        if (this.f15268z.f14882f.a(buyerSpaceUuId) == 3) {
            this.f15268z.f14883g.a(buyerSpaceUuId, 1);
            if (this.f15268z.f14883g.a(buyerSpaceUuId) == 1) {
                if (this.f15247e <= (forwardBean.getSleepTime() + System.currentTimeMillis()) - this.f15220A) {
                    this.f15268z.f14883g.a(buyerSpaceUuId, 4);
                    return 4;
                }
                if (this.f15268z.f14887k.a() == 2) {
                    this.f15268z.f14883g.a(buyerSpaceUuId, 6);
                    return 6;
                }
                mh.a("BeiZis", "mUsableTime = " + this.f15247e + " forwardBean.getSleepTime() + System.currentTimeMillis() - mEnterRequestMethodTime = " + ((forwardBean.getSleepTime() + System.currentTimeMillis()) - this.f15220A) + ",forwardBean.getSleepTime() = " + forwardBean.getSleepTime());
                if (this.f15268z.c()) {
                    this.f15268z.f14883g.a(buyerSpaceUuId, -1);
                    return -1;
                }
                this.f15268z.f14883g.a(buyerSpaceUuId, 2);
                return 2;
            }
        }
        this.f15268z.f14883g.a(buyerSpaceUuId, -2);
        return -2;
    }

    public void a(AdSpacesBean.ComponentBean componentBean, String str, boolean z2, int i2) {
        if (componentBean != null && (TextUtils.isEmpty(str) || (!"C2S".equalsIgnoreCase(str) && !"S2S".equalsIgnoreCase(str)))) {
            a(componentBean, true);
            return;
        }
        e2 e2Var = this.f15250h;
        if (e2Var != null && f(e2Var)) {
            b(1);
        } else {
            a(i2);
        }
    }

    public void a() {
        e2 e2Var = this.f15250h;
        if (e2Var != null) {
            e2Var.D0();
        }
    }

    public void a(String str, UnifiedSplashAdResponse unifiedSplashAdResponse) {
        if (this.f15253k) {
            return;
        }
        F();
        a(this.f15250h, 1);
        this.f15253k = true;
        this.f15261s = 1;
        i();
        j();
        j3 j3Var = this.f15249g;
        if (j3Var != null && (j3Var instanceof UnifiedSplashAdListener)) {
            ((UnifiedSplashAdListener) j3Var).onAdLoaded(unifiedSplashAdResponse);
        }
        g();
        f15219Y = true;
    }

    public void a(String str, BeiZiUnifiedAdResponse beiZiUnifiedAdResponse) {
        if (this.f15253k) {
            return;
        }
        F();
        a(this.f15250h, 1);
        this.f15253k = true;
        this.f15261s = 1;
        i();
        j();
        j3 j3Var = this.f15249g;
        if (j3Var != null && (j3Var instanceof BeiZiUnifiedAdListener)) {
            ((BeiZiUnifiedAdListener) j3Var).onAdLoaded(beiZiUnifiedAdResponse);
        }
        g();
        f15219Y = true;
    }

    public void a(String str, BZUnifiedAdResponse bZUnifiedAdResponse) {
        if (this.f15253k) {
            return;
        }
        F();
        a(this.f15250h, 1);
        this.f15253k = true;
        this.f15261s = 1;
        i();
        j();
        j3 j3Var = this.f15249g;
        if (j3Var != null && (j3Var instanceof BZUnifiedAdListener)) {
            ((BZUnifiedAdListener) j3Var).onAdLoaded(bZUnifiedAdResponse);
        }
        g();
        f15219Y = true;
    }

    public void a(String str, int i2) {
        j3 j3Var = this.f15249g;
        if (j3Var != null) {
            if (j3Var instanceof AdListener) {
                ((AdListener) j3Var).onAdFailedToLoad(i2);
            } else if (j3Var instanceof RewardedVideoAdListener) {
                ((RewardedVideoAdListener) j3Var).onRewardedVideoAdFailedToLoad(i2);
            } else if (j3Var instanceof NativeAdListener) {
                ((NativeAdListener) j3Var).onAdFailed(i2);
            } else if (j3Var instanceof InterstitialAdListener) {
                ((InterstitialAdListener) j3Var).onAdFailed(i2);
            } else if (j3Var instanceof NativeUnifiedAdListener) {
                ((NativeUnifiedAdListener) j3Var).onAdFailed(i2);
            } else if (j3Var instanceof UnifiedSplashAdListener) {
                ((UnifiedSplashAdListener) j3Var).onAdFailed(i2);
            } else if (j3Var instanceof BeiZiUnifiedAdListener) {
                ((BeiZiUnifiedAdListener) j3Var).onAdFailed(i2);
            } else if (j3Var instanceof BZUnifiedAdListener) {
                ((BZUnifiedAdListener) j3Var).onAdFailed(i2);
            }
        }
        i();
        j();
        this.f15261s = 3;
        f();
        f15219Y = true;
    }

    public void a(int i2) {
        if (i2 != 10140) {
            if (this.f15261s >= 1) {
                return;
            }
            if (i2 != 9999 && (L() || K())) {
                return;
            }
        }
        if (q1.i().A() && i2 == 9999) {
            i2 = 3;
        }
        j3 j3Var = this.f15249g;
        if (j3Var != null) {
            if (j3Var instanceof AdListener) {
                ((AdListener) j3Var).onAdFailedToLoad(i2);
            } else if (j3Var instanceof RewardedVideoAdListener) {
                ((RewardedVideoAdListener) j3Var).onRewardedVideoAdFailedToLoad(i2);
            } else if (j3Var instanceof NativeAdListener) {
                ((NativeAdListener) j3Var).onAdFailed(i2);
            } else if (j3Var instanceof InterstitialAdListener) {
                ((InterstitialAdListener) j3Var).onAdFailed(i2);
            } else if (j3Var instanceof NativeUnifiedAdListener) {
                ((NativeUnifiedAdListener) j3Var).onAdFailed(i2);
            } else if (j3Var instanceof UnifiedSplashAdListener) {
                ((UnifiedSplashAdListener) j3Var).onAdFailed(i2);
            } else if (j3Var instanceof BeiZiUnifiedAdListener) {
                ((BeiZiUnifiedAdListener) j3Var).onAdFailed(i2);
            } else if (j3Var instanceof BZUnifiedAdListener) {
                ((BZUnifiedAdListener) j3Var).onAdFailed(i2);
            }
        }
        i();
        j();
        this.f15261s = 3;
        f();
        f15219Y = true;
    }

    public void a(String str, View view) {
        j3 j3Var = this.f15249g;
        if (j3Var != null && view != null && (j3Var instanceof NativeAdListener)) {
            ((NativeAdListener) j3Var).onAdClosed(view);
        }
        e();
    }

    public void a(long j2) {
        j3 j3Var = this.f15249g;
        if (j3Var == null || !(j3Var instanceof AdListener)) {
            return;
        }
        ((AdListener) j3Var).onAdTick(j2);
    }

    private u5 a(String str, e2 e2Var) {
        mh.a("BeiZis", "comparePrices handleCompeteToDetermine worker:" + e2Var.x());
        this.f15250h = e2Var;
        this.f15268z.f14885i.a(str, 2);
        j();
        return u5.TO_DETERMINE;
    }

    private u5 a(String str, e2 e2Var, String str2) {
        if (!this.f15267y) {
            a(e2Var, str2);
            i();
            j();
            return g(str);
        }
        b(e2Var, 1);
        return f(str);
    }

    private void a(e2 e2Var, String str) {
        this.f15267y = true;
        mh.a("BeiZis", "---handleCompeteSuccess---" + str + "---" + c(e2Var));
        this.f15250h = e2Var;
        a(e2Var, 1);
    }

    public void a(j3 j3Var) {
        this.f15249g = j3Var;
    }

    public void a(boolean z2) {
        this.f15255m = z2;
    }

    public void a(Map map) {
        if (map == null) {
            return;
        }
        try {
            e2 e2Var = this.f15250h;
            if (e2Var != null) {
                e2Var.c(map);
                return;
            }
            Map mapC = C();
            if (mapC != null && mapC.size() != 0) {
                for (e2 e2Var2 : mapC.values()) {
                    if (e2Var2 != null && e2Var2.x().equalsIgnoreCase("BEIZI")) {
                        e2Var2.c(map);
                        return;
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    private void a(JSONObject jSONObject) {
        Map map;
        JSONObject jSONObjectP;
        if (jSONObject == null) {
            return;
        }
        try {
            if (this.f15250h != null && (map = this.f15238S) != null && map.containsKey("materialInfo") && (jSONObjectP = this.f15250h.p()) != null && jSONObjectP.has("materialInfo")) {
                jSONObject.put("materialInfo", jSONObjectP.optJSONObject("materialInfo"));
            }
        } catch (Throwable unused) {
        }
    }
}
