package com.kwad.sdk.commercial.f;

import com.ksad.json.annotation.KsJson;
import java.net.URL;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.commercial.c.a {
    public String aJY;
    public String aKf;
    public int ads;
    public int status;
    public String url;

    public static b Iu() {
        return new b();
    }

    public final b dB(String str) {
        this.url = str;
        try {
            URL url = new URL(str);
            this.aJY = url.getHost();
            this.aKf = url.getPath();
        } catch (Throwable unused) {
        }
        return this;
    }

    public final b dC(int i2) {
        this.status = i2;
        return this;
    }

    public final b dD(int i2) {
        this.ads = i2;
        return this;
    }
}
