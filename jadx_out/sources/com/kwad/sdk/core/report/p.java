package com.kwad.sdk.core.report;

import android.content.Context;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public final class p extends c {
    public static int Pj = 1;
    private static String aWD = "CREATE TABLE IF NOT EXISTS ksad_actions (actionId varchar(60) primary key, aLog TEXT)";

    public p(@Nullable Context context, int i2) {
        super(context, "ksadrep.db", i2, aWD);
    }
}
