package com.beizi.fusion;

import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import java.util.HashMap;
import java.util.Map;
import java.util.Observable;

/* loaded from: classes2.dex */
public class s1 {

    /* renamed from: d, reason: collision with root package name */
    public static SparseArray f16110d = new SparseArray();

    /* renamed from: e, reason: collision with root package name */
    public static SparseArray f16111e = new SparseArray();

    /* renamed from: f, reason: collision with root package name */
    public static SparseArray f16112f = new SparseArray();

    /* renamed from: g, reason: collision with root package name */
    public static SparseArray f16113g = new SparseArray();

    /* renamed from: h, reason: collision with root package name */
    public static SparseArray f16114h = new SparseArray();

    /* renamed from: i, reason: collision with root package name */
    public static SparseArray f16115i = new SparseArray();

    /* renamed from: j, reason: collision with root package name */
    public static SparseArray f16116j = new SparseArray();

    /* renamed from: k, reason: collision with root package name */
    public static SparseArray f16117k = new SparseArray();

    /* renamed from: l, reason: collision with root package name */
    public static SparseArray f16118l = new SparseArray();

    /* renamed from: m, reason: collision with root package name */
    public static SparseArray f16119m = new SparseArray();

    /* renamed from: n, reason: collision with root package name */
    public static SparseArray f16120n = new SparseArray();

    /* renamed from: a, reason: collision with root package name */
    private HashMap f16121a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private HashMap f16122b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    private EventBean f16123c;

    public class a extends l {
        public a() {
            super();
        }
    }

    public class b extends l {
        public b() {
            super();
        }
    }

    public class c extends l {
        public c() {
            super();
        }
    }

    public class d extends l {
        public d() {
            super();
        }
    }

    public class e extends l {
        public e() {
            super();
        }
    }

    public class f extends l {
        public f() {
            super();
        }
    }

    public class g extends l {
        public g() {
            super();
        }
    }

    public class h extends l {
        public h() {
            super();
        }
    }

    public class i extends l {
        public i() {
            super();
        }
    }

    public class j extends l {
        public j() {
            super();
        }
    }

    public class k extends l {
        public k() {
            super();
        }
    }

    static {
        f16110d.put(1, "100.000");
        f16110d.put(2, "100.200");
        f16111e.put(-1, "210.400");
        f16111e.put(-2, "210.999");
        f16111e.put(1, "200.001");
        f16111e.put(2, "210.100");
        f16111e.put(3, "210.200");
        f16111e.put(4, "210.401");
        f16111e.put(5, "210.402");
        f16111e.put(6, "210.403");
        f16111e.put(7, "210.404");
        f16112f.put(-1, "220.400");
        f16112f.put(-2, "220.999");
        f16112f.put(1, "220.000");
        f16112f.put(2, "200.000");
        f16112f.put(3, "220.401");
        f16112f.put(4, "220.402");
        f16112f.put(5, "220.403");
        f16112f.put(6, "220.404");
        f16113g.put(-1, "230.400");
        f16113g.put(-2, "230.999");
        f16113g.put(1, "230.000");
        f16113g.put(2, "230.200");
        f16113g.put(3, "230.401");
        f16113g.put(4, "230.402");
        f16114h.put(-1, "245.400");
        f16114h.put(-2, "245.999");
        f16114h.put(1, "240.000");
        f16114h.put(2, "245.000");
        f16114h.put(3, "245.200");
        f16114h.put(4, "245.401");
        f16114h.put(5, "245.402");
        f16114h.put(6, "245.403");
        f16114h.put(7, "245.404");
        f16114h.put(8, "245.300");
        f16114h.put(9, "240.100");
        f16114h.put(10, "245.405");
        f16115i.put(-1, "249.400");
        f16115i.put(-2, "249.999");
        f16115i.put(1, "248.000");
        f16115i.put(2, "249.000");
        f16115i.put(3, "248.401");
        f16115i.put(4, "248.402");
        f16115i.put(5, "249.401");
        f16115i.put(6, "249.402");
        f16116j.put(-1, "280.600");
        f16116j.put(1, "250.100");
        f16116j.put(2, "250.200");
        f16116j.put(16, "250.401");
        f16116j.put(3, "255.200");
        f16116j.put(4, "280.200");
        f16116j.put(5, "280.280");
        f16116j.put(6, "280.300");
        f16116j.put(12, "280.350");
        f16116j.put(7, "290.300");
        f16116j.put(17, "290.301");
        f16116j.put(8, "280.400");
        f16116j.put(9, "280.450");
        f16116j.put(11, "280.500");
        f16116j.put(13, "280.301");
        f16116j.put(14, "280.302");
        f16116j.put(15, "280.303");
        f16116j.put(18, "250.000");
        f16116j.put(19, "250.400");
        f16116j.put(20, "280.000");
        f16116j.put(21, "250.500");
        f16116j.put(22, "290.500");
        f16117k.put(1, "280.210");
        f16117k.put(-2, "280.249");
        f16117k.put(2, "280.220");
        f16117k.put(3, "280.250");
        f16117k.put(4, "280.241");
        f16117k.put(5, "280.240");
        f16117k.put(6, "280.242");
        f16117k.put(7, "280.243");
        f16117k.put(8, "280.260");
        f16117k.put(9, "280.270");
        f16118l.put(1, "280.261");
        f16118l.put(2, "280.262");
        f16118l.put(3, "280.263");
        f16118l.put(4, "280.264");
        f16120n.put(1, "212.000");
        f16120n.put(2, "212.400");
        f16120n.put(3, "212.401");
        f16120n.put(4, "212.999");
        f16120n.put(5, "214.000");
        f16120n.put(6, "214.200");
        f16120n.put(7, "216.200");
        f16120n.put(8, "216.401");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EventBean c(String str) {
        EventBean eventBean = this.f16123c;
        if (eventBean == null || str == null) {
            return null;
        }
        try {
            EventBean eventBeanM44clone = eventBean.m44clone();
            eventBeanM44clone.setEventCode(str);
            eventBeanM44clone.setEventTime(String.valueOf(System.currentTimeMillis()));
            return eventBeanM44clone;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public EventBean b(String str) {
        try {
            if (this.f16122b.containsKey(str)) {
                EventBean eventBean = (EventBean) this.f16122b.get(str);
                if (eventBean != null) {
                    EventBean eventBeanM44clone = eventBean.m44clone();
                    this.f16122b.put(str, eventBeanM44clone);
                    return eventBeanM44clone;
                }
            } else {
                EventBean eventBean2 = this.f16123c;
                if (eventBean2 != null) {
                    EventBean eventBeanM44clone2 = eventBean2.m44clone();
                    this.f16122b.put(str, eventBeanM44clone2);
                    return eventBeanM44clone2;
                }
            }
        } catch (CloneNotSupportedException unused) {
        }
        EventBean eventBean3 = new EventBean(q1.f15683u, "", "", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), "");
        this.f16122b.put(str, eventBean3);
        return eventBean3;
    }

    public static String a(l lVar) {
        if (lVar instanceof i) {
            return (String) f16110d.get(lVar.a());
        }
        if (lVar instanceof h) {
            return (String) f16111e.get(lVar.a());
        }
        if (lVar instanceof k) {
            return (String) f16112f.get(lVar.a());
        }
        if (lVar instanceof g) {
            return (String) f16113g.get(lVar.a());
        }
        if (lVar instanceof j) {
            return (String) f16119m.get(lVar.a());
        }
        return "0";
    }

    public class l extends Observable {

        /* renamed from: a, reason: collision with root package name */
        private int f16135a = 0;

        /* renamed from: b, reason: collision with root package name */
        private Map f16136b = new HashMap();

        public l() {
        }

        public void a(int i2) {
            if (this.f16135a != i2) {
                this.f16135a = i2;
                EventBean eventBeanC = s1.this.c(s1.a(this));
                setChanged();
                notifyObservers(eventBeanC);
            }
        }

        public int a() {
            return this.f16135a;
        }

        public void a(String str, int i2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Map map = this.f16136b;
            if (((map == null || !map.containsKey(str)) ? 0 : ((Integer) this.f16136b.get(str)).intValue()) != i2 || i2 == 17) {
                this.f16136b.put(str, Integer.valueOf(i2));
                String strA = s1.a(str, this);
                mh.c("BeiZis", "changeStatus channel = " + str + ",eventCode = " + strA);
                EventBean eventBeanA = s1.this.a(str, strA);
                if ("290.300".equalsIgnoreCase(strA)) {
                    mh.c("BeiZis", "eventBean = " + eventBeanA);
                }
                setChanged();
                notifyObservers(eventBeanA);
            }
        }

        public int a(String str) {
            Map map;
            if (TextUtils.isEmpty(str) || (map = this.f16136b) == null || !map.containsKey(str)) {
                return 0;
            }
            return ((Integer) this.f16136b.get(str)).intValue();
        }
    }

    public static String a(String str, l lVar) {
        if (lVar instanceof d) {
            return (String) f16114h.get(lVar.a(str));
        }
        if (lVar instanceof e) {
            return (String) f16115i.get(lVar.a(str));
        }
        if (lVar instanceof f) {
            return (String) f16116j.get(lVar.a(str));
        }
        if (lVar instanceof c) {
            return (String) f16117k.get(lVar.a(str));
        }
        if (lVar instanceof b) {
            return (String) f16118l.get(lVar.a(str));
        }
        if (lVar instanceof a) {
            return (String) f16120n.get(lVar.a(str));
        }
        return "0";
    }

    public void a(EventBean eventBean) {
        this.f16123c = eventBean;
    }

    public void a(String str, EventBean eventBean) {
        if (TextUtils.isEmpty(str) || eventBean == null) {
            return;
        }
        this.f16122b.put(str, eventBean);
    }

    public void a(AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean) {
        Pair pair = new Pair(buyerBean, forwardBean);
        if (buyerBean == null || TextUtils.isEmpty(buyerBean.getBuyerSpaceUuId())) {
            return;
        }
        this.f16121a.put(buyerBean.getBuyerSpaceUuId(), pair);
    }

    private Pair a(String str) {
        if (this.f16121a.containsKey(str)) {
            return (Pair) this.f16121a.get(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EventBean a(String str, String str2) {
        Pair pairA = a(str);
        StringBuilder sb = new StringBuilder();
        sb.append("getChannelEventBean eventCode = ");
        sb.append(str2);
        sb.append(",channelData == null ");
        sb.append(pairA == null);
        mh.c("BeiZis", sb.toString());
        if (pairA != null) {
            AdSpacesBean.BuyerBean buyerBean = (AdSpacesBean.BuyerBean) pairA.first;
            AdSpacesBean.ForwardBean forwardBean = (AdSpacesBean.ForwardBean) pairA.second;
            EventBean eventBeanB = b(str);
            if (eventBeanB != null && buyerBean != null && forwardBean != null) {
                eventBeanB.setEventCode(str2);
                eventBeanB.setEventTime(String.valueOf(System.currentTimeMillis()));
                a(eventBeanB, str, buyerBean, forwardBean);
                this.f16122b.put(str, eventBeanB);
            }
            return eventBeanB;
        }
        mh.b("BeiZis", "getChannelEventBean eventCode = " + str2 + ",but channelData is null !!!");
        return null;
    }

    private static void a(EventBean eventBean, String str, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean) {
        if (eventBean == null) {
            return;
        }
        eventBean.setBuyerId(String.valueOf(d2.c(buyerBean.getId())));
        eventBean.setBuyerAppId(buyerBean.getAppId());
        eventBean.setBuyerSpaceId(buyerBean.getSpaceId());
        eventBean.setChannelFilterSsid(buyerBean.getFilterSsid());
        eventBean.setRenderViewSsid(buyerBean.getRenderViewSsid());
        eventBean.setBeiZiPrice(String.valueOf(buyerBean.getAvgPrice()));
        eventBean.setBeiZiBaseId(d2.b(forwardBean.getBaseId()));
        if (!"BPDI".equalsIgnoreCase(buyerBean.getBidType()) && !"C2S".equalsIgnoreCase(buyerBean.getBidType()) && !"S2S".equalsIgnoreCase(buyerBean.getBidType())) {
            eventBean.setBeiZiSrcType(0);
        } else {
            eventBean.setBeiZiSrcType(1);
            if (buyerBean.getBidPrice() > 0.0d) {
                eventBean.setBidPrice(String.valueOf(buyerBean.getBidPrice()));
            } else {
                eventBean.setBidPrice("0");
            }
        }
        eventBean.setForwardId(forwardBean.getForwardId());
        eventBean.setParentId(forwardBean.getParentForwardId());
        eventBean.setLevel(forwardBean.getLevel());
        eventBean.setBuyerSpaceUuId(forwardBean.getBuyerSpaceUuId());
    }
}
