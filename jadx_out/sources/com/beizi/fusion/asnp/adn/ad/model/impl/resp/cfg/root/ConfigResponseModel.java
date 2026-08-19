package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root;

import com.beizi.fusion.asnp.adn.ad.model.IUpdateNotNullModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.beta.BetaPlanModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ext.ExtraConfigModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.log2.Analyse2ConfigModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.requrl.RequestUrlModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.statistics.StatisticsModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.StrategyModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.update.UpdateModel;
import com.beizi.fusion.l5;
import com.beizi.fusion.ng;
import com.beizi.fusion.pg;
import com.beizi.fusion.rb;
import com.beizi.fusion.rm;
import com.beizi.fusion.sl;
import com.beizi.fusion.vb;
import com.sigmob.sdk.base.n;
import java.lang.reflect.Field;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ConfigResponseModel extends ASNPJsonResponseModel implements vb, IUpdateNotNullModel<ConfigResponseModel> {

    @ng(key = "logStrategy")
    private Analyse2ConfigModel analyse2ConfigModel;

    @ng(key = "betaPlan")
    private BetaPlanModel betaPlanModel;
    private ConfigResponseModel copyModel;

    @ng(key = n.f36450m)
    private ExtraConfigModel extraConfigModel;

    @ng(key = "requestUrl")
    private RequestUrlModel requestUrl;
    private boolean selfUpdate;

    @ng(key = "statistics")
    private StatisticsModel statistics;

    @ng(key = "spaceStrategy")
    private List<StrategyModel> strategyList;

    @ng(key = n.f36454q)
    private UpdateModel update;

    public ConfigResponseModel(JSONObject jSONObject) {
        super(jSONObject);
        this.selfUpdate = false;
    }

    public Analyse2ConfigModel getAnalyse2ConfigModel() {
        return this.analyse2ConfigModel;
    }

    public BetaPlanModel getBetaPlanModel() {
        return this.betaPlanModel;
    }

    public ExtraConfigModel getExtraConfigModel() {
        return this.extraConfigModel;
    }

    public RequestUrlModel getRequestUrl() {
        return this.requestUrl;
    }

    public String getRequestUrlMD5() {
        RequestUrlModel requestUrlModel = this.requestUrl;
        return requestUrlModel != null ? requestUrlModel.getVersion() : "";
    }

    public StatisticsModel getStatistics() {
        return this.statistics;
    }

    public String getStatisticsMD5() {
        StatisticsModel statisticsModel = this.statistics;
        return statisticsModel != null ? statisticsModel.getVersion() : "";
    }

    public List<StrategyModel> getStrategyList() {
        return this.strategyList;
    }

    public String getStrategyMD5(String str) {
        StrategyModel strategyModel;
        List<StrategyModel> list = this.strategyList;
        return (list == null || list.isEmpty() || (strategyModel = (StrategyModel) l5.a(this.strategyList, str, new rb() { // from class: com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel.1
            @Override // com.beizi.fusion.rb
            public boolean fetch(StrategyModel strategyModel2, String str2) {
                return strategyModel2 != null && str2.equals(strategyModel2.getSpaceID());
            }
        })) == null) ? "" : strategyModel.getVersion();
    }

    public UpdateModel getUpdate() {
        return this.update;
    }

    public String getUpdateMD5() {
        UpdateModel updateModel = this.update;
        return updateModel != null ? updateModel.getVersion() : "";
    }

    /* renamed from: deepCopy, reason: merged with bridge method [inline-methods] */
    public synchronized ConfigResponseModel m41deepCopy() {
        try {
            if (this.copyModel == null || this.selfUpdate) {
                this.selfUpdate = false;
                this.copyModel = new ConfigResponseModel(this.mJsonObject);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.copyModel;
    }

    @Override // com.beizi.fusion.asnp.adn.ad.model.IUpdateNotNullModel
    public synchronized ConfigResponseModel partUpdate(ConfigResponseModel configResponseModel) {
        JSONObject jSONObjectB = pg.b();
        List<Field> listB = sl.b(getClass());
        if (listB.isEmpty()) {
            return this;
        }
        try {
            for (Field field : listB) {
                ng ngVar = (ng) field.getAnnotation(ng.class);
                if (ngVar != null) {
                    String strKey = ngVar.key();
                    pg.a(jSONObjectB, strKey, pg.c(this.mJsonObject, strKey));
                    Object objA = sl.a(configResponseModel, field);
                    if (objA != null) {
                        sl.a(this, field, objA);
                        pg.a(jSONObjectB, strKey, pg.c(configResponseModel.mJsonObject, strKey));
                    }
                }
            }
            this.mJsonObject = jSONObjectB;
            this.selfUpdate = true;
            return this;
        } catch (Throwable th) {
            rm.a(th);
            return this;
        }
    }
}
