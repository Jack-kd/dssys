package com.anythink.core.common;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATSharedPlacementConfig;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.h.as;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    public static final String f7922a = "v";

    /* renamed from: w, reason: collision with root package name */
    private static volatile v f7923w;

    /* renamed from: e, reason: collision with root package name */
    private com.anythink.core.common.r.g f7927e;

    /* renamed from: f, reason: collision with root package name */
    private List<com.anythink.core.common.r.h> f7928f;

    /* renamed from: k, reason: collision with root package name */
    private Map<String, com.anythink.core.common.r.c> f7933k;

    /* renamed from: l, reason: collision with root package name */
    private Map<String, a> f7934l;

    /* renamed from: m, reason: collision with root package name */
    private int f7935m;

    /* renamed from: n, reason: collision with root package name */
    private ATSharedPlacementConfig f7936n;

    /* renamed from: o, reason: collision with root package name */
    private List<com.anythink.core.common.r.h> f7937o;

    /* renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f7925c = new AtomicBoolean(false);

    /* renamed from: p, reason: collision with root package name */
    private final int f7938p = 0;

    /* renamed from: q, reason: collision with root package name */
    private final int f7939q = 1;

    /* renamed from: r, reason: collision with root package name */
    private final int f7940r = 2;

    /* renamed from: s, reason: collision with root package name */
    private final int f7941s = 3;

    /* renamed from: t, reason: collision with root package name */
    private int f7942t = 0;

    /* renamed from: u, reason: collision with root package name */
    private long f7943u = -1;

    /* renamed from: v, reason: collision with root package name */
    private final int f7944v = KSImageLoader.InnerImageLoadingListener.MAX_DURATION;

    /* renamed from: b, reason: collision with root package name */
    private final Context f7924b = com.anythink.core.common.d.s.b().g();

    /* renamed from: g, reason: collision with root package name */
    private final Map<String, com.anythink.core.common.r.h> f7929g = new ConcurrentHashMap(4);

    /* renamed from: h, reason: collision with root package name */
    private final Map<String, Boolean> f7930h = new ConcurrentHashMap(4);

    /* renamed from: j, reason: collision with root package name */
    private final Set<String> f7932j = Collections.synchronizedSet(new HashSet());

    /* renamed from: i, reason: collision with root package name */
    private final Set<String> f7931i = Collections.synchronizedSet(new HashSet());

    /* renamed from: d, reason: collision with root package name */
    private final com.anythink.core.common.r.e f7926d = new com.anythink.core.common.r.e();

    /* renamed from: com.anythink.core.common.v$6, reason: invalid class name */
    public class AnonymousClass6 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.r.h f7957a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f7958b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ATAdRequest f7959c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.r.c f7960d;

        public AnonymousClass6(com.anythink.core.common.r.h hVar, int i2, ATAdRequest aTAdRequest, com.anythink.core.common.r.c cVar) {
            this.f7957a = hVar;
            this.f7958b = i2;
            this.f7959c = aTAdRequest;
            this.f7960d = cVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            final com.anythink.core.common.r.b bVar = new com.anythink.core.common.r.b(this.f7957a, this.f7958b, this.f7959c);
            if (this.f7958b == 10) {
                bVar.b();
                bVar.a(v.this.f7927e.c());
            }
            bVar.a(new com.anythink.core.common.r.d() { // from class: com.anythink.core.common.v.6.1
                @Override // com.anythink.core.common.r.d
                public final void a(final String str, final com.anythink.core.common.r.h hVar) {
                    v.this.f7930h.remove(hVar.f7310b);
                    synchronized (v.this) {
                        v.b(new Runnable() { // from class: com.anythink.core.common.v.6.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                v.this.a(str, hVar, bVar);
                            }
                        });
                    }
                }

                @Override // com.anythink.core.common.r.d
                public final void b(final String str, final com.anythink.core.common.r.h hVar) {
                    v.this.f7930h.remove(hVar.f7310b);
                    synchronized (v.this) {
                        v.b(new Runnable() { // from class: com.anythink.core.common.v.6.1.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                v.this.a(str, bVar);
                            }
                        });
                    }
                }

                @Override // com.anythink.core.common.r.d
                public final void a(final String str, final com.anythink.core.common.r.h hVar, final AdError adError) {
                    v.this.f7930h.remove(hVar.f7310b);
                    synchronized (v.this) {
                        v.b(new Runnable() { // from class: com.anythink.core.common.v.6.1.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                v.this.b(str, hVar, bVar);
                            }
                        });
                    }
                }
            });
            this.f7960d.a(bVar);
            this.f7960d.c();
        }
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        String f7982a;

        /* renamed from: b, reason: collision with root package name */
        ATAdRequest f7983b;

        /* renamed from: c, reason: collision with root package name */
        volatile ScheduledFuture<?> f7984c;

        public a(String str, ATAdRequest aTAdRequest) {
            this.f7982a = str;
            this.f7983b = aTAdRequest;
        }

        public final void a() {
            com.anythink.core.common.v.b.c.a();
            com.anythink.core.common.v.b.c.a(this.f7984c);
            this.f7984c = null;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (v.this) {
                try {
                    if (v.this.a(this.f7982a)) {
                        if (this.f7983b == null) {
                            this.f7983b = new ATAdRequest.Builder().setChannelSource(com.anythink.core.common.d.s.b().F()).build();
                        }
                        v.this.a((com.anythink.core.common.r.h) v.this.f7929g.get(this.f7982a), 11, this.f7983b);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private v() {
    }

    public static /* synthetic */ int c(v vVar) {
        vVar.f7942t = 3;
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c(com.anythink.core.common.r.g gVar) {
        try {
            if (com.anythink.core.common.b.e.a()) {
                return;
            }
            if (this.f7942t == 0) {
                this.f7942t = 1;
                this.f7937o = Collections.synchronizedList(new ArrayList());
                for (com.anythink.core.common.r.h hVar : this.f7928f) {
                    if (!this.f7931i.contains(hVar.f7310b)) {
                        Integer[] numArr = hVar.f7319k;
                        if (numArr != null) {
                            if (Arrays.asList(numArr).contains(10)) {
                                this.f7937o.add(hVar);
                                c(hVar.f7310b, String.valueOf(hVar.f7309a));
                            }
                        } else if (gVar != null && gVar.j()) {
                            this.f7937o.add(hVar);
                            c(hVar.f7310b, String.valueOf(hVar.f7309a));
                        }
                    }
                }
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j2 = this.f7943u;
                a(new Runnable() { // from class: com.anythink.core.common.v.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (com.anythink.core.common.d.s.b().A()) {
                            v.this.f7925c.set(false);
                            v.c(v.this);
                        } else if (v.this.f7937o == null || v.this.f7937o.isEmpty()) {
                            v.c(v.this);
                        } else {
                            v.this.c();
                        }
                    }
                }, jElapsedRealtime < j2 ? j2 - SystemClock.elapsedRealtime() : 0L);
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            List<com.anythink.core.common.r.h> list = this.f7928f;
            if (list != null) {
                for (com.anythink.core.common.r.h hVar2 : list) {
                    if (hVar2 != null) {
                        Integer[] numArr2 = hVar2.f7319k;
                        if (numArr2 != null) {
                            if (Arrays.asList(numArr2).contains(10)) {
                                arrayList.add(hVar2.f7310b);
                            }
                        } else if (gVar != null && gVar.j()) {
                            arrayList.add(hVar2.f7310b);
                        }
                    }
                }
            }
            Set<String> set = this.f7931i;
            if (set != null) {
                arrayList2.addAll(set);
            }
            if (!arrayList2.isEmpty()) {
                arrayList2.removeAll(arrayList);
            }
            Set<String> set2 = this.f7931i;
            if (set2 != null) {
                arrayList.removeAll(set2);
            }
            int i2 = 0;
            if (!arrayList.isEmpty()) {
                this.f7937o = Collections.synchronizedList(new ArrayList());
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    com.anythink.core.common.r.h hVar3 = this.f7929g.get((String) obj);
                    if (hVar3 != null) {
                        c(hVar3.f7310b, String.valueOf(hVar3.f7309a));
                        if (this.f7942t == 3) {
                            b(hVar3);
                        } else {
                            this.f7937o.add(hVar3);
                        }
                    }
                }
            }
            if (!arrayList2.isEmpty()) {
                int size2 = arrayList2.size();
                while (i2 < size2) {
                    Object obj2 = arrayList2.get(i2);
                    i2++;
                    String str = (String) obj2;
                    b(str);
                    this.f7931i.remove(str);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void d(String str, String str2) {
        Map<String, Object> nativeLocalExtra;
        if (this.f7936n == null) {
            return;
        }
        str2.getClass();
        switch (str2) {
            case "0":
                nativeLocalExtra = this.f7936n.getNativeLocalExtra();
                break;
            case "1":
                nativeLocalExtra = this.f7936n.getRewardVideoLocalExtra();
                break;
            case "2":
                nativeLocalExtra = this.f7936n.getBannerLocalExtra();
                break;
            case "3":
                nativeLocalExtra = this.f7936n.getInterstitialLocalExtra();
                break;
            case "4":
                nativeLocalExtra = this.f7936n.getSplashLocalExtra();
                break;
            default:
                nativeLocalExtra = null;
                break;
        }
        a(str, str2).b(nativeLocalExtra);
    }

    private f e(String str, String str2) {
        if (a(str)) {
            return b(str, str2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Runnable runnable) {
        com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cJ, runnable), 0L);
    }

    private boolean b(com.anythink.core.common.r.g gVar) {
        boolean z2 = false;
        if (com.anythink.core.common.d.s.b().A()) {
            this.f7925c.set(false);
            return false;
        }
        if (gVar == null) {
            this.f7925c.set(false);
            return false;
        }
        List<com.anythink.core.common.r.h> listE = gVar.e();
        this.f7928f = listE;
        AtomicBoolean atomicBoolean = this.f7925c;
        if (listE != null && !listE.isEmpty()) {
            z2 = true;
        }
        atomicBoolean.set(z2);
        this.f7927e = gVar;
        this.f7929g.clear();
        this.f7929g.putAll(gVar.d());
        return this.f7925c.get();
    }

    private static boolean e() {
        return com.anythink.core.common.b.e.a();
    }

    public final synchronized void a(ATSharedPlacementConfig aTSharedPlacementConfig) {
        if (aTSharedPlacementConfig == null) {
            ATSDK.isNetworkLogDebug();
            return;
        }
        if (ATSDK.isNetworkLogDebug()) {
            aTSharedPlacementConfig.toString();
        }
        this.f7936n = aTSharedPlacementConfig;
        List<com.anythink.core.common.r.h> list = this.f7928f;
        if (list != null) {
            for (com.anythink.core.common.r.h hVar : list) {
                d(hVar.f7310b, String.valueOf(hVar.f7309a));
            }
        }
    }

    private static Context d() {
        return com.anythink.core.common.d.s.b().g();
    }

    private void b(com.anythink.core.common.r.h hVar) {
        a(hVar, 10, new ATAdRequest.Builder().setChannelSource(com.anythink.core.common.d.s.b().F()).build());
    }

    private void b(com.anythink.core.common.r.h hVar, ATAdRequest aTAdRequest) {
        if (aTAdRequest == null) {
            aTAdRequest = new ATAdRequest.Builder().setChannelSource(com.anythink.core.common.d.s.b().F()).build();
        }
        a(hVar, 6, aTAdRequest);
    }

    public final synchronized void b(final String str, final ATAdRequest aTAdRequest) {
        b(new Runnable() { // from class: com.anythink.core.common.v.5
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (v.this) {
                    try {
                        if (TextUtils.isEmpty(str)) {
                            return;
                        }
                        if (v.this.f7932j.contains(str)) {
                            if (v.this.f7934l == null || v.this.f7934l.get(str) == null) {
                                v.this.c(str, aTAdRequest);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    public static v a() {
        if (f7923w == null) {
            synchronized (v.class) {
                try {
                    if (f7923w == null) {
                        f7923w = new v();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7923w;
    }

    private void b(String str) {
        Map<String, a> map;
        a aVarRemove;
        if (TextUtils.isEmpty(str) || (map = this.f7934l) == null || (aVarRemove = map.remove(str)) == null) {
            return;
        }
        aVarRemove.a();
    }

    private static ScheduledFuture<?> a(Runnable runnable, long j2) {
        return com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cK, runnable), j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(String str, com.anythink.core.common.r.h hVar, final com.anythink.core.common.r.b bVar) {
        this.f7926d.a(hVar, new com.anythink.core.common.r.a() { // from class: com.anythink.core.common.v.7
            @Override // com.anythink.core.common.r.a
            public final void a(int i2, com.anythink.core.common.r.h hVar2) {
                com.anythink.core.common.r.b bVar2 = bVar;
                v.this.a(hVar2, i2, bVar2 != null ? bVar2.a() : null);
            }
        });
        com.anythink.core.common.r.c cVarRemove = this.f7933k.remove(str);
        if (cVarRemove != null && bVar != null) {
            c(cVarRemove.e(), bVar.a());
            a(cVarRemove, bVar);
        }
    }

    public final boolean a(com.anythink.core.e.m mVar) {
        if (mVar == null || ATAdxSetting.getInstance().isAdxNetworkMode(mVar.i()) || com.anythink.core.common.b.e.a()) {
            return false;
        }
        return a(mVar.v());
    }

    private boolean a(com.anythink.core.common.r.h hVar) {
        List<ATAdInfo> listA;
        String str = hVar.f7310b;
        f fVarB = a(str) ? b(str, String.valueOf(hVar.f7309a)) : null;
        if (fVarB == null) {
            return false;
        }
        int i2 = hVar.f7312d;
        double d2 = hVar.f7313e;
        boolean z2 = i2 > 0 && (listA = fVarB.a(this.f7924b, (ae) null)) != null && listA.size() < i2;
        if (z2) {
            return true;
        }
        if (d2 > 0.0d) {
            HashMap map = new HashMap();
            ae aeVar = new ae();
            aeVar.a(map);
            com.anythink.core.common.h.c cVarA = fVarB.a(this.f7924b, false, false, aeVar);
            if (cVarA != null && cVarA.n() < d2) {
                return true;
            }
        }
        return z2;
    }

    public static f b(String str, String str2) {
        return t.a().a(str, str2);
    }

    public final boolean b() {
        return this.f7925c.get();
    }

    public static /* synthetic */ void b(v vVar, com.anythink.core.common.r.h hVar, ATAdRequest aTAdRequest) {
        if (aTAdRequest == null) {
            aTAdRequest = new ATAdRequest.Builder().setChannelSource(com.anythink.core.common.d.s.b().F()).build();
        }
        vVar.a(hVar, 6, aTAdRequest);
    }

    public final synchronized void a(final com.anythink.core.common.r.g gVar) {
        try {
            if (b(gVar)) {
                if (com.anythink.core.common.b.e.a()) {
                    return;
                }
                if (gVar.i()) {
                    if (this.f7942t == 0 && this.f7943u == -1) {
                        this.f7943u = SystemClock.elapsedRealtime() + gVar.a();
                    }
                    b(new Runnable() { // from class: com.anythink.core.common.v.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            v.this.c(gVar);
                        }
                    });
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, String str2) {
        t.a().a(str, false);
        d(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c() {
        try {
            this.f7942t = 2;
            List<com.anythink.core.common.r.h> list = this.f7937o;
            ArrayList arrayList = new ArrayList(3);
            int iMin = Math.min(this.f7927e.b(), list.size());
            int i2 = 0;
            for (int i3 = 0; i3 < iMin; i3++) {
                arrayList.add(list.get(i3));
            }
            list.removeAll(arrayList);
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                b((com.anythink.core.common.r.h) obj);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a(com.anythink.core.common.r.g gVar, com.anythink.core.e.m mVar, final as asVar) {
        String strV;
        final com.anythink.core.common.r.h hVar;
        if (mVar != null) {
            strV = mVar.v();
        } else {
            strV = "";
        }
        if (!b(gVar) || TextUtils.isEmpty(strV) || com.anythink.core.common.b.e.a() || !gVar.a(12, strV) || (hVar = this.f7929g.get(strV)) == null || this.f7931i.contains(strV)) {
            return;
        }
        this.f7931i.add(strV);
        hVar.f7314f = asVar;
        hVar.f7316h = mVar;
        b(new Runnable() { // from class: com.anythink.core.common.v.3
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (v.this) {
                    try {
                        v vVar = v.this;
                        com.anythink.core.common.r.h hVar2 = hVar;
                        vVar.c(hVar2.f7310b, String.valueOf(hVar2.f7309a));
                        as asVar2 = asVar;
                        v.a(v.this, hVar, asVar2 != null ? asVar2.b() : null);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, ATAdRequest aTAdRequest) {
        com.anythink.core.common.r.g gVar;
        if (!com.anythink.core.common.b.e.a() && (gVar = this.f7927e) != null && gVar.a(11, str) && a(str)) {
            com.anythink.core.common.r.h hVar = this.f7929g.get(str);
            if (hVar == null) {
                Log.e(f7922a, "startScheduleLoadTask: sharedPlaceInfo = null");
                return;
            }
            if (this.f7934l == null) {
                this.f7934l = new ConcurrentHashMap(5);
            }
            int i2 = hVar.f7311c;
            if (i2 < 30000) {
                i2 = 30000;
            }
            a aVar = new a(str, aTAdRequest);
            this.f7934l.put(str, aVar);
            aVar.f7984c = a(aVar, i2);
        }
    }

    public static f a(String str, String str2) {
        return f.a(com.anythink.core.common.d.s.b().g(), str, str2);
    }

    private List<com.anythink.core.common.r.h> a(List<com.anythink.core.common.r.h> list) {
        ArrayList arrayList = new ArrayList(3);
        int iMin = Math.min(this.f7927e.b(), list.size());
        for (int i2 = 0; i2 < iMin; i2++) {
            arrayList.add(list.get(i2));
        }
        list.removeAll(arrayList);
        return arrayList;
    }

    private void a(com.anythink.core.common.r.h hVar, ATAdRequest aTAdRequest) {
        if (aTAdRequest == null) {
            aTAdRequest = new ATAdRequest.Builder().setChannelSource(com.anythink.core.common.d.s.b().F()).build();
        }
        a(hVar, 12, aTAdRequest);
    }

    public final void a(final String str, final ATAdRequest aTAdRequest) {
        if (this.f7927e == null || com.anythink.core.common.b.e.a() || !this.f7927e.a(6, str)) {
            return;
        }
        b(new Runnable() { // from class: com.anythink.core.common.v.4
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (v.this) {
                    try {
                        if (v.this.a(str)) {
                            v.b(v.this, (com.anythink.core.common.r.h) v.this.f7929g.get(str), aTAdRequest);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.anythink.core.common.r.h hVar, int i2, ATAdRequest aTAdRequest) {
        if (hVar == null) {
            Log.e(f7922a, "loadSharedPlacement: sharedPlaceInfo = null");
            return;
        }
        if (i2 != 16) {
            this.f7926d.a(hVar);
        }
        b(hVar.f7310b);
        Boolean bool = this.f7930h.get(hVar.f7310b);
        Boolean bool2 = Boolean.TRUE;
        if (bool2.equals(bool)) {
            return;
        }
        this.f7930h.put(hVar.f7310b, bool2);
        if (i2 == 10 || i2 == 12) {
            if (i2 == 10) {
                this.f7935m++;
            }
            this.f7931i.add(hVar.f7310b);
        }
        com.anythink.core.common.r.c cVar = new com.anythink.core.common.r.c(hVar.f7310b);
        if (this.f7933k == null) {
            this.f7933k = new ConcurrentHashMap();
        }
        this.f7933k.put(cVar.a(), cVar);
        com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cI, new AnonymousClass6(hVar, i2, aTAdRequest, cVar)));
    }

    public final boolean a(String str) {
        try {
            if (!this.f7925c.get() || com.anythink.core.common.d.s.b().A() || TextUtils.isEmpty(str)) {
                return false;
            }
            return this.f7929g.containsKey(str);
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(String str, com.anythink.core.common.r.h hVar, com.anythink.core.common.r.b bVar) {
        List<ATAdInfo> listA;
        try {
            this.f7926d.a(hVar);
            com.anythink.core.common.r.c cVarRemove = this.f7933k.remove(str);
            if (cVarRemove != null && bVar != null) {
                String str2 = hVar.f7310b;
                f fVarB = a(str2) ? b(str2, String.valueOf(hVar.f7309a)) : null;
                boolean z2 = false;
                if (fVarB != null) {
                    int i2 = hVar.f7312d;
                    double d2 = hVar.f7313e;
                    boolean z3 = i2 > 0 && (listA = fVarB.a(this.f7924b, (ae) null)) != null && listA.size() < i2;
                    if (z3) {
                        z2 = true;
                    } else {
                        if (d2 > 0.0d) {
                            HashMap map = new HashMap();
                            ae aeVar = new ae();
                            aeVar.a(map);
                            com.anythink.core.common.h.c cVarA = fVarB.a(this.f7924b, false, false, aeVar);
                            if (cVarA != null && cVarA.n() < d2) {
                                z2 = true;
                            }
                        }
                        z2 = z3;
                    }
                }
                if (z2) {
                    c(cVarRemove.e(), bVar.a());
                }
                a(cVarRemove, bVar);
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(String str, com.anythink.core.common.r.b bVar) {
        com.anythink.core.common.r.c cVar = this.f7933k.get(str);
        if (cVar == null) {
            return;
        }
        a(cVar, bVar);
    }

    private void a(com.anythink.core.common.r.c cVar, com.anythink.core.common.r.b bVar) {
        this.f7932j.add(cVar.e());
        if (cVar.d() == 10 && cVar.b()) {
            this.f7935m--;
            if (this.f7935m >= this.f7927e.b()) {
                return;
            }
            if (!this.f7937o.isEmpty()) {
                com.anythink.core.common.r.h hVarRemove = this.f7937o.remove(0);
                ATAdRequest aTAdRequestA = bVar != null ? bVar.a() : null;
                if (aTAdRequestA == null) {
                    aTAdRequestA = new ATAdRequest.Builder().setChannelSource(com.anythink.core.common.d.s.b().F()).build();
                }
                a(hVarRemove, 10, aTAdRequestA);
                return;
            }
            if (this.f7935m == 0) {
                this.f7942t = 3;
            }
        }
    }

    public final void a(com.anythink.core.e.m mVar, final int i2, final as asVar, com.anythink.core.common.h.n nVar) {
        String strV;
        final com.anythink.core.common.r.h hVar;
        String strI = "";
        if (mVar != null) {
            try {
                strV = mVar.v();
            } catch (Throwable unused) {
                return;
            }
        } else {
            strV = "";
        }
        if (mVar != null) {
            strI = mVar.i();
        }
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        if (bVarB != null && !TextUtils.isEmpty(strV) && !strV.equals(strI)) {
            com.anythink.core.common.r.g gVarG = bVarB.g();
            if (b(gVarG) && !com.anythink.core.common.b.e.a() && gVarG.a(i2, strV) && (hVar = this.f7929g.get(strV)) != null) {
                if (Boolean.TRUE.equals(this.f7930h.get(strV))) {
                    return;
                }
                hVar.f7316h = mVar;
                hVar.f7315g = nVar;
                hVar.f7314f = asVar;
                this.f7926d.a(hVar);
                a(new Runnable() { // from class: com.anythink.core.common.v.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        as asVar2 = asVar;
                        v.this.a(hVar, i2, asVar2 != null ? asVar2.b() : null);
                    }
                }, i2 == 15 ? gVarG.f() : 0L);
            }
        }
    }

    public static /* synthetic */ void a(v vVar, com.anythink.core.common.r.h hVar, ATAdRequest aTAdRequest) {
        if (aTAdRequest == null) {
            aTAdRequest = new ATAdRequest.Builder().setChannelSource(com.anythink.core.common.d.s.b().F()).build();
        }
        vVar.a(hVar, 12, aTAdRequest);
    }
}
