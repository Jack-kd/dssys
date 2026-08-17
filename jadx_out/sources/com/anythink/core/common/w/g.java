package com.anythink.core.common.w;

import android.text.TextUtils;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATRequestingInfo;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.ac;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.ay;
import com.anythink.core.common.h.bs;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.cc;
import com.anythink.core.common.h.ce;
import com.anythink.core.common.h.n;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.k;
import com.anythink.core.common.v.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8483a = com.anythink.core.common.g.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    final int f8484b;

    /* renamed from: c, reason: collision with root package name */
    int f8485c;

    /* renamed from: d, reason: collision with root package name */
    long f8486d;

    /* renamed from: p, reason: collision with root package name */
    cc f8498p;

    /* renamed from: q, reason: collision with root package name */
    bs f8499q;

    /* renamed from: r, reason: collision with root package name */
    i f8500r;

    /* renamed from: s, reason: collision with root package name */
    ac f8501s;

    /* renamed from: t, reason: collision with root package name */
    ac f8502t;

    /* renamed from: u, reason: collision with root package name */
    double f8503u;

    /* renamed from: v, reason: collision with root package name */
    ce f8504v;

    /* renamed from: w, reason: collision with root package name */
    private List<by> f8505w;

    /* renamed from: x, reason: collision with root package name */
    private Double f8506x;

    /* renamed from: l, reason: collision with root package name */
    volatile int f8494l = 0;

    /* renamed from: m, reason: collision with root package name */
    volatile int f8495m = 0;

    /* renamed from: n, reason: collision with root package name */
    volatile int f8496n = 0;

    /* renamed from: o, reason: collision with root package name */
    volatile int f8497o = 0;

    /* renamed from: e, reason: collision with root package name */
    List<by> f8487e = Collections.synchronizedList(new ArrayList(5));

    /* renamed from: f, reason: collision with root package name */
    List<by> f8488f = Collections.synchronizedList(new ArrayList(5));

    /* renamed from: g, reason: collision with root package name */
    List<by> f8489g = Collections.synchronizedList(new ArrayList(2));

    /* renamed from: h, reason: collision with root package name */
    List<f> f8490h = Collections.synchronizedList(new ArrayList(2));

    /* renamed from: k, reason: collision with root package name */
    List<by> f8493k = Collections.synchronizedList(new ArrayList(2));

    /* renamed from: i, reason: collision with root package name */
    List<by> f8491i = Collections.synchronizedList(new ArrayList(2));

    /* renamed from: j, reason: collision with root package name */
    List<by> f8492j = Collections.synchronizedList(new ArrayList(2));

    public g(h hVar, j jVar) {
        this.f8485c = 1;
        this.f8487e.addAll(hVar.f8511d);
        this.f8491i.addAll(hVar.f8513f);
        this.f8492j.addAll(hVar.f8514g);
        this.f8503u = hVar.f8515h;
        this.f8493k.addAll(hVar.f8523p);
        this.f8500r = hVar.f8519l;
        this.f8501s = hVar.f8521n;
        this.f8502t = hVar.f8522o;
        ce ceVar = hVar.f8510c;
        this.f8504v = ceVar;
        this.f8484b = ceVar.g();
        this.f8485c = hVar.f8510c.e();
        this.f8486d = hVar.f8510c.i();
        List<by> list = hVar.f8512e;
        if (list != null) {
            this.f8489g.addAll(list);
        }
        this.f8505w = Collections.synchronizedList(new ArrayList(3));
        this.f8498p = hVar.f8518k;
        this.f8499q = hVar.f8520m;
        a(hVar, jVar);
    }

    private by A() {
        by byVar;
        f fVar;
        synchronized (this.f8490h) {
            try {
                byVar = (this.f8490h.size() <= 0 || (fVar = this.f8490h.get(0)) == null) ? null : fVar.f8481a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return byVar;
    }

    private int B() {
        return this.f8490h.size();
    }

    private int C() {
        return this.f8504v.f();
    }

    private double D() {
        return c(false);
    }

    private by E() {
        return a(false);
    }

    private double F() {
        return c(true);
    }

    private by G() {
        return a(true);
    }

    private double H() {
        return Math.max(o.a(x()), o.a(A()));
    }

    private void a(h hVar, j jVar) {
        for (by byVar : hVar.f8511d) {
            if (byVar.w()) {
                if (jVar != null) {
                    jVar.f8529d = true;
                }
                e(byVar);
            }
        }
    }

    private List<by> w() {
        return this.f8487e;
    }

    private by x() {
        if (this.f8487e.size() > 0) {
            return this.f8487e.get(0);
        }
        return null;
    }

    private List<by> y() {
        return this.f8488f;
    }

    private List<by> z() {
        return this.f8489g;
    }

    public final ac b() {
        return this.f8501s;
    }

    public final int c() {
        return this.f8487e.size();
    }

    public final int d() {
        return this.f8488f.size();
    }

    public final int e() {
        return this.f8489g.size();
    }

    public final by f() {
        return this.f8489g.remove(0);
    }

    public final boolean g() {
        return this.f8489g.size() == 0 && this.f8487e.size() == 0;
    }

    public final void h() {
        this.f8489g.clear();
    }

    public final List<f> i() {
        return this.f8490h;
    }

    public final boolean j() {
        List<by> list = this.f8491i;
        if (list == null && this.f8492j == null) {
            return true;
        }
        return list.size() == 0 && this.f8492j.size() == 0;
    }

    public final List<by> k() {
        ArrayList arrayList = new ArrayList(3);
        arrayList.addAll(this.f8491i);
        arrayList.addAll(this.f8492j);
        this.f8491i.clear();
        this.f8492j.clear();
        return arrayList;
    }

    public final int l() {
        return this.f8494l;
    }

    public final int m() {
        return this.f8495m;
    }

    public final int n() {
        return this.f8496n;
    }

    public final cc o() {
        return this.f8498p;
    }

    public final bs p() {
        return this.f8499q;
    }

    public final ac q() {
        return this.f8502t;
    }

    public final List<by> r() {
        List<by> arrayList;
        int i2 = this.f8485c;
        if (i2 == 1 || i2 == 3) {
            arrayList = new ArrayList<>();
            int iMin = Math.min(this.f8504v.f(), this.f8487e.size());
            for (int i3 = 0; i3 < iMin; i3++) {
                arrayList.add(this.f8487e.get(i3));
            }
        } else {
            arrayList = i2 == 2 ? b(1) : null;
        }
        if (arrayList != null && arrayList.size() > 0) {
            this.f8487e.removeAll(arrayList);
        }
        return arrayList;
    }

    public final boolean s() {
        return this.f8487e.size() == 0 && this.f8489g.size() == 0 && this.f8490h.size() == 0 && this.f8488f.size() == 0;
    }

    public final boolean t() {
        return this.f8495m < this.f8504v.f();
    }

    public final by u() {
        by byVarX = x();
        by byVarA = A();
        return k.a(byVarX, byVarA) < 0 ? byVarX : byVarA;
    }

    public final Double v() {
        return this.f8506x;
    }

    public static void i(by byVar) {
        ad adVarY;
        if (!l(byVar) || byVar.aW() == 2 || (adVarY = byVar.Y()) == null) {
            return;
        }
        com.anythink.core.c.d.c.a(adVarY, byVar, 3);
    }

    private static boolean l(by byVar) {
        return byVar != null && byVar.bd();
    }

    public final void b(by byVar) {
        this.f8488f.remove(byVar);
    }

    public final void c(by byVar) {
        this.f8493k.remove(byVar);
    }

    public final void d(by byVar) {
        i iVar = this.f8500r;
        if (iVar != null) {
            iVar.a(byVar);
        }
    }

    public final void e(by byVar) {
        ad adVarY;
        if (byVar == null || !byVar.w() || (adVarY = byVar.Y()) == null) {
            return;
        }
        adVarY.a(this.f8501s);
    }

    public final void f(by byVar) {
        ad adVarZ;
        if (byVar == null || !byVar.w() || (adVarZ = byVar.Z()) == null) {
            return;
        }
        adVarZ.a(this.f8501s);
    }

    public final boolean g(by byVar) {
        ac acVar = this.f8501s;
        boolean zA = false;
        if (acVar == null || byVar == null) {
            return false;
        }
        by byVarB = acVar.b();
        boolean zA2 = a(byVar, byVarB);
        if (zA2) {
            this.f8501s.a(byVar);
        }
        if (byVar.w() && a(byVar, this.f8501s.a())) {
            this.f8501s.b(byVar);
        }
        if (byVarB != null) {
            if (zA2) {
                this.f8501s.c(byVarB);
            } else {
                zA = a(byVar, this.f8501s.c());
            }
        }
        if (zA) {
            this.f8501s.c(byVar);
        }
        return zA2;
    }

    public final void h(by byVar) {
        synchronized (this.f8505w) {
            try {
                if (this.f8505w.size() == 0) {
                    this.f8505w.add(byVar);
                } else {
                    double dA = o.a(byVar);
                    int i2 = 0;
                    while (true) {
                        if (i2 >= this.f8505w.size()) {
                            break;
                        }
                        if (dA > o.a(this.f8505w.get(i2))) {
                            this.f8505w.add(i2, byVar);
                            break;
                        } else {
                            if (i2 == this.f8505w.size() - 1) {
                                this.f8505w.add(byVar);
                                break;
                            }
                            i2++;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String c(List<by> list) {
        String str = "";
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (i2 > 0) {
                str = str + ",";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(list.get(i2).n());
            str = str + sb.toString();
        }
        return str;
    }

    public static double j(by byVar) {
        ad adVarY;
        double dA = o.a(byVar);
        return (byVar.av() && dA == 10000.0d && (adVarY = byVar.Y()) != null) ? adVarY.f3682o : dA;
    }

    public final void b(List<by> list) {
        this.f8493k.addAll(list);
    }

    public static void d(by byVar, n nVar) throws Throwable {
        if (l(byVar)) {
            n nVarAh = nVar.ah();
            ad adVarY = byVar.Y();
            if (adVarY != null) {
                com.anythink.core.c.d.c.a(adVarY, new ay(5, byVar, nVarAh), true, 24);
            }
        }
    }

    public final List<by> b(int i2) {
        List<by> list;
        int iMin;
        if (i2 != 2) {
            list = this.f8487e;
        } else {
            list = this.f8489g;
        }
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            int i3 = 0;
            by byVar = list.get(0);
            if (i2 == 2) {
                arrayList.add(byVar);
            } else {
                by byVarA = a(true);
                int i4 = this.f8485c;
                if (i4 == 1) {
                    int iMin2 = Math.min(this.f8504v.f() - this.f8495m, list.size());
                    if (iMin2 > 0) {
                        while (i3 < iMin2) {
                            by byVar2 = list.get(i3);
                            if (k.a(byVar2, byVarA) >= 0) {
                                break;
                            }
                            arrayList.add(byVar2);
                            i3++;
                        }
                    }
                } else if (i4 == 2) {
                    boolean z2 = k.a(byVar, byVarA) < 0;
                    if (this.f8497o == 0 && z2) {
                        double dA = o.a(byVar);
                        int size = list.size();
                        while (i3 < size) {
                            by byVar3 = list.get(i3);
                            if (o.a(byVar3) == dA) {
                                arrayList.add(byVar3);
                            }
                            i3++;
                        }
                        this.f8497o = arrayList.size();
                    }
                } else if (i4 == 3 && this.f8495m == 0 && (iMin = Math.min(this.f8504v.f(), list.size())) > 0) {
                    while (i3 < iMin) {
                        by byVar4 = list.get(i3);
                        if (k.a(byVar4, byVarA) >= 0) {
                            break;
                        }
                        arrayList.add(byVar4);
                        i3++;
                    }
                }
            }
            if (arrayList.size() > 0) {
                list.removeAll(arrayList);
            }
        }
        return arrayList;
    }

    public final i a() {
        return this.f8500r;
    }

    public final ATRequestingInfo e(by byVar, n nVar) {
        List listSynchronizedList;
        List listSynchronizedList2;
        synchronized (this.f8488f) {
            try {
                listSynchronizedList = null;
                for (by byVar2 : this.f8488f) {
                    if (k.a(byVar2, byVar) < 0) {
                        n nVarAh = nVar.ah();
                        ah.a(nVarAh, byVar2, 0, false);
                        com.anythink.core.common.d.k kVarA = com.anythink.core.common.d.k.a(nVarAh, (ATBaseAdAdapter) null, 2);
                        if (kVarA != null) {
                            if (listSynchronizedList == null) {
                                listSynchronizedList = Collections.synchronizedList(new ArrayList());
                            }
                            listSynchronizedList.add(kVarA);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (listSynchronizedList != null && listSynchronizedList.size() > 0) {
            Collections.sort(listSynchronizedList, new Comparator<ATAdInfo>() { // from class: com.anythink.core.common.w.g.1
                private static int a(ATAdInfo aTAdInfo, ATAdInfo aTAdInfo2) {
                    if (aTAdInfo.getEcpm() > aTAdInfo2.getEcpm()) {
                        return -1;
                    }
                    return aTAdInfo.getEcpm() < aTAdInfo2.getEcpm() ? 1 : 0;
                }

                @Override // java.util.Comparator
                public final /* synthetic */ int compare(ATAdInfo aTAdInfo, ATAdInfo aTAdInfo2) {
                    ATAdInfo aTAdInfo3 = aTAdInfo;
                    ATAdInfo aTAdInfo4 = aTAdInfo2;
                    if (aTAdInfo3.getEcpm() > aTAdInfo4.getEcpm()) {
                        return -1;
                    }
                    return aTAdInfo3.getEcpm() < aTAdInfo4.getEcpm() ? 1 : 0;
                }
            });
        }
        if (this.f8493k.size() > 0) {
            synchronized (this.f8493k) {
                try {
                    listSynchronizedList2 = null;
                    for (by byVar3 : this.f8493k) {
                        n nVarAh2 = nVar.ah();
                        ah.a(nVarAh2, byVar3, 0, false);
                        ah.a(nVarAh2);
                        com.anythink.core.common.d.k kVarA2 = com.anythink.core.common.d.k.a(nVarAh2, (ATBaseAdAdapter) null);
                        if (kVarA2 != null) {
                            if (listSynchronizedList2 == null) {
                                listSynchronizedList2 = Collections.synchronizedList(new ArrayList());
                            }
                            listSynchronizedList2.add(kVarA2);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else {
            listSynchronizedList2 = null;
        }
        if (listSynchronizedList == null && listSynchronizedList2 == null) {
            return null;
        }
        return new com.anythink.core.common.h.b(listSynchronizedList, listSynchronizedList2);
    }

    private boolean k(by byVar) {
        return a(byVar, true);
    }

    public final void a(List<by> list) {
        this.f8488f.addAll(list);
    }

    private double c(boolean z2) {
        synchronized (this.f8505w) {
            try {
                int size = this.f8505w.size();
                if (size == 0) {
                    return 0.0d;
                }
                int i2 = this.f8484b - 1;
                int i3 = size - 1;
                if (z2 && i3 < i2) {
                    return 0.0d;
                }
                return o.a(this.f8505w.get(Math.min(i2, i3)));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(by byVar) {
        this.f8488f.add(byVar);
    }

    public final void a(by byVar, int i2) {
        synchronized (this.f8490h) {
            try {
                Iterator<f> it = this.f8490h.iterator();
                int i3 = 0;
                while (it.hasNext() && k.a(it.next().f8481a, byVar) < 0) {
                    i3++;
                }
                this.f8490h.add(i3, new f(byVar, i2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(int i2, int i3) {
        this.f8494l += i2;
        if (i3 != 2) {
            this.f8495m += i2;
        } else {
            this.f8496n += i2;
        }
    }

    public static void c(by byVar, n nVar) throws Throwable {
        if (byVar != null && byVar.w() && byVar.W() == 2) {
            a(byVar, nVar.ah(), true, 22);
        }
    }

    public final void a(int i2) {
        if (this.f8485c == 2 && i2 == 1) {
            this.f8497o--;
        }
    }

    public static void a(by byVar, n nVar) throws Throwable {
        ad adVarZ;
        if (byVar == null || !byVar.w() || (adVarZ = byVar.Z()) == null) {
            return;
        }
        String errorMsg = adVarZ.getErrorMsg();
        if (TextUtils.isEmpty(errorMsg) || !errorMsg.contains("200000")) {
            return;
        }
        com.anythink.core.c.d.c.a(adVarZ, new ay(5, byVar, nVar), true, 31);
    }

    private static void a(ad adVar, by byVar, n nVar) throws Throwable {
        ay ayVar = new ay(6, byVar, nVar, adVar.getSortPrice());
        a(ayVar, byVar);
        com.anythink.core.c.d.c.a(adVar, ayVar, true, 23);
    }

    private static void a(ay ayVar, by byVar) {
        if (byVar != null) {
            int iBE = byVar.bE();
            if (iBE == 1) {
                ayVar.d(byVar.az());
            } else if (iBE == 2) {
                ayVar.b(byVar.bG());
                ayVar.d(byVar.bF());
            }
        }
    }

    private static boolean a(by byVar, by byVar2) {
        if (byVar2 != null && k.a(byVar, byVar2) >= 0) {
            return k.a(byVar, byVar2) == 0 && byVar.aF() < byVar2.aF();
        }
        return true;
    }

    public static void b(by byVar, n nVar) {
        ad adVarZ;
        if (byVar != null) {
            try {
                if (!byVar.w() || (adVarZ = byVar.Z()) == null || nVar == null) {
                    return;
                }
                if (byVar.B() == -11) {
                    ay ayVar = new ay(6, byVar, nVar, adVarZ.getSortPrice());
                    a(ayVar, byVar);
                    com.anythink.core.c.d.c.a(adVarZ, ayVar, true, 23);
                } else if (byVar.B() == -13) {
                    ay ayVar2 = new ay(9, byVar, nVar, adVarZ.getSortPrice());
                    a(ayVar2, byVar);
                    com.anythink.core.c.d.c.a(adVarZ, ayVar2, true, 33);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final by a(boolean z2) {
        synchronized (this.f8505w) {
            try {
                int size = this.f8505w.size();
                if (size == 0) {
                    return null;
                }
                int i2 = this.f8484b - 1;
                int i3 = size - 1;
                if (z2 && i3 < i2) {
                    return null;
                }
                by byVar = this.f8505w.get(Math.min(i2, i3));
                o.a(byVar);
                return byVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void b(ad adVar, by byVar, n nVar) throws Throwable {
        ay ayVar = new ay(9, byVar, nVar, adVar.getSortPrice());
        a(ayVar, byVar);
        com.anythink.core.c.d.c.a(adVar, ayVar, true, 33);
    }

    public final void a(n nVar) throws Throwable {
        ArrayList arrayList = new ArrayList(5);
        synchronized (this.f8505w) {
            a(arrayList, this.f8505w);
        }
        synchronized (this.f8488f) {
            a(arrayList, this.f8488f);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            a((by) obj, nVar, false, 21);
        }
    }

    public final synchronized void b(by byVar, int i2) {
        List<by> list;
        try {
            if (i2 != 2) {
                list = this.f8487e;
            } else {
                list = this.f8489g;
            }
            synchronized (list) {
                o.a(list, byVar);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final by b(boolean z2) {
        by byVarB;
        if (!z2 || (byVarB = this.f8501s.b()) == null || !byVarB.w() || byVarB.aD() == 1) {
            return null;
        }
        synchronized (this.f8488f) {
            Iterator<by> it = this.f8488f.iterator();
            while (it.hasNext()) {
                if (k.a(it.next(), byVarB) < 0) {
                    return null;
                }
            }
            synchronized (this.f8490h) {
                Iterator<f> it2 = this.f8490h.iterator();
                while (it2.hasNext()) {
                    if (k.a(it2.next().f8481a, byVarB) < 0) {
                        return null;
                    }
                }
                return byVarB;
            }
        }
    }

    private static void a(by byVar, n nVar, boolean z2, int i2) throws Throwable {
        ad adVarY = byVar.Y();
        if (adVarY != null) {
            com.anythink.core.c.d.c.a(adVarY, new ay(2, byVar, nVar), z2, i2);
        }
    }

    private void a(List<by> list, List<by> list2) {
        int iAA;
        int size = list2.size();
        int size2 = this.f8505w.size();
        for (int i2 = 0; i2 < size; i2++) {
            by byVar = list2.get(i2);
            if (byVar.w() && (iAA = byVar.aA()) > 0 && iAA <= size2 && k.a(byVar, this.f8505w.get(iAA - 1)) > 0) {
                list.add(byVar);
            }
        }
    }

    public final boolean a(by byVar, boolean z2) {
        double dA;
        if (byVar.bz()) {
            return true;
        }
        double dA2 = o.a(byVar);
        double dC = c(true);
        synchronized (this.f8488f) {
            try {
                Iterator<by> it = this.f8488f.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        dA = 0.0d;
                        break;
                    }
                    by next = it.next();
                    dA = o.a(next);
                    if (z2) {
                        if (next.w() && dA > o.a(byVar)) {
                            break;
                        }
                    } else if (dA > o.a(byVar)) {
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return dA2 > Math.max(dC, dA);
    }

    public final void b(n nVar) {
        by byVar;
        synchronized (this.f8487e) {
            try {
                for (by byVar2 : this.f8487e) {
                    if (byVar2 != null && byVar2.w()) {
                        c(byVar2, nVar);
                    }
                }
                this.f8487e.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f8490h) {
            try {
                for (f fVar : this.f8490h) {
                    if (fVar != null && (byVar = fVar.f8481a) != null && byVar.w()) {
                        c(fVar.f8481a, nVar);
                    }
                }
                this.f8490h.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (this.f8489g) {
            this.f8489g.clear();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.anythink.core.common.h.by r4, com.anythink.core.common.w.j r5) {
        /*
            int r0 = r4.al()
            r1 = 0
            r2 = 1
            if (r0 != r2) goto La
            r0 = r2
            goto Lb
        La:
            r0 = r1
        Lb:
            if (r0 == 0) goto L2c
            int r4 = r4.y()
            if (r4 == r2) goto L25
            r3 = 3
            if (r4 == r3) goto L25
            r3 = 6
            if (r4 == r3) goto L1d
            r3 = 7
            if (r4 == r3) goto L25
            goto L2c
        L1d:
            boolean r4 = r5.f8532g
            if (r4 == 0) goto L22
            return r1
        L22:
            r5.f8532g = r2
            return r0
        L25:
            boolean r4 = r5.f8531f
            if (r4 == 0) goto L2a
            return r1
        L2a:
            r5.f8531f = r2
        L2c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.w.g.a(com.anythink.core.common.h.by, com.anythink.core.common.w.j):boolean");
    }

    public static void a(com.anythink.core.common.f fVar, String str, String str2, by byVar, by byVar2) {
        cc.a aVar;
        cc.a aVar2 = null;
        if (byVar != null) {
            cc.a aVar3 = new cc.a(byVar, byVar.Y());
            aVar = null;
            aVar2 = aVar3;
        } else {
            aVar = byVar2 != null ? new cc.a(byVar2, byVar2.Y()) : null;
        }
        if (fVar == null || fVar.g() == null) {
            return;
        }
        fVar.g().a(str, str2, aVar2, aVar);
    }

    public static boolean a(String str, by byVar, n nVar, com.anythink.core.common.f fVar) {
        boolean z2 = false;
        try {
            if (byVar.w()) {
                ad adVarY = byVar.Y();
                if (fVar != null && fVar.f() != null) {
                    fVar.f().a(str, adVarY);
                }
                if (byVar.au()) {
                    com.anythink.core.common.a.a.a().a(s.b().g(), adVarY.token);
                }
                if (adVarY != null && adVarY.a()) {
                    z2 = true;
                }
                if (z2 && adVarY != null) {
                    com.anythink.core.c.d.c.a(adVarY, new ay(1, byVar, nVar), true, 25);
                }
            }
        } catch (Throwable unused) {
        }
        return z2;
    }

    public final long a(boolean z2, long j2) {
        if (this.f8489g.size() <= 0) {
            return -1L;
        }
        if (this.f8487e.size() == 0 && z2) {
            return 0L;
        }
        return j2;
    }

    public static by a(Map<String, e> map) {
        by byVar;
        Iterator<Map.Entry<String, e>> it = map.entrySet().iterator();
        by byVar2 = null;
        if (it != null) {
            while (it.hasNext()) {
                e value = it.next().getValue();
                if (value != null && !value.f8450i && (byVar = value.f8444c) != null && (byVar2 == null || k.a(byVar, byVar2) < 0)) {
                    byVar2 = byVar;
                }
            }
        }
        return byVar2;
    }

    public final boolean a(boolean z2, by byVar) {
        by byVar2;
        if (!z2) {
            return false;
        }
        synchronized (this.f8488f) {
            try {
                byVar2 = null;
                for (by byVar3 : this.f8488f) {
                    if (k.a(byVar3, byVar2) < 0) {
                        byVar2 = byVar3;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        by byVarU = u();
        if (k.a(byVar2, byVarU) >= 0) {
            byVar2 = byVarU;
        }
        return k.a(byVar, byVar2) <= 0;
    }

    public final Map<String, Double> a(List<by> list, by byVar) {
        HashMap map = new HashMap();
        double d2 = this.f8503u;
        double dA = o.a(byVar);
        if (dA > d2) {
            d2 = dA;
        }
        if (list != null) {
            for (by byVar2 : list) {
                double dAz = byVar2.az();
                String strG = byVar2.G();
                if (dAz <= d2) {
                    dAz = d2;
                }
                map.put(strG, Double.valueOf(dAz));
            }
        }
        return map;
    }

    public final void a(Double d2) {
        this.f8506x = d2;
    }
}
