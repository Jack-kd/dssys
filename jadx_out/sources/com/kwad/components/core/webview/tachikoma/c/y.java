package com.kwad.components.core.webview.tachikoma.c;

import android.text.TextUtils;
import com.ksad.json.annotation.KsJson;
import com.sigmob.sdk.base.common.C1244a;

@KsJson
/* loaded from: classes4.dex */
public class y extends com.kwad.sdk.core.response.a.a {
    public String auA;
    public int errorCode;
    public String errorReason;
    public int rq;

    public final boolean isFailed() {
        return TextUtils.equals("failed", this.auA);
    }

    public final boolean zr() {
        return TextUtils.equals("start", this.auA);
    }

    public final boolean zs() {
        return TextUtils.equals("end", this.auA);
    }

    public final boolean zt() {
        return TextUtils.equals("progress", this.auA);
    }

    public final boolean zu() {
        return TextUtils.equals(C1244a.f35682j, this.auA);
    }

    public final boolean zv() {
        return TextUtils.equals("resume", this.auA);
    }

    public final int zw() {
        try {
            return (int) Long.parseLong(this.errorReason);
        } catch (NumberFormatException e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
            return 0;
        }
    }
}
