package com.beizi.fusion;

import com.beizi.fusion.g2;

/* loaded from: classes2.dex */
public interface kd {

    public enum a {
        STEP_BY_STEP,
        AS_LAST_OR_FIRST,
        NOT_APPEND
    }

    String a(String str, String str2, a aVar, boolean z2);

    void a(g2.a aVar);

    byte[] a(byte[] bArr, String str, a aVar, boolean z2);

    String b(String str, String str2, a aVar, boolean z2);

    byte[] b(byte[] bArr, String str, a aVar, boolean z2);
}
