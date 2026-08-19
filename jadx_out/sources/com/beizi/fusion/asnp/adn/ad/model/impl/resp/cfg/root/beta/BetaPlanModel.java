package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.beta;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.beta.unit.UnitTestModel;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.cl;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class BetaPlanModel extends ASNPJsonResponseModel {

    @ng(key = "release")
    private List<String> release;

    @ng(key = "unitTest")
    private List<UnitTestModel> unitTestModelList;

    @ng(key = cl.f49059n)
    private String versionMd5;

    public BetaPlanModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public List<String> getRelease() {
        return this.release;
    }

    public List<UnitTestModel> getUnitTestModelList() {
        return this.unitTestModelList;
    }

    public String getVersionMd5() {
        return this.versionMd5;
    }
}
