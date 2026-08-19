package com.kwad.components.core.innerEc.live.like;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.a.d;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.response.model.BaseResultData;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class LikeResponse extends BaseResultData {
    private static final long serialVersionUID = 5685270837446640485L;
    public int likeIntervalMs;

    @Override // com.kwad.sdk.core.response.model.BaseResultData, com.kwad.sdk.core.b
    public void parseJson(@Nullable JSONObject jSONObject) {
        super.parseJson(jSONObject);
        if (jSONObject == null) {
            return;
        }
        try {
            String responseData = d.getResponseData(jSONObject.optString("data"));
            if (TextUtils.isEmpty(responseData)) {
                return;
            }
            this.likeIntervalMs = Integer.parseInt(responseData);
        } catch (Exception e2) {
            c.printStackTrace(e2);
        }
    }
}
