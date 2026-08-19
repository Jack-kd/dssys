package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.complain.ComplainModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.frequency.StrategyFrequencyModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.unite.UniteControlModel;
import com.beizi.fusion.ng;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class StrategyFilterModel extends ASNPJsonResponseModel {

    @ng(key = "complain")
    private ComplainModel complainModel;

    @ng(key = "frequency")
    private List<StrategyFrequencyModel> frequencyModels;

    @ng(key = "minTime")
    private int minTime;

    @ng(key = "uniteControl")
    @Deprecated
    private UniteControlModel uniteControlModel;

    public StrategyFilterModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public ComplainModel getComplainModel() {
        return this.complainModel;
    }

    public List<StrategyFrequencyModel> getFrequencyModels() {
        return this.frequencyModels;
    }

    public int getMinTime() {
        return this.minTime;
    }

    @Deprecated
    public UniteControlModel getUniteControlModel() {
        return this.uniteControlModel;
    }
}
