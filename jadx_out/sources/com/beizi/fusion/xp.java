package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.AdResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.basic.ADNAdResponse;
import com.beizi.fusion.kd;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public abstract class xp implements ua {

    /* renamed from: a, reason: collision with root package name */
    private final Context f17474a;

    public xp(Context context) {
        this.f17474a = context.getApplicationContext();
    }

    @Override // com.beizi.fusion.ua
    public void a(int i2, InputStream inputStream) {
        AdResponseModel adResponseModelA;
        n1[] n1VarArr = new n1[1];
        try {
            String strA = p0.a(this.f17474a, p0.b(), "asnpAdPattern", "101,1001");
            adResponseModelA = a(new String(((kd) gh.a().b(this.f17474a)).a(be.b(inputStream), strA, kd.a.NOT_APPEND, true), "UTF-8"), n1VarArr);
        } catch (IOException e2) {
            rm.a(e2);
            n1VarArr[0] = n1.ERROR_RESPONSE_PARSE_FAILED;
            adResponseModelA = null;
        }
        a(adResponseModelA, n1VarArr);
    }

    public abstract void a(AdResponseModel adResponseModel, n1[] n1VarArr);

    public abstract void b(pc pcVar);

    @Override // com.beizi.fusion.ua
    public void a(pc pcVar) {
        b(pcVar);
    }

    private AdResponseModel a(String str, n1[] n1VarArr) {
        if (!TextUtils.isEmpty(str)) {
            ADNAdResponse aDNAdResponse = new ADNAdResponse(pg.c(str));
            if (aDNAdResponse.isResponseValid()) {
                AdResponseModel data = aDNAdResponse.getData();
                if (!data.hasParseException()) {
                    return data;
                }
                if (n1VarArr != null && n1VarArr.length > 0) {
                    n1VarArr[0] = n1.ERROR_RESPONSE_PARSE_FAILED;
                }
                return null;
            }
        }
        if (n1VarArr != null && n1VarArr.length > 0) {
            n1VarArr[0] = n1.ERROR_REQUEST_FAILED;
        }
        return null;
    }
}
