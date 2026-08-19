package com.beizi.fusion;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.beizi.fusion.asnp.adn.ad.model.impl.db.AdvertCacheDBModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.AdResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ext.ResponseExtModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.s2s.S2SAdVerifyModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.StrategyModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.cache.AdCacheModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.td;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class we extends ha implements ia {

    /* renamed from: h, reason: collision with root package name */
    private static String f16921h = "";

    /* renamed from: b, reason: collision with root package name */
    private final b f16922b;

    /* renamed from: c, reason: collision with root package name */
    private final EnumC1130d f16923c;

    /* renamed from: d, reason: collision with root package name */
    private final Map f16924d;

    /* renamed from: e, reason: collision with root package name */
    private C1150v f16925e;

    /* renamed from: f, reason: collision with root package name */
    private final hb f16926f;

    /* renamed from: g, reason: collision with root package name */
    private da f16927g;

    public class a implements rb {
        public a() {
        }

        @Override // com.beizi.fusion.rb
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean fetch(StrategyModel strategyModel, String str) {
            if (strategyModel != null) {
                return str.equals(strategyModel.getSpaceID());
            }
            return false;
        }
    }

    public static class b extends AbstractHandlerC1149u {

        /* renamed from: b, reason: collision with root package name */
        private tc f16929b;

        public /* synthetic */ b(Context context, a aVar) {
            this(context);
        }

        private b(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(tc tcVar) {
            this.f16929b = tcVar;
        }

        @Override // com.beizi.fusion.AbstractHandlerC1149u
        public void a(Message message) {
            tc tcVar;
            if (message == null || (tcVar = this.f16929b) == null) {
                return;
            }
            int i2 = message.what;
            if (i2 == 0) {
                Object obj = message.obj;
                if (obj instanceof n1) {
                    tcVar.a((n1) obj);
                    return;
                }
                return;
            }
            if (i2 != 1) {
                return;
            }
            Object obj2 = message.obj;
            if (obj2 instanceof List) {
                tcVar.a((List) obj2);
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final AdTraceModel f16930a;

        /* renamed from: b, reason: collision with root package name */
        private final ConfigResponseModel f16931b;

        /* renamed from: c, reason: collision with root package name */
        private final da f16932c;

        /* renamed from: d, reason: collision with root package name */
        private final s9 f16933d;

        public /* synthetic */ c(we weVar, ConfigResponseModel configResponseModel, da daVar, AdTraceModel adTraceModel, a aVar) {
            this(configResponseModel, daVar, adTraceModel);
        }

        private void a(d dVar, f fVar, h hVar) {
            List list = (List) dVar.b();
            List list2 = (List) fVar.b();
            List list3 = (List) hVar.b();
            if (list == null && list2 == null && list3 == null) {
                if (dVar.a() != null) {
                    a(dVar.a());
                    return;
                } else if (hVar.a() != null) {
                    a(hVar.a());
                    return;
                } else {
                    a(n1.ERROR_NO_FILL);
                    return;
                }
            }
            boolean z2 = false;
            if (list == null) {
                if (list2 != null) {
                    this.f16930a.setByCacheAd(true);
                    z2 = true;
                    list = list2;
                } else {
                    list = list3;
                }
            }
            if (!z2) {
                fVar.h();
            }
            if (list.isEmpty()) {
                a(n1.ERROR_NO_FILL);
            } else {
                a(list);
            }
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            ((q0) r0.a().b(we.this.f13075a)).a(this.f16932c.g(), w7.EVENT_REPORT_LOAD_CODE);
            this.f16933d.a(w7.EVENT_REPORT_REQUEST_CODE, this.f16930a);
            CountDownLatch countDownLatch = new CountDownLatch(3);
            CountDownLatch countDownLatch2 = new CountDownLatch(1);
            we weVar = we.this;
            d dVar = weVar.new d(weVar.f13075a, this.f16931b, this.f16930a, this.f16932c, countDownLatch, countDownLatch2);
            we weVar2 = we.this;
            f fVar = weVar2.new f(weVar2.f13075a, this.f16931b, this.f16930a, this.f16932c, countDownLatch, countDownLatch2);
            we weVar3 = we.this;
            h hVar = weVar3.new h(weVar3.f13075a, this.f16931b, this.f16930a, this.f16932c, countDownLatch);
            we.this.f16924d.put("RunHttp", dVar);
            we.this.f16924d.put("RunLocal", fVar);
            g gVar = new g(we.this.f16924d, null);
            dVar.a(gVar);
            fVar.a(gVar);
            if (we.this.f16926f != null) {
                we.this.f16926f.b(dVar);
                we.this.f16926f.a(fVar);
                we.this.f16926f.a(hVar);
            }
            try {
                countDownLatch.await();
            } catch (InterruptedException e2) {
                rm.a(e2);
            }
            a(dVar, fVar, hVar);
        }

        private c(ConfigResponseModel configResponseModel, da daVar, AdTraceModel adTraceModel) {
            AdTraceModel adTraceModelM42deepCopy = adTraceModel.m42deepCopy();
            this.f16930a = adTraceModelM42deepCopy;
            adTraceModelM42deepCopy.bindInitConfigInfo(we.this.f16925e);
            adTraceModelM42deepCopy.setRequestStartTs(System.currentTimeMillis());
            this.f16931b = configResponseModel;
            this.f16932c = daVar;
            this.f16933d = (s9) C1144p.a().b(we.this.f13075a);
        }

        private void a(List list) {
            this.f16933d.a(w7.EVENT_REPORT_REQUEST_SUCCESS_CODE, this.f16930a);
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = list;
            we.this.f16922b.sendMessage(messageObtain);
        }

        private void a(n1 n1Var) {
            this.f16930a.setRequestFailInfo(n1Var);
            this.f16933d.a(w7.EVENT_REPORT_REQUEST_FAIL_CODE, this.f16930a);
            Message messageObtain = Message.obtain();
            messageObtain.what = 0;
            messageObtain.obj = n1Var;
            we.this.f16922b.sendMessage(messageObtain);
        }
    }

    public class d extends e {

        /* renamed from: j, reason: collision with root package name */
        private final CountDownLatch f16935j;

        /* renamed from: k, reason: collision with root package name */
        private sb f16936k;

        public class a extends sb {
            public a(long j2) {
                super(j2);
            }

            @Override // com.beizi.fusion.sb
            public void b() {
                d.this.a(n1.ERROR_REQUEST_TIME_OUT);
                d.this.f16936k.a();
                d.this.f();
                d.this.f16935j.countDown();
            }
        }

        public class b extends xp {
            public b(Context context) {
                super(context);
            }

            @Override // com.beizi.fusion.xp
            public void a(AdResponseModel adResponseModel, n1[] n1VarArr) {
                d.this.a(adResponseModel, n1VarArr[0]);
            }

            @Override // com.beizi.fusion.xp
            public void b(pc pcVar) {
                d.this.a(n1.ERROR_REQUEST_FAILED);
                d.this.f16935j.countDown();
                d.this.f();
            }
        }

        public d(Context context, ConfigResponseModel configResponseModel, AdTraceModel adTraceModel, da daVar, CountDownLatch countDownLatch, CountDownLatch countDownLatch2) {
            super(context, configResponseModel, adTraceModel, daVar, countDownLatch);
            this.f16935j = countDownLatch2;
            a(daVar);
        }

        @Override // com.beizi.fusion.we.e
        public boolean e() {
            return false;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (we.this.a(this.f16942c)) {
                f();
                return;
            }
            if (!we.this.f16925e.y() || TextUtils.isEmpty(we.f16921h)) {
                sb sbVar = this.f16936k;
                if (sbVar != null) {
                    sbVar.c();
                }
                String strA = qo.a(we.this.a(this.f16941b), we.this.f16925e.z());
                w1 w1Var = new w1(this.f16940a);
                w1Var.a(this.f16942c, we.this.f16925e, we.this.f16923c, this.f16946g.getRequestTracSessionID(), this.f16946g.getStrategyMD5());
                we.this.a(strA, w1Var, new b(this.f16940a));
                return;
            }
            try {
                AdResponseModel adResponseModel = new AdResponseModel(pg.c(be.a(this.f16940a.getAssets().open(we.f16921h))));
                we.this.a(adResponseModel);
                a(adResponseModel);
                a(we.this.a(adResponseModel, this.f16942c, this.f16946g));
                c();
                f();
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }

        private void b(AdResponseModel adResponseModel) {
            C1135g c1135g;
            if (adResponseModel == null || adResponseModel.getExtraResponse() == null) {
                return;
            }
            ResponseExtModel extraResponse = adResponseModel.getExtraResponse();
            if (!extraResponse.isUpdateConfig() || (c1135g = (C1135g) C1136h.a().b(this.f16940a)) == null || c1135g.c() >= extraResponse.getUpdateTime()) {
                return;
            }
            c1135g.h();
        }

        private void a(da daVar) {
            if (daVar != null) {
                this.f16936k = new a(daVar.h() > 0 ? daVar.h() : 5000L);
            }
        }

        private void a(AdResponseModel adResponseModel) {
            if (adResponseModel == null || adResponseModel.getExtraResponse() == null) {
                return;
            }
            this.f16946g.setSwitch4VInfo(adResponseModel.getExtraResponse().getSwitchBack());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(AdResponseModel adResponseModel, n1 n1Var) {
            if (adResponseModel != null) {
                we.this.a(adResponseModel);
                a(adResponseModel);
                if (!this.f16947h) {
                    List listA = we.this.a(adResponseModel, this.f16942c, this.f16946g);
                    if (listA != null && !listA.isEmpty()) {
                        a(listA);
                        c();
                    }
                } else {
                    C1124a c1124a = (C1124a) C1126b.a().b(this.f16940a);
                    if (c1124a != null) {
                        c1124a.a(this.f16942c.g(), adResponseModel);
                    }
                }
            } else {
                a(n1Var);
            }
            f();
            b(adResponseModel);
        }
    }

    public static abstract class e implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        protected Context f16940a;

        /* renamed from: b, reason: collision with root package name */
        protected ConfigResponseModel f16941b;

        /* renamed from: c, reason: collision with root package name */
        protected da f16942c;

        /* renamed from: d, reason: collision with root package name */
        protected CountDownLatch f16943d;

        /* renamed from: e, reason: collision with root package name */
        private g f16944e;

        /* renamed from: f, reason: collision with root package name */
        private Object f16945f;

        /* renamed from: g, reason: collision with root package name */
        protected AdTraceModel f16946g;

        /* renamed from: h, reason: collision with root package name */
        protected volatile boolean f16947h = false;

        /* renamed from: i, reason: collision with root package name */
        private n1 f16948i;

        public e(Context context, ConfigResponseModel configResponseModel, AdTraceModel adTraceModel, da daVar, CountDownLatch countDownLatch) {
            this.f16940a = context;
            this.f16941b = configResponseModel;
            this.f16946g = adTraceModel;
            this.f16942c = daVar;
            this.f16943d = countDownLatch;
        }

        public void a(g gVar) {
            this.f16944e = gVar;
        }

        public Object b() {
            return this.f16945f;
        }

        public void c() {
            if (this.f16944e != null) {
                this.f16944e.a(e() ? "RunHttp" : "RunLocal");
            }
        }

        public synchronized void d() {
            this.f16947h = true;
            f();
        }

        public abstract boolean e();

        public void f() {
            CountDownLatch countDownLatch = this.f16943d;
            if (countDownLatch != null) {
                countDownLatch.countDown();
                this.f16943d = null;
            }
        }

        public synchronized void a(Object obj) {
            if (this.f16947h) {
                return;
            }
            this.f16945f = obj;
        }

        public void a(n1 n1Var) {
            this.f16948i = n1Var;
        }

        public n1 a() {
            return this.f16948i;
        }
    }

    public class f extends e {

        /* renamed from: j, reason: collision with root package name */
        private final CountDownLatch f16949j;

        /* renamed from: k, reason: collision with root package name */
        private final AdCacheModel f16950k;

        /* renamed from: l, reason: collision with root package name */
        private final C1124a f16951l;

        /* renamed from: m, reason: collision with root package name */
        private List f16952m;

        public f(Context context, ConfigResponseModel configResponseModel, AdTraceModel adTraceModel, da daVar, CountDownLatch countDownLatch, CountDownLatch countDownLatch2) {
            super(context, configResponseModel, adTraceModel, daVar, countDownLatch);
            this.f16949j = countDownLatch2;
            this.f16950k = we.this.b(configResponseModel);
            this.f16951l = (C1124a) C1126b.a().b(this.f16940a);
        }

        private long g() {
            long localWaitTime = this.f16950k.getLocalWaitTime();
            long jH = this.f16942c.h() - this.f16950k.getAdvanceTime();
            if (jH > 0 && localWaitTime >= 0) {
                localWaitTime = Math.min(localWaitTime, jH);
            }
            if (localWaitTime < 200) {
                return 0L;
            }
            return localWaitTime;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            this.f16951l.a(this.f16952m);
        }

        @Override // com.beizi.fusion.we.e
        public synchronized void d() {
            a((Object) null);
            super.d();
            this.f16949j.countDown();
        }

        @Override // com.beizi.fusion.we.e
        public boolean e() {
            return true;
        }

        @Override // com.beizi.fusion.we.e
        public void f() {
            super.f();
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            if (we.this.a(this.f16942c)) {
                f();
                return;
            }
            if (!we.this.a(this.f16950k)) {
                f();
                return;
            }
            long jG = g();
            if (jG > 0) {
                try {
                    this.f16949j.await(jG, TimeUnit.MILLISECONDS);
                } catch (InterruptedException unused) {
                }
            }
            if (!this.f16947h) {
                List listA = this.f16951l.a(this.f16942c);
                this.f16952m = listA;
                List listA2 = we.this.a(a(listA), this.f16942c, this.f16946g);
                if (listA2 != null && !listA2.isEmpty()) {
                    a((Object) listA2);
                    c();
                }
            }
            f();
        }

        private List a(List list) {
            JSONObject jSONObjectC;
            if (list == null || list.isEmpty()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdvertCacheDBModel advertCacheDBModel = (AdvertCacheDBModel) it.next();
                if (advertCacheDBModel != null && !TextUtils.isEmpty(advertCacheDBModel.getCacheData()) && (jSONObjectC = pg.c(advertCacheDBModel.getCacheData())) != null) {
                    AdItemModel adItemModel = new AdItemModel(jSONObjectC);
                    if (!adItemModel.hasParseException()) {
                        arrayList.add(adItemModel);
                    }
                }
            }
            return arrayList;
        }
    }

    public static class g {

        /* renamed from: a, reason: collision with root package name */
        private final Object f16954a;

        /* renamed from: b, reason: collision with root package name */
        private final Map f16955b;

        public /* synthetic */ g(Map map, a aVar) {
            this(map);
        }

        private g(Map map) {
            this.f16954a = new Object();
            this.f16955b = map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            e eVar;
            synchronized (this.f16954a) {
                try {
                    Map map = this.f16955b;
                    if (map != null && (eVar = (e) map.get(str)) != null) {
                        eVar.d();
                        this.f16955b.clear();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public class h extends e {
        public h(Context context, ConfigResponseModel configResponseModel, AdTraceModel adTraceModel, da daVar, CountDownLatch countDownLatch) {
            super(context, configResponseModel, adTraceModel, daVar, countDownLatch);
        }

        private boolean a(AdResponseModel adResponseModel) {
            EnumC1130d enumC1130dB;
            if (adResponseModel != null) {
                S2SAdVerifyModel s2SAdVerify = adResponseModel.getS2SAdVerify();
                String strB = null;
                String s2sAdType = s2SAdVerify != null ? s2SAdVerify.getS2sAdType() : null;
                da daVar = this.f16942c;
                if (daVar != null && (enumC1130dB = daVar.b()) != null) {
                    strB = enumC1130dB.b();
                }
                if (!TextUtils.isEmpty(s2sAdType) && !TextUtils.isEmpty(strB) && s2sAdType != null && s2sAdType.equals(strB)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.beizi.fusion.we.e
        public boolean e() {
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            om omVarF = this.f16942c.f();
            if (omVarF != null) {
                AdResponseModel adResponseModelB = omVarF.b();
                if (adResponseModelB.hasParseException()) {
                    a(n1.ERROR_RESPONSE_PARSE_FAILED);
                } else if (a(adResponseModelB)) {
                    List listA = we.this.a(adResponseModelB, this.f16942c, this.f16946g);
                    if (listA == null || listA.isEmpty()) {
                        a(n1.ERROR_NO_FILL);
                    } else {
                        a(listA);
                    }
                } else {
                    a(n1.ERROR_S2S_EXPRESS_TYPE_ERROR);
                }
            }
            f();
        }
    }

    public we(Context context, EnumC1130d enumC1130d) {
        super(context);
        this.f16922b = new b(context, null);
        this.f16924d = new ArrayMap();
        this.f16923c = enumC1130d;
        this.f16926f = (hb) fn.a().b(this.f13075a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdCacheModel b(ConfigResponseModel configResponseModel) {
        StrategyModel strategyModel;
        if (configResponseModel == null || (strategyModel = (StrategyModel) l5.a(configResponseModel.getStrategyList(), this.f16927g.g(), new a())) == null) {
            return null;
        }
        return strategyModel.getAdCache();
    }

    private List b(List list, da daVar, AdTraceModel adTraceModel) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdItemModel adItemModel = (AdItemModel) it.next();
            AdTraceModel adTraceModelM42deepCopy = adTraceModel.m42deepCopy();
            adTraceModelM42deepCopy.bindBidModelInfo(adItemModel);
            arrayList.add(td.a.a(this.f13075a, adItemModel, daVar, adTraceModelM42deepCopy));
        }
        return arrayList;
    }

    @Override // com.beizi.fusion.ia
    public void a(tc tcVar) {
        this.f16922b.a(tcVar);
    }

    @Override // com.beizi.fusion.ia
    public void a(C1150v c1150v, ConfigResponseModel configResponseModel, da daVar, AdTraceModel adTraceModel) {
        this.f16925e = c1150v;
        this.f16927g = daVar;
        c cVar = new c(this, configResponseModel, daVar, adTraceModel, null);
        hb hbVar = this.f16926f;
        if (hbVar != null) {
            hbVar.f(cVar);
        }
    }

    private List b(AdResponseModel adResponseModel) {
        if (adResponseModel != null) {
            return adResponseModel.getAdItemList();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(da daVar) {
        return (daVar == null || daVar.f() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdResponseModel adResponseModel) {
        q0 q0Var;
        if (adResponseModel == null || adResponseModel.getExtraResponse() == null || (q0Var = (q0) r0.a().b(this.f13075a)) == null) {
            return;
        }
        q0Var.a(adResponseModel.getExtraResponse().getBlackList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List a(AdResponseModel adResponseModel, da daVar, AdTraceModel adTraceModel) {
        return a(b(adResponseModel), daVar, adTraceModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List a(List list, da daVar, AdTraceModel adTraceModel) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return b(list, daVar, adTraceModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(AdCacheModel adCacheModel) {
        return adCacheModel != null && adCacheModel.getEnable() == 1;
    }
}
