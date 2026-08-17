package com.beizi.fusion.asnp.common.analyse2.base.model.init;

import com.anythink.core.api.ATAdConst;
import com.beizi.fusion.asnp.common.analyse2.base.model.AnalyseBasicReceiveLog;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AnalyseUserModel extends AnalyseBasicReceiveLog {

    @ng(exclude = true, key = "oaid")
    private String oaid;

    @ng(exclude = true, key = "said")
    private String said;

    @ng(key = ATAdConst.KEY.USER_CUSTOM_DATA)
    private String userCustomData;

    @ng(key = "user_id")
    private String userId;

    @ng(key = "lmt")
    private String userLmt;

    public AnalyseUserModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String a() {
        return this.oaid;
    }

    public String b() {
        return this.said;
    }

    public String c() {
        return this.userCustomData;
    }

    public String d() {
        return this.userId;
    }

    public String e() {
        return this.userLmt;
    }
}
