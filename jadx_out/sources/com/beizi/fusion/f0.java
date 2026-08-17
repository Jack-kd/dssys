package com.beizi.fusion;

import android.view.View;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.ReportModel3;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.ClkModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.ShowModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.fd;
import com.beizi.fusion.ic;
import com.beizi.fusion.jn;
import com.beizi.fusion.u9;
import com.beizi.fusion.z9;
import com.beizi.fusion.ze;

/* loaded from: classes2.dex */
class f0 implements u9 {

    /* renamed from: a, reason: collision with root package name */
    private ReportModel3 f13821a;

    @Override // com.beizi.fusion.u9
    public void a(ReportModel3 reportModel3) {
        this.f13821a = reportModel3;
    }

    @Override // com.beizi.fusion.u9
    public void a(za zaVar, View view, AdTraceModel adTraceModel, u9.a aVar) {
        ShowModel show;
        ClkModel clk;
        ze.b bVarA;
        ze.b bVarA2;
        if (zaVar == z9.a.AD_CLICK && (clk = this.f13821a.getClk()) != null) {
            boolean zA = jn.a.a(view, clk.getAv());
            boolean z2 = clk.getNcb() == 1;
            if (!zA || z2) {
                return;
            }
            if (clk.getAcb() == 1) {
                int interactiveType = adTraceModel.getInteractiveType();
                if (interactiveType == fd.a.EULER_INTERACTIVE_TRIGGER.getEventCode()) {
                    int agl = clk.getAgl();
                    ze.c sensorRecord = adTraceModel.getSensorRecord();
                    if (sensorRecord != null && (bVarA2 = sensorRecord.a(4)) != null) {
                        float f2 = agl;
                        if (bVarA2.f17873a < f2 && bVarA2.f17874b < f2 && bVarA2.f17875c < f2) {
                            return;
                        }
                    }
                }
                if (interactiveType == fd.a.SHAKE_INTERACTIVE_TRIGGER.getEventCode()) {
                    int at = clk.getAt();
                    ze.c sensorRecord2 = adTraceModel.getSensorRecord();
                    if (sensorRecord2 != null && (bVarA = sensorRecord2.a(1)) != null && bVarA.a("XYZ") < at) {
                        return;
                    }
                }
            }
        }
        if (zaVar != ic.a.AD_EXPOSURE || (show = this.f13821a.getShow()) == null || a(show, adTraceModel)) {
            aVar.b();
            aVar.a();
        }
    }

    private boolean a(ShowModel showModel, AdTraceModel adTraceModel) {
        return System.currentTimeMillis() - adTraceModel.getExposureTimestamp() >= ((long) showModel.getRt());
    }
}
