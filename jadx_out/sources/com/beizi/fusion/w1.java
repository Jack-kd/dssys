package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.local.AppInstallModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.AdRequestModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.ReqContextModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.app.ReqAppModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.dev.ReqDeviceModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.dev.ext.ReqDeviceExtModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.dev.geo.ReqDeviceGeoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.ext.install.ReqAppInstallModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.reg.ReqRegsModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.user.ReqUserModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.item.ReqItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.item.spec.ReqSpecModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.item.spec.ext.ReqSpecExtModel;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public class w1 implements fb {

    /* renamed from: a, reason: collision with root package name */
    private da f16782a;

    /* renamed from: b, reason: collision with root package name */
    private C1150v f16783b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f16784c;

    /* renamed from: d, reason: collision with root package name */
    private String f16785d;

    /* renamed from: e, reason: collision with root package name */
    private ac f16786e;

    /* renamed from: f, reason: collision with root package name */
    private EnumC1130d f16787f;

    /* renamed from: g, reason: collision with root package name */
    private String f16788g;

    public w1(Context context) {
        this.f16784c = context;
        C1142n c1142n = (C1142n) C1143o.a().b(context);
        if (c1142n != null) {
            this.f16786e = c1142n.b();
        }
    }

    private List b() {
        List<AppInstallModel> listA = ((C1142n) C1143o.a().b(this.f16784c)).a();
        if (listA == null || listA.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (AppInstallModel appInstallModel : listA) {
            ReqAppInstallModel reqAppInstallModel = new ReqAppInstallModel();
            reqAppInstallModel.setInstall(appInstallModel.isInstall());
            reqAppInstallModel.setLinkId(appInstallModel.getLinkId());
            reqAppInstallModel.setUpdateTime(appInstallModel.getUpdateTime());
            arrayList.add(reqAppInstallModel);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.ext.ReqContextExtModel c() {
        /*
            r3 = this;
            com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.ext.ReqContextExtModel r0 = new com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.ext.ReqContextExtModel
            r0.<init>()
            java.util.List r1 = r3.b()
            r0.setAppInstall(r1)
            com.beizi.fusion.r0 r1 = com.beizi.fusion.r0.a()
            android.content.Context r2 = r3.f16784c
            java.lang.Object r1 = r1.b(r2)
            com.beizi.fusion.q0 r1 = (com.beizi.fusion.q0) r1
            if (r1 == 0) goto L25
            java.lang.String r1 = r1.d()
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L25
            goto L27
        L25:
            java.lang.String r1 = "0"
        L27:
            r0.setBlackListVersion(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.w1.c():com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.ext.ReqContextExtModel");
    }

    private ReqAppModel d() {
        ReqAppModel reqAppModel = new ReqAppModel();
        C1150v c1150v = this.f16783b;
        reqAppModel.setAppId(c1150v != null ? c1150v.e() : "");
        reqAppModel.setBundle(this.f16784c.getPackageName());
        reqAppModel.setInstall(al.a(this.f16784c));
        reqAppModel.setName(al.c(this.f16784c));
        reqAppModel.setUpdate(al.b(this.f16784c));
        reqAppModel.setVer(al.d(this.f16784c));
        return reqAppModel;
    }

    private ReqContextModel e() {
        ReqContextModel reqContextModel = new ReqContextModel();
        reqContextModel.setApp(d());
        reqContextModel.setExtModel(c());
        reqContextModel.setDevice(f());
        reqContextModel.setRegs(h());
        reqContextModel.setUser(i());
        return reqContextModel;
    }

    private ReqDeviceModel f() {
        ReqDeviceModel reqDeviceModel = new ReqDeviceModel(this.f16786e);
        reqDeviceModel.setExtModel(a(this.f16786e));
        ld ldVarA = ((md) kh.a().b(this.f16784c)).a();
        if (ldVarA != null) {
            reqDeviceModel.setGeoModel(new ReqDeviceGeoModel(ldVarA));
        }
        C1150v c1150v = this.f16783b;
        if (c1150v == null || !c1150v.d()) {
            reqDeviceModel.setLmt(1);
            return reqDeviceModel;
        }
        reqDeviceModel.setLmt(0);
        return reqDeviceModel;
    }

    private List g() {
        ArrayList arrayList = new ArrayList();
        if (this.f16783b != null) {
            ReqItemModel reqItemModel = new ReqItemModel();
            reqItemModel.setDlvy(1);
            da daVar = this.f16782a;
            reqItemModel.setExp(daVar != null ? daVar.h() : 5000L);
            da daVar2 = this.f16782a;
            reqItemModel.setQty(daVar2 != null ? daVar2.a() : 1);
            reqItemModel.setSpec(k());
            arrayList.add(reqItemModel);
        }
        return arrayList;
    }

    private ReqRegsModel h() {
        ReqRegsModel reqRegsModel = new ReqRegsModel();
        C1150v c1150v = this.f16783b;
        if (c1150v != null) {
            reqRegsModel.setCCPA(c1150v.f());
            reqRegsModel.setCOPPA(this.f16783b.g());
            reqRegsModel.setGDPR(this.f16783b.q());
        }
        return reqRegsModel;
    }

    private ReqUserModel i() {
        ReqUserModel reqUserModel = new ReqUserModel();
        C1150v c1150v = this.f16783b;
        reqUserModel.setId(c1150v != null ? c1150v.w() : "");
        reqUserModel.setData(a(this.f16783b));
        C1150v c1150v2 = this.f16783b;
        reqUserModel.setForbidSensor((c1150v2 == null || !c1150v2.x()) ? 1 : 0);
        return reqUserModel;
    }

    private ReqSpecExtModel j() {
        ReqSpecExtModel reqSpecExtModel = new ReqSpecExtModel();
        s0 s0Var = (s0) t0.a().b(this.f16784c);
        if (s0Var != null) {
            reqSpecExtModel.setLocalSchemeIDs(s0Var.b(this.f16787f));
        }
        return reqSpecExtModel;
    }

    private ReqSpecModel k() {
        ReqSpecModel reqSpecModel = new ReqSpecModel();
        reqSpecModel.setExt(j());
        reqSpecModel.setSdk(m0.a());
        reqSpecModel.setSdkVersion(m0.c());
        reqSpecModel.setStrategyMD5(this.f16788g);
        da daVar = this.f16782a;
        reqSpecModel.setTagID(daVar != null ? daVar.g() : "");
        return reqSpecModel;
    }

    public void a(da daVar, C1150v c1150v, EnumC1130d enumC1130d, String str, String str2) {
        this.f16782a = daVar;
        this.f16783b = c1150v;
        this.f16785d = str;
        this.f16787f = enumC1130d;
        this.f16788g = str2;
    }

    @Override // com.beizi.fusion.fb
    public String a() {
        int iX;
        if (this.f16782a != null && this.f16783b != null) {
            AdRequestModel adRequestModel = new AdRequestModel();
            adRequestModel.setBidModel(1);
            adRequestModel.setContext(e());
            adRequestModel.setCurrency(this.f16783b.i());
            adRequestModel.setId(this.f16785d);
            adRequestModel.setItem(g());
            C1150v c1150v = this.f16783b;
            if (c1150v != null) {
                iX = c1150v.h();
            } else {
                ac acVar = this.f16786e;
                iX = acVar != null ? acVar.x() : y6.COUNTRY_CHINA_TYPE.b();
            }
            adRequestModel.setCountryCN(iX);
            C1150v c1150v2 = this.f16783b;
            adRequestModel.setTest((c1150v2 == null || !c1150v2.y()) ? 0 : 1);
            adRequestModel.setBidTimeout(5000);
            return adRequestModel.toJsonString();
        }
        return "";
    }

    private JSONArray a(C1150v c1150v) {
        Map mapS;
        if (c1150v != null && (mapS = c1150v.s()) != null && !mapS.isEmpty()) {
            return pg.a(mapS, "id", "name");
        }
        return pg.a();
    }

    private ReqDeviceExtModel a(ac acVar) {
        if (acVar == null) {
            return null;
        }
        ReqDeviceExtModel reqDeviceExtModel = new ReqDeviceExtModel();
        reqDeviceExtModel.setDeviceName(acVar.b());
        reqDeviceExtModel.setFileMark(acVar.r());
        reqDeviceExtModel.setPhysicalMemory(acVar.n());
        reqDeviceExtModel.setUpdateMark(acVar.A());
        reqDeviceExtModel.setHardDiskSize(acVar.l());
        reqDeviceExtModel.setSaid(m0.a(this.f16784c));
        reqDeviceExtModel.setHonorOAID(acVar.w());
        reqDeviceExtModel.setIsDeveloper(acVar.f());
        reqDeviceExtModel.setIsPrompt(acVar.o());
        reqDeviceExtModel.setRomVersion(acVar.E());
        reqDeviceExtModel.setCoreVersion(acVar.t());
        reqDeviceExtModel.setStoreVersion(acVar.z());
        reqDeviceExtModel.setOaid(acVar.getOAID());
        C1150v c1150v = this.f16783b;
        reqDeviceExtModel.setCoaid(c1150v != null ? c1150v.m() : "");
        jq jqVarA = jq.a(this.f16784c);
        reqDeviceExtModel.setWxInstall(jqVarA.b(this.f16784c));
        reqDeviceExtModel.setOpenSDKVersion(jqVarA.b());
        reqDeviceExtModel.setWxSupportApiVersion(jqVarA.c());
        return reqDeviceExtModel;
    }
}
