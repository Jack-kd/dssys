package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;

/* loaded from: classes2.dex */
public abstract class ha extends bb {
    public ha(Context context) {
        super(context);
    }

    public String a(ConfigResponseModel configResponseModel) {
        if (configResponseModel != null && configResponseModel.getRequestUrl() != null) {
            String adURL = configResponseModel.getRequestUrl().getAdURL();
            if (!TextUtils.isEmpty(adURL)) {
                return adURL;
            }
        }
        return a();
    }

    private String a() {
        String str;
        C1135g c1135g = (C1135g) C1136h.a().b(this.f13075a);
        if (c1135g == null) {
            return null;
        }
        C1150v c1150vA = c1135g.a();
        if (c1150vA != null && c1150vA.z()) {
            str = "aHR0cHM6Ly9zZGstYXBpLmFkbi1wbHVzLmNvbS5jbi9hcGkvdjMvYWQvZ2V0QWQ=";
        } else {
            str = "aHR0cDovL3Nkay1hcGkuYWRuLXBsdXMuY29tLmNuL2FwaS92My9hZC9nZXRBZA==";
        }
        return g3.c(str.getBytes());
    }
}
