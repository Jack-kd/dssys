package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.layout.par;

import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import com.beizi.fusion.qo;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class LayoutParamModel extends ASNPJsonResponseModel {

    @ng(key = "layout")
    private String layout;

    @ng(key = "reference")
    private String reference;

    @ng(key = "size")
    private String size;

    public LayoutParamModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getLayout() {
        return this.layout;
    }

    public String getReference() {
        return this.reference;
    }

    public String getSize() {
        return this.size;
    }

    public float getSizeDp() {
        return qo.h(this.size);
    }

    public float getSizePercent() {
        return qo.k(this.size);
    }

    public boolean usePercent() {
        if (TextUtils.isEmpty(this.size)) {
            return false;
        }
        return this.size.contains("%");
    }
}
