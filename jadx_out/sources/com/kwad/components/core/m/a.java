package com.kwad.components.core.m;

import com.ksad.json.annotation.KsJson;
import com.kuaishou.weapon.p0.bg;
import com.kwad.sdk.core.d.c;
import java.text.SimpleDateFormat;
import java.util.Date;

@KsJson
/* loaded from: classes4.dex */
public class a extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {
    private static SimpleDateFormat abh = new SimpleDateFormat("yyyy-MM-dd");
    public int abi;
    public long abj;

    public final boolean l(int i2, int i3) {
        c.d("AdForceActiveInfo", "checkAndAddCount forceActiveIntervalHour: " + i2 + ", forceActiveThreshold: " + i3);
        if (this.abj <= 0) {
            to();
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = abh.format(new Date(this.abj));
        String str2 = abh.format(new Date(jCurrentTimeMillis));
        c.d("AdForceActiveInfo", "checkAndAddCount lastDate: " + str + ", currentDate: " + str2);
        if (!str.equals(str2)) {
            this.abi = 0;
            to();
            return true;
        }
        long j2 = this.abj + (i2 * bg.f30873s);
        c.d("AdForceActiveInfo", "checkAndAddCount minTimestamp: " + j2 + ", currentActiveCount: " + this.abi);
        if (j2 >= jCurrentTimeMillis || this.abi > i3) {
            return false;
        }
        to();
        return true;
    }

    public final void to() {
        this.abj = System.currentTimeMillis();
        this.abi++;
        c.d("AdForceActiveInfo", "doAddCount, lastForceActiveTimestamp: " + this.abj + ", currentActiveCount " + this.abi);
    }
}
