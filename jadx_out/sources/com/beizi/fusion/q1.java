package com.beizi.fusion;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import com.beizi.fusion.model.RequestInfo;
import com.beizi.fusion.model.ResponseInfo;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public class q1 {

    /* renamed from: t, reason: collision with root package name */
    public static String f15682t = null;

    /* renamed from: u, reason: collision with root package name */
    public static String f15683u = "";

    /* renamed from: v, reason: collision with root package name */
    private static String f15684v = "AdManager";

    /* renamed from: w, reason: collision with root package name */
    private static q1 f15685w;

    /* renamed from: x, reason: collision with root package name */
    private static String f15686x;

    /* renamed from: y, reason: collision with root package name */
    private static String f15687y;

    /* renamed from: z, reason: collision with root package name */
    private static String f15688z;

    /* renamed from: a, reason: collision with root package name */
    private Context f15689a;

    /* renamed from: c, reason: collision with root package name */
    private h9 f15691c;

    /* renamed from: d, reason: collision with root package name */
    private lk f15692d;

    /* renamed from: n, reason: collision with root package name */
    private boolean f15702n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f15703o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f15704p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f15705q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f15706r;

    /* renamed from: s, reason: collision with root package name */
    private Map f15707s;

    /* renamed from: b, reason: collision with root package name */
    private boolean f15690b = false;

    /* renamed from: e, reason: collision with root package name */
    private boolean f15693e = false;

    /* renamed from: f, reason: collision with root package name */
    private boolean f15694f = false;

    /* renamed from: g, reason: collision with root package name */
    private boolean f15695g = false;

    /* renamed from: h, reason: collision with root package name */
    private boolean f15696h = false;

    /* renamed from: i, reason: collision with root package name */
    private boolean f15697i = false;

    /* renamed from: j, reason: collision with root package name */
    private boolean f15698j = false;

    /* renamed from: k, reason: collision with root package name */
    private boolean f15699k = true;

    /* renamed from: l, reason: collision with root package name */
    private String f15700l = "0";

    /* renamed from: m, reason: collision with root package name */
    private List f15701m = new CopyOnWriteArrayList();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q1.this.p();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q1.this.g();
            q1.this.l();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String strA = f2.a(q1.this.f15689a);
            Log.e(q1.f15684v, "code honor Oaid:" + strA);
            if (!TextUtils.isEmpty(strA)) {
                go.b(q1.this.f15689a, "__HONOROAID__", strA);
            }
            if (TextUtils.isEmpty(strA) || RequestInfo.getInstance(q1.this.f15689a).getDevInfo() == null) {
                return;
            }
            RequestInfo.getInstance(q1.this.f15689a).getDevInfo().setHonorOaid(strA);
        }
    }

    private void D() {
        try {
            h9.a(this.f15689a).b(5);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            if (Build.BRAND.equalsIgnoreCase("HONOR")) {
                String str = (String) go.a(this.f15689a, "__HONOROAID__", (Object) "");
                if (!TextUtils.isEmpty(str) && RequestInfo.getInstance(this.f15689a).getDevInfo() != null) {
                    RequestInfo.getInstance(this.f15689a).getDevInfo().setHonorOaid(str);
                }
                w3.b().a().execute(new d());
            }
        } catch (Exception unused) {
        }
    }

    public static q1 i() {
        if (f15685w == null) {
            synchronized (q1.class) {
                try {
                    if (f15685w == null) {
                        f15685w = new q1();
                    }
                } finally {
                }
            }
        }
        return f15685w;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        try {
            new d7(jk.f14674c).b(this.f15689a);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        try {
            if ("0".equals(ResponseInfo.getInstance(this.f15689a).getSmFlag())) {
                int iIntValue = ((Integer) go.a(this.f15689a, "SM_STATUS", (Object) 0)).intValue();
                int i2 = 1;
                if (iIntValue == 1) {
                    go.b(this.f15689a, "SM_STATUS", 3);
                    go.b(this.f15689a, "SM_STATUS_EXPIRE_TIME", Long.valueOf(System.currentTimeMillis()));
                    iIntValue = 3;
                }
                if (iIntValue == 0 || iIntValue == 2) {
                    go.b(this.f15689a, "SM_STATUS", 1);
                } else {
                    i2 = iIntValue;
                }
                if (i2 != 3) {
                    if (u6.a(this.f15689a)) {
                        u6.a(this.f15689a, new c());
                    }
                    go.b(this.f15689a, "SM_STATUS", 2);
                } else {
                    Long l2 = (Long) go.a(this.f15689a, "SM_STATUS_EXPIRE_TIME", (Object) Long.valueOf(Long.parseLong("0")));
                    if (l2.longValue() == 0 || System.currentTimeMillis() - l2.longValue() <= 864000000) {
                        return;
                    }
                    go.b(this.f15689a, "SM_STATUS", 0);
                    go.b(this.f15689a, "SM_STATUS_EXPIRE_TIME", Long.valueOf(Long.parseLong("0")));
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (!this.f15696h) {
            i6.a().a(this.f15689a);
        }
        ResponseInfo.getInstance(this.f15689a).init();
        if (!this.f15694f) {
            this.f15692d.f14878b.a(1);
            C();
        }
        j();
        if (!this.f15694f && this.f15692d.f14878b.a() == 1) {
            this.f15692d.f14878b.a(2);
        }
        a((BeiZiInitCallBack) null);
    }

    public boolean A() {
        return this.f15695g;
    }

    public void B() {
        e();
        if (this.f15694f && this.f15690b && this.f15689a != null && this.f15692d.f14878b.a() == 0) {
            this.f15692d.f14878b.a(1);
            this.f15692d.f14878b.a(2);
        }
    }

    public void C() {
        Context context = this.f15689a;
        if (context != null && this.f15691c == null) {
            if (ResponseInfo.getInstance(context).isInit()) {
                EventCar.getInstance(this.f15689a).goRoad(new EventBean(f15683u, "", "410.000", "", i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                EventCar.getInstance(this.f15689a).goRoad(new EventBean(f15683u, "", "410.200", "", i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            } else {
                EventCar.getInstance(this.f15689a).goRoad(new EventBean(f15683u, "", "410.000", "", i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                EventCar.getInstance(this.f15689a).goRoad(new EventBean(f15683u, "", "410.500", "", i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            }
            h9 h9VarA = h9.a(this.f15689a);
            this.f15691c = h9VarA;
            h9VarA.b(0);
        }
    }

    public Map f() {
        return this.f15707s;
    }

    public lk h() {
        return this.f15692d;
    }

    public void j() {
        if (dl.c()) {
            if (BeiZis.isLimitPersonalAds()) {
                return;
            }
            if (BeiZis.getCustomController() != null && (BeiZis.getCustomController() == null || !BeiZis.getCustomController().isCanUseOaid())) {
                return;
            }
        }
        String str = (String) go.a(this.f15689a, "__OAID__", (Object) "");
        if (TextUtils.isEmpty(str) || RequestInfo.getInstance(this.f15689a).getDevInfo() == null) {
            return;
        }
        RequestInfo.getInstance(this.f15689a).getDevInfo().setOaid(str);
    }

    public String m() {
        return f15688z;
    }

    public Context n() {
        return this.f15689a;
    }

    public String o() {
        return this.f15700l;
    }

    public boolean q() {
        return this.f15698j;
    }

    public boolean r() {
        return BeiZis.getCustomController() == null || BeiZis.getCustomController().isCanUseAndroidId();
    }

    public boolean s() {
        return this.f15699k;
    }

    public boolean t() {
        return this.f15705q;
    }

    public boolean u() {
        return this.f15694f;
    }

    public boolean v() {
        return (BeiZis.getCustomController() == null || !BeiZis.getCustomController().forbidSensor() || ResponseInfo.getInstance(this.f15689a).isOpenSensor()) ? false : true;
    }

    public boolean w() {
        return this.f15697i;
    }

    public boolean x() {
        return this.f15704p;
    }

    public boolean y() {
        return this.f15706r;
    }

    public boolean z() {
        return this.f15703o;
    }

    public q1 b(String str) {
        f15686x = str;
        return f15685w;
    }

    public String c() {
        return f15682t;
    }

    public String d() {
        return f15687y;
    }

    public void e() {
        if (this.f15702n) {
            return;
        }
        this.f15702n = true;
        if (dl.c()) {
            if (BeiZis.isLimitPersonalAds()) {
                return;
            }
            if (BeiZis.getCustomController() != null && (BeiZis.getCustomController() == null || !BeiZis.getCustomController().isCanUseOaid())) {
                return;
            }
        }
        w3.b().a().execute(new b());
    }

    public void a(Context context, String str, String str2, String str3) {
        synchronized (q1.class) {
            try {
                Log.e("BeiZis", "init start applicationCode：" + str);
                if (context != null) {
                    if (!this.f15690b) {
                        this.f15689a = context.getApplicationContext();
                        String strA = ro.a();
                        f15683u = strA;
                        EventBean eventBean = new EventBean(strA, "", "", "", str, "", "", String.valueOf(System.currentTimeMillis()), "");
                        lk lkVar = new lk(eventBean);
                        this.f15692d = lkVar;
                        f15682t = str;
                        f15687y = str2;
                        f15688z = str3;
                        lkVar.f14878b.addObserver(lkVar);
                        this.f15692d.a().a(eventBean);
                        AppEventId.getInstance(this.f15689a).setAppStart();
                        AppEventId.getInstance(this.f15689a).setAppSdkInit();
                        uf.a().a(this.f15689a);
                        if (this.f15692d.f14878b.a() == 0) {
                            if (BeiZis.isIsSyncInit()) {
                                p();
                            } else {
                                w3.b().a().execute(new a());
                            }
                            this.f15690b = true;
                        }
                    } else {
                        a((BeiZiInitCallBack) null);
                    }
                    Log.e("BeiZis", "init end");
                } else {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(BeiZiInitCallBack beiZiInitCallBack) {
        a(beiZiInitCallBack);
    }

    public String b() {
        if (BeiZis.getCustomController() == null) {
            return "";
        }
        return BeiZis.getCustomController().getAndroidId();
    }

    public class c implements lc {
        public c() {
        }

        @Override // com.beizi.fusion.lc
        public void a(String str) {
            Log.e(q1.f15684v, "code sm Oaid:" + str);
            if (!TextUtils.isEmpty(str)) {
                go.b(q1.this.f15689a, "__OAID__", str);
                go.b(q1.this.f15689a, "__SMOAID__", str);
                if (RequestInfo.getInstance(q1.this.f15689a).getDevInfo() != null) {
                    if (dl.c() && BeiZis.isLimitPersonalAds()) {
                        return;
                    }
                    RequestInfo.getInstance(q1.this.f15689a).getDevInfo().setOaid(str);
                    RequestInfo.getInstance(q1.this.f15689a).getDevInfo().setSmOaid(str);
                    return;
                }
                return;
            }
            if (Build.BRAND.equalsIgnoreCase("HONOR")) {
                String str2 = (String) go.a(q1.this.f15689a, "__HONOROAID__", (Object) "");
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                go.b(q1.this.f15689a, "__OAID__", str2);
                go.b(q1.this.f15689a, "__SMOAID__", str2);
                if (RequestInfo.getInstance(q1.this.f15689a).getDevInfo() != null && (!dl.c() || !BeiZis.isLimitPersonalAds())) {
                    RequestInfo.getInstance(q1.this.f15689a).getDevInfo().setOaid(str2);
                    RequestInfo.getInstance(q1.this.f15689a).getDevInfo().setSmOaid(str2);
                }
            }
            q1.this.k();
        }

        @Override // com.beizi.fusion.lc
        public void a(Exception exc) {
            q1.this.k();
        }
    }

    public void a(Map map) {
        if (map == null) {
            return;
        }
        try {
            this.f15707s = map;
            if (map.containsKey("forbid_config_network")) {
                Object obj = map.get("forbid_config_network");
                if (obj instanceof Boolean) {
                    this.f15694f = ((Boolean) obj).booleanValue();
                }
            }
            if (map.containsKey("speed_first_strategy")) {
                Object obj2 = map.get("speed_first_strategy");
                if (obj2 instanceof Boolean) {
                    this.f15695g = ((Boolean) obj2).booleanValue();
                }
            }
            if (map.containsKey("forbid_collect_crash")) {
                Object obj3 = map.get("forbid_collect_crash");
                if (obj3 instanceof Boolean) {
                    this.f15696h = ((Boolean) obj3).booleanValue();
                }
            }
            if (map.containsKey("forbid_verify_window_focus")) {
                Object obj4 = map.get("forbid_verify_window_focus");
                if (obj4 instanceof Boolean) {
                    this.f15697i = ((Boolean) obj4).booleanValue();
                }
            }
            if (map.containsKey("allow_use_app_status")) {
                Object obj5 = map.get("allow_use_app_status");
                if (obj5 instanceof Boolean) {
                    this.f15698j = ((Boolean) obj5).booleanValue();
                }
            }
            if (map.containsKey("isCanUseSimOperator")) {
                Object obj6 = map.get("isCanUseSimOperator");
                if (obj6 instanceof Boolean) {
                    this.f15699k = ((Boolean) obj6).booleanValue();
                }
            }
            if (map.containsKey("simOperator")) {
                Object obj7 = map.get("simOperator");
                if (obj7 instanceof String) {
                    this.f15700l = (String) obj7;
                }
            }
            if (map.containsKey("open_location_frequency")) {
                Object obj8 = map.get("open_location_frequency");
                if (obj8 instanceof Boolean) {
                    this.f15703o = ((Boolean) obj8).booleanValue();
                }
            }
            if (map.containsKey("limit_location_frequency")) {
                Object obj9 = map.get("limit_location_frequency");
                if (obj9 instanceof Boolean) {
                    this.f15704p = ((Boolean) obj9).booleanValue();
                }
            }
            if (map.containsKey("forbid_collect_store_info")) {
                Object obj10 = map.get("forbid_collect_store_info");
                if (obj10 instanceof Boolean) {
                    this.f15705q = ((Boolean) obj10).booleanValue();
                }
            }
            if (map.containsKey("open_async")) {
                Object obj11 = map.get("open_async");
                if (obj11 instanceof Boolean) {
                    this.f15706r = ((Boolean) obj11).booleanValue();
                }
            }
        } catch (Exception unused) {
        }
    }

    public String a(String str) {
        String appId;
        String spaceId;
        try {
            if (TextUtils.isEmpty(str) || this.f15689a == null || !this.f15690b) {
                return null;
            }
            e();
            AdSpacesBean adSpaceBean = ResponseInfo.getInstance(this.f15689a).getAdSpaceBean(str);
            if (adSpaceBean == null) {
                D();
                return yq.a(this.f15689a, null, null);
            }
            List<AdSpacesBean.BuyerBean> buyer = adSpaceBean.getBuyer();
            if (buyer != null && !buyer.isEmpty()) {
                Iterator<AdSpacesBean.BuyerBean> it = buyer.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        appId = null;
                        spaceId = null;
                        break;
                    }
                    AdSpacesBean.BuyerBean next = it.next();
                    if (next != null && "S2S".equalsIgnoreCase(next.getBidType())) {
                        appId = next.getAppId();
                        spaceId = next.getSpaceId();
                        break;
                    }
                }
                if (!TextUtils.isEmpty(appId) && !TextUtils.isEmpty(spaceId)) {
                    return yq.a(this.f15689a, appId, spaceId);
                }
                D();
                return yq.a(this.f15689a, null, null);
            }
            D();
            return yq.a(this.f15689a, null, null);
        } catch (Exception unused) {
            return yq.a(this.f15689a, null, null);
        }
    }

    private synchronized void a(BeiZiInitCallBack beiZiInitCallBack) {
        if (BeiZis.isIsSyncInit()) {
            return;
        }
        if (beiZiInitCallBack != null) {
            if (this.f15690b) {
                beiZiInitCallBack.success();
                return;
            } else {
                this.f15701m.add(beiZiInitCallBack);
                return;
            }
        }
        this.f15690b = true;
        Iterator it = this.f15701m.iterator();
        while (it.hasNext()) {
            ((BeiZiInitCallBack) it.next()).success();
        }
        this.f15701m.clear();
    }
}
