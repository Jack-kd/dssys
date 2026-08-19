package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.dev;

import com.beizi.fusion.ac;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.dev.ext.ReqDeviceExtModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.dev.geo.ReqDeviceGeoModel;
import com.beizi.fusion.ng;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.bv;

/* loaded from: classes2.dex */
public final class ReqDeviceModel extends ASNPJsonRequestModel {

    @ng(key = "brand")
    private String brand;

    @ng(key = bv.f48889P)
    private String carrier;

    @ng(key = "contype")
    private String connectType;

    @ng(key = bv.f48888O)
    private String country;

    @ng(key = "h")
    private int deviceHeight;

    @ng(key = "w")
    private int deviceWidth;

    @ng(key = n.f36450m)
    private ReqDeviceExtModel ext;

    @ng(key = "geo")
    private ReqDeviceGeoModel geo;

    @ng(key = "lang")
    private String language;

    @ng(key = "lmt")
    private int lmt;

    @ng(key = "make")
    private String make;

    @ng(key = "model")
    private String model;

    @ng(key = bv.f48923x)
    private int os;

    @ng(key = "osv")
    private String osVersion;

    @ng(key = "ppi")
    private float ppi;

    @ng(key = "pxratio")
    private float pxRatio;

    @ng(key = "tzone")
    private String timezone;

    @ng(key = "type")
    private int type;

    @ng(key = "ua")
    private String ua;

    public ReqDeviceModel(ac acVar) {
        if (acVar != null) {
            this.type = acVar.y();
            this.ua = acVar.d();
            this.make = acVar.e();
            this.brand = acVar.h();
            this.model = acVar.g();
            this.os = acVar.B();
            this.osVersion = acVar.j();
            this.deviceWidth = acVar.C();
            this.deviceHeight = acVar.u();
            this.ppi = acVar.k();
            this.pxRatio = acVar.i();
            this.language = acVar.D();
            this.carrier = acVar.q();
            this.connectType = String.valueOf(acVar.a());
            this.timezone = acVar.F();
            this.country = acVar.s();
        }
    }

    public void setExtModel(ReqDeviceExtModel reqDeviceExtModel) {
        this.ext = reqDeviceExtModel;
    }

    public void setGeoModel(ReqDeviceGeoModel reqDeviceGeoModel) {
        this.geo = reqDeviceGeoModel;
    }

    public void setLmt(int i2) {
        this.lmt = i2;
    }
}
