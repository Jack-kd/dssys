package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.cfg.ConfigRequestModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;

/* loaded from: classes2.dex */
public class z5 implements fb {

    /* renamed from: a, reason: collision with root package name */
    private final Context f17805a;

    /* renamed from: b, reason: collision with root package name */
    private final String f17806b;

    public z5(Context context, String str) {
        this.f17805a = context;
        this.f17806b = str;
    }

    private ConfigRequestModel a(Context context, String str) {
        ConfigRequestModel configRequestModel = new ConfigRequestModel();
        configRequestModel.setTimeStamp(System.currentTimeMillis());
        configRequestModel.setAppID(str);
        configRequestModel.setSdkVersion(m0.c());
        configRequestModel.setBetaPlanIds(C1134f.f13815f);
        C1142n c1142n = (C1142n) C1143o.a().b(context);
        ac acVarB = c1142n != null ? c1142n.b() : null;
        if (acVarB != null) {
            configRequestModel.setUserAgent(acVarB.d());
            configRequestModel.setDeviceType(acVarB.y());
            configRequestModel.setManufacturer(acVarB.e());
            configRequestModel.setBrand(acVarB.h());
            configRequestModel.setModel(acVarB.g());
            configRequestModel.setOs(acVarB.B());
            configRequestModel.setOsVersion(acVarB.j());
            configRequestModel.setCarrier(acVarB.q());
            configRequestModel.setConnectType(acVarB.a());
            configRequestModel.setLanguage(acVarB.D());
            configRequestModel.setScreenWidth(acVarB.C());
            configRequestModel.setScreenHeight(acVarB.u());
            configRequestModel.setResolutionWidth(acVarB.C());
            configRequestModel.setResolutionHeight(acVarB.u());
            configRequestModel.setOrientation(acVarB.c());
            configRequestModel.setDensity(acVarB.i());
            configRequestModel.setPpi(acVarB.k());
            configRequestModel.setUpdateMark(acVarB.A());
            configRequestModel.setPhysicalMemory(acVarB.n());
            configRequestModel.setHardDiskSize(acVarB.l());
            configRequestModel.setDeviceName(acVarB.b());
            configRequestModel.setCountry(acVarB.s());
            configRequestModel.setTimeZone(acVarB.F());
            configRequestModel.setFileMark(acVarB.r());
            configRequestModel.setCountry_CN(acVarB.x());
            configRequestModel.setSAID(m0.a(context));
            configRequestModel.setOAID(acVarB.getOAID());
        }
        C1135g c1135g = (C1135g) C1136h.a().b(context);
        if (c1135g != null) {
            C1150v c1150vA = c1135g.a();
            if (c1150vA != null) {
                configRequestModel.setCOAID(c1150vA.m());
            }
            ConfigResponseModel configResponseModelA = c1135g.a(false);
            if (configResponseModelA != null) {
                configRequestModel.setUpdateMd5(configResponseModelA.getUpdateMD5());
                configRequestModel.setRequestUrlMD5(configResponseModelA.getRequestUrlMD5());
                configRequestModel.setStatisticsMD5(configResponseModelA.getStatisticsMD5());
            }
        }
        return configRequestModel;
    }

    @Override // com.beizi.fusion.fb
    public String a() {
        return a(this.f17805a, this.f17806b).toJsonString();
    }
}
