package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.ReqContextModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.item.ReqItemModel;
import com.beizi.fusion.ng;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.g;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class AdRequestModel extends ASNPJsonRequestModel {

    @ng(key = "at")
    private int bidModel;

    @ng(key = "tmax")
    private int bidTimeout;

    @ng(key = g.f49337X)
    private ReqContextModel context;

    @ng(key = "country_CN")
    private int country_CN;

    @ng(key = "cur")
    private List<String> currency;

    @ng(key = n.f36450m)
    private JSONObject ext;

    @ng(key = "id")
    private String id;

    @ng(key = "item")
    private List<ReqItemModel> item;

    @ng(key = "test")
    private int test;

    public void setBidModel(int i2) {
        this.bidModel = i2;
    }

    public void setBidTimeout(int i2) {
        this.bidTimeout = i2;
    }

    public void setContext(ReqContextModel reqContextModel) {
        this.context = reqContextModel;
    }

    public void setCountryCN(int i2) {
        this.country_CN = i2;
    }

    public void setCurrency(List<String> list) {
        this.currency = list;
    }

    public void setExt(JSONObject jSONObject) {
        this.ext = jSONObject;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setItem(List<ReqItemModel> list) {
        this.item = list;
    }

    public void setTest(int i2) {
        this.test = i2;
    }
}
