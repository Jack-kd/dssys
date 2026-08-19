package com.anythink.core.api;

import com.anythink.core.api.ATAdConst;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ATWaterfallFilter extends ATAdFilter {
    public static String C2S = "2";
    public static String NORMAL = "0";
    public static String S2S = "1";

    public static class PriceInterval {
        private Double lessPrice;
        private Double morePrice;
        private final ATAdConst.CURRENCY scurrency;

        public PriceInterval(ATAdConst.CURRENCY currency) {
            this.scurrency = currency;
        }

        public JSONObject getJsonObject() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("lessPrice", this.lessPrice);
                jSONObject.put("morePrice", this.morePrice);
                ATAdConst.CURRENCY currency = this.scurrency;
                if (currency == null) {
                    return jSONObject;
                }
                jSONObject.put(DeepLinkPresetEvent.UMEventParamCurrency, currency.name());
                return jSONObject;
            } catch (Throwable th) {
                th.printStackTrace();
                return jSONObject;
            }
        }

        public Double getLessPrice() {
            return this.lessPrice;
        }

        public Double getMorePrice() {
            return this.morePrice;
        }

        public ATAdConst.CURRENCY getScurrency() {
            return this.scurrency;
        }

        public PriceInterval lessThanPrice(double d2) {
            this.lessPrice = Double.valueOf(d2);
            return this;
        }

        public PriceInterval moreThanPrice(double d2) {
            this.morePrice = Double.valueOf(d2);
            return this;
        }
    }
}
