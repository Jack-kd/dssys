package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.ReportModel3;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;

/* loaded from: classes2.dex */
class qi implements td {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15817a;

    /* renamed from: b, reason: collision with root package name */
    private final AdItemModel f15818b;

    /* renamed from: c, reason: collision with root package name */
    private final da f15819c;

    /* renamed from: d, reason: collision with root package name */
    private final AdTraceModel f15820d;

    public qi(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel) {
        this.f15817a = context;
        this.f15818b = adItemModel;
        this.f15819c = daVar;
        this.f15820d = adTraceModel;
        ReportModel3 report = adItemModel.getReport();
        if (report != null) {
            adTraceModel.setCSensorModel(report.getCSensor());
            adTraceModel.setTSensorModel(report.getTSensor());
        }
    }

    @Override // com.beizi.fusion.td
    public AdTraceModel a() {
        return this.f15820d;
    }

    @Override // com.beizi.fusion.td
    public da b() {
        return this.f15819c;
    }

    @Override // com.beizi.fusion.td
    public AdItemModel c() {
        return this.f15818b;
    }

    @Override // com.beizi.fusion.td
    public Context getContext() {
        return this.f15817a;
    }
}
