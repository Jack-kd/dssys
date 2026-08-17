package com.beizi.fusion.asnp.common.analyse2.base.model.biz;

import com.anythink.core.common.f.g;
import com.beizi.fusion.asnp.common.analyse2.base.model.Analyse2JsonLog;
import com.beizi.fusion.asnp.common.analyse2.base.model.AnalyseBasicReceiveLog;
import com.beizi.fusion.k2;
import com.beizi.fusion.ng;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AMPSExtraAdInfoLog extends AnalyseBasicReceiveLog {

    @ng(key = "deepLink")
    private List<String> deeplink;

    @ng(key = "desc")
    private String desc;

    @ng(key = "materialUrl")
    private List<String> materialUrl;

    @ng(key = "price")
    private String price;

    @ng(key = g.a.f3271h)
    private String title;

    @ng(key = "url")
    private List<String> url;

    public static class AMPSExtraAdInfoLogWrapper extends Analyse2JsonLog implements k2.a {

        @ng(key = "deepLink")
        private List<String> deeplink;

        @ng(key = "desc")
        private String desc;

        @ng(key = "materialUrl")
        private List<String> materialUrl;

        @ng(key = "price")
        private String price;

        @ng(key = g.a.f3271h)
        private String title;

        @ng(key = "url")
        private List<String> url;

        public AMPSExtraAdInfoLogWrapper(AMPSExtraAdInfoLog aMPSExtraAdInfoLog) {
            this.title = aMPSExtraAdInfoLog.title;
            this.desc = aMPSExtraAdInfoLog.desc;
            this.materialUrl = aMPSExtraAdInfoLog.materialUrl;
            this.price = aMPSExtraAdInfoLog.price;
            this.url = aMPSExtraAdInfoLog.url;
            this.deeplink = aMPSExtraAdInfoLog.deeplink;
        }
    }

    public AMPSExtraAdInfoLog(JSONObject jSONObject) {
        super(jSONObject);
    }

    public AMPSExtraAdInfoLogWrapper a() {
        return new AMPSExtraAdInfoLogWrapper(this);
    }
}
