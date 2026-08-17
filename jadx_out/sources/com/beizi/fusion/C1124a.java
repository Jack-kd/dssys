package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.view.View;
import com.beizi.fusion.C1135g;
import com.beizi.fusion.asnp.adn.ad.model.impl.db.AdvertCacheDBModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.AdResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.bid.BiddingModel3;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.requrl.RequestUrlModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.StrategyModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.cache.AdCacheModel;
import com.beizi.fusion.da;
import com.beizi.fusion.l5;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;

/* renamed from: com.beizi.fusion.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1124a {

    /* renamed from: b, reason: collision with root package name */
    private final C1140l f12565b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f12566c;

    /* renamed from: f, reason: collision with root package name */
    private final ScheduledExecutorService f12569f;

    /* renamed from: g, reason: collision with root package name */
    private final k f12570g = new C0144a();

    /* renamed from: a, reason: collision with root package name */
    private final Map f12564a = new ArrayMap();

    /* renamed from: d, reason: collision with root package name */
    private final HashMap f12567d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    private final HashMap f12568e = new HashMap();

    /* renamed from: com.beizi.fusion.a$b */
    public class b implements oc {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ C1135g f12572a;

        public b(C1135g c1135g) {
            this.f12572a = c1135g;
        }

        @Override // com.beizi.fusion.oc
        public void a(ConfigResponseModel configResponseModel, C1135g.a aVar, boolean z2) {
            C1124a.this.a();
            if (C1135g.a.VALID != aVar || configResponseModel == null) {
                return;
            }
            C1124a.this.c(configResponseModel.getStrategyList());
            C1124a.this.c();
            C1124a.this.a(configResponseModel.getRequestUrl());
            jl.a().a(C1124a.this.f12566c, configResponseModel.getRequestUrl());
            this.f12572a.b(this);
        }
    }

    /* renamed from: com.beizi.fusion.a$c */
    public class c implements l5.a {
        public c() {
        }

        @Override // com.beizi.fusion.l5.a
        public Long a(AdvertCacheDBModel advertCacheDBModel) {
            return Long.valueOf(advertCacheDBModel.getPrimaryID());
        }
    }

    /* renamed from: com.beizi.fusion.a$d */
    public static class d extends ha {
        public d(Context context) {
            super(context);
        }

        @Override // com.beizi.fusion.bb
        public void a(String str, fb fbVar, ua uaVar) {
            super.a(str, fbVar, uaVar);
        }

        @Override // com.beizi.fusion.ha
        public String a(ConfigResponseModel configResponseModel) {
            return super.a(configResponseModel);
        }
    }

    /* renamed from: com.beizi.fusion.a$e */
    public static class e extends da {
        public e(da.d dVar) {
            super(dVar);
        }
    }

    /* renamed from: com.beizi.fusion.a$f */
    public static class f extends da.d {

        /* renamed from: l, reason: collision with root package name */
        private final EnumC1130d f12575l;

        public /* synthetic */ f(AdCacheModel adCacheModel, EnumC1130d enumC1130d, C0144a c0144a) {
            this(adCacheModel, enumC1130d);
        }

        @Override // com.beizi.fusion.da.d
        public EnumC1130d a() {
            return this.f12575l;
        }

        @Override // com.beizi.fusion.da.d
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        public e l(da.d dVar) {
            return new e(this);
        }

        private f(AdCacheModel adCacheModel, EnumC1130d enumC1130d) {
            a(adCacheModel.getBatchFetchCount());
            this.f12575l = enumC1130d;
            a(10000L);
        }
    }

    /* renamed from: com.beizi.fusion.a$g */
    public static class g implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final d f12576a;

        /* renamed from: b, reason: collision with root package name */
        private final Context f12577b;

        /* renamed from: c, reason: collision with root package name */
        private final AdCacheModel f12578c;

        /* renamed from: d, reason: collision with root package name */
        private final String f12579d;

        /* renamed from: e, reason: collision with root package name */
        private EnumC1130d f12580e;

        /* renamed from: f, reason: collision with root package name */
        private ua f12581f;

        /* renamed from: com.beizi.fusion.a$g$a, reason: collision with other inner class name */
        public class C0145a extends xp {
            public C0145a(Context context) {
                super(context);
            }

            @Override // com.beizi.fusion.xp
            public void a(AdResponseModel adResponseModel, n1[] n1VarArr) {
                if (adResponseModel != null) {
                    ((C1124a) C1126b.a().b(g.this.f12577b)).a(g.this.f12579d, adResponseModel);
                }
            }

            @Override // com.beizi.fusion.xp
            public void b(pc pcVar) {
            }
        }

        public /* synthetic */ g(Context context, String str, AdCacheModel adCacheModel, C0144a c0144a) {
            this(context, str, adCacheModel);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a()) {
                if (C1127b0.a().a(this.f12577b) || C1127b0.a().b(this.f12577b)) {
                    w1 w1Var = new w1(this.f12577b);
                    e eVar = (e) new f(this.f12578c, this.f12580e, null).a(this.f12579d);
                    C1135g c1135g = (C1135g) C1136h.a().b(this.f12577b);
                    C1150v c1150vA = c1135g.a();
                    ConfigResponseModel configResponseModelA = c1135g.a(false);
                    w1Var.a(eVar, c1150vA, eVar.b(), qn.a(), configResponseModelA.getStrategyMD5(this.f12579d));
                    String strA = qo.a(this.f12576a.a(configResponseModelA), c1150vA.z());
                    if (this.f12581f == null) {
                        this.f12581f = new C0145a(this.f12577b);
                    }
                    this.f12576a.a(strA, w1Var, this.f12581f);
                }
            }
        }

        private g(Context context, String str, AdCacheModel adCacheModel) {
            this.f12577b = context;
            this.f12578c = adCacheModel;
            this.f12579d = str;
            this.f12576a = new d(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(EnumC1130d enumC1130d) {
            this.f12580e = enumC1130d;
        }

        private boolean a() {
            return ((C1124a) C1126b.a().b(this.f12577b)).c(this.f12579d) < this.f12578c.getCacheMaxQty();
        }
    }

    /* renamed from: com.beizi.fusion.a$h */
    public static class h extends eb {

        /* renamed from: d, reason: collision with root package name */
        private final String f12583d;

        /* renamed from: e, reason: collision with root package name */
        private final ScheduledExecutorService f12584e;

        /* renamed from: f, reason: collision with root package name */
        private AdCacheModel f12585f;

        /* renamed from: g, reason: collision with root package name */
        private final k f12586g;

        /* renamed from: h, reason: collision with root package name */
        private volatile boolean f12587h;

        public /* synthetic */ h(Context context, String str, AdCacheModel adCacheModel, ScheduledExecutorService scheduledExecutorService, k kVar, C0144a c0144a) {
            this(context, str, adCacheModel, scheduledExecutorService, kVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized boolean d() {
            return this.f12587h;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void e() throws Throwable {
            try {
                try {
                    if (this.f12585f.getCacheRefreshInterval() > 0) {
                        this.f12587h = true;
                        a(0L, this.f12585f.getCacheRefreshInterval(), TimeUnit.MILLISECONDS);
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void f() {
            this.f12587h = false;
            c();
            k kVar = this.f12586g;
            if (kVar != null) {
                kVar.a(this.f12583d);
            }
        }

        private h(Context context, String str, AdCacheModel adCacheModel, ScheduledExecutorService scheduledExecutorService, k kVar) {
            super(new g(context.getApplicationContext(), str, adCacheModel, null));
            this.f12587h = false;
            this.f12584e = scheduledExecutorService;
            this.f12583d = str;
            this.f12586g = kVar;
            this.f12585f = adCacheModel;
        }

        @Override // com.beizi.fusion.eb
        public ScheduledExecutorService b() {
            return this.f12584e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void a(AdCacheModel adCacheModel) {
            if (!adCacheModel.equals(this.f12585f)) {
                this.f12585f = adCacheModel;
                f();
                e();
                k kVar = this.f12586g;
                if (kVar != null) {
                    kVar.a(this.f12583d, this);
                }
            }
        }

        public void a(EnumC1130d enumC1130d) {
            Runnable runnableA = a();
            if (runnableA instanceof g) {
                ((g) runnableA).a(enumC1130d);
            }
        }
    }

    /* renamed from: com.beizi.fusion.a$i */
    public static class i implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final String f12588a;

        /* renamed from: b, reason: collision with root package name */
        private final Context f12589b;

        public /* synthetic */ i(Context context, String str, C0144a c0144a) {
            this(context, str);
        }

        @Override // java.lang.Runnable
        public void run() {
            qf.b().a(this.f12589b, this.f12588a, sh.TEMPORARY);
        }

        private i(Context context, String str) {
            this.f12588a = str;
            this.f12589b = context;
        }
    }

    /* renamed from: com.beizi.fusion.a$j */
    public static class j implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final String f12590a;

        /* renamed from: b, reason: collision with root package name */
        private final Context f12591b;

        /* renamed from: c, reason: collision with root package name */
        private final hb f12592c;

        /* renamed from: com.beizi.fusion.a$j$a, reason: collision with other inner class name */
        public class C0146a extends b1 {
            public C0146a() {
            }

            @Override // com.beizi.fusion.ua
            public void a(pc pcVar) {
            }

            @Override // com.beizi.fusion.b1
            public void a(ta taVar) {
                JSONArray jSONArrayB;
                if (taVar != null) {
                    String strB = taVar.b();
                    if (TextUtils.isEmpty(strB) || (jSONArrayB = pg.b(strB)) == null || jSONArrayB.length() <= 0) {
                        return;
                    }
                    for (int i2 = 0; i2 < jSONArrayB.length(); i2++) {
                        String strA = pg.a(jSONArrayB, i2);
                        if (!TextUtils.isEmpty(strA)) {
                            j.this.f12592c.c(new i(j.this.f12591b, strA, null));
                        }
                    }
                }
            }
        }

        public /* synthetic */ j(Context context, String str, hb hbVar, C0144a c0144a) {
            this(context, str, hbVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            w9 w9Var = (w9) o0.a().b(this.f12591b);
            String strE = ((C1135g) C1136h.a().b(this.f12591b)).a().e();
            if (TextUtils.isEmpty(strE)) {
                return;
            }
            w9Var.a(this.f12590a + "?id=" + g3.c(strE), new C0146a());
        }

        private j(Context context, String str, hb hbVar) {
            this.f12591b = context.getApplicationContext();
            this.f12590a = str;
            this.f12592c = hbVar;
        }
    }

    /* renamed from: com.beizi.fusion.a$k */
    public interface k {
        void a(String str);

        void a(String str, h hVar);
    }

    public C1124a(Context context) {
        this.f12566c = context.getApplicationContext();
        this.f12565b = (C1140l) C1141m.a().b(context);
        hb hbVar = (hb) fn.a().b(null);
        if (hbVar instanceof en) {
            this.f12569f = ((en) hbVar).a();
        } else {
            this.f12569f = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List list) {
        synchronized (this.f12568e) {
            try {
                this.f12568e.clear();
                if (list != null && !list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        StrategyModel strategyModel = (StrategyModel) it.next();
                        if (strategyModel != null) {
                            this.f12568e.put(strategyModel.getSpaceID(), strategyModel.getAdCache());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b() {
        C1135g c1135g = (C1135g) C1136h.a().b(this.f12566c);
        c1135g.a(new b(c1135g));
    }

    /* renamed from: com.beizi.fusion.a$a, reason: collision with other inner class name */
    public class C0144a implements k {
        public C0144a() {
        }

        @Override // com.beizi.fusion.C1124a.k
        public void a(String str) {
            synchronized (C1124a.this.f12567d) {
                C1124a.this.f12567d.remove(str);
            }
        }

        @Override // com.beizi.fusion.C1124a.k
        public void a(String str, h hVar) {
            synchronized (C1124a.this.f12567d) {
                C1124a.this.f12567d.put(str, hVar);
            }
        }
    }

    public boolean b(String str) {
        synchronized (this.f12568e) {
            try {
                boolean z2 = false;
                if (TextUtils.isEmpty(str) || !this.f12568e.containsKey(str)) {
                    return false;
                }
                AdCacheModel adCacheModel = (AdCacheModel) this.f12568e.get(str);
                if (adCacheModel != null && adCacheModel.getEnable() == 1) {
                    z2 = true;
                }
                return z2;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RequestUrlModel requestUrlModel) {
        if (requestUrlModel != null) {
            String preloadImageUrl = requestUrlModel.getPreloadImageUrl();
            hb hbVar = (hb) fn.a().b(this.f12566c);
            hbVar.b(new j(this.f12566c, preloadImageUrl, hbVar, null));
        }
    }

    private Set a(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        if (set != null) {
            hashSet.addAll(set);
        }
        if (set2 != null) {
            hashSet.addAll(set2);
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        HashMap map;
        synchronized (this.f12567d) {
            try {
                Set setKeySet = this.f12567d.keySet();
                synchronized (this.f12568e) {
                    map = new HashMap(this.f12568e);
                }
                Set<String> setA = a(setKeySet, map.keySet());
                if (!setA.isEmpty()) {
                    for (String str : setA) {
                        h hVar = (h) this.f12567d.get(str);
                        AdCacheModel adCacheModel = (AdCacheModel) map.get(str);
                        if (hVar != null) {
                            if (adCacheModel == null || adCacheModel.getEnable() == 0) {
                                hVar.f();
                            } else {
                                hVar.a(adCacheModel);
                            }
                        } else if (adCacheModel != null && adCacheModel.getEnable() == 1) {
                            this.f12567d.put(str, new h(this.f12566c, str, adCacheModel, this.f12569f, this.f12570g, null));
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f12565b != null) {
            this.f12565b.a(AdvertCacheDBModel.class, "status = ? OR expireTime < ? ", new String[]{"1", String.valueOf(System.currentTimeMillis())});
        }
    }

    private void b(List list) {
        C1140l c1140l = this.f12565b;
        if (c1140l != null) {
            c1140l.b();
            try {
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(Long.valueOf(((AdvertCacheDBModel) it.next()).getPrimaryID()));
                }
                this.f12565b.a(AdvertCacheDBModel.class, new String[]{"status"}, new String[]{"1"}, arrayList);
                this.f12565b.h();
                this.f12565b.d();
            } catch (Exception unused) {
                this.f12565b.d();
            } catch (Throwable th) {
                this.f12565b.d();
                throw th;
            }
        }
    }

    public List a(da daVar) throws Throwable {
        if (daVar == null || TextUtils.isEmpty(daVar.g())) {
            return null;
        }
        String strG = daVar.g();
        if (!b(strG)) {
            return null;
        }
        h hVar = (h) this.f12567d.get(strG);
        if (hVar != null && !hVar.d()) {
            hVar.a(daVar.b());
            hVar.e();
        }
        int iA = daVar.a();
        AdCacheModel adCacheModel = (AdCacheModel) this.f12568e.get(strG);
        if (adCacheModel != null) {
            return a(strG, iA, adCacheModel.getPriorityMode());
        }
        return null;
    }

    private List a(String str, int i2, int i3) {
        String strB;
        C1140l c1140l = this.f12565b;
        if (c1140l == null) {
            return null;
        }
        if (i3 == 0) {
            strB = c1140l.b(AdvertCacheDBModel.COLUMN_CACHE_TIME);
        } else {
            strB = c1140l.b("ecpm");
        }
        List listA = this.f12565b.a(AdvertCacheDBModel.class, "cacheKey = ? AND status = ? AND expireTime > ? ", new String[]{str, "0", String.valueOf(System.currentTimeMillis())}, strB, i2);
        if (listA == null || listA.isEmpty()) {
            return null;
        }
        b(listA);
        return listA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(String str) {
        C1140l c1140l = this.f12565b;
        if (c1140l == null) {
            return 0;
        }
        return c1140l.a(AdvertCacheDBModel.class, "cacheKey = ? AND status = ? AND expireTime > ? ", new String[]{str, "0", System.currentTimeMillis() + ""}, this.f12565b.b(AdvertCacheDBModel.COLUMN_CACHE_DATA));
    }

    public void a(String str, AdResponseModel adResponseModel) {
        C1140l c1140l;
        List<AdItemModel> listA = a(adResponseModel);
        if (listA == null || listA.isEmpty() || (c1140l = this.f12565b) == null) {
            return;
        }
        c1140l.b();
        try {
            for (AdItemModel adItemModel : listA) {
                if (adItemModel != null) {
                    AdvertCacheDBModel advertCacheDBModel = new AdvertCacheDBModel();
                    BiddingModel3 biddingModel = adItemModel.getBiddingModel();
                    advertCacheDBModel.setCacheEcpm(String.valueOf(biddingModel != null ? (int) biddingModel.getPrice() : 0));
                    advertCacheDBModel.setCacheTime(String.valueOf(System.currentTimeMillis()));
                    advertCacheDBModel.setExpireTime(adItemModel.getExpired() + "");
                    advertCacheDBModel.setCacheStatus("0");
                    advertCacheDBModel.setCacheKey(str);
                    advertCacheDBModel.setCacheData(adItemModel.toJsonString());
                    this.f12565b.a(advertCacheDBModel);
                }
            }
            this.f12565b.h();
            this.f12565b.d();
        } catch (Exception unused) {
            this.f12565b.d();
        } catch (Throwable th) {
            this.f12565b.d();
            throw th;
        }
    }

    private List a(AdResponseModel adResponseModel) {
        if (adResponseModel != null) {
            return adResponseModel.getAdItemList();
        }
        return null;
    }

    public synchronized View a(String str) {
        if (!this.f12564a.containsKey(str)) {
            return null;
        }
        return (View) this.f12564a.remove(str);
    }

    public synchronized String a(da daVar, View view) {
        if (daVar != null) {
            String strA = a(daVar.g(), daVar.b());
            this.f12564a.put(strA, view);
            return strA;
        }
        return "";
    }

    private String a(String str, EnumC1130d enumC1130d) {
        return th.a(str + enumC1130d.c() + System.currentTimeMillis());
    }

    public void a(List list) {
        if (list == null || this.f12565b == null) {
            return;
        }
        this.f12565b.a(AdvertCacheDBModel.class, new String[]{"status"}, new String[]{"0"}, l5.a(list, new c()));
    }
}
