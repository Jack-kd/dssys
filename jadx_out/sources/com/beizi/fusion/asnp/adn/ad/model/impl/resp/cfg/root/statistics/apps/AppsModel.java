package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.statistics.apps;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.statistics.apps.pkg.PkgModel;
import com.beizi.fusion.ng;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AppsModel extends ASNPJsonResponseModel {

    @ng(key = "delay")
    private int delay;

    @ng(key = "macros")
    private String macros;

    @ng(key = "pkgs")
    private List<PkgModel> pkgModelList;

    @ng(key = "reportUrl")
    private String reportUrl;

    @ng(key = "taskReport")
    private int taskReport;

    public AppsModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getDelay() {
        return this.delay;
    }

    public String getMacros() {
        return this.macros;
    }

    public List<PkgModel> getPkgModelList() {
        return this.pkgModelList;
    }

    public String getReportUrl() {
        return this.reportUrl;
    }

    public int getTaskReport() {
        return this.taskReport;
    }
}
