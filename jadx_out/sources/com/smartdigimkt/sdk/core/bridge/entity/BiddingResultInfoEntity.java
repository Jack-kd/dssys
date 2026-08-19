package com.smartdigimkt.sdk.core.bridge.entity;

import com.anythink.core.common.f.p;
import com.anythink.core.common.k;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.smartdigimkt.o3.b;

/* loaded from: classes5.dex */
public class BiddingResultInfoEntity extends BaseInfoEntity {

    @DataField("ad_source_id")
    public String adSourceId;

    @DataField("adx_mtg_mix_type")
    public int adxMTGMixType;

    @DataField("a_r")
    public double adxRecoverRate;

    @DataField("cny_ecpm_api")
    public double cnyEcpmApi;

    @DataField("cur")
    public String curreny;

    @DataField("cur_rate")
    public double currenyRate;

    @DataField("burl")
    public String displayNoticeUrl;

    @DataField("burl_win")
    public String displayWinNoticeUrl;

    @DataField("ecpm_api")
    public double ecpmApi;

    @DataField(k.aU)
    public String ecpmEncInfo;

    @DataField("e_c_id")
    public int ecpmEncPvtKeyServerId;

    @DataField("err_code")
    public int errorCode;

    @DataField("err_msg")
    public String errorMsg;

    @DataField("expire")
    public long expireTime;

    @DataField("is_send_winurl")
    public boolean hasSendWinOrLossUrl;

    @DataField("is_success")
    public boolean isSuccess;

    @DataField("lurl")
    public String loseNoticeUrl;

    @DataField("nw_firm_id")
    public int networkFirmId;

    @DataField("unit_id")
    public String networkUnitId;

    @DataField(p.a.f3380g)
    public String offerData;

    @DataField(PointParamKey.ORIGIN_PRICE)
    public double originPrice;

    @DataField("origin_request_id")
    public String originRequestId;

    @DataField("out_data_time")
    public long outDateTime;

    @DataField("deal_id")
    public String pmpOrderId;

    @DataField("deal_pri")
    public int pmpPriority;

    @DataField("deal_type_int")
    public int pmpType;

    @DataField("deal_type")
    public String pmpTypeString;

    @DataField(k.f5376U)
    public String precision;

    @DataField("price")
    public Double price;

    @DataField("request_id")
    public String requestId;

    @DataField("req_url")
    public String requestUrl;

    @DataField("cny_e_c")
    public String rmbEcpmEncInfo;

    @DataField("cny_price")
    public double rmbPrice;

    @DataField(k.aq)
    public double sortPrice;

    @DataField(p.a.f3376c)
    public String token;

    @DataField("tp_bid_id")
    public String tpBidId;

    @DataField("bd_type")
    public int useType;

    @DataField("nurl")
    public String winNoticeUrl;

    @DataField("x_c")
    public String x_c;

    public b converToBiddingResult() {
        b bVar = new b(this.isSuccess, this.sortPrice, this.price.doubleValue(), this.tpBidId, this.winNoticeUrl, this.loseNoticeUrl, this.displayNoticeUrl, this.errorMsg);
        bVar.f42225e = this.token;
        bVar.f42227g = this.winNoticeUrl;
        bVar.f42228h = this.loseNoticeUrl;
        bVar.f42226f = this.errorMsg;
        bVar.f42251n = this.curreny;
        bVar.f42252o = this.networkUnitId;
        bVar.f42253p = this.networkFirmId;
        bVar.f42250m = this.errorCode;
        bVar.f42254q = this.expireTime;
        bVar.f42255r = this.outDateTime;
        bVar.f42261x = this.offerData;
        bVar.f42256s = this.tpBidId;
        bVar.f42262y = this.displayWinNoticeUrl;
        bVar.f42263z = this.adSourceId;
        bVar.f42233A = this.currenyRate;
        bVar.f42234B = this.ecpmApi;
        bVar.f42235C = this.cnyEcpmApi;
        bVar.f42236D = this.precision;
        bVar.f42257t = this.requestUrl;
        bVar.f42231k = this.useType;
        bVar.f42222b = this.originPrice;
        bVar.f42232l = this.rmbPrice;
        bVar.f42238F = this.adxRecoverRate;
        bVar.f42237E = this.requestId;
        bVar.f42243K = this.adxMTGMixType;
        bVar.f42244L = this.pmpTypeString;
        bVar.f42245M = this.pmpType;
        bVar.f42246N = this.pmpOrderId;
        bVar.f42247O = this.pmpPriority;
        bVar.f42230j = this.originRequestId;
        bVar.f42248P = this.x_c;
        bVar.f42240H = this.ecpmEncInfo;
        bVar.f42242J = this.rmbEcpmEncInfo;
        bVar.f42241I = this.ecpmEncPvtKeyServerId;
        return bVar;
    }
}
