package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl.EndCardPageModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl.PrimarySkipCtrlModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl.PrivilegePageModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl.RetainPageModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl.RewardConditionModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class RewardPropModel extends ASNPJsonResponseModel {

    @ng(key = "rewarded")
    private RewardConditionModel conditionModel;

    @ng(key = "endCard")
    private EndCardPageModel endCardModel;

    @ng(key = "forceEndCard")
    private int forceEndCard;

    @ng(key = "skipCtrl")
    private PrimarySkipCtrlModel primarySkipCtrlModel;

    @ng(key = "privilege")
    private PrivilegePageModel privilegePageModel;

    @ng(key = "privilegeTime")
    private int privilegeTime;

    @ng(key = "privilegeType")
    private int privilegeType;

    @ng(key = "retain")
    private RetainPageModel retainPageModel;

    public RewardPropModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public RewardConditionModel getConditionModel() {
        return this.conditionModel;
    }

    public EndCardPageModel getEndCardModel() {
        return this.endCardModel;
    }

    public int getEndCardType() {
        EndCardPageModel endCardPageModel = this.endCardModel;
        if (endCardPageModel != null) {
            return endCardPageModel.getType();
        }
        return 0;
    }

    public int getForceEndCard() {
        return this.forceEndCard;
    }

    public PrimarySkipCtrlModel getPrimarySkipCtrlModel() {
        return this.primarySkipCtrlModel;
    }

    public PrivilegePageModel getPrivilegePageModel() {
        return this.privilegePageModel;
    }

    public int getPrivilegeTime() {
        return this.privilegeTime;
    }

    public int getPrivilegeType() {
        return this.privilegeType;
    }

    public RetainPageModel getRetainPageModel() {
        return this.retainPageModel;
    }
}
