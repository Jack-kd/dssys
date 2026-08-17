package com.beizi.fusion;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.anim.RenderAnimModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.notify.NotifyPropModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.d6;
import com.beizi.fusion.td;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class ii extends d6 {

    /* renamed from: t, reason: collision with root package name */
    protected final Map f14472t;

    /* renamed from: u, reason: collision with root package name */
    protected final Map f14473u;

    /* renamed from: v, reason: collision with root package name */
    protected final List f14474v;

    /* renamed from: w, reason: collision with root package name */
    protected final Map f14475w;

    /* renamed from: x, reason: collision with root package name */
    protected final AtomicInteger f14476x;

    /* renamed from: y, reason: collision with root package name */
    private boolean f14477y;

    /* renamed from: z, reason: collision with root package name */
    private final c f14478z;

    public class b extends d {
        public b() {
            super("CAROUSEL");
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.wd
        public void a(View view) {
            super.a(view);
            View view2 = ii.this.f13382q;
            if (view2 instanceof ScopeExpressContainer) {
                ScopeExpressContainer.d.a((ScopeExpressContainer) view2, view);
            }
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.wd
        public void f() {
            super.f();
            if (ii.this.f14476x.decrementAndGet() == 0) {
                ii.this.f13381p.g();
            }
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.vd
        public void onAdClicked() {
            super.onAdClicked();
            View view = ii.this.f13382q;
            if (view instanceof ScopeExpressContainer) {
                ScopeExpressContainer.d.j((ScopeExpressContainer) view);
            }
        }
    }

    public static final class c extends lq {
        public c(Context context) {
            super(context.getApplicationContext());
        }

        private void b(Message message) {
            if (message != null) {
                Object obj = message.obj;
                if (obj instanceof g) {
                    if (message.what == g.f14490a) {
                        ((g) obj).g();
                    }
                    if (message.what == g.f14491b) {
                        ((g) message.obj).e();
                    }
                }
            }
        }

        @Override // com.beizi.fusion.lq
        public void a(Message message) {
            b(message);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            if (hasMessages(g.f14490a)) {
                removeMessages(g.f14490a);
            }
            if (hasMessages(g.f14491b)) {
                removeMessages(g.f14491b);
            }
        }
    }

    public class d extends d6.b {

        /* renamed from: b, reason: collision with root package name */
        protected String f14480b;

        /* renamed from: c, reason: collision with root package name */
        protected String f14481c;

        /* renamed from: d, reason: collision with root package name */
        protected final String f14482d;

        public d(String str) {
            super();
            this.f14482d = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str) {
            this.f14481c = str;
        }

        @Override // com.beizi.fusion.d6.b
        public boolean l() {
            return "PRIMARY".equals(this.f14482d);
        }

        public void a(String str) {
            this.f14480b = str;
        }
    }

    public class e extends d {
        public e() {
            super("NOTIFY");
        }

        private void c(String str) {
            g gVar;
            if (m() == null || (gVar = (g) ii.this.f14473u.get(this.f14481c)) == null) {
                return;
            }
            gVar.a(str);
        }

        private rd m() {
            return (rd) ii.this.f14472t.get(this.f14480b);
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.wd
        public void a(View view) {
            g gVar;
            c(PointCategory.READY);
            if (!ii.this.f14477y || ii.this.f14473u == null || m() == null || (gVar = (g) ii.this.f14473u.get(this.f14481c)) == null) {
                return;
            }
            gVar.f();
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.ud
        public void b() {
            g gVar;
            super.b();
            if (ii.this.f14473u == null || m() == null || (gVar = (g) ii.this.f14473u.get(this.f14481c)) == null) {
                return;
            }
            gVar.d();
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.wd
        public void f() {
            c("error");
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.vd
        public void onAdClicked() {
            g gVar;
            super.onAdClicked();
            if (ii.this.f14473u == null || m() == null || (gVar = (g) ii.this.f14473u.get(this.f14481c)) == null) {
                return;
            }
            gVar.a();
            gVar.e();
        }
    }

    public class f extends g {

        /* renamed from: c, reason: collision with root package name */
        private final NotifyPropModel f14485c;

        /* renamed from: d, reason: collision with root package name */
        private final RenderAnimModel f14486d;

        /* renamed from: e, reason: collision with root package name */
        private String f14487e;

        /* renamed from: f, reason: collision with root package name */
        private View f14488f;

        @Override // com.beizi.fusion.ii.g
        public void a() {
            if (ii.this.f14478z == null || !ii.this.f14478z.hasMessages(g.f14491b)) {
                return;
            }
            ii.this.f14478z.removeMessages(g.f14491b);
        }

        @Override // com.beizi.fusion.ii.g
        public String b() {
            return this.f14487e;
        }

        @Override // com.beizi.fusion.ii.g
        public void c() {
            this.f14487e = "";
        }

        @Override // com.beizi.fusion.ii.g
        public void d() {
            if (ii.this.f14478z != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = g.f14491b;
                messageObtain.obj = this;
                ii.this.f14478z.sendMessageDelayed(messageObtain, this.f14485c.getRemain());
            }
        }

        @Override // com.beizi.fusion.ii.g
        public void e() {
            View view = this.f14488f;
            if (view != null) {
                RenderAnimModel renderAnimModel = this.f14486d;
                int direction = renderAnimModel != null ? renderAnimModel.getDirection() : 0;
                RenderAnimModel renderAnimModel2 = this.f14486d;
                cq.b(view, direction, renderAnimModel2 != null ? renderAnimModel2.getDuration() : 0L);
            }
        }

        @Override // com.beizi.fusion.ii.g
        public void f() {
            if (ii.this.f14478z != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = g.f14490a;
                messageObtain.obj = this;
                ii.this.f14478z.sendMessageDelayed(messageObtain, this.f14485c.getDelay());
            }
        }

        @Override // com.beizi.fusion.ii.g
        public void g() {
            rd rdVar = (rd) ii.this.f14472t.get(this.f14485c.getBindId());
            if (rdVar != null) {
                View viewA = rdVar.a();
                this.f14488f = viewA;
                if (ii.this.f13382q instanceof ViewGroup) {
                    viewA.setVisibility(4);
                    View view = this.f14488f;
                    ViewGroup viewGroup = (ViewGroup) ii.this.f13382q;
                    RenderAnimModel renderAnimModel = this.f14486d;
                    int direction = renderAnimModel != null ? renderAnimModel.getDirection() : 0;
                    RenderAnimModel renderAnimModel2 = this.f14486d;
                    cq.a(view, viewGroup, direction, renderAnimModel2 != null ? renderAnimModel2.getDuration() : 0L);
                }
            }
        }

        private f(NotifyPropModel notifyPropModel) {
            this.f14487e = "idle";
            this.f14485c = notifyPropModel;
            this.f14486d = notifyPropModel.getAnim();
        }

        @Override // com.beizi.fusion.ii.g
        public void a(String str) {
            this.f14487e = str;
        }
    }

    public static abstract class g {

        /* renamed from: a, reason: collision with root package name */
        static int f14490a = 17;

        /* renamed from: b, reason: collision with root package name */
        static int f14491b = 18;

        public abstract void a();

        public abstract void a(String str);

        public abstract String b();

        public abstract void c();

        public abstract void d();

        public abstract void e();

        public abstract void f();

        public abstract void g();
    }

    public class h extends d {
        public h() {
            super("PRIMARY");
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.ud
        public void b() {
            g gVar;
            ii.this.f14477y = true;
            if (ii.this.f14474v.isEmpty()) {
                super.b();
            }
            Map map = ii.this.f14473u;
            if (map != null && (gVar = (g) map.get(this.f14481c)) != null && PointCategory.READY.equals(gVar.b())) {
                gVar.f();
            }
            ScopeExpressContainer.d.i((ScopeExpressContainer) ii.this.f13382q);
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.ud
        public void onAdClosed() {
            super.onAdClosed();
            ii.this.f14477y = false;
        }
    }

    public ii(Context context, da daVar, EnumC1130d enumC1130d) {
        super(context, daVar, enumC1130d);
        this.f14477y = false;
        this.f14472t = new HashMap();
        this.f14474v = new ArrayList();
        this.f14475w = new HashMap();
        this.f14473u = new HashMap();
        this.f14478z = new c(this.f13691b.getApplicationContext());
        this.f14476x = new AtomicInteger();
    }

    private List p() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f14472t.values());
        arrayList.addAll(this.f14474v);
        return arrayList;
    }

    private void r() {
        List list = this.f14474v;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((rd) it.next()).b();
            }
            this.f14474v.clear();
        }
    }

    private void s() {
        Map map = this.f14472t;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((rd) it.next()).b();
            }
            this.f14472t.clear();
        }
        Map map2 = this.f14473u;
        if (map2 != null) {
            Iterator it2 = map2.values().iterator();
            while (it2.hasNext()) {
                ((g) it2.next()).c();
            }
            this.f14473u.clear();
        }
    }

    public zo c(td tdVar) {
        return new zo(tdVar);
    }

    public zo d(td tdVar) {
        return new zo(tdVar);
    }

    @Override // com.beizi.fusion.d6
    public d6.b j() {
        return new h();
    }

    @Override // com.beizi.fusion.d6
    public void k() {
        super.k();
        s();
        r();
        c cVar = this.f14478z;
        if (cVar != null) {
            cVar.b();
        }
    }

    public d6.b q() {
        return new b();
    }

    public void t() {
        rd rdVar = this.f13383r;
        if (rdVar != null) {
            rdVar.a((wd) this.f13381p);
        }
        for (rd rdVar2 : p()) {
            rdVar2.a((wd) this.f14475w.get(Integer.valueOf(rdVar2.hashCode())));
        }
    }

    @Override // com.beizi.fusion.d6
    public rd b(td tdVar) {
        zo zoVarD = d(tdVar);
        AdItemModel adItemModelC = tdVar.c();
        if (adItemModelC != null) {
            if (a(this.f13381p)) {
                ((d) this.f13381p).a(adItemModelC.getBindId());
            }
            NotifyPropModel notifyProp = adItemModelC.getNotifyProp();
            if (notifyProp != null) {
                f fVarA = a(adItemModelC.getNotifyProp());
                String bindId = notifyProp.getBindId();
                if (a(this.f13381p)) {
                    ((d) this.f13381p).b(bindId);
                }
                if (fVarA != null && !TextUtils.isEmpty(bindId)) {
                    this.f14473u.put(bindId, fVarA);
                }
            }
        }
        zoVarD.a((vd) this.f13381p);
        zoVarD.a((ud) this.f13381p);
        zoVarD.a((xd) this.f13381p);
        return zoVarD;
    }

    private f a(NotifyPropModel notifyPropModel) {
        if (notifyPropModel != null) {
            return new f(notifyPropModel);
        }
        return null;
    }

    @Override // com.beizi.fusion.d6
    public void a(td tdVar) {
        AdItemModel adItemModelC;
        if (tdVar == null || (adItemModelC = tdVar.c()) == null) {
            return;
        }
        List listA = a(adItemModelC);
        if (listA != null && !listA.isEmpty()) {
            a(tdVar, listA);
            t();
        } else {
            super.a(tdVar);
        }
    }

    public void a(td tdVar, List list) {
        this.f14472t.clear();
        this.f14475w.clear();
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdItemModel adItemModel = (AdItemModel) it.next();
            if (adItemModel != null) {
                a(tdVar, adItemModel);
            }
        }
    }

    public void a(td tdVar, AdItemModel adItemModel) {
        if ("NOTIFY".equals(adItemModel.getCategory())) {
            rd rdVarA = a(tdVar, adItemModel, new e());
            if (rdVarA != null) {
                this.f14472t.put(adItemModel.getBindId(), rdVarA);
                return;
            }
            return;
        }
        if ("CAROUSEL".equals(adItemModel.getCategory())) {
            this.f14476x.incrementAndGet();
            this.f14474v.add(a(tdVar, adItemModel, q()));
        }
    }

    private List a(AdItemModel adItemModel) {
        if (adItemModel != null) {
            return adItemModel.getChildAds();
        }
        return null;
    }

    public final boolean a(d6.b bVar) {
        if (bVar != null) {
            return d.class.isAssignableFrom(this.f13381p.getClass());
        }
        return false;
    }

    public rd a(td tdVar, AdItemModel adItemModel, d6.b bVar) {
        AdItemModel adItemModelC = tdVar.c();
        AdItemModel adItemModelA = a(adItemModelC, adItemModel);
        if (adItemModelA == null) {
            return null;
        }
        Context context = this.f13691b;
        da daVarB = tdVar.b();
        boolean zIsIndependentAd = adItemModelA.isIndependentAd();
        AdTraceModel adTraceModelA = tdVar.a();
        if (!zIsIndependentAd) {
            adTraceModelA = adTraceModelA.m42deepCopy();
        }
        zo zoVarC = c(td.a.a(context, adItemModelA, daVarB, adTraceModelA));
        if (a(bVar)) {
            ((d) bVar).a(adItemModelA.getBindId());
        }
        zoVarC.a((vd) bVar);
        zoVarC.a((ud) bVar);
        zoVarC.a((xd) bVar);
        this.f14475w.put(Integer.valueOf(zoVarC.hashCode()), bVar);
        NotifyPropModel notifyProp = adItemModelC.getNotifyProp();
        if (notifyProp != null) {
            f fVarA = a(adItemModelC.getNotifyProp());
            String bindId = notifyProp.getBindId();
            if (a(bVar)) {
                ((d) bVar).b(bindId);
            }
            if (fVarA != null && !TextUtils.isEmpty(bindId)) {
                this.f14473u.put(bindId, fVarA);
            }
        }
        return zoVarC;
    }

    public final AdItemModel a(AdItemModel adItemModel, AdItemModel adItemModel2) {
        if (adItemModel2 == null) {
            return null;
        }
        if (adItemModel2.isIndependentAd()) {
            return adItemModel2;
        }
        if (adItemModel == null) {
            return null;
        }
        AdItemModel.AdItemModelWrapper adItemModelWrapper = new AdItemModel.AdItemModelWrapper(adItemModel.asJsonObject());
        adItemModelWrapper.recoverMonitor(adItemModel.getEventModels());
        NativeModel.NativeModelWrapper nativeModelWrapper = new NativeModel.NativeModelWrapper(adItemModel.getNativeModel().asJsonObject());
        NativeModel nativeModel = adItemModel2.getNativeModel();
        if (nativeModel != null) {
            nativeModelWrapper.updateWrapperScheme(nativeModel.getRender());
        }
        adItemModelWrapper.updateWrapperBasicInfo(adItemModel2.getBindId(), adItemModel2.getCategory());
        adItemModelWrapper.updateWrapperNotify(adItemModel2.getNotifyProp());
        adItemModelWrapper.updateWrapperNative(nativeModelWrapper);
        return adItemModelWrapper;
    }
}
