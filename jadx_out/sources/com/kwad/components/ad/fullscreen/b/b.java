package com.kwad.components.ad.fullscreen.b;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.d.c;
import java.text.SimpleDateFormat;
import java.util.Date;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.core.response.a.a {
    private static SimpleDateFormat kc = new SimpleDateFormat("yyyy-MM-dd");
    public long kd;
    public int ke;

    public b() {
        this.kd = -1L;
        this.ke = -1;
    }

    public final boolean Q(int i2) {
        int i3 = this.ke;
        return i3 > 0 && i3 >= i2;
    }

    public final boolean m(long j2) {
        if (this.kd > 0 && j2 > 0) {
            try {
                return kc.format(new Date(this.kd)).equals(kc.format(new Date(j2)));
            } catch (Exception e2) {
                c.printStackTraceOnly(e2);
            }
        }
        return false;
    }

    public b(long j2, int i2) {
        this.kd = j2;
        this.ke = 1;
    }
}
