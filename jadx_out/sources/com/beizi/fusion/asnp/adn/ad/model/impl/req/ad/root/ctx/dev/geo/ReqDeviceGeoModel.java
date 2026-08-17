package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.dev.geo;

import androidx.annotation.NonNull;
import com.anythink.core.common.m.f;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.dev.geo.ext.GeoExtModel;
import com.beizi.fusion.ld;
import com.beizi.fusion.ng;
import com.sigmob.sdk.base.n;

/* loaded from: classes2.dex */
public class ReqDeviceGeoModel extends ASNPJsonRequestModel {

    @ng(key = n.f36450m)
    private GeoExtModel ext;

    @ng(key = "lat")
    private float latitude;

    @ng(key = f.f5754D)
    private float longitude;

    public ReqDeviceGeoModel(@NonNull ld ldVar) {
        this.latitude = (float) ldVar.a();
        this.longitude = (float) ldVar.b();
        this.ext = new GeoExtModel(ldVar.d(), ldVar.c().b());
    }
}
