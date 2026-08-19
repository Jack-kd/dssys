package com.smartdigimkt.sdk.core.bridge.entity;

import com.anythink.core.common.f.p;
import com.anythink.core.common.m.f;
import com.smartdigimkt.l3.a;

/* loaded from: classes5.dex */
public class RequestInfoEntity extends BaseInfoEntity {

    @DataField("adsource_id")
    public String adsourceId;

    @DataField(p.a.f3376c)
    public String bidId;

    @DataField("bid_result_out_date_time")
    public long bidResultOutDateTime;

    @DataField(f.bB)
    public int channelFrom;

    @DataField("format")
    public int format;

    @DataField("group_id")
    public int groupId;

    @DataField("max_exclude_id_size")
    public int maxExcludeIdSize;

    @DataField("max_install_id_size")
    public int maxInstallIdSize;

    @DataField("mtg_mix_format")
    public int mtgMixFormat = -1;

    @DataField("network_firm_id")
    public int networkFirmId;

    @DataField("network_name")
    public String networkName;

    @DataField("origin_request_id")
    public String originRequestId;

    @DataField("placement_id")
    public String placementId;

    @DataField("request_id")
    public String requestId;

    @DataField("request_url")
    public String requestUrl;

    @DataField("tp_bid_id")
    public String tpBidId;

    @DataField("traffic_group_id")
    public int trafficGroupId;

    @DataField("unit_group_content")
    public String unitGroupContent;

    @DataField("x_c")
    public String x_c;

    public a convertToBaseAdRequestInfo() {
        a aVar = new a();
        aVar.f41627a = this.placementId;
        aVar.f41628b = this.format;
        aVar.f41629c = this.trafficGroupId;
        aVar.f41630d = this.groupId;
        aVar.f41631e = this.adsourceId;
        aVar.f41632f = this.requestId;
        aVar.f41633g = this.originRequestId;
        aVar.f41634h = this.x_c;
        aVar.f41635i = this.bidId;
        aVar.f41636j = this.networkFirmId;
        aVar.f41637k = this.tpBidId;
        aVar.f41638l = this.channelFrom;
        aVar.f41639m = this.unitGroupContent;
        aVar.f41640n = this.bidResultOutDateTime;
        aVar.f41641o = this.requestUrl;
        aVar.f41642p = this.maxInstallIdSize;
        aVar.f41643q = this.maxExcludeIdSize;
        return aVar;
    }
}
