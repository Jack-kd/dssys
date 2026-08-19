package com.smartdigimkt.q0;

import android.media.MediaFormat;

/* loaded from: classes5.dex */
public abstract class k {
    public static void a(MediaFormat mediaFormat, String str, int i2) {
        if (i2 != -1) {
            mediaFormat.setInteger(str, i2);
        }
    }
}
