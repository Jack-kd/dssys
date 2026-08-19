package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.dev.geo.ext;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.ng;

/* loaded from: classes2.dex */
public class GeoExtModel extends ASNPJsonRequestModel {

    @ng(key = "coordinate")
    private String coordinateType;

    @ng(key = "timestamp")
    private long timestamp;

    public GeoExtModel(long j2, String str) {
        this.coordinateType = str;
        this.timestamp = j2;
    }
}
