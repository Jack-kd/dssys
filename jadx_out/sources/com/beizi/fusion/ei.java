package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.event.EventModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.ReportModel3;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.ClkModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.ShowModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.ic;
import com.beizi.fusion.z9;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
final class ei {

    /* renamed from: a, reason: collision with root package name */
    private final Context f13715a;

    /* renamed from: b, reason: collision with root package name */
    private ReportModel3 f13716b;

    /* renamed from: c, reason: collision with root package name */
    private List f13717c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f13718d = false;

    public class a implements rb {
        public a() {
        }

        @Override // com.beizi.fusion.rb
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean fetch(EventModel eventModel, za zaVar) {
            return (eventModel == null || zaVar == null || eventModel.getType() != zaVar.getEventCode()) ? false : true;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final AdTraceModel f13720a;

        public /* synthetic */ b(AdTraceModel adTraceModel, a aVar) {
            this(adTraceModel);
        }

        private b(AdTraceModel adTraceModel) {
            this.f13720a = adTraceModel;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            AdTraceModel adTraceModel = this.f13720a;
            if (adTraceModel != null) {
                adTraceModel.setClickDelay(-1);
            }
        }
    }

    public static class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final di f13721a;

        /* renamed from: b, reason: collision with root package name */
        private final String f13722b;

        /* renamed from: c, reason: collision with root package name */
        private final w9 f13723c;

        /* renamed from: d, reason: collision with root package name */
        private final fm f13724d;

        /* renamed from: e, reason: collision with root package name */
        private b f13725e;

        public /* synthetic */ c(Context context, String str, int i2, za zaVar, AdTraceModel adTraceModel, a aVar) {
            this(context, str, i2, zaVar, adTraceModel);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!TextUtils.isEmpty(this.f13722b)) {
                String strA = ul.a(this.f13722b, this.f13721a.getMacrosReplaceMap());
                if (fm.POST == this.f13724d) {
                    this.f13723c.a(strA.substring(0, strA.indexOf("?")), strA.substring(strA.indexOf("?") + 1), null);
                } else {
                    this.f13723c.a(strA, null);
                }
            }
            b bVar = this.f13725e;
            if (bVar != null) {
                bVar.a();
            }
        }

        private c(Context context, String str, int i2, za zaVar, AdTraceModel adTraceModel) {
            this.f13721a = h0.a(context, zaVar, adTraceModel);
            this.f13722b = str;
            this.f13724d = i2 == 0 ? fm.GET : fm.POST;
            this.f13723c = (w9) o0.a().b(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(b bVar) {
            this.f13725e = bVar;
        }
    }

    public ei(Context context) {
        this.f13715a = context.getApplicationContext();
    }

    private List b(za zaVar) {
        synchronized (this) {
            try {
                List list = this.f13717c;
                if (list == null || list.isEmpty()) {
                    return null;
                }
                return l5.b(this.f13717c, zaVar, new a());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(AdItemModel adItemModel) {
        if (adItemModel != null) {
            this.f13716b = adItemModel.getReport();
            this.f13717c = adItemModel.getEventModels();
            this.f13718d = true;
        }
    }

    public boolean a() {
        return this.f13718d;
    }

    public void a(za zaVar, AdTraceModel adTraceModel) {
        int clickMonitorDelay;
        List<EventModel> listB = b(zaVar);
        if (listB == null || listB.isEmpty()) {
            return;
        }
        hb hbVar = (hb) fn.a().b(this.f13715a);
        int iA = a(zaVar);
        z9.a aVar = z9.a.AD_CLICK;
        if (zaVar == aVar) {
            a(adTraceModel, iA);
        }
        if (zaVar.getEventCode() > aVar.getEventCode() && (clickMonitorDelay = adTraceModel.getClickMonitorDelay()) > 0 && iA < clickMonitorDelay) {
            iA = clickMonitorDelay;
        }
        for (EventModel eventModel : listB) {
            za zaVar2 = zaVar;
            c cVar = new c(this.f13715a, eventModel.getUrl(), eventModel.getMethod(), zaVar2, adTraceModel.m42deepCopy(), null);
            if (zaVar2 == z9.a.AD_CLICK) {
                cVar.a(new b(adTraceModel, null));
            }
            hbVar.a(cVar, iA, TimeUnit.MILLISECONDS);
            zaVar = zaVar2;
        }
    }

    private void a(AdTraceModel adTraceModel, int i2) {
        if (adTraceModel != null) {
            adTraceModel.setClickDelay(i2);
        }
    }

    private int a(za zaVar) {
        ShowModel show;
        ClkModel clk;
        return (zaVar != ic.a.ADN_RECOGNIZE || (show = this.f13716b.getShow()) == null) ? (zaVar != z9.a.AD_CLICK || (clk = this.f13716b.getClk()) == null) ? 0 : clk.getRt() : show.getRt();
    }
}
