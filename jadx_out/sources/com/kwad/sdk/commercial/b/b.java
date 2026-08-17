package com.kwad.sdk.commercial.b;

import com.ksad.json.annotation.KsJson;
import java.net.URL;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.commercial.c.a {
    public String aJY;
    public String aKf;
    public String aKg;
    public int aKh;
    public int aKi;
    public int status;
    public String url;

    public static b Ip() {
        return new b();
    }

    public final b dr(String str) {
        this.url = str;
        try {
            URL url = new URL(str);
            this.aJY = url.getHost();
            this.aKf = url.getPath();
        } catch (Throwable unused) {
        }
        return this;
    }

    public final b ds(String str) {
        this.aKg = str;
        return this;
    }

    public final b dx(int i2) {
        this.status = i2;
        return this;
    }

    public final b dy(int i2) {
        this.aKh = i2;
        return this;
    }

    public final b dz(int i2) {
        this.aKi = i2;
        return this;
    }
}
