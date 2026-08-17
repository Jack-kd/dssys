package com.anythink.core.c;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.anythink.core.api.ATAdRealTimeFilter;
import com.anythink.core.api.ATCustomRange;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h;
import com.anythink.core.common.h.a;
import com.anythink.core.common.h.ac;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.am;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.ay;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.bz;
import com.anythink.core.common.h.n;
import com.anythink.core.common.j;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.ai;
import com.anythink.core.common.v.k;
import com.anythink.core.common.v.o;
import com.anythink.core.common.v.p;
import com.anythink.core.common.w.a.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public class b extends com.anythink.core.common.v.b implements j.b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1936a = "b";

    /* renamed from: b, reason: collision with root package name */
    public static final String f1937b = "ATAnchorWF";

    /* renamed from: e, reason: collision with root package name */
    protected com.anythink.core.common.h f1940e;

    /* renamed from: f, reason: collision with root package name */
    protected long f1941f;

    /* renamed from: h, reason: collision with root package name */
    private String f1943h;

    /* renamed from: i, reason: collision with root package name */
    private j.a f1944i;

    /* renamed from: j, reason: collision with root package name */
    private String f1945j;

    /* renamed from: k, reason: collision with root package name */
    private long f1946k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f1947l;

    /* renamed from: m, reason: collision with root package name */
    private final com.anythink.core.common.h.a f1948m;

    /* renamed from: n, reason: collision with root package name */
    private Map<Integer, d> f1949n;

    /* renamed from: o, reason: collision with root package name */
    private long f1950o;

    /* renamed from: p, reason: collision with root package name */
    private long f1951p;

    /* renamed from: q, reason: collision with root package name */
    private List<by> f1952q;

    /* renamed from: s, reason: collision with root package name */
    private com.anythink.core.common.v.b.d f1954s;

    /* renamed from: t, reason: collision with root package name */
    private final com.anythink.core.e.f f1955t;

    /* renamed from: u, reason: collision with root package name */
    private volatile boolean f1956u;

    /* renamed from: w, reason: collision with root package name */
    private List<by> f1958w;

    /* renamed from: c, reason: collision with root package name */
    Map<String, n> f1938c = new ConcurrentHashMap(3);

    /* renamed from: d, reason: collision with root package name */
    com.anythink.core.common.v.b.d f1939d = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dc, new Runnable() { // from class: com.anythink.core.c.b.1
        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ae, new Runnable() { // from class: com.anythink.core.c.b.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.h();
                }
            }));
        }
    });

    /* renamed from: r, reason: collision with root package name */
    private boolean f1953r = false;

    /* renamed from: v, reason: collision with root package name */
    private final List<by> f1957v = new CopyOnWriteArrayList();

    /* renamed from: g, reason: collision with root package name */
    h.b f1942g = new h.b() { // from class: com.anythink.core.c.b.4
        @Override // com.anythink.core.common.h.b
        public final void a(d dVar, int i2) {
            b.a(b.this, dVar, i2);
        }
    };

    /* renamed from: com.anythink.core.c.b$5, reason: invalid class name */
    public class AnonymousClass5 implements com.anythink.core.c.b.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f1966a;

        public AnonymousClass5(int i2) {
            this.f1966a = i2;
        }

        @Override // com.anythink.core.c.b.b
        public final void a(by byVar, ATBaseAdAdapter aTBaseAdAdapter) {
            b.a(b.this, byVar, aTBaseAdAdapter);
        }

        @Override // com.anythink.core.c.b.b
        public final void a(List<by> list, List<by> list2) {
            b.this.b(Integer.valueOf(this.f1966a), list, list2);
        }
    }

    /* renamed from: com.anythink.core.c.b$7, reason: invalid class name */
    public class AnonymousClass7 implements Runnable {
        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.af, new Runnable() { // from class: com.anythink.core.c.b.7.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.i();
                }
            }));
        }
    }

    /* renamed from: com.anythink.core.c.b$9, reason: invalid class name */
    public class AnonymousClass9 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f1972a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ by f1973b;

        public AnonymousClass9(n nVar, by byVar) {
            this.f1972a = nVar;
            this.f1973b = byVar;
        }

        @Override // java.lang.Runnable
        public final void run() throws NumberFormatException {
            if (b.this.f1948m.f3569c.f3812d != null) {
                n nVar = this.f1972a;
                if (nVar != null) {
                    ah.a(nVar, this.f1973b, 0, false);
                    b.this.f1948m.f3569c.f3812d.onAdSourceBiddingFilled(this.f1972a);
                }
                b.this.f1938c.remove(this.f1973b.G());
            }
        }
    }

    public b(com.anythink.core.common.h.a aVar) {
        this.f1948m = aVar;
        this.f1943h = aVar.f3571e;
        this.f1945j = aVar.f3570d;
        this.f1946k = aVar.f3573g;
        this.f1940e = aVar.f3562F;
        this.f1955t = aVar.f3567K;
        List<by> list = aVar.f3576j;
        int size = list.size();
        List<by> listA = aVar.f3591y.a();
        if (listA.size() > 0) {
            aVar.f3592z = listA.size() + size;
        } else {
            aVar.f3592z = size;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = null;
        ArrayList arrayList4 = null;
        ArrayList arrayList5 = null;
        for (int i2 = 0; i2 < size; i2++) {
            by byVar = list.get(i2);
            if (byVar.y() == 1 || byVar.y() == 3) {
                if (this.f1948m.f3561E == 1 && byVar.y() == 3) {
                    arrayList3 = arrayList3 == null ? new ArrayList() : arrayList3;
                    arrayList3.add(byVar);
                } else {
                    arrayList.add(byVar);
                }
            } else if (byVar.y() == 2) {
                arrayList4 = arrayList4 == null ? new ArrayList(size) : arrayList4;
                arrayList4.add(byVar);
            } else if (byVar.y() == 6) {
                arrayList5 = arrayList5 == null ? new ArrayList(size) : arrayList5;
                arrayList5.add(byVar);
            } else if (byVar.y() == 7) {
                arrayList2.add(byVar);
            }
        }
        this.f1949n = new HashMap(5);
        if (arrayList.size() > 0 || arrayList2.size() > 0) {
            this.f1949n.put(1, new c(aVar.a(arrayList, arrayList2), list));
        }
        if (arrayList3 != null && arrayList3.size() > 0) {
            this.f1949n.put(3, new c(aVar.a(arrayList3, null), list));
        }
        if (arrayList4 != null && arrayList4.size() > 0) {
            this.f1949n.put(2, new a(aVar.a(arrayList4)));
        }
        if (arrayList5 == null || arrayList5.size() <= 0) {
            return;
        }
        this.f1949n.put(6, new g(aVar.b(arrayList5)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void h() {
        try {
            j.a aVar = this.f1944i;
            if (aVar != null) {
                aVar.a(this.f1945j);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i() {
        try {
            if (this.f1953r) {
                this.f1953r = false;
                List<by> list = this.f1952q;
                if (list != null && list.size() != 0) {
                    ArrayList arrayList = new ArrayList(this.f1952q);
                    this.f1952q.clear();
                    j.a aVar = this.f1944i;
                    if (aVar != null) {
                        aVar.a(this.f1945j, arrayList, new ArrayList(1), false);
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private synchronized void j() {
        ac acVar;
        j.a aVar;
        try {
            if (this.f1956u) {
                this.f1956u = true;
                super.g();
                return;
            }
            if (this.f1955t == null) {
                this.f1956u = true;
                this.f1956u = true;
                super.g();
                return;
            }
            ArrayList arrayList = new ArrayList();
            List<Integer> listA = this.f1955t.a();
            by byVarA = null;
            if (!this.f1957v.isEmpty()) {
                for (by byVar : this.f1957v) {
                    if (byVar != null) {
                        int iN = byVar.n();
                        double dAB = byVar.aB();
                        if (dAB > 0.0d) {
                            if (((listA == null || listA.isEmpty()) ? false : listA.contains(-1) ? true : listA.contains(Integer.valueOf(iN))) && (byVarA == null || dAB > byVarA.aB())) {
                                byVarA = byVar;
                            }
                        }
                    }
                }
            } else if (this.f1955t.e() == 2 && (acVar = this.f1948m.f3590x) != null) {
                byVarA = acVar.a();
            }
            double dAB2 = byVarA != null ? byVarA.aB() * this.f1955t.d() : 0.0d;
            if (dAB2 > 0.0d && !this.f1957v.isEmpty()) {
                for (by byVar2 : this.f1957v) {
                    if (byVar2 != null && byVar2.aB() < dAB2) {
                        arrayList.add(byVar2);
                    }
                }
            }
            if (dAB2 > 0.0d && (aVar = this.f1944i) != null) {
                aVar.a(Double.valueOf(dAB2));
            }
            this.f1956u = true;
            super.g();
        } catch (Throwable unused) {
            this.f1956u = true;
            super.g();
        }
    }

    private void k() {
        boolean z2 = this.f1948m.f3560D > 0;
        this.f1953r = z2;
        if (z2) {
            this.f1952q = Collections.synchronizedList(new ArrayList());
            this.f1954s = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dd, new AnonymousClass7());
            com.anythink.core.common.t.c.a().a(this.f1954s, this.f1948m.f3560D);
        }
    }

    @Override // com.anythink.core.common.v.b
    public final void e() {
        b(true);
        j();
        com.anythink.core.common.h hVar = this.f1940e;
        if (hVar != null) {
            hVar.b();
        }
    }

    @Override // com.anythink.core.common.v.b
    public final void f() {
        j();
    }

    private void b(boolean z2) {
        ArrayList arrayList;
        j.a aVar;
        try {
            ArrayList arrayList2 = new ArrayList();
            List<by> list = this.f1958w;
            if (list == null || list.isEmpty()) {
                arrayList = null;
            } else {
                synchronized (this) {
                    arrayList = new ArrayList(this.f1958w);
                    this.f1958w.clear();
                }
                if (arrayList.size() > 1) {
                    Collections.sort(arrayList, new Comparator<by>() { // from class: com.anythink.core.c.b.2
                        private static int a(by byVar, by byVar2) {
                            return k.a(byVar, byVar2);
                        }

                        @Override // java.util.Comparator
                        public final /* synthetic */ int compare(by byVar, by byVar2) {
                            return k.a(byVar, byVar2);
                        }
                    });
                }
            }
            boolean z3 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            ATAdRealTimeFilter.RLFilterListener rLFilterListener = ATAdRealTimeFilter.getInstance().getRLFilterListener();
            if (rLFilterListener != null) {
                if (z3) {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        by byVar = (by) arrayList.get(i2);
                        n nVarAh = this.f1948m.f3585s.ah();
                        ah.a(nVarAh, byVar, 0, false);
                        arrayList2.add(com.anythink.core.common.d.k.a(nVarAh, (ATBaseAdAdapter) null, 1));
                    }
                }
                s.b().b(this.f1948m.f3571e, rLFilterListener.filterAdByBiddingResult(arrayList2, z2));
            }
            if (!z3 || (aVar = this.f1944i) == null) {
                return;
            }
            aVar.a(this.f1945j, arrayList, new ArrayList(1), false);
        } catch (Throwable unused) {
        }
    }

    private void d(long j2) {
        com.anythink.core.common.h.a aVar = this.f1948m;
        this.f1941f = aVar.f3575i;
        as asVar = aVar.f3569c;
        if (asVar.f3818j) {
            int i2 = asVar.f3816h;
            int iBw = aVar.f3580n.a().bw();
            if (iBw > 0 && i2 > iBw) {
                this.f1941f = i2 - iBw;
            }
        }
        if (this.f1941f <= 0) {
            this.f1941f = 2000L;
        }
        this.f1941f += j2;
        com.anythink.core.common.t.c.a().a(this.f1939d, this.f1941f);
    }

    @Override // com.anythink.core.common.j.b
    public final void a(boolean z2) {
        this.f1947l = z2;
    }

    @Override // com.anythink.core.common.j.b
    public final void a(j.a aVar) {
        int iB;
        this.f1944i = aVar;
        com.anythink.core.common.h hVar = this.f1940e;
        long jC = hVar == null ? 0L : hVar.c();
        super.a(this.f1946k + jC);
        long j2 = this.f1948m.f3564H;
        if (j2 > 0) {
            super.b(j2);
        }
        com.anythink.core.e.f fVar = this.f1955t;
        if (fVar != null && (iB = fVar.b()) > 0) {
            super.c(iB);
        }
        com.anythink.core.common.h.a aVar2 = this.f1948m;
        this.f1941f = aVar2.f3575i;
        as asVar = aVar2.f3569c;
        if (asVar.f3818j) {
            int i2 = asVar.f3816h;
            int iBw = aVar2.f3580n.a().bw();
            if (iBw > 0 && i2 > iBw) {
                this.f1941f = i2 - iBw;
            }
        }
        if (this.f1941f <= 0) {
            this.f1941f = 2000L;
        }
        this.f1941f += jC;
        com.anythink.core.common.t.c.a().a(this.f1939d, this.f1941f);
        boolean z2 = this.f1948m.f3560D > 0;
        this.f1953r = z2;
        if (z2) {
            this.f1952q = Collections.synchronizedList(new ArrayList());
            this.f1954s = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dd, new AnonymousClass7());
            com.anythink.core.common.t.c.a().a(this.f1954s, this.f1948m.f3560D);
        }
        this.f1950o = System.currentTimeMillis();
        this.f1951p = SystemClock.elapsedRealtime();
        HashMap map = new HashMap(this.f1949n);
        com.anythink.core.common.h hVar2 = this.f1940e;
        if (hVar2 != null) {
            hVar2.a(this.f1942g);
        }
        for (Map.Entry entry : map.entrySet()) {
            final Integer num = (Integer) entry.getKey();
            final d dVar = (d) entry.getValue();
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ac, new Runnable() { // from class: com.anythink.core.c.b.3
                @Override // java.lang.Runnable
                public final void run() {
                    d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.a(b.this.f1941f);
                        dVar.a(b.this.f1947l);
                        b bVar = b.this;
                        com.anythink.core.common.h hVar3 = bVar.f1940e;
                        if (hVar3 == null) {
                            b.a(bVar, dVar, num.intValue());
                            return;
                        }
                        d dVar3 = dVar;
                        int iIntValue = num.intValue();
                        if (dVar3 != null) {
                            hVar3.new a(dVar3, iIntValue);
                        }
                    }
                }
            }));
        }
    }

    @Override // com.anythink.core.common.v.b
    public final void d() {
        HashMap map;
        synchronized (this) {
            map = new HashMap(this.f1949n);
        }
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            d dVar = (d) ((Map.Entry) it.next()).getValue();
            if (dVar != null) {
                dVar.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(Integer num, List<by> list, List<by> list2) {
        a(num, list, list2);
    }

    private void b(by byVar) {
        n nVar = this.f1938c.get(byVar.G());
        if (nVar != null) {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ad, new AnonymousClass9(nVar, byVar)));
        }
        com.anythink.core.common.v.d.a().a(nVar, byVar, 2);
    }

    private void a(d dVar, int i2) {
        dVar.a(new AnonymousClass5(i2));
    }

    private void a(List<by> list) {
        Pair<ATCustomRange.CustomContentListener, List<ATCustomRange.RangeObject>> adCustomContentInfo;
        try {
            if (list.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                by byVar = list.get(i2);
                if (byVar != null && byVar.n() == 2) {
                    arrayList.add(byVar);
                }
            }
            if (arrayList.isEmpty() || (adCustomContentInfo = ATCustomRange.getInstance().getAdCustomContentInfo(this.f1948m.f3571e)) == null) {
                return;
            }
            ATCustomRange.CustomContentListener customContentListener = (ATCustomRange.CustomContentListener) adCustomContentInfo.first;
            List list2 = (List) adCustomContentInfo.second;
            if (customContentListener == null || list2 == null) {
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                by byVar2 = (by) arrayList.get(i3);
                double dA = o.a(byVar2);
                String strG = byVar2.G();
                ATCustomRange.RangeObject rangeObject = new ATCustomRange.RangeObject(dA);
                rangeObject.setAdSourceId(strG);
                rangeObject.setTag(new Object());
                arrayList2.add(rangeObject);
            }
            for (int i4 = 0; i4 < list2.size(); i4++) {
                ATCustomRange.RangeObject rangeObject2 = (ATCustomRange.RangeObject) list2.get(i4);
                if (rangeObject2 != null) {
                    rangeObject2.setTag(null);
                }
            }
            arrayList2.addAll(list2);
            Collections.sort(arrayList2, new Comparator<ATCustomRange.RangeObject>() { // from class: com.anythink.core.c.b.6
                private static int a(ATCustomRange.RangeObject rangeObject3, ATCustomRange.RangeObject rangeObject4) {
                    return Double.compare(rangeObject4.getCustomMsg(), rangeObject3.getCustomMsg());
                }

                @Override // java.util.Comparator
                public final /* synthetic */ int compare(ATCustomRange.RangeObject rangeObject3, ATCustomRange.RangeObject rangeObject4) {
                    return Double.compare(rangeObject4.getCustomMsg(), rangeObject3.getCustomMsg());
                }
            });
            for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                ATCustomRange.RangeObject rangeObject3 = (ATCustomRange.RangeObject) arrayList2.get(i5);
                if (rangeObject3.getTag() != null) {
                    rangeObject3.setTag(null);
                    rangeObject3.setCustomMsg(0.0d);
                }
            }
            customContentListener.callBackResult(arrayList2);
        } catch (Throwable th) {
            if (ATSDK.isNetworkLogDebug()) {
                Log.e("anythink", "handleCustomContent: error", th);
            }
        }
    }

    private boolean a(Integer num) {
        d dVar = this.f1949n.get(num);
        if (dVar != null && dVar.d()) {
            this.f1949n.remove(num);
        }
        boolean z2 = false;
        if (this.f1949n.size() == 0) {
            a();
            com.anythink.core.common.t.c.a().a(this.f1939d);
            this.f1953r = false;
            z2 = true;
            if (this.f1954s != null) {
                com.anythink.core.common.t.c.a().a(this.f1954s);
            }
        }
        return z2;
    }

    private void a(String str, by byVar, boolean z2) {
        int iD;
        by byVar2;
        Throwable th;
        String str2;
        com.anythink.core.common.f fVar;
        if (byVar.z() == 2) {
            com.anythink.core.common.h.a aVar = this.f1948m;
            com.anythink.core.common.h.c cVarB = null;
            bz bzVarA = (aVar == null || (fVar = aVar.f3566J) == null || fVar.e() == null) ? null : this.f1948m.f3566J.e().a(str, byVar);
            ad adVarY = byVar.Y();
            if (bzVarA != null) {
                com.anythink.core.common.h.j jVarA = bzVarA.a((ad) null);
                cVarB = jVarA.b();
                iD = jVarA.d();
            } else {
                iD = 0;
            }
            if (cVarB == null || iD < byVar.aG()) {
                return;
            }
            try {
                double dA = o.a(cVarB.e().getUnitGroupInfo());
                if (k.a(byVar, cVarB.e().getUnitGroupInfo()) < 0) {
                    byVar.a(byVar, 2, byVar.B(), 1);
                    return;
                }
                try {
                    by unitGroupInfo = cVarB.e().getUnitGroupInfo();
                    if (unitGroupInfo.Y() != null) {
                        try {
                            str2 = unitGroupInfo.Y().token;
                        } catch (Throwable th2) {
                            th = th2;
                            byVar2 = byVar;
                            th.printStackTrace();
                            byVar2.a(cVarB.e().getUnitGroupInfo(), 1, byVar2.B(), z2 ? 1 : 0);
                        }
                    } else {
                        str2 = "";
                    }
                    if (adVarY == null || TextUtils.equals(adVarY.token, str2)) {
                        byVar2 = byVar;
                    } else {
                        byVar2 = byVar;
                        try {
                            com.anythink.core.c.d.c.a(adVarY, new ay(2, byVar2, this.f1948m.f3585s, dA), true, 26);
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            th.printStackTrace();
                            byVar2.a(cVarB.e().getUnitGroupInfo(), 1, byVar2.B(), z2 ? 1 : 0);
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    byVar2 = byVar;
                }
                byVar2.a(cVarB.e().getUnitGroupInfo(), 1, byVar2.B(), z2 ? 1 : 0);
            } catch (Exception unused) {
            }
        }
    }

    private void a(by byVar, ATBaseAdAdapter aTBaseAdAdapter) {
        n nVarAh;
        String internalNetworkSDKVersion;
        String strValueOf;
        try {
            nVarAh = this.f1948m.f3585s.ah();
            try {
                ah.a(nVarAh, byVar, 0, false);
                nVarAh.m(ai.a(byVar, null));
                String str = "";
                if (aTBaseAdAdapter == null) {
                    strValueOf = "";
                } else {
                    try {
                        internalNetworkSDKVersion = aTBaseAdAdapter.getInternalNetworkSDKVersion();
                        try {
                            strValueOf = String.valueOf(aTBaseAdAdapter.internalBaseOnAdapterBridgeVersion());
                            str = internalNetworkSDKVersion;
                        } catch (Throwable unused) {
                        }
                    } catch (Throwable unused2) {
                        internalNetworkSDKVersion = "";
                    }
                }
                String str2 = strValueOf;
                internalNetworkSDKVersion = str;
                str = str2;
                byVar.f4076B = internalNetworkSDKVersion;
                byVar.f4077C = str;
                this.f1938c.put(byVar.G(), nVarAh);
            } catch (Throwable unused3) {
            }
        } catch (Throwable unused4) {
            nVarAh = null;
        }
        if (byVar.y() != 7 && aTBaseAdAdapter != null) {
            try {
                if (this.f1948m.f3569c.f3812d != null) {
                    ah.a(nVarAh);
                    this.f1948m.f3569c.f3812d.onAdSourceBiddingAttempt(nVarAh);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        a(nVarAh, (AdError) null, a.b.f8371a, byVar);
        com.anythink.core.common.v.d.a().a(nVarAh, byVar, 1);
    }

    private void a(by byVar) {
        n nVar = this.f1938c.get(byVar.G());
        if (nVar != null) {
            AdError errorCode = ErrorCode.getErrorCode(ErrorCode.adSourceBidError, "", byVar.M());
            com.anythink.core.common.d.c cVar = this.f1948m.f3569c.f3812d;
            if (cVar != null) {
                cVar.onAdSourceBiddingFail(nVar, errorCode);
                this.f1938c.remove(byVar.G());
            }
            a(nVar, errorCode, a.b.f8373c, byVar);
        }
    }

    private void a(n nVar, AdError adError, int i2, by byVar) {
        String platformCode;
        String platformMSG;
        if (nVar == null) {
            return;
        }
        com.anythink.core.common.w.a.b.d dVar = (com.anythink.core.common.w.a.b.d) com.anythink.core.common.w.a.a.d.a(nVar.aQ(), com.anythink.core.common.w.a.b.d.class);
        if (dVar != null) {
            if (adError != null) {
                platformCode = adError.getPlatformCode();
                platformMSG = adError.getPlatformMSG();
            } else {
                platformCode = "";
                platformMSG = "";
            }
            am amVarA = am.a(nVar, platformCode, platformMSG, i2);
            amVarA.a(adError != null);
            dVar.a(amVarA);
        }
        com.anythink.core.common.h.a aVar = this.f1948m;
        Context contextG = aVar != null ? aVar.f3568b : s.b().g();
        com.anythink.core.a.c.a();
        if (i2 == a.b.f8371a) {
            com.anythink.core.a.c.a(contextG, byVar, nVar.aQ());
        } else if (i2 == a.b.f8373c) {
            com.anythink.core.a.c.b(contextG, byVar, nVar.aQ());
        }
    }

    private synchronized void a(Integer num, List<by> list, List<by> list2) {
        boolean z2;
        try {
            d dVar = this.f1949n.get(num);
            if (dVar != null && dVar.d()) {
                this.f1949n.remove(num);
            }
            boolean z3 = true;
            if (this.f1949n.size() == 0) {
                a();
                com.anythink.core.common.t.c.a().a(this.f1939d);
                this.f1953r = false;
                if (this.f1954s != null) {
                    com.anythink.core.common.t.c.a().a(this.f1954s);
                }
                z2 = true;
            } else {
                z2 = false;
            }
            int size = list != null ? list.size() : 0;
            int size2 = list2 != null ? list2.size() : 0;
            if (size > 0 || size2 > 0) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                if (size > 0) {
                    int i2 = 0;
                    while (i2 < size) {
                        by byVar = list.get(i2);
                        a(this.f1943h, byVar, z3);
                        arrayList.add(byVar);
                        arrayList3.add(byVar);
                        n nVar = this.f1938c.get(byVar.G());
                        if (nVar != null) {
                            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ad, new AnonymousClass9(nVar, byVar)));
                        }
                        com.anythink.core.common.v.d.a().a(nVar, byVar, 2);
                        i2++;
                        z3 = true;
                    }
                    list.clear();
                }
                if (size2 > 0) {
                    for (int i3 = 0; i3 < size2; i3++) {
                        by byVar2 = list2.get(i3);
                        if (byVar2 == null) {
                            try {
                                com.anythink.core.common.u.f.b("Bid Fail AdSource Object is null, currentSize:" + list2.size() + "\n" + p.a(new Throwable().getStackTrace()), "Bidding inner error", s.b().r());
                            } catch (Throwable unused) {
                            }
                        } else {
                            a(this.f1943h, byVar2, false);
                            if (o.a(byVar2) > 0.0d && !TextUtils.isEmpty(byVar2.L())) {
                                arrayList.add(byVar2);
                            } else {
                                arrayList2.add(byVar2);
                            }
                            arrayList3.add(byVar2);
                            n nVar2 = this.f1938c.get(byVar2.G());
                            if (nVar2 != null) {
                                AdError errorCode = ErrorCode.getErrorCode(ErrorCode.adSourceBidError, "", byVar2.M());
                                com.anythink.core.common.d.c cVar = this.f1948m.f3569c.f3812d;
                                if (cVar != null) {
                                    cVar.onAdSourceBiddingFail(nVar2, errorCode);
                                    this.f1938c.remove(byVar2.G());
                                }
                                a(nVar2, errorCode, a.b.f8373c, byVar2);
                            }
                        }
                    }
                    list2.clear();
                }
                n nVarAh = this.f1948m.f3585s.ah();
                long j2 = this.f1950o;
                long j3 = this.f1951p;
                com.anythink.core.common.h.a aVar = this.f1948m;
                com.anythink.core.c.d.c.a(nVarAh, arrayList3, j2, j3, aVar.f3586t, aVar.f3572f);
                if (this.f1955t != null) {
                    this.f1957v.addAll(arrayList);
                    int iC = this.f1955t.c();
                    if (z2 || this.f1957v.size() >= iC) {
                        j();
                    }
                }
                a(arrayList);
                if (this.f1953r) {
                    if (arrayList.size() > 0) {
                        List<by> list3 = this.f1952q;
                        if (list3 != null) {
                            list3.addAll(arrayList);
                        }
                        arrayList.clear();
                    }
                    if (arrayList.size() == 0 && arrayList2.size() == 0) {
                        return;
                    }
                }
                boolean zC = c();
                if (this.f1948m.f3563G) {
                    if (this.f1958w == null) {
                        this.f1958w = new ArrayList();
                    }
                    if (!zC) {
                        this.f1958w.addAll(arrayList);
                        arrayList.clear();
                    }
                    if (!z2 && arrayList2.isEmpty()) {
                        return;
                    }
                }
                if (z2) {
                    List<by> list4 = this.f1952q;
                    if (list4 != null && !list4.isEmpty()) {
                        arrayList.addAll(0, this.f1952q);
                        this.f1952q.clear();
                    }
                    List<by> list5 = this.f1958w;
                    if (list5 != null && !list5.isEmpty() && !zC) {
                        super.b();
                        b(false);
                    }
                }
                if (arrayList.size() > 1) {
                    Collections.sort(arrayList, new Comparator<by>() { // from class: com.anythink.core.c.b.8
                        private static int a(by byVar3, by byVar4) {
                            return k.a(byVar3, byVar4);
                        }

                        @Override // java.util.Comparator
                        public final /* synthetic */ int compare(by byVar3, by byVar4) {
                            return k.a(byVar3, byVar4);
                        }
                    });
                }
                j.a aVar2 = this.f1944i;
                if (aVar2 != null) {
                    aVar2.a(this.f1945j, arrayList, arrayList2, z2);
                }
                if (z2) {
                    com.anythink.core.common.h hVar = this.f1940e;
                    if (hVar != null) {
                        hVar.b();
                    }
                    this.f1944i = null;
                }
            }
        } finally {
        }
    }

    public static /* synthetic */ void a(b bVar, d dVar, int i2) {
        dVar.a(bVar.new AnonymousClass5(i2));
    }

    public static /* synthetic */ void a(b bVar, by byVar, ATBaseAdAdapter aTBaseAdAdapter) {
        n nVarAh;
        String internalNetworkSDKVersion;
        String strValueOf;
        try {
            nVarAh = bVar.f1948m.f3585s.ah();
            try {
                ah.a(nVarAh, byVar, 0, false);
                nVarAh.m(ai.a(byVar, null));
                String str = "";
                if (aTBaseAdAdapter == null) {
                    strValueOf = "";
                } else {
                    try {
                        internalNetworkSDKVersion = aTBaseAdAdapter.getInternalNetworkSDKVersion();
                        try {
                            strValueOf = String.valueOf(aTBaseAdAdapter.internalBaseOnAdapterBridgeVersion());
                            str = internalNetworkSDKVersion;
                        } catch (Throwable unused) {
                        }
                    } catch (Throwable unused2) {
                        internalNetworkSDKVersion = "";
                    }
                }
                String str2 = strValueOf;
                internalNetworkSDKVersion = str;
                str = str2;
                byVar.f4076B = internalNetworkSDKVersion;
                byVar.f4077C = str;
                bVar.f1938c.put(byVar.G(), nVarAh);
            } catch (Throwable unused3) {
            }
        } catch (Throwable unused4) {
            nVarAh = null;
        }
        if (byVar.y() != 7 && aTBaseAdAdapter != null) {
            try {
                if (bVar.f1948m.f3569c.f3812d != null) {
                    ah.a(nVarAh);
                    bVar.f1948m.f3569c.f3812d.onAdSourceBiddingAttempt(nVarAh);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        bVar.a(nVarAh, (AdError) null, a.b.f8371a, byVar);
        com.anythink.core.common.v.d.a().a(nVarAh, byVar, 1);
    }
}
