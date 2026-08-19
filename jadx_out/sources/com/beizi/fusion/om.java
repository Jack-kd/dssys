package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.AdResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.s2s.S2SAdVerifyModel;
import com.beizi.fusion.kd;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class om {

    /* renamed from: a, reason: collision with root package name */
    private AdResponseModel f15470a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15471b;

    public om(String str) {
        this.f15471b = str;
    }

    public void a(Context context) {
        JSONObject jSONObjectC;
        if (TextUtils.isEmpty(this.f15471b) || (jSONObjectC = pg.c(((kd) gh.a().b(context)).a(this.f15471b, "101,1001", kd.a.STEP_BY_STEP, true))) == null) {
            return;
        }
        this.f15470a = new AdResponseModel(jSONObjectC);
    }

    public AdResponseModel b() {
        return this.f15470a;
    }

    public String c() {
        S2SAdVerifyModel s2SAdVerify;
        AdResponseModel adResponseModel = this.f15470a;
        return (adResponseModel == null || (s2SAdVerify = adResponseModel.getS2SAdVerify()) == null) ? "" : s2SAdVerify.getS2sReqId();
    }

    public String a() {
        S2SAdVerifyModel s2SAdVerify;
        AdResponseModel adResponseModel = this.f15470a;
        if (adResponseModel != null && (s2SAdVerify = adResponseModel.getS2SAdVerify()) != null) {
            return s2SAdVerify.getS2sSpaceId();
        }
        return "";
    }
}
