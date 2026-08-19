package com.kwad.components.ad.reward.model;

import androidx.annotation.Nullable;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.a.e;
import com.kwad.sdk.core.response.model.BaseResultData;
import com.kwad.sdk.utils.ac;
import com.kwad.sdk.utils.br;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class RewardFraudVerifyRespInfo extends BaseResultData {
    private static final long serialVersionUID = -8657363515914699792L;
    private FraudDataInfo data = new FraudDataInfo();

    @KsJson
    public static class FraudDataInfo extends com.kwad.sdk.core.response.a.a implements Serializable {
        private static final long serialVersionUID = -8657363515914699792L;
        public int code;
        public boolean fraud;

        public int getCode() {
            return this.code;
        }

        public boolean isFraud() {
            return this.fraud;
        }
    }

    @Override // com.kwad.sdk.core.response.model.BaseResultData
    public JSONObject baseToJson() throws JSONException {
        JSONObject json = super.toJson();
        ac.a(json, "data", this.data);
        return json;
    }

    public int getCode() {
        return this.data.getCode();
    }

    public boolean isFraud() {
        return this.data.isFraud();
    }

    @Override // com.kwad.sdk.core.response.model.BaseResultData, com.kwad.sdk.core.b
    public void parseJson(@Nullable JSONObject jSONObject) {
        super.parseJson(jSONObject);
        try {
            String strOptString = jSONObject.optString("data");
            if (!br.isNullString(strOptString)) {
                strOptString = ((e) com.kwad.sdk.components.d.f(e.class)).getResponseData(strOptString);
            }
            this.data.parseJson(new JSONObject(strOptString));
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
        }
    }
}
