package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.statistics;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.statistics.apps.AppsModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.statistics.task.TaskUrlModel;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.cl;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class StatisticsModel extends ASNPJsonResponseModel {

    @ng(key = "apps")
    private AppsModel appsModel;

    @ng(key = "task")
    private List<TaskUrlModel> taskModels;

    @ng(key = cl.f49059n)
    private String version;

    public StatisticsModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public AppsModel getAppsModel() {
        return this.appsModel;
    }

    public List<TaskUrlModel> getTaskModels() {
        return this.taskModels;
    }

    public String getVersion() {
        return this.version;
    }
}
