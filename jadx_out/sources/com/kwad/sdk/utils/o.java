package com.kwad.sdk.utils;

import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public final class o {
    public static long boK = -1;

    public static void fp(AdTemplate adTemplate) {
        if (adTemplate != null) {
            adTemplate.mVisibleTimeParam = boK;
            adTemplate.mOutClickTimeParam = boK;
        }
    }

    public static void fq(AdTemplate adTemplate) {
        if (adTemplate != null) {
            adTemplate.mOutClickTimeParam = System.currentTimeMillis();
        }
    }

    public static void fr(AdTemplate adTemplate) {
        if (adTemplate != null) {
            adTemplate.mVisibleTimeParam = System.currentTimeMillis();
        }
    }

    public static long fs(AdTemplate adTemplate) {
        if (adTemplate == null) {
            return System.currentTimeMillis();
        }
        long j2 = adTemplate.mOutClickTimeParam;
        return j2 > 0 ? j2 : adTemplate.mVisibleTimeParam;
    }
}
