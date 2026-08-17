package com.kwad.sdk.components;

import com.kwad.sdk.components.DevelopMangerComponents;

/* loaded from: classes4.dex */
public final class g {
    public static boolean dP(String str) {
        DevelopMangerComponents.DevelopValue developValueDO = d.dO(str);
        return developValueDO != null && ((Boolean) developValueDO.getValue()).booleanValue();
    }

    public static boolean encryptDisable() {
        return dP("KEY_HOST_ENCRYPT_DISABLE");
    }
}
