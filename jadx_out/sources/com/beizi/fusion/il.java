package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.cache.ad.pre.model.PreCacheAdModel;
import com.beizi.fusion.asnp.adn.ad.cache.ad.pre.model.PreCacheSpaceAdModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.AdResponseModel;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class il extends db {
    public il(Context context, String str) {
        super(context, str);
    }

    @Override // com.beizi.fusion.db
    public void a(String str) throws JSONException {
        JSONObject jSONObjectB = pg.b();
        pg.a(jSONObjectB, "result", pg.b(str));
        List<PreCacheSpaceAdModel> listA = new PreCacheAdModel(jSONObjectB).a();
        C1124a c1124a = (C1124a) C1126b.a().b(this.f13421b);
        for (PreCacheSpaceAdModel preCacheSpaceAdModel : listA) {
            if (preCacheSpaceAdModel != null) {
                String strB = preCacheSpaceAdModel.b();
                AdResponseModel adResponseModelA = preCacheSpaceAdModel.a();
                if (!TextUtils.isEmpty(strB) && adResponseModelA != null) {
                    c1124a.a(strB, adResponseModelA);
                }
            }
        }
    }
}
