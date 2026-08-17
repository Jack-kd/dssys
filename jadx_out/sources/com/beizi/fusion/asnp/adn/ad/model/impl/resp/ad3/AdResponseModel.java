package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ext.ResponseExtModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.s2s.S2SAdVerifyModel;
import com.beizi.fusion.ng;
import com.sigmob.sdk.base.n;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AdResponseModel extends ASNPJsonResponseModel {

    @ng(key = "ad")
    private List<AdItemModel> adItemModelList;

    @ng(key = "s2s")
    private S2SAdVerifyModel s2SAdVerifyModel;

    @ng(key = n.f36450m)
    private ResponseExtModel updateRequireModel;

    public AdResponseModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public List<AdItemModel> getAdItemList() {
        return this.adItemModelList;
    }

    public ResponseExtModel getExtraResponse() {
        return this.updateRequireModel;
    }

    public S2SAdVerifyModel getS2SAdVerify() {
        return this.s2SAdVerifyModel;
    }
}
