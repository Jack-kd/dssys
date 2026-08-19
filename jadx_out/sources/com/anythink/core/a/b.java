package com.anythink.core.a;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.anythink.core.common.d.s;
import com.anythink.core.common.f.a;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.f;
import com.anythink.core.common.k;
import com.anythink.core.e.m;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b {

    /* renamed from: o, reason: collision with root package name */
    private static volatile b f1500o;

    /* renamed from: A, reason: collision with root package name */
    private volatile a f1502A;

    /* renamed from: B, reason: collision with root package name */
    private volatile a f1503B;

    /* renamed from: b, reason: collision with root package name */
    ConcurrentHashMap<String, f> f1505b;

    /* renamed from: c, reason: collision with root package name */
    ConcurrentHashMap<String, f> f1506c;

    /* renamed from: d, reason: collision with root package name */
    ConcurrentHashMap<String, f> f1507d;

    /* renamed from: e, reason: collision with root package name */
    ConcurrentHashMap<String, f> f1508e;

    /* renamed from: f, reason: collision with root package name */
    ConcurrentHashMap<String, f> f1509f;

    /* renamed from: g, reason: collision with root package name */
    ConcurrentHashMap<String, f> f1510g;

    /* renamed from: h, reason: collision with root package name */
    ConcurrentHashMap<String, Long> f1511h;

    /* renamed from: i, reason: collision with root package name */
    ConcurrentHashMap<String, Long> f1512i;

    /* renamed from: j, reason: collision with root package name */
    ConcurrentHashMap<String, Long> f1513j;

    /* renamed from: k, reason: collision with root package name */
    ConcurrentHashMap<String, Long> f1514k;

    /* renamed from: l, reason: collision with root package name */
    ConcurrentHashMap<String, Long> f1515l;

    /* renamed from: m, reason: collision with root package name */
    ConcurrentHashMap<String, Long> f1516m;

    /* renamed from: q, reason: collision with root package name */
    private final com.anythink.core.common.f.a f1517q;

    /* renamed from: x, reason: collision with root package name */
    private volatile e f1524x;

    /* renamed from: y, reason: collision with root package name */
    private volatile a f1525y;

    /* renamed from: z, reason: collision with root package name */
    private volatile a f1526z;

    /* renamed from: p, reason: collision with root package name */
    private static final ThreadLocal<SimpleDateFormat> f1501p = new ThreadLocal<SimpleDateFormat>() { // from class: com.anythink.core.a.b.1
        private static SimpleDateFormat a() {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        }

        @Override // java.lang.ThreadLocal
        public final /* synthetic */ SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        }
    };

    /* renamed from: n, reason: collision with root package name */
    public static int f1499n = -1;

    /* renamed from: a, reason: collision with root package name */
    final String f1504a = b.class.getSimpleName();

    /* renamed from: r, reason: collision with root package name */
    private volatile int f1518r = -1;

    /* renamed from: s, reason: collision with root package name */
    private volatile int f1519s = -1;

    /* renamed from: t, reason: collision with root package name */
    private volatile String f1520t = "";

    /* renamed from: u, reason: collision with root package name */
    private volatile long f1521u = 0;

    /* renamed from: v, reason: collision with root package name */
    private volatile long f1522v = 0;

    /* renamed from: w, reason: collision with root package name */
    private final Object f1523w = new Object();

    /* renamed from: com.anythink.core.a.b$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1527a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1528b;

        public AnonymousClass2(String str, String str2) {
            this.f1527a = str;
            this.f1528b = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.f1517q != null) {
                b.this.f1517q.e(this.f1527a, this.f1528b);
            }
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private int f1530a;

        /* renamed from: b, reason: collision with root package name */
        private int f1531b;

        /* renamed from: c, reason: collision with root package name */
        private Map<String, Pair<Integer, Integer>> f1532c;

        /* renamed from: d, reason: collision with root package name */
        private Map<String, Pair<Integer, Integer>> f1533d;

        /* renamed from: e, reason: collision with root package name */
        private Map<String, Pair<Integer, Integer>> f1534e;

        public final void a(int i2) {
            this.f1530a = i2;
        }

        public final void b(int i2) {
            this.f1531b = i2;
        }

        public final void c(Map<String, Pair<Integer, Integer>> map) {
            this.f1534e = map;
        }

        public final Map<String, Pair<Integer, Integer>> d() {
            return this.f1533d;
        }

        public final Map<String, Pair<Integer, Integer>> e() {
            return this.f1534e;
        }

        public final void a(Map<String, Pair<Integer, Integer>> map) {
            this.f1532c = map;
        }

        public final void b(Map<String, Pair<Integer, Integer>> map) {
            this.f1533d = map;
        }

        public final Map<String, Pair<Integer, Integer>> c() {
            return this.f1532c;
        }

        public final int a() {
            return this.f1530a;
        }

        public final int b() {
            return this.f1531b;
        }
    }

    private b(Context context) {
        this.f1517q = com.anythink.core.common.f.a.a(com.anythink.core.common.f.e.a(context));
        b();
        try {
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8133p, new AnonymousClass2(a(new Date()), b(new Date()))));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f1505b = new ConcurrentHashMap<>(3);
        this.f1506c = new ConcurrentHashMap<>(3);
        this.f1507d = new ConcurrentHashMap<>(3);
        this.f1508e = new ConcurrentHashMap<>(3);
        this.f1509f = new ConcurrentHashMap<>();
        this.f1510g = new ConcurrentHashMap<>(3);
        this.f1511h = new ConcurrentHashMap<>(3);
        this.f1513j = new ConcurrentHashMap<>(3);
        this.f1512i = new ConcurrentHashMap<>(3);
        this.f1514k = new ConcurrentHashMap<>(3);
        this.f1516m = new ConcurrentHashMap<>(3);
        this.f1515l = new ConcurrentHashMap<>(3);
    }

    public static String b(Date date) {
        return f1501p.get().format(date).substring(8, 10);
    }

    public static String c(Date date) {
        return f1501p.get().format(date).substring(11, 13);
    }

    private int d() {
        b();
        return this.f1519s;
    }

    private ConcurrentHashMap<String, f> e() {
        return this.f1506c;
    }

    private ConcurrentHashMap<String, f> f() {
        return this.f1509f;
    }

    private ConcurrentHashMap<String, Long> g() {
        return this.f1513j;
    }

    private ConcurrentHashMap<String, Long> h() {
        return this.f1516m;
    }

    private e i() {
        if (this.f1524x == null) {
            synchronized (this.f1523w) {
                try {
                    if (this.f1524x == null) {
                        this.f1524x = new e(this.f1517q);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f1524x;
    }

    public static b a(Context context) {
        if (f1500o == null) {
            synchronized (b.class) {
                try {
                    if (f1500o == null) {
                        f1500o = new b(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1500o;
    }

    public final long e(String str) {
        return b(str, a.C0051a.f3211h, this.f1516m);
    }

    public final long f(String str) {
        return a(str, "format", this.f1512i);
    }

    public final long g(String str) {
        return b(str, "format", this.f1512i);
    }

    private void b() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis >= this.f1522v || jCurrentTimeMillis - this.f1521u > 60000) {
            synchronized (this.f1523w) {
                try {
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (jCurrentTimeMillis2 >= this.f1522v || jCurrentTimeMillis2 - this.f1521u > 60000) {
                        Date date = new Date(jCurrentTimeMillis2);
                        Calendar calendar = Calendar.getInstance();
                        calendar.setTimeInMillis(jCurrentTimeMillis2);
                        calendar.set(12, 0);
                        calendar.set(13, 0);
                        calendar.set(14, 0);
                        calendar.add(11, 1);
                        this.f1518r = Integer.parseInt(b(date));
                        this.f1519s = Integer.parseInt(c(date));
                        this.f1520t = a(date);
                        this.f1521u = jCurrentTimeMillis2;
                        this.f1522v = calendar.getTimeInMillis();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private int c() {
        b();
        return this.f1518r;
    }

    public final long d(String str) {
        return a(str, a.C0051a.f3211h, this.f1516m);
    }

    public final void d(by byVar) {
        if (byVar.bH() == null || this.f1517q == null) {
            return;
        }
        i().a(byVar);
    }

    public final long c(String str) {
        return b(str, "placement_id", this.f1513j);
    }

    public final void c(by byVar) {
        if (byVar.bH() == null || this.f1517q == null) {
            return;
        }
        i().c(byVar);
    }

    private com.anythink.core.common.f.a a() {
        return this.f1517q;
    }

    public static String a(Date date) {
        return f1501p.get().format(date).substring(5, 7);
    }

    private void a(String str, String str2) {
        try {
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8133p, new AnonymousClass2(str, str2)));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final synchronized void a(JSONObject jSONObject) {
        try {
            if (jSONObject != null) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(k.f5357B);
                if (jSONObjectOptJSONObject != null) {
                    this.f1525y = b(jSONObjectOptJSONObject);
                } else if (this.f1525y != null) {
                    this.f1525y = null;
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(k.f5358C);
                if (jSONObjectOptJSONObject2 != null) {
                    this.f1526z = b(jSONObjectOptJSONObject2);
                } else if (this.f1526z != null) {
                    this.f1526z = null;
                }
                JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("caps_s");
                if (jSONObjectOptJSONObject3 != null) {
                    this.f1502A = b(jSONObjectOptJSONObject3);
                } else if (this.f1502A != null) {
                    this.f1502A = null;
                }
                JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("req_pace");
                if (jSONObjectOptJSONObject4 != null) {
                    this.f1503B = b(jSONObjectOptJSONObject4);
                    return;
                } else {
                    if (this.f1503B != null) {
                        this.f1503B = null;
                    }
                    return;
                }
            }
            if (this.f1525y != null) {
                this.f1525y = null;
            }
            if (this.f1526z != null) {
                this.f1526z = null;
            }
            if (this.f1502A != null) {
                this.f1502A = null;
            }
            if (this.f1503B != null) {
                this.f1503B = null;
            }
        } catch (Throwable unused) {
        }
    }

    public final void b(int i2, long j2, int i3, String str, String str2) {
        String str3;
        Pair<Integer, Integer> pair;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(String.valueOf(i3))) {
                if (this.f1503B != null) {
                    Map<String, Pair<Integer, Integer>> mapD = this.f1503B.d();
                    if (mapD != null && !mapD.isEmpty() && (pair = mapD.get(String.valueOf(i3))) != null && ((Integer) pair.first).intValue() > 0 && ((Integer) pair.second).intValue() > 0) {
                        f fVar = this.f1508e.get(String.valueOf(i3));
                        if (fVar != null) {
                            synchronized (fVar) {
                                try {
                                    if (System.currentTimeMillis() - fVar.i() > ((Integer) pair.second).intValue()) {
                                        fVar.a(System.currentTimeMillis());
                                        fVar.f4252a = 1;
                                    } else {
                                        fVar.f4252a++;
                                    }
                                } finally {
                                }
                            }
                        } else {
                            fVar = new f("1", String.valueOf(i3), "network_id", System.currentTimeMillis(), 1);
                            this.f1508e.put(String.valueOf(i3), fVar);
                        }
                        this.f1517q.b(String.valueOf(i3), "network_id", fVar.f4252a, fVar.i());
                    }
                    Map<String, Pair<Integer, Integer>> mapE = this.f1503B.e();
                    if (mapE != null && !mapE.isEmpty()) {
                        Pair<Integer, Integer> pair2 = mapE.get(i3 + "_" + str2);
                        if (pair2 != null && ((Integer) pair2.first).intValue() > 0 && ((Integer) pair2.second).intValue() > 0) {
                            f fVar2 = this.f1510g.get(i3 + "_" + str2);
                            if (fVar2 != null) {
                                synchronized (fVar2) {
                                    try {
                                        if (System.currentTimeMillis() - fVar2.i() > ((Integer) pair2.second).intValue()) {
                                            fVar2.a(System.currentTimeMillis());
                                            fVar2.f4252a = 1;
                                        } else {
                                            fVar2.f4252a++;
                                        }
                                    } finally {
                                    }
                                }
                            } else {
                                fVar2 = new f("1", i3 + "_" + str2, a.C0051a.f3209f, System.currentTimeMillis(), 1);
                                this.f1510g.put(i3 + "_" + str2, fVar2);
                            }
                            this.f1517q.b(i3 + "_" + str2, a.C0051a.f3209f, fVar2.f4252a, fVar2.i());
                        }
                    }
                }
                if (i2 <= 0 || j2 <= 0) {
                    return;
                }
                f fVar3 = this.f1509f.get(str);
                if (fVar3 != null) {
                    synchronized (fVar3) {
                        try {
                            if (System.currentTimeMillis() - fVar3.i() > j2) {
                                fVar3.a(System.currentTimeMillis());
                                fVar3.f4252a = 1;
                            } else {
                                fVar3.f4252a++;
                            }
                        } finally {
                        }
                    }
                    str3 = str;
                } else {
                    f fVar4 = new f("1", str, a.C0051a.f3211h, System.currentTimeMillis(), 1);
                    str3 = str;
                    this.f1509f.put(str3, fVar4);
                    fVar3 = fVar4;
                }
                f fVar5 = fVar3;
                this.f1517q.b(str3, a.C0051a.f3211h, fVar5.f4252a, fVar5.i());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final int a(String str) {
        Pair<Integer, Integer> pair;
        f fVar;
        f fVar2;
        try {
            if (this.f1503B != null) {
                if (this.f1503B.a() > 0 && this.f1503B.b() > 0) {
                    String strP = s.b().p();
                    if (!TextUtils.isEmpty(strP) && (fVar2 = this.f1505b.get(strP)) != null && fVar2.f4252a >= this.f1503B.a() && System.currentTimeMillis() - fVar2.i() <= this.f1503B.b()) {
                        return 9;
                    }
                }
                Map<String, Pair<Integer, Integer>> mapC = this.f1503B.c();
                if (mapC != null && !mapC.isEmpty() && (pair = mapC.get(str)) != null && ((Integer) pair.first).intValue() > 0 && ((Integer) pair.second).intValue() > 0 && (fVar = this.f1507d.get(str)) != null && fVar.f4252a >= ((Integer) pair.first).intValue()) {
                    if (System.currentTimeMillis() - fVar.i() <= ((Integer) pair.second).intValue()) {
                        return 10;
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return f1499n;
    }

    public final int a(int i2, long j2, String str) {
        if (i2 > 0 && j2 > 0) {
            try {
                f fVar = this.f1506c.get(str);
                if (fVar != null && fVar.f4252a >= i2) {
                    if (System.currentTimeMillis() - fVar.i() <= j2) {
                        return 8;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return f1499n;
    }

    public final void a(int i2, long j2, String str, int i3) {
        String str2;
        Pair<Integer, Integer> pair;
        String str3;
        try {
            if (this.f1503B != null) {
                if (this.f1503B.a() > 0 && this.f1503B.b() > 0) {
                    String strP = s.b().p();
                    if (!TextUtils.isEmpty(strP)) {
                        f fVar = this.f1505b.get(strP);
                        if (fVar != null) {
                            synchronized (fVar) {
                                try {
                                    if (System.currentTimeMillis() - fVar.i() > this.f1503B.b()) {
                                        fVar.a(System.currentTimeMillis());
                                        fVar.f4252a = 1;
                                    } else {
                                        fVar.f4252a++;
                                    }
                                } finally {
                                }
                            }
                            str3 = strP;
                        } else {
                            str3 = strP;
                            fVar = new f("1", str3, "app", System.currentTimeMillis(), 1);
                            this.f1505b.put(str3, fVar);
                        }
                        this.f1517q.b(str3, "app", fVar.f4252a, fVar.i());
                    }
                }
                Map<String, Pair<Integer, Integer>> mapC = this.f1503B.c();
                if (mapC != null && !mapC.isEmpty() && (pair = mapC.get(String.valueOf(i3))) != null && ((Integer) pair.first).intValue() > 0 && ((Integer) pair.second).intValue() > 0) {
                    f fVar2 = this.f1507d.get(String.valueOf(i3));
                    if (fVar2 != null) {
                        synchronized (fVar2) {
                            try {
                                if (System.currentTimeMillis() - fVar2.i() > ((Integer) pair.second).intValue()) {
                                    fVar2.a(System.currentTimeMillis());
                                    fVar2.f4252a = 1;
                                } else {
                                    fVar2.f4252a++;
                                }
                            } finally {
                            }
                        }
                    } else {
                        f fVar3 = new f("1", String.valueOf(i3), "format", System.currentTimeMillis(), 1);
                        this.f1507d.put(String.valueOf(i3), fVar3);
                        fVar2 = fVar3;
                    }
                    this.f1517q.b(String.valueOf(i3), "format", fVar2.f4252a, fVar2.i());
                }
            }
            if (i2 <= 0 || j2 <= 0) {
                return;
            }
            f fVar4 = this.f1506c.get(str);
            if (fVar4 != null) {
                synchronized (fVar4) {
                    try {
                        if (System.currentTimeMillis() - fVar4.i() > j2) {
                            fVar4.a(System.currentTimeMillis());
                            fVar4.f4252a = 1;
                        } else {
                            fVar4.f4252a++;
                        }
                    } finally {
                    }
                }
                str2 = str;
            } else {
                str2 = str;
                f fVar5 = new f("1", str2, "placement_id", System.currentTimeMillis(), 1);
                this.f1506c.put(str2, fVar5);
                fVar4 = fVar5;
            }
            this.f1517q.b(str2, "placement_id", fVar4.f4252a, fVar4.i());
        } catch (Throwable unused) {
        }
    }

    private long b(String str, String str2, ConcurrentHashMap<String, Long> concurrentHashMap) {
        String str3 = "hour_" + d() + "_" + str;
        Long lValueOf = concurrentHashMap.get(str3);
        if (lValueOf == null) {
            long jB = this.f1517q.b(str, str2);
            lValueOf = Long.valueOf(jB);
            if (jB > 0) {
                concurrentHashMap.put(str3, lValueOf);
            }
        }
        return lValueOf.longValue();
    }

    public final long b(String str) {
        return a(str, "placement_id", this.f1513j);
    }

    private static void b(int i2, ConcurrentHashMap<String, Long> concurrentHashMap, String str, long j2) {
        long jValueOf;
        if (concurrentHashMap != null) {
            if (i2 == 2) {
                concurrentHashMap.put(str, Long.valueOf(j2));
                return;
            }
            Long l2 = concurrentHashMap.get(str);
            if (l2 == null) {
                jValueOf = 1L;
            } else {
                jValueOf = Long.valueOf(l2.longValue() + 1);
            }
            concurrentHashMap.put(str, jValueOf);
        }
    }

    public final com.anythink.core.common.h.k b(by byVar) {
        if (byVar.bH() == null || this.f1517q == null) {
            return null;
        }
        return i().b(byVar);
    }

    private static a b(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        JSONObject jSONObjectOptJSONObject4;
        if (jSONObject == null) {
            return null;
        }
        try {
            a aVar = new a();
            JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("format");
            if (jSONObjectOptJSONObject5 != null) {
                HashMap map = new HashMap();
                Iterator<String> itKeys = jSONObjectOptJSONObject5.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!TextUtils.isEmpty(next) && (jSONObjectOptJSONObject4 = jSONObjectOptJSONObject5.optJSONObject(next)) != null) {
                        int iOptInt = jSONObjectOptJSONObject4.optInt("max_num");
                        int iOptInt2 = jSONObjectOptJSONObject4.optInt("per_second");
                        if (iOptInt != 0 || iOptInt2 != 0) {
                            map.put(next, new Pair<>(Integer.valueOf(iOptInt), Integer.valueOf(iOptInt2)));
                        }
                    }
                }
                if (!map.isEmpty()) {
                    aVar.a(map);
                }
            }
            JSONObject jSONObjectOptJSONObject6 = jSONObject.optJSONObject("nw");
            if (jSONObjectOptJSONObject6 != null) {
                HashMap map2 = new HashMap();
                Iterator<String> itKeys2 = jSONObjectOptJSONObject6.keys();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    if (!TextUtils.isEmpty(next2) && (jSONObjectOptJSONObject3 = jSONObjectOptJSONObject6.optJSONObject(next2)) != null) {
                        int iOptInt3 = jSONObjectOptJSONObject3.optInt("max_num");
                        int iOptInt4 = jSONObjectOptJSONObject3.optInt("per_second");
                        if (iOptInt3 != 0 || iOptInt4 != 0) {
                            map2.put(next2, new Pair<>(Integer.valueOf(iOptInt3), Integer.valueOf(iOptInt4)));
                        }
                    }
                }
                if (!map2.isEmpty()) {
                    aVar.b(map2);
                }
            }
            JSONObject jSONObjectOptJSONObject7 = jSONObject.optJSONObject("nw_format");
            if (jSONObjectOptJSONObject7 != null) {
                HashMap map3 = new HashMap();
                Iterator<String> itKeys3 = jSONObjectOptJSONObject7.keys();
                while (itKeys3.hasNext()) {
                    String next3 = itKeys3.next();
                    if (!TextUtils.isEmpty(next3) && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject7.optJSONObject(next3)) != null) {
                        int iOptInt5 = jSONObjectOptJSONObject2.optInt("max_num");
                        int iOptInt6 = jSONObjectOptJSONObject2.optInt("per_second");
                        if (iOptInt5 != 0 || iOptInt6 != 0) {
                            map3.put(next3, new Pair<>(Integer.valueOf(iOptInt5), Integer.valueOf(iOptInt6)));
                        }
                    }
                }
                if (!map3.isEmpty()) {
                    aVar.c(map3);
                }
            }
            JSONObject jSONObjectOptJSONObject8 = jSONObject.optJSONObject("global");
            if (jSONObjectOptJSONObject8 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject8.optJSONObject("global")) != null) {
                int iOptInt7 = jSONObjectOptJSONObject.optInt("max_num");
                if (iOptInt7 != 0) {
                    aVar.a(iOptInt7);
                }
                int iOptInt8 = jSONObjectOptJSONObject.optInt("per_second");
                if (iOptInt8 != 0) {
                    aVar.b(iOptInt8);
                }
            }
            return aVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final int a(int i2, long j2, int i3, String str, String str2) {
        f fVar;
        Pair<Integer, Integer> pair;
        f fVar2;
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (this.f1503B != null) {
                Map<String, Pair<Integer, Integer>> mapD = this.f1503B.d();
                if (mapD != null && !mapD.isEmpty() && (pair = mapD.get(String.valueOf(i3))) != null && ((Integer) pair.first).intValue() > 0 && ((Integer) pair.second).intValue() > 0 && (fVar2 = this.f1508e.get(String.valueOf(i3))) != null && fVar2.f4252a >= ((Integer) pair.first).intValue() && System.currentTimeMillis() - fVar2.i() <= ((Integer) pair.second).intValue()) {
                    return 25;
                }
                Map<String, Pair<Integer, Integer>> mapE = this.f1503B.e();
                if (mapE != null && !mapE.isEmpty()) {
                    Pair<Integer, Integer> pair2 = mapE.get(i3 + "_" + str2);
                    if (pair2 != null && ((Integer) pair2.first).intValue() > 0 && ((Integer) pair2.second).intValue() > 0) {
                        f fVar3 = this.f1510g.get(i3 + "_" + str2);
                        if (fVar3 != null && fVar3.f4252a >= ((Integer) pair2.first).intValue() && System.currentTimeMillis() - fVar3.i() <= ((Integer) pair2.second).intValue()) {
                            return 26;
                        }
                    }
                }
            }
            if (i2 > 0 && j2 > 0 && (fVar = this.f1509f.get(str)) != null && fVar.f4252a >= i2 && System.currentTimeMillis() - fVar.i() <= j2) {
                return 18;
            }
            return f1499n;
        }
        return f1499n;
    }

    public final int a(String str, String str2, long j2, long j3) {
        Pair<Integer, Integer> pair;
        Long l2;
        Pair<Integer, Integer> pair2;
        Long l3;
        try {
            int iC = c();
            int iD = d();
            if (this.f1525y != null) {
                if (this.f1525y.a() > 0 && (l3 = this.f1511h.get("day_".concat(String.valueOf(iC)))) != null && l3.longValue() > 0 && l3.longValue() >= this.f1525y.a()) {
                    return 7;
                }
                Map<String, Pair<Integer, Integer>> mapC = this.f1525y.c();
                if (mapC != null && !mapC.isEmpty() && (pair2 = mapC.get(str2)) != null && ((Integer) pair2.first).intValue() > 0) {
                    Long l4 = this.f1512i.get("day_" + iC + "_" + str2);
                    if (l4 != null && l4.longValue() > 0 && l4.longValue() >= ((Integer) pair2.first).intValue()) {
                        return 8;
                    }
                }
            }
            if (j2 > 0) {
                Long l5 = this.f1513j.get("day_" + iC + "_" + str);
                if (l5 != null && l5.longValue() > 0 && l5.longValue() >= j2) {
                    return 2;
                }
            }
            if (this.f1526z != null) {
                if (this.f1526z.a() > 0 && (l2 = this.f1511h.get("hour_".concat(String.valueOf(iD)))) != null && l2.longValue() > 0 && l2.longValue() >= this.f1526z.a()) {
                    return 9;
                }
                Map<String, Pair<Integer, Integer>> mapC2 = this.f1526z.c();
                if (mapC2 != null && !mapC2.isEmpty() && (pair = mapC2.get(str2)) != null && ((Integer) pair.first).intValue() > 0) {
                    Long l6 = this.f1512i.get("hour_" + iD + "_" + str2);
                    if (l6 != null && l6.longValue() > 0 && l6.longValue() >= ((Integer) pair.first).intValue()) {
                        return 10;
                    }
                }
            }
            if (j3 > 0) {
                Long l7 = this.f1513j.get("hour_" + iD + "_" + str);
                if (l7 != null && l7.longValue() > 0) {
                    if (l7.longValue() >= j3) {
                        return 2;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f1499n;
    }

    public final int a(String str, String str2, long j2) {
        Long l2;
        Pair<Integer, Integer> pair;
        Long l3;
        Long l4;
        try {
            if (this.f1502A != null) {
                if (this.f1502A.b() > 0 && (l4 = this.f1511h.get(a.C0051a.f3216m)) != null && System.currentTimeMillis() - l4.longValue() < this.f1502A.b()) {
                    return 11;
                }
                Map<String, Pair<Integer, Integer>> mapC = this.f1502A.c();
                if (mapC != null && !mapC.isEmpty() && (pair = mapC.get(str2)) != null && ((Integer) pair.second).intValue() > 0 && (l3 = this.f1512i.get("time_stamp_".concat(String.valueOf(str2)))) != null && System.currentTimeMillis() - l3.longValue() < ((Integer) pair.second).intValue()) {
                    return 12;
                }
            }
            if (j2 > 0 && (l2 = this.f1513j.get("time_stamp_".concat(String.valueOf(str)))) != null) {
                if (System.currentTimeMillis() - l2.longValue() < j2) {
                    return 3;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f1499n;
    }

    public final int a(String str, String str2, String str3, long j2, long j3) {
        Pair<Integer, Integer> pair;
        Pair<Integer, Integer> pair2;
        try {
            int iC = c();
            int iD = d();
            if (this.f1525y != null) {
                Map<String, Pair<Integer, Integer>> mapD = this.f1525y.d();
                if (mapD != null && !mapD.isEmpty() && (pair2 = mapD.get(str)) != null && ((Integer) pair2.first).intValue() > 0) {
                    Long l2 = this.f1514k.get("day_" + iC + "_" + str);
                    if (l2 != null && l2.longValue() > 0 && l2.longValue() >= ((Integer) pair2.first).intValue()) {
                        return 8;
                    }
                }
                Map<String, Pair<Integer, Integer>> mapE = this.f1525y.e();
                if (mapE != null && !mapE.isEmpty()) {
                    Pair<Integer, Integer> pair3 = mapE.get(str + "_" + str3);
                    if (pair3 != null && ((Integer) pair3.first).intValue() > 0) {
                        Long l3 = this.f1515l.get("day_" + iC + "_" + str + "_" + str3);
                        if (l3 != null && l3.longValue() > 0 && l3.longValue() >= ((Integer) pair3.first).intValue()) {
                            return 9;
                        }
                    }
                }
            }
            if (j2 > 0) {
                Long l4 = this.f1516m.get("day_" + iC + "_" + str2);
                if (l4 != null && l4.longValue() > 0 && l4.longValue() >= j2) {
                    return 2;
                }
            }
            if (this.f1526z != null) {
                Map<String, Pair<Integer, Integer>> mapD2 = this.f1526z.d();
                if (mapD2 != null && !mapD2.isEmpty() && (pair = mapD2.get(str)) != null && ((Integer) pair.first).intValue() > 0) {
                    Long l5 = this.f1514k.get("hour_" + iD + "_" + str);
                    if (l5 != null && l5.longValue() > 0 && l5.longValue() >= ((Integer) pair.first).intValue()) {
                        return 10;
                    }
                }
                Map<String, Pair<Integer, Integer>> mapE2 = this.f1526z.e();
                if (mapE2 != null && !mapE2.isEmpty()) {
                    Pair<Integer, Integer> pair4 = mapE2.get(str + "_" + str3);
                    if (pair4 != null && ((Integer) pair4.first).intValue() > 0) {
                        Long l6 = this.f1515l.get("hour_" + iD + "_" + str + "_" + str3);
                        if (l6 != null && l6.longValue() > 0 && l6.longValue() >= ((Integer) pair4.first).intValue()) {
                            return 11;
                        }
                    }
                }
            }
            if (j3 > 0) {
                Long l7 = this.f1516m.get("hour_" + iD + "_" + str2);
                if (l7 != null && l7.longValue() > 0) {
                    if (l7.longValue() >= j3) {
                        return 2;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f1499n;
    }

    public final int a(String str, String str2, String str3, long j2) {
        Long l2;
        Pair<Integer, Integer> pair;
        Long l3;
        try {
            if (this.f1502A != null) {
                Map<String, Pair<Integer, Integer>> mapD = this.f1502A.d();
                if (mapD != null && !mapD.isEmpty() && (pair = mapD.get(str)) != null && ((Integer) pair.second).intValue() > 0 && (l3 = this.f1514k.get("time_stamp_".concat(String.valueOf(str)))) != null && System.currentTimeMillis() - l3.longValue() < ((Integer) pair.second).intValue()) {
                    return 12;
                }
                Map<String, Pair<Integer, Integer>> mapE = this.f1502A.e();
                if (mapE != null && !mapE.isEmpty()) {
                    Pair<Integer, Integer> pair2 = mapE.get(str + "_" + str3);
                    if (pair2 != null && ((Integer) pair2.second).intValue() > 0) {
                        Long l4 = this.f1515l.get("time_stamp_" + str + "_" + str3);
                        if (l4 != null && System.currentTimeMillis() - l4.longValue() < ((Integer) pair2.second).intValue()) {
                            return 13;
                        }
                    }
                }
            }
            if (j2 > 0 && (l2 = this.f1516m.get("time_stamp_".concat(String.valueOf(str2)))) != null) {
                if (System.currentTimeMillis() - l2.longValue() < j2) {
                    return 3;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f1499n;
    }

    public final void a(String str, m mVar) {
        long j2;
        f fVarC;
        Pair<Integer, Integer> pair;
        f fVarC2;
        f fVarC3;
        Pair<Integer, Integer> pair2;
        Pair<Integer, Integer> pair3;
        f fVarD;
        Pair<Integer, Integer> pair4;
        f fVarD2;
        f fVarD3;
        if (mVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        String strValueOf = String.valueOf(mVar.ap());
        int iAD = mVar.aD();
        long jAE = mVar.aE();
        try {
            if (this.f1503B != null) {
                if (this.f1503B.a() > 0 && this.f1503B.b() > 0) {
                    String strP = s.b().p();
                    if (!TextUtils.isEmpty(strP) && !this.f1505b.containsKey(strP) && (fVarD3 = this.f1517q.d(strP, "app")) != null) {
                        this.f1505b.put(strP, fVarD3);
                    }
                }
                Map<String, Pair<Integer, Integer>> mapC = this.f1503B.c();
                if (mapC != null && (pair4 = mapC.get(strValueOf)) != null && ((Integer) pair4.first).intValue() > 0 && ((Integer) pair4.second).intValue() > 0 && !this.f1507d.containsKey(strValueOf) && (fVarD2 = this.f1517q.d(strValueOf, "format")) != null) {
                    this.f1507d.put(strValueOf, fVarD2);
                }
            }
            if (iAD > 0 && jAE > 0 && !this.f1506c.containsKey(str) && (fVarD = this.f1517q.d(str, "placement_id")) != null) {
                this.f1506c.put(str, fVarD);
            }
        } catch (Throwable unused) {
        }
        long jAu = mVar.au();
        long jAv = mVar.av();
        long jAw = mVar.aw();
        try {
            int iC = c();
            int iD = d();
            String strP2 = s.b().p();
            if (this.f1525y != null) {
                if (this.f1525y.a() <= 0 || TextUtils.isEmpty(strP2)) {
                    j2 = jAv;
                } else {
                    String strConcat = "day_".concat(String.valueOf(iC));
                    j2 = jAv;
                    if (!this.f1511h.containsKey(strConcat)) {
                        long jA = this.f1517q.a(strP2, "app");
                        Long lValueOf = Long.valueOf(jA);
                        if (jA > 0) {
                            this.f1511h.put(strConcat, lValueOf);
                        }
                    }
                }
                Map<String, Pair<Integer, Integer>> mapC2 = this.f1525y.c();
                if (mapC2 != null && (pair3 = mapC2.get(strValueOf)) != null && ((Integer) pair3.first).intValue() > 0) {
                    String str2 = "day_" + iC + "_" + strValueOf;
                    if (!this.f1512i.containsKey(str2)) {
                        long jA2 = this.f1517q.a(strValueOf, "format");
                        Long lValueOf2 = Long.valueOf(jA2);
                        if (jA2 > 0) {
                            this.f1512i.put(str2, lValueOf2);
                        }
                    }
                }
            } else {
                j2 = jAv;
            }
            if (jAu > 0) {
                String str3 = "day_" + iC + "_" + str;
                if (!this.f1513j.containsKey(str3)) {
                    long jA3 = this.f1517q.a(str, "placement_id");
                    Long lValueOf3 = Long.valueOf(jA3);
                    if (jA3 > 0) {
                        this.f1513j.put(str3, lValueOf3);
                    }
                }
            }
            if (this.f1526z != null) {
                if (this.f1526z.a() > 0 && !TextUtils.isEmpty(strP2)) {
                    String strConcat2 = "hour_".concat(String.valueOf(iD));
                    if (!this.f1511h.containsKey(strConcat2)) {
                        long jB = this.f1517q.b(strP2, "app");
                        Long lValueOf4 = Long.valueOf(jB);
                        if (jB > 0) {
                            this.f1511h.put(strConcat2, lValueOf4);
                        }
                    }
                }
                Map<String, Pair<Integer, Integer>> mapC3 = this.f1526z.c();
                if (mapC3 != null && (pair2 = mapC3.get(strValueOf)) != null && ((Integer) pair2.first).intValue() > 0) {
                    String str4 = "hour_" + iD + "_" + strValueOf;
                    if (!this.f1512i.containsKey(str4)) {
                        long jB2 = this.f1517q.b(strValueOf, "format");
                        Long lValueOf5 = Long.valueOf(jB2);
                        if (jB2 > 0) {
                            this.f1512i.put(str4, lValueOf5);
                        }
                    }
                }
            }
            if (j2 > 0) {
                String str5 = "hour_" + iD + "_" + str;
                if (!this.f1513j.containsKey(str5)) {
                    long jB3 = this.f1517q.b(str, "placement_id");
                    Long lValueOf6 = Long.valueOf(jB3);
                    if (jB3 > 0) {
                        this.f1513j.put(str5, lValueOf6);
                    }
                }
            }
            if (this.f1502A != null) {
                if (this.f1502A.b() > 0 && !TextUtils.isEmpty(strP2) && !this.f1511h.containsKey(a.C0051a.f3216m) && (fVarC3 = this.f1517q.c(strP2, "app")) != null) {
                    this.f1511h.put(a.C0051a.f3216m, Long.valueOf(fVarC3.i()));
                }
                Map<String, Pair<Integer, Integer>> mapC4 = this.f1502A.c();
                if (mapC4 != null && (pair = mapC4.get(strValueOf)) != null && ((Integer) pair.second).intValue() > 0) {
                    String strConcat3 = "time_stamp_".concat(String.valueOf(strValueOf));
                    if (!this.f1512i.containsKey(strConcat3) && (fVarC2 = this.f1517q.c(strValueOf, "format")) != null) {
                        this.f1512i.put(strConcat3, Long.valueOf(fVarC2.i()));
                    }
                }
            }
            if (jAw > 0) {
                String strConcat4 = "time_stamp_".concat(String.valueOf(str));
                if (this.f1513j.containsKey(strConcat4) || (fVarC = this.f1517q.c(str, "placement_id")) == null) {
                    return;
                }
                this.f1513j.put(strConcat4, Long.valueOf(fVarC.i()));
            }
        } catch (Throwable unused2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.anythink.core.common.h.by r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 863
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.a.b.a(com.anythink.core.common.h.by, java.lang.String):void");
    }

    private void a(String str, String str2, int i2, long j2) {
        f fVarD;
        Pair<Integer, Integer> pair;
        f fVarD2;
        f fVarD3;
        try {
            if (this.f1503B != null) {
                if (this.f1503B.a() > 0 && this.f1503B.b() > 0) {
                    String strP = s.b().p();
                    if (!TextUtils.isEmpty(strP) && !this.f1505b.containsKey(strP) && (fVarD3 = this.f1517q.d(strP, "app")) != null) {
                        this.f1505b.put(strP, fVarD3);
                    }
                }
                Map<String, Pair<Integer, Integer>> mapC = this.f1503B.c();
                if (mapC != null && (pair = mapC.get(str2)) != null && ((Integer) pair.first).intValue() > 0 && ((Integer) pair.second).intValue() > 0 && !this.f1507d.containsKey(str2) && (fVarD2 = this.f1517q.d(str2, "format")) != null) {
                    this.f1507d.put(str2, fVarD2);
                }
            }
            if (i2 <= 0 || j2 <= 0 || this.f1506c.containsKey(str) || (fVarD = this.f1517q.d(str, "placement_id")) == null) {
                return;
            }
            this.f1506c.put(str, fVarD);
        } catch (Throwable unused) {
        }
    }

    private void a(int i2, String str, String str2, int i3, long j2) {
        f fVarD;
        Pair<Integer, Integer> pair;
        f fVarD2;
        Pair<Integer, Integer> pair2;
        f fVarD3;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                String strValueOf = String.valueOf(i2);
                String str3 = i2 + "_" + str2;
                if (this.f1503B != null) {
                    Map<String, Pair<Integer, Integer>> mapD = this.f1503B.d();
                    if (mapD != null && (pair2 = mapD.get(strValueOf)) != null && ((Integer) pair2.first).intValue() > 0 && ((Integer) pair2.second).intValue() > 0 && !this.f1508e.containsKey(strValueOf) && (fVarD3 = this.f1517q.d(strValueOf, "network_id")) != null) {
                        this.f1508e.put(strValueOf, fVarD3);
                    }
                    Map<String, Pair<Integer, Integer>> mapE = this.f1503B.e();
                    if (mapE != null && (pair = mapE.get(str3)) != null && ((Integer) pair.first).intValue() > 0 && ((Integer) pair.second).intValue() > 0 && !this.f1510g.containsKey(str3) && (fVarD2 = this.f1517q.d(str3, a.C0051a.f3209f)) != null) {
                        this.f1510g.put(str3, fVarD2);
                    }
                }
                if (i3 <= 0 || j2 <= 0 || this.f1509f.containsKey(str) || (fVarD = this.f1517q.d(str, a.C0051a.f3211h)) == null) {
                    return;
                }
                this.f1509f.put(str, fVarD);
            }
        } catch (Throwable unused) {
        }
    }

    private void a(String str, String str2, long j2, long j3, long j4) {
        f fVarC;
        Pair<Integer, Integer> pair;
        f fVarC2;
        f fVarC3;
        Pair<Integer, Integer> pair2;
        Pair<Integer, Integer> pair3;
        try {
            int iC = c();
            int iD = d();
            String strP = s.b().p();
            if (this.f1525y != null) {
                if (this.f1525y.a() > 0 && !TextUtils.isEmpty(strP)) {
                    String strConcat = "day_".concat(String.valueOf(iC));
                    if (!this.f1511h.containsKey(strConcat)) {
                        long jA = this.f1517q.a(strP, "app");
                        Long lValueOf = Long.valueOf(jA);
                        if (jA > 0) {
                            this.f1511h.put(strConcat, lValueOf);
                        }
                    }
                }
                Map<String, Pair<Integer, Integer>> mapC = this.f1525y.c();
                if (mapC != null && (pair3 = mapC.get(str2)) != null && ((Integer) pair3.first).intValue() > 0) {
                    String str3 = "day_" + iC + "_" + str2;
                    if (!this.f1512i.containsKey(str3)) {
                        long jA2 = this.f1517q.a(str2, "format");
                        Long lValueOf2 = Long.valueOf(jA2);
                        if (jA2 > 0) {
                            this.f1512i.put(str3, lValueOf2);
                        }
                    }
                }
            }
            if (j2 > 0) {
                String str4 = "day_" + iC + "_" + str;
                if (!this.f1513j.containsKey(str4)) {
                    long jA3 = this.f1517q.a(str, "placement_id");
                    Long lValueOf3 = Long.valueOf(jA3);
                    if (jA3 > 0) {
                        this.f1513j.put(str4, lValueOf3);
                    }
                }
            }
            if (this.f1526z != null) {
                if (this.f1526z.a() > 0 && !TextUtils.isEmpty(strP)) {
                    String strConcat2 = "hour_".concat(String.valueOf(iD));
                    if (!this.f1511h.containsKey(strConcat2)) {
                        long jB = this.f1517q.b(strP, "app");
                        Long lValueOf4 = Long.valueOf(jB);
                        if (jB > 0) {
                            this.f1511h.put(strConcat2, lValueOf4);
                        }
                    }
                }
                Map<String, Pair<Integer, Integer>> mapC2 = this.f1526z.c();
                if (mapC2 != null && (pair2 = mapC2.get(str2)) != null && ((Integer) pair2.first).intValue() > 0) {
                    String str5 = "hour_" + iD + "_" + str2;
                    if (!this.f1512i.containsKey(str5)) {
                        long jB2 = this.f1517q.b(str2, "format");
                        Long lValueOf5 = Long.valueOf(jB2);
                        if (jB2 > 0) {
                            this.f1512i.put(str5, lValueOf5);
                        }
                    }
                }
            }
            if (j3 > 0) {
                String str6 = "hour_" + iD + "_" + str;
                if (!this.f1513j.containsKey(str6)) {
                    long jB3 = this.f1517q.b(str, "placement_id");
                    Long lValueOf6 = Long.valueOf(jB3);
                    if (jB3 > 0) {
                        this.f1513j.put(str6, lValueOf6);
                    }
                }
            }
            if (this.f1502A != null) {
                if (this.f1502A.b() > 0 && !TextUtils.isEmpty(strP) && !this.f1511h.containsKey(a.C0051a.f3216m) && (fVarC3 = this.f1517q.c(strP, "app")) != null) {
                    this.f1511h.put(a.C0051a.f3216m, Long.valueOf(fVarC3.i()));
                }
                Map<String, Pair<Integer, Integer>> mapC3 = this.f1502A.c();
                if (mapC3 != null && (pair = mapC3.get(str2)) != null && ((Integer) pair.second).intValue() > 0) {
                    String strConcat3 = "time_stamp_".concat(String.valueOf(str2));
                    if (!this.f1512i.containsKey(strConcat3) && (fVarC2 = this.f1517q.c(str2, "format")) != null) {
                        this.f1512i.put(strConcat3, Long.valueOf(fVarC2.i()));
                    }
                }
            }
            if (j4 > 0) {
                String strConcat4 = "time_stamp_".concat(String.valueOf(str));
                if (this.f1513j.containsKey(strConcat4) || (fVarC = this.f1517q.c(str, "placement_id")) == null) {
                    return;
                }
                this.f1513j.put(strConcat4, Long.valueOf(fVarC.i()));
            }
        } catch (Throwable unused) {
        }
    }

    private void a(String str, String str2, String str3, long j2, long j3, long j4) {
        f fVarC;
        Pair<Integer, Integer> pair;
        f fVarC2;
        Pair<Integer, Integer> pair2;
        f fVarC3;
        Pair<Integer, Integer> pair3;
        Pair<Integer, Integer> pair4;
        Pair<Integer, Integer> pair5;
        Pair<Integer, Integer> pair6;
        try {
            int iC = c();
            int iD = d();
            String str4 = str + "_" + str3;
            if (this.f1525y != null) {
                Map<String, Pair<Integer, Integer>> mapD = this.f1525y.d();
                if (mapD != null && (pair6 = mapD.get(str)) != null && ((Integer) pair6.first).intValue() > 0) {
                    String str5 = "day_" + iC + "_" + str;
                    if (!this.f1514k.containsKey(str5)) {
                        long jA = this.f1517q.a(str, "network_id");
                        Long lValueOf = Long.valueOf(jA);
                        if (jA > 0) {
                            this.f1514k.put(str5, lValueOf);
                        }
                    }
                }
                Map<String, Pair<Integer, Integer>> mapE = this.f1525y.e();
                if (mapE != null && (pair5 = mapE.get(str4)) != null && ((Integer) pair5.first).intValue() > 0) {
                    String str6 = "day_" + iC + "_" + str4;
                    if (!this.f1515l.containsKey(str6)) {
                        long jA2 = this.f1517q.a(str4, a.C0051a.f3209f);
                        Long lValueOf2 = Long.valueOf(jA2);
                        if (jA2 > 0) {
                            this.f1515l.put(str6, lValueOf2);
                        }
                    }
                }
            }
            if (j2 > 0) {
                String str7 = "day_" + iC + "_" + str2;
                if (!this.f1516m.containsKey(str7)) {
                    long jA3 = this.f1517q.a(str2, a.C0051a.f3211h);
                    Long lValueOf3 = Long.valueOf(jA3);
                    if (jA3 > 0) {
                        this.f1516m.put(str7, lValueOf3);
                    }
                }
            }
            if (this.f1526z != null) {
                Map<String, Pair<Integer, Integer>> mapD2 = this.f1526z.d();
                if (mapD2 != null && (pair4 = mapD2.get(str)) != null && ((Integer) pair4.first).intValue() > 0) {
                    String str8 = "hour_" + iD + "_" + str;
                    if (!this.f1514k.containsKey(str8)) {
                        long jB = this.f1517q.b(str, "network_id");
                        Long lValueOf4 = Long.valueOf(jB);
                        if (jB > 0) {
                            this.f1514k.put(str8, lValueOf4);
                        }
                    }
                }
                Map<String, Pair<Integer, Integer>> mapE2 = this.f1526z.e();
                if (mapE2 != null && (pair3 = mapE2.get(str4)) != null && ((Integer) pair3.first).intValue() > 0) {
                    String str9 = "hour_" + iD + "_" + str4;
                    if (!this.f1515l.containsKey(str9)) {
                        long jB2 = this.f1517q.b(str4, a.C0051a.f3209f);
                        Long lValueOf5 = Long.valueOf(jB2);
                        if (jB2 > 0) {
                            this.f1515l.put(str9, lValueOf5);
                        }
                    }
                }
            }
            if (j3 > 0) {
                String str10 = "hour_" + iD + "_" + str2;
                if (!this.f1516m.containsKey(str10)) {
                    long jB3 = this.f1517q.b(str2, a.C0051a.f3211h);
                    Long lValueOf6 = Long.valueOf(jB3);
                    if (jB3 > 0) {
                        this.f1516m.put(str10, lValueOf6);
                    }
                }
            }
            if (this.f1502A != null) {
                Map<String, Pair<Integer, Integer>> mapD3 = this.f1502A.d();
                if (mapD3 != null && (pair2 = mapD3.get(str)) != null && ((Integer) pair2.second).intValue() > 0) {
                    String strConcat = "time_stamp_".concat(String.valueOf(str));
                    if (!this.f1514k.containsKey(strConcat) && (fVarC3 = this.f1517q.c(str, "network_id")) != null) {
                        this.f1514k.put(strConcat, Long.valueOf(fVarC3.i()));
                    }
                }
                Map<String, Pair<Integer, Integer>> mapE3 = this.f1502A.e();
                if (mapE3 != null && (pair = mapE3.get(str4)) != null && ((Integer) pair.second).intValue() > 0) {
                    String strConcat2 = "time_stamp_".concat(String.valueOf(str4));
                    if (!this.f1515l.containsKey(strConcat2) && (fVarC2 = this.f1517q.c(str4, a.C0051a.f3209f)) != null) {
                        this.f1515l.put(strConcat2, Long.valueOf(fVarC2.i()));
                    }
                }
            }
            if (j4 > 0) {
                String strConcat3 = "time_stamp_".concat(String.valueOf(str2));
                if (this.f1516m.containsKey(strConcat3) || (fVarC = this.f1517q.c(str2, a.C0051a.f3211h)) == null) {
                    return;
                }
                this.f1516m.put(strConcat3, Long.valueOf(fVarC.i()));
            }
        } catch (Throwable unused) {
        }
    }

    private long a(String str, String str2, ConcurrentHashMap<String, Long> concurrentHashMap) {
        String str3 = "day_" + c() + "_" + str;
        Long lValueOf = concurrentHashMap.get(str3);
        if (lValueOf == null) {
            long jA = this.f1517q.a(str, str2);
            lValueOf = Long.valueOf(jA);
            if (jA > 0) {
                concurrentHashMap.put(str3, lValueOf);
            }
        }
        return lValueOf.longValue();
    }

    public final void a(int i2, String str, String str2, String str3) {
        try {
            String strP = s.b().p();
            long jCurrentTimeMillis = System.currentTimeMillis();
            b();
            int i3 = Integer.parseInt(this.f1520t);
            int i4 = this.f1518r;
            int i5 = this.f1519s;
            this.f1517q.a(new f("2", strP, String.valueOf(i2), str, i2 + "_" + str, str2, str3, i3, i4, i5, jCurrentTimeMillis));
            a(1, this.f1511h, "day_".concat(String.valueOf(i4)), jCurrentTimeMillis);
            a(1, this.f1512i, "day_" + i4 + "_" + str, jCurrentTimeMillis);
            a(1, this.f1514k, "day_" + i4 + "_" + i2, jCurrentTimeMillis);
            a(1, this.f1515l, "day_" + i4 + "_" + i2 + "_" + str, jCurrentTimeMillis);
            ConcurrentHashMap<String, Long> concurrentHashMap = this.f1513j;
            StringBuilder sb = new StringBuilder("day_");
            sb.append(i4);
            sb.append("_");
            sb.append(str2);
            b(1, concurrentHashMap, sb.toString(), jCurrentTimeMillis);
            b(1, this.f1516m, "day_" + i4 + "_" + str3, jCurrentTimeMillis);
            a(1, this.f1511h, "hour_".concat(String.valueOf(i5)), jCurrentTimeMillis);
            a(1, this.f1512i, "hour_" + i5 + "_" + str, jCurrentTimeMillis);
            a(1, this.f1514k, "hour_" + i5 + "_" + i2, jCurrentTimeMillis);
            a(1, this.f1515l, "hour_" + i5 + "_" + i2 + "_" + str, jCurrentTimeMillis);
            ConcurrentHashMap<String, Long> concurrentHashMap2 = this.f1513j;
            StringBuilder sb2 = new StringBuilder("hour_");
            sb2.append(i5);
            sb2.append("_");
            sb2.append(str2);
            b(1, concurrentHashMap2, sb2.toString(), jCurrentTimeMillis);
            b(1, this.f1516m, "hour_" + i5 + "_" + str3, jCurrentTimeMillis);
            a(2, this.f1511h, a.C0051a.f3216m, jCurrentTimeMillis);
            a(2, this.f1512i, "time_stamp_".concat(String.valueOf(str)), jCurrentTimeMillis);
            a(2, this.f1514k, "time_stamp_".concat(String.valueOf(i2)), jCurrentTimeMillis);
            a(2, this.f1515l, "time_stamp_" + i2 + "_" + str, jCurrentTimeMillis);
            b(2, this.f1513j, "time_stamp_".concat(String.valueOf(str2)), jCurrentTimeMillis);
            b(2, this.f1516m, "time_stamp_".concat(String.valueOf(str3)), jCurrentTimeMillis);
        } catch (Throwable unused) {
        }
    }

    private static void a(int i2, ConcurrentHashMap<String, Long> concurrentHashMap, String str, long j2) {
        long jValueOf;
        if (concurrentHashMap != null) {
            if (i2 == 2) {
                concurrentHashMap.put(str, Long.valueOf(j2));
                return;
            }
            Long l2 = concurrentHashMap.get(str);
            if (l2 == null) {
                jValueOf = 1L;
            } else {
                jValueOf = Long.valueOf(l2.longValue() + 1);
            }
            concurrentHashMap.put(str, jValueOf);
        }
    }

    public final void a(by byVar) {
        if (byVar.bH() == null || this.f1517q == null) {
            return;
        }
        i().d(byVar);
    }
}
