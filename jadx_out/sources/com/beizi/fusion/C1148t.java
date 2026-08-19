package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.network.beizi.BzATConst;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.bid.BidAuction;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.bid.BiddingModel3;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.DownloadInfoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.link.LinkModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.CSensorModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.kd;
import com.beizi.fusion.ze;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.beizi.fusion.t, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1148t {

    /* renamed from: a, reason: collision with root package name */
    private static volatile C1148t f16288a;

    private C1148t() {
    }

    public static C1148t a() {
        if (f16288a == null) {
            synchronized (C1148t.class) {
                try {
                    if (f16288a == null) {
                        f16288a = new C1148t();
                    }
                } finally {
                }
            }
        }
        return f16288a;
    }

    public Map a(Context context, da daVar, AdTraceModel adTraceModel, AdItemModel adItemModel) throws JSONException {
        if (daVar != null && adTraceModel != null) {
            HashMap map = new HashMap();
            a(map, daVar, adTraceModel, adItemModel);
            a(context, map, daVar, adItemModel);
            a(map, daVar, adTraceModel);
            return map;
        }
        return Collections.EMPTY_MAP;
    }

    private void a(Map map, da daVar, AdTraceModel adTraceModel, AdItemModel adItemModel) throws JSONException {
        if (adTraceModel == null || daVar == null) {
            return;
        }
        JSONObject jSONObjectB = pg.b();
        pg.a(jSONObjectB, BzATConst.BZ_REQUEST_ID, adTraceModel.getRequestTracSessionID());
        int iA = AbstractC1147s.a(daVar.c(), "materialInfo", 0);
        if (iA > 0 && adItemModel != null && (iA == 1 || iA == 101 || iA == 1001)) {
            JSONObject jSONObjectA = a(adTraceModel, adItemModel);
            if (iA == 101 || iA == 1001) {
                a(jSONObjectA, adItemModel);
                if (iA == 1001) {
                    String orderID = adTraceModel.getOrderID();
                    if (!TextUtils.isEmpty(orderID)) {
                        pg.a(jSONObjectA, "orderId", orderID);
                    }
                }
            }
            pg.a(jSONObjectB, "materialInfo", jSONObjectA);
        }
        map.put("materialInfo", jSONObjectB.toString());
    }

    private JSONObject a(AdTraceModel adTraceModel, AdItemModel adItemModel) throws JSONException {
        String url;
        List<AssetModel> asset = adItemModel.getNativeModel() != null ? adItemModel.getNativeModel().getAsset() : null;
        JSONObject jSONObjectB = pg.b();
        pg.a(jSONObjectB, "crid", adTraceModel.getCreateID());
        String url2 = "";
        if (asset == null || asset.isEmpty()) {
            url = "";
        } else {
            url = "";
            for (AssetModel assetModel : asset) {
                if (assetModel != null && "1001".equals(assetModel.getId()) && assetModel.getImage() != null) {
                    url2 = assetModel.getImage().getUrl();
                }
                if (assetModel != null && assetModel.getVideo() != null) {
                    url = assetModel.getVideo().getUrl();
                }
            }
        }
        if (!TextUtils.isEmpty(url2)) {
            pg.a(jSONObjectB, "imageUrl", url2);
        }
        if (!TextUtils.isEmpty(url)) {
            pg.a(jSONObjectB, "videoUrl", url);
        }
        return jSONObjectB;
    }

    private void a(JSONObject jSONObject, AdItemModel adItemModel) throws JSONException {
        if (adItemModel == null || adItemModel.getNativeModel() == null) {
            return;
        }
        NativeModel nativeModel = adItemModel.getNativeModel();
        DownloadInfoModel downloadInfo = nativeModel.getDownloadInfo();
        LinkModel link = nativeModel.getLink();
        if (link != null) {
            pg.a(jSONObject, "deeplinkUrl", link.getDeeplink());
            pg.a(jSONObject, "landingPageUrl", link.getLandingPageURL());
            pg.a(jSONObject, "downloadUrl", link.getDownloadURL());
            if (downloadInfo != null) {
                pg.a(jSONObject, "packageName", downloadInfo.getBundle());
            }
            pg.a(jSONObject, "miniProgramId", link.getWxOriginalId());
            pg.a(jSONObject, "miniProgramPath", link.getWxProgramPath());
        }
    }

    private void a(Map map, da daVar, AdTraceModel adTraceModel) {
        String str;
        String str2;
        String string;
        String dit;
        StringBuilder sb;
        StringBuilder sb2;
        StringBuilder sb3;
        if (daVar == null || adTraceModel == null || AbstractC1147s.a(daVar.c(), "sensorInfo", 0) != 1) {
            return;
        }
        CSensorModel cSensorModel = adTraceModel.getCSensorModel();
        int interactiveType = adTraceModel.getInteractiveType();
        HashMap map2 = new HashMap();
        if (interactiveType != 3) {
            map2.put("actionType", "0");
        } else if (cSensorModel != null) {
            int type = cSensorModel.getType();
            if (type != 1) {
                str = "";
                str2 = str;
                string = str2;
                dit = string;
            } else {
                str = cSensorModel.getAcc() + "";
                str2 = cSensorModel.getAgl() + "";
                string = cSensorModel.getDut() + "";
                dit = cSensorModel.getDit();
            }
            if (type == 2) {
                ze.c sensorRecord = adTraceModel.getSensorRecord();
                if (sensorRecord != null) {
                    float fA = sensorRecord.a(1).a(cSensorModel.getDit());
                    float fA2 = sensorRecord.a(4).a(cSensorModel.getDit());
                    long jA = sensorRecord.a();
                    if (fA > cSensorModel.getAcc()) {
                        sb = new StringBuilder();
                    } else {
                        sb = new StringBuilder();
                        fA = ql.a(cSensorModel.getAcc());
                    }
                    sb.append(fA);
                    sb.append("");
                    String string2 = sb.toString();
                    if (fA2 > cSensorModel.getAgl()) {
                        sb2 = new StringBuilder();
                    } else {
                        sb2 = new StringBuilder();
                        fA2 = ql.a(cSensorModel.getAgl());
                    }
                    sb2.append(fA2);
                    sb2.append("");
                    String string3 = sb2.toString();
                    if (jA > cSensorModel.getDut()) {
                        sb3 = new StringBuilder();
                        sb3.append(jA);
                    } else {
                        sb3 = new StringBuilder();
                        sb3.append(ql.a(cSensorModel.getDut()));
                    }
                    sb3.append("");
                    string = sb3.toString();
                    str = string2;
                    str2 = string3;
                }
                dit = cSensorModel.getDit();
            }
            map2.put("actionType", "1");
            map2.put("maxAcc", str);
            map2.put("angle", str2);
            map2.put("duration", string);
            map2.put("direction", dit);
        }
        map.put("sensorInfo", map2);
    }

    private void a(Context context, Map map, da daVar, AdItemModel adItemModel) throws JSONException {
        BiddingModel3 biddingModel;
        if (daVar == null || adItemModel == null || AbstractC1147s.a(daVar.c(), "auctionInfo", 0) != 1 || (biddingModel = adItemModel.getBiddingModel()) == null) {
            return;
        }
        BidAuction auction = biddingModel.getAuction();
        JSONObject jSONObjectB = pg.b();
        if (auction != null) {
            pg.a(jSONObjectB, "raiseSortPrice", Integer.valueOf(auction.getSortRaise()));
            pg.a(jSONObjectB, "effectRate", Integer.valueOf(auction.getRandom()));
            pg.a(jSONObjectB, "auctionType", Integer.valueOf(auction.getType()));
            pg.a(jSONObjectB, "isLastLook", Integer.valueOf(auction.getIsClose()));
            pg.a(jSONObjectB, "winPriceMin", auction.getMinRate());
            pg.a(jSONObjectB, "winPriceMax", auction.getMaxRate());
            pg.a(jSONObjectB, "secondPrice", Integer.valueOf(auction.getSecondPrice()));
            pg.a(jSONObjectB, "customData", auction.getCustomData());
        } else {
            pg.a(jSONObjectB, "raiseSortPrice", (Object) (-1));
            pg.a(jSONObjectB, "effectRate", (Object) (-1));
            pg.a(jSONObjectB, "auctionType", (Object) (-1));
            pg.a(jSONObjectB, "isLastLook", (Object) (-1));
            pg.a(jSONObjectB, "secondPrice", (Object) 0);
            pg.a(jSONObjectB, "winPriceMin", "");
            pg.a(jSONObjectB, "winPriceMax", "");
            pg.a(jSONObjectB, "customData", "");
        }
        String strB = ((kd) gh.a().b(context)).b(jSONObjectB.toString(), "101,1001", kd.a.STEP_BY_STEP, false);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        map.put("auctionInfo", strB);
    }
}
