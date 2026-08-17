package com.kwad.sdk.api.loader;

import com.kwad.sdk.liteapi.KsLiteApiImpl;

/* loaded from: classes4.dex */
public final class r {
    public static q HH() {
        try {
            return (q) KsLiteApiImpl.class.newInstance();
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            return null;
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            return null;
        } catch (InstantiationException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
