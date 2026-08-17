package com.anythink.core.common;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.t;
import com.anythink.core.common.h.au;
import com.anythink.core.common.v.ad;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5408a = "l";

    /* renamed from: n, reason: collision with root package name */
    private static volatile l f5409n;

    /* renamed from: b, reason: collision with root package name */
    Context f5410b;

    /* renamed from: g, reason: collision with root package name */
    volatile ScheduledFuture<?> f5415g;

    /* renamed from: h, reason: collision with root package name */
    volatile long f5416h;

    /* renamed from: j, reason: collision with root package name */
    long f5418j;

    /* renamed from: l, reason: collision with root package name */
    boolean f5420l;

    /* renamed from: c, reason: collision with root package name */
    String f5411c = t.b.f3071n;

    /* renamed from: d, reason: collision with root package name */
    String f5412d = "first_time";

    /* renamed from: f, reason: collision with root package name */
    volatile boolean f5414f = false;

    /* renamed from: i, reason: collision with root package name */
    final long f5417i = i.l.f2678c;

    /* renamed from: k, reason: collision with root package name */
    AtomicBoolean f5419k = new AtomicBoolean(false);

    /* renamed from: m, reason: collision with root package name */
    Runnable f5421m = new Runnable() { // from class: com.anythink.core.common.l.1
        @Override // java.lang.Runnable
        public final void run() {
            if (l.this.f5419k.get()) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                l lVar = l.this;
                if (jElapsedRealtime < lVar.f5418j) {
                    return;
                }
                final boolean z2 = lVar.f5420l;
                lVar.f5420l = false;
                lVar.f5418j = SystemClock.elapsedRealtime() + l.this.f5416h;
                new com.anythink.core.e.i(com.anythink.core.e.d.a(), l.this.f5413e).a(new com.anythink.core.common.m.c() { // from class: com.anythink.core.common.l.1.1
                    @Override // com.anythink.core.common.m.s
                    public final void onLoadError(int i2, String str, AdError adError) {
                        l.a(l.this, false, (Object) null, z2);
                    }

                    @Override // com.anythink.core.common.m.s
                    public final void onLoadFinish(int i2, Object obj) {
                        l.a(l.this, true, obj, z2);
                    }
                });
                l.this.f5415g = com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bg, l.this.f5421m), l.this.f5416h);
            }
        }
    };

    /* renamed from: e, reason: collision with root package name */
    List<au> f5413e = new ArrayList();

    /* renamed from: com.anythink.core.common.l$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            au auVarA;
            try {
                l lVar = l.this;
                Map<String, ?> mapB = ad.b(lVar.f5410b, lVar.f5411c);
                if (mapB != null) {
                    if (!mapB.containsKey(l.this.f5412d)) {
                        l lVar2 = l.this;
                        lVar2.f5420l = true;
                        ad.a(lVar2.f5410b, lVar2.f5411c, lVar2.f5412d, System.currentTimeMillis());
                    }
                    for (Map.Entry<String, ?> entry : mapB.entrySet()) {
                        if (!TextUtils.equals(entry.getKey(), l.this.f5412d)) {
                            Object value = entry.getValue();
                            if ((value instanceof String) && (auVarA = au.a(new JSONObject((String) value))) != null) {
                                l.this.f5413e.add(auVarA);
                            }
                        }
                    }
                } else {
                    l lVar3 = l.this;
                    lVar3.f5420l = true;
                    ad.a(lVar3.f5410b, lVar3.f5411c, lVar3.f5412d, System.currentTimeMillis());
                }
                l lVar4 = l.this;
                l.a(lVar4, (List) lVar4.f5413e, true);
            } catch (Throwable unused) {
            }
            l.a(l.this, 0L);
        }
    }

    /* renamed from: com.anythink.core.common.l$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f5427a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f5428b;

        public AnonymousClass4(Object obj, boolean z2) {
            this.f5427a = obj;
            this.f5428b = z2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            JSONArray jSONArrayOptJSONArray;
            au auVarA;
            try {
                Object obj = this.f5427a;
                if (!(obj instanceof String) || TextUtils.isEmpty(obj.toString())) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(this.f5427a.toString());
                if (jSONObject.optInt("code", 0) == 0 && (jSONArrayOptJSONArray = jSONObject.optJSONArray("data")) != null) {
                    ArrayList arrayList = new ArrayList();
                    int length = jSONArrayOptJSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                        if (jSONObjectOptJSONObject != null && (auVarA = au.a(jSONObjectOptJSONObject)) != null) {
                            if (this.f5428b) {
                                auVarA.h();
                            }
                            if (l.this.f5413e.isEmpty()) {
                                arrayList.add(auVarA);
                            } else {
                                Iterator<au> it = l.this.f5413e.iterator();
                                while (it.hasNext()) {
                                    if (it.next().a(auVarA)) {
                                        break;
                                    }
                                }
                                arrayList.add(auVarA);
                            }
                        }
                    }
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    l.a(l.this, arrayList);
                    l.b(l.this, arrayList);
                    l.a(l.this, (List) arrayList, false);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: com.anythink.core.common.l$5, reason: invalid class name */
    public class AnonymousClass5 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f5430a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f5431b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.e.o f5432c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f5433d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f5434e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f5435f;

        public AnonymousClass5(int i2, List list, com.anythink.core.e.o oVar, int i3, String str, String str2) {
            this.f5430a = i2;
            this.f5431b = list;
            this.f5432c = oVar;
            this.f5433d = i3;
            this.f5434e = str;
            this.f5435f = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (int i2 = 0; i2 < this.f5430a; i2++) {
                String str = (String) this.f5431b.get(i2);
                this.f5432c.a(this.f5432c.f(str), this.f5434e, this.f5435f, str, null, null, 2, true, null, false, this.f5433d == 1 ? i.ac.f2555j : i.ac.f2556k);
            }
        }
    }

    private l(Context context) {
        this.f5410b = context;
    }

    public static l a(Context context) {
        if (f5409n == null) {
            synchronized (l.class) {
                try {
                    if (f5409n == null) {
                        f5409n = new l(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f5409n;
    }

    private static long b() {
        return SystemClock.elapsedRealtime();
    }

    private void c() {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bf, new AnonymousClass3()));
    }

    private void d() {
        if (this.f5419k.get()) {
            this.f5419k.set(false);
            com.anythink.core.common.v.b.c.a();
            com.anythink.core.common.v.b.c.a(this.f5415g);
        }
    }

    private void b(long j2) {
        if (this.f5419k.get()) {
            return;
        }
        this.f5419k.set(true);
        if (j2 > 0) {
            this.f5415g = com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bc, this.f5421m), j2);
        } else {
            this.f5415g = com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bd, this.f5421m), 0L);
        }
    }

    private void c(au auVar) {
        auVar.h();
        b(auVar);
    }

    private void b(au auVar) {
        JSONObject jSONObjectB;
        if (auVar == null || (jSONObjectB = auVar.b()) == null) {
            return;
        }
        ad.b(this.f5410b, this.f5411c, String.valueOf(auVar.d()), jSONObjectB.toString());
    }

    public final void a(long j2) {
        this.f5416h = Math.max(j2, i.l.f2678c);
        if (this.f5414f) {
            return;
        }
        this.f5414f = true;
        this.f5418j = SystemClock.elapsedRealtime();
        com.anythink.core.common.d.s.b().a(new com.anythink.core.common.d.l() { // from class: com.anythink.core.common.l.2
            @Override // com.anythink.core.common.d.l
            public final void a(boolean z2) {
                if (!z2) {
                    l.a(l.this);
                } else {
                    l.a(l.this, Math.max(l.this.f5418j - SystemClock.elapsedRealtime(), 0L) + 200);
                }
            }
        });
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bf, new AnonymousClass3()));
    }

    private void b(List<au> list) {
        List<au> list2 = this.f5413e;
        if (list2 == null) {
            return;
        }
        if (list2.isEmpty()) {
            this.f5413e.addAll(list);
            return;
        }
        Iterator<au> it = list.iterator();
        ArrayList arrayList = null;
        while (it.hasNext()) {
            int iD = it.next().d();
            for (au auVar : this.f5413e) {
                if (iD == auVar.d()) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(auVar);
                }
            }
        }
        if (arrayList != null) {
            this.f5413e.removeAll(arrayList);
        }
        this.f5413e.addAll(list);
    }

    private void a(boolean z2, Object obj, boolean z3) {
        if (z2) {
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bb, new AnonymousClass4(obj, z3)));
        }
    }

    private static String a(au auVar) {
        return String.valueOf(auVar.d());
    }

    private void a(List<au> list) {
        Iterator<au> it = list.iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.util.List<com.anythink.core.common.h.au> r16, boolean r17) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.l.a(java.util.List, boolean):void");
    }

    public static /* synthetic */ void b(l lVar, List list) {
        List<au> list2 = lVar.f5413e;
        if (list2 != null) {
            if (list2.isEmpty()) {
                lVar.f5413e.addAll(list);
                return;
            }
            Iterator it = list.iterator();
            ArrayList arrayList = null;
            while (it.hasNext()) {
                int iD = ((au) it.next()).d();
                for (au auVar : lVar.f5413e) {
                    if (iD == auVar.d()) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(auVar);
                    }
                }
            }
            if (arrayList != null) {
                lVar.f5413e.removeAll(arrayList);
            }
            lVar.f5413e.addAll(list);
        }
    }

    private void a(au auVar, boolean z2) {
        String str;
        String strP = com.anythink.core.common.d.s.b().p();
        String strQ = com.anythink.core.common.d.s.b().q();
        int iD = auVar.d();
        if (iD == 1 || iD == 2) {
            List<String> listE = auVar.e();
            z = listE == null || listE.isEmpty();
            com.anythink.core.common.s.a aVarC = ad.c(this.f5410b, t.b.f3058a);
            com.anythink.core.common.s.b.c cVarE = aVarC instanceof com.anythink.core.common.s.b.e ? ((com.anythink.core.common.s.b.e) aVarC).e() : null;
            Map<String, List<String>> mapA = a(cVarE);
            Set<String> setKeySet = mapA.keySet();
            auVar.a(setKeySet);
            com.anythink.core.common.s.b.c cVar = cVarE;
            ArrayList arrayList = new ArrayList();
            if (!mapA.isEmpty()) {
                if (z) {
                    arrayList.addAll(setKeySet);
                } else {
                    for (String str2 : listE) {
                        if (mapA.containsKey(str2)) {
                            arrayList.add(str2);
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                z = true;
            } else {
                boolean zA = iD == 2 ? a(z, arrayList, cVar, mapA) : true;
                com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.be, new AnonymousClass5(arrayList.size(), arrayList, com.anythink.core.e.o.a(this.f5410b), iD, strP, strQ)));
                z = zA;
            }
        } else if (iD == 3 || iD == 4) {
            z = (iD == 4 && com.anythink.core.common.f.f.a(com.anythink.core.common.f.e.a(this.f5410b)).a(strP) == -1) ? false : true;
            if (iD == 3) {
                str = i.ac.f2557l;
            } else {
                str = i.ac.f2558m;
            }
            com.anythink.core.e.d.a(this.f5410b).a(strP, strQ, str);
        } else if (iD == 5) {
            if (!ATSDK.isCnSDK()) {
                com.anythink.core.common.g.c.a().b(this.f5410b);
            }
            z = true;
        }
        if (z || z2) {
            auVar.h();
            b(auVar);
        }
        com.anythink.core.common.u.f.a(auVar);
    }

    private static boolean a(boolean z2, List<String> list, com.anythink.core.common.s.b.c cVar, Map<String, List<String>> map) {
        try {
            if (z2) {
                cVar.b();
                return true;
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                List<String> list2 = map.get(it.next());
                if (list2 != null) {
                    Iterator<String> it2 = list2.iterator();
                    while (it2.hasNext()) {
                        cVar.b(it2.next());
                    }
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Map<String, List<String>> a(com.anythink.core.common.s.b.c cVar) {
        Set<String> setKeySet;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        if (cVar != null) {
            try {
                Map<String, Object> mapA = cVar.a();
                if (mapA != null && (setKeySet = mapA.keySet()) != null) {
                    for (String str : setKeySet) {
                        com.anythink.core.common.s.b.a();
                        if (com.anythink.core.common.s.b.a(str)) {
                            String strReplace = str.replace(com.anythink.core.common.d.s.b().p(), "").replace("_PL_SY_COLD_START", "").replace("_PL_SY", "");
                            if (!TextUtils.isEmpty(strReplace)) {
                                List arrayList = (List) concurrentHashMap.get(strReplace);
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(str);
                                concurrentHashMap.put(strReplace, arrayList);
                            }
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return concurrentHashMap;
    }

    public static /* synthetic */ void a(l lVar, boolean z2, Object obj, boolean z3) {
        if (z2) {
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bb, lVar.new AnonymousClass4(obj, z3)));
        }
    }

    public static /* synthetic */ void a(l lVar, long j2) {
        if (lVar.f5419k.get()) {
            return;
        }
        lVar.f5419k.set(true);
        if (j2 > 0) {
            lVar.f5415g = com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bc, lVar.f5421m), j2);
        } else {
            lVar.f5415g = com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bd, lVar.f5421m), 0L);
        }
    }

    public static /* synthetic */ void a(l lVar) {
        if (lVar.f5419k.get()) {
            lVar.f5419k.set(false);
            com.anythink.core.common.v.b.c.a();
            com.anythink.core.common.v.b.c.a(lVar.f5415g);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(com.anythink.core.common.l r13, java.util.List r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.l.a(com.anythink.core.common.l, java.util.List, boolean):void");
    }

    public static /* synthetic */ void a(l lVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            lVar.b((au) it.next());
        }
    }
}
