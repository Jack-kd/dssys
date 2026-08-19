package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.item.spec.ext;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.ng;
import java.util.List;

/* loaded from: classes2.dex */
public final class ReqSpecExtModel extends ASNPJsonRequestModel {

    @ng(key = "schemeId")
    private List<String> localSchemeIDs;

    public void setLocalSchemeIDs(List<String> list) {
        this.localSchemeIDs = list;
    }
}
