package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.land.LandingOptimizeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.OptimizeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.speed.SpeedModel;
import com.beizi.fusion.ng;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class IncomeModel extends ASNPJsonResponseModel {

    @ng(key = LiveConfigKey.AUTO)
    public int invoke;

    @ng(key = "lpOptimize")
    private LandingOptimizeModel landingOptimizeModel;

    @ng(key = "nativeOptimize")
    private List<OptimizeModel> optimizeModelList;

    @ng(key = "speed")
    private SpeedModel speedModel;

    public IncomeModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public int getInvoke() {
        return this.invoke;
    }

    public LandingOptimizeModel getLandingOptimizeModel() {
        return this.landingOptimizeModel;
    }

    public List<OptimizeModel> getOptimizeModelList() {
        return this.optimizeModelList;
    }

    public SpeedModel getSpeedModel() {
        return this.speedModel;
    }
}
