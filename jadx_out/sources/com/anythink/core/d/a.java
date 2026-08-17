package com.anythink.core.d;

import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.t;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;
import com.anythink.core.common.u.f;
import com.anythink.core.common.v.ad;
import com.anythink.core.common.v.b.c;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: e, reason: collision with root package name */
    private static volatile a f8537e;

    /* renamed from: a, reason: collision with root package name */
    final String f8538a = a.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final String f8539b = "sv_request_id";

    /* renamed from: c, reason: collision with root package name */
    private final String f8540c = "sv_price";

    /* renamed from: d, reason: collision with root package name */
    private Map<String, LinkedList<C0088a>> f8541d = new HashMap();

    /* renamed from: com.anythink.core.d.a$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f8542a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ LinkedList f8543b;

        public AnonymousClass1(String str, LinkedList linkedList) {
            this.f8542a = str;
            this.f8543b = linkedList;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String string;
            if (TextUtils.isEmpty(this.f8542a) || this.f8543b == null) {
                return;
            }
            try {
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.f8543b.iterator();
                while (it.hasNext()) {
                    C0088a c0088a = (C0088a) it.next();
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("sv_request_id", c0088a.f8545a);
                    jSONObject.put("sv_price", c0088a.f8546b);
                    jSONArray.put(jSONObject);
                }
                string = jSONArray.toString();
            } catch (Throwable unused) {
                string = "";
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            ad.b(s.b().g(), t.b.f3067j, this.f8542a, string);
        }
    }

    /* renamed from: com.anythink.core.d.a$a, reason: collision with other inner class name */
    public class C0088a {

        /* renamed from: a, reason: collision with root package name */
        public String f8545a;

        /* renamed from: b, reason: collision with root package name */
        public double f8546b;

        public C0088a(String str, double d2) {
            this.f8545a = str;
            this.f8546b = d2;
        }

        public final String toString() {
            return "ProverbPriceBean{requestId='" + this.f8545a + "', impPrice=" + this.f8546b + '}';
        }
    }

    private a() {
    }

    public static a a() {
        if (f8537e == null) {
            synchronized (b.class) {
                try {
                    if (f8537e == null) {
                        f8537e = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8537e;
    }

    private LinkedList<C0088a> b(String str) {
        try {
            String strC = ad.c(s.b().g(), t.b.f3067j, str, "");
            if (TextUtils.isEmpty(strC)) {
                return null;
            }
            LinkedList<C0088a> linkedList = new LinkedList<>();
            try {
                JSONArray jSONArray = new JSONArray(strC);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null) {
                        linkedList.add(new C0088a(jSONObjectOptJSONObject.optString("sv_request_id"), jSONObjectOptJSONObject.optDouble("sv_price", 0.0d)));
                    }
                }
                return linkedList;
            } catch (Throwable unused) {
                return linkedList;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    private String c(String str) {
        LinkedList<C0088a> linkedListA = a(str);
        if (linkedListA.size() <= 0) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (C0088a c0088a : linkedListA) {
                jSONObject.put(c0088a.f8545a, c0088a.f8546b);
            }
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public final void a(n nVar, by byVar) {
        m mVarB;
        double d2;
        n nVar2;
        m mVar;
        double d3;
        double d4;
        double dM;
        if (nVar == null || byVar == null || (mVarB = o.a(s.b().g()).b(nVar.aQ())) == null || byVar.aH() != 1) {
            return;
        }
        try {
            Map<String, Object> mapI = nVar.i();
            if (mapI == null) {
                d2 = -1.0d;
            } else {
                if (byVar.n() == 2 && mapI.containsKey("value_micros")) {
                    d3 = Double.parseDouble(mapI.get("value_micros").toString());
                    d4 = 1000.0d;
                } else {
                    if (mapI.containsKey("network_ecpm")) {
                        d3 = Double.parseDouble(mapI.get("network_ecpm").toString());
                        d4 = 100.0d;
                        if ("CNY".equalsIgnoreCase(byVar.aC())) {
                            dM = (d3 / 100.0d) * mVarB.M();
                            d2 = dM;
                        }
                    }
                    d2 = -1.0d;
                }
                dM = d3 / d4;
                d2 = dM;
            }
            if (d2 == -1.0d) {
                StringBuilder sb = new StringBuilder();
                sb.append(byVar.n());
                String string = sb.toString();
                String strG = byVar.G();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(byVar.aB());
                String string2 = sb2.toString();
                mVar = mVarB;
                nVar2 = nVar;
                f.a(nVar2, mVar, string, strG, string2, a(byVar.G(), mVarB.u()) <= 0.0d ? 1 : 2);
            } else {
                nVar2 = nVar;
                mVar = mVarB;
            }
            nVar2.d(d2);
            if (d2 > 0.0d) {
                byVar.f(d2);
                a(byVar.G(), nVar2.aR(), d2, mVar.u());
            }
        } catch (Throwable unused) {
        }
    }

    public final void a(n nVar, List<by> list, m mVar) {
        ListIterator<by> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            by next = listIterator.next();
            if (next.aH() == 1) {
                int iU = mVar.u();
                double dA = a(next.G(), iU);
                if (dA > 0.0d) {
                    next.aJ();
                    next.b(dA);
                    next.e(dA);
                    next.c(nVar.v() * dA);
                    next.j("estimated");
                    StringBuilder sb = new StringBuilder();
                    sb.append(next.n());
                    f.a(nVar, mVar, sb.toString(), next.G(), String.valueOf(dA), String.valueOf(iU), c(next.G()));
                }
            }
        }
    }

    private synchronized void a(String str, String str2, double d2, int i2) {
        try {
            LinkedList<C0088a> linkedListA = a(str);
            if (linkedListA == null) {
                return;
            }
            if (i2 == 0) {
                linkedListA.clear();
            } else {
                if (linkedListA.size() >= i2 - 1) {
                    int size = (linkedListA.size() - i2) + 1;
                    for (int i3 = 0; i3 < size; i3++) {
                        linkedListA.removeLast();
                    }
                }
                if (linkedListA.size() < i2) {
                    linkedListA.addFirst(new C0088a(str2, d2));
                }
            }
            c.a().d(new d(e.cf, new AnonymousClass1(str, linkedListA)));
        } catch (Throwable th) {
            throw th;
        }
    }

    private double a(String str, int i2) {
        LinkedList<C0088a> linkedListA = a(str);
        if (linkedListA == null || linkedListA.size() == 0 || i2 == 0) {
            return -1.0d;
        }
        Iterator<C0088a> it = linkedListA.subList(0, Math.min(i2, linkedListA.size())).iterator();
        double d2 = 0.0d;
        while (it.hasNext()) {
            d2 += it.next().f8546b;
        }
        return d2 / r5.size();
    }

    private synchronized LinkedList<C0088a> a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            LinkedList<C0088a> linkedListB = this.f8541d.get(str);
            if (linkedListB == null) {
                linkedListB = b(str);
                if (linkedListB == null) {
                    linkedListB = new LinkedList<>();
                }
                this.f8541d.put(str, linkedListB);
            }
            return linkedListB;
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a(String str, LinkedList<C0088a> linkedList) {
        c.a().d(new d(e.cf, new AnonymousClass1(str, linkedList)));
    }
}
