package com.kwad.sdk.crash.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes4.dex */
public final class i {
    private static SimpleDateFormat bgs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public static String aT(long j2) {
        return j2 <= 0 ? "unknown" : bgs.format(new Date(j2));
    }
}
