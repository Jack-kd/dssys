package com.kwad.framework.filedownloader.a;

import com.kwad.framework.filedownloader.f.c;

/* loaded from: classes4.dex */
public final class a implements c.a {
    @Override // com.kwad.framework.filedownloader.f.c.a
    public final int ab(long j2) {
        if (j2 < 1048576) {
            return 1;
        }
        if (j2 < 5242880) {
            return 2;
        }
        if (j2 < 52428800) {
            return 3;
        }
        return j2 < 104857600 ? 4 : 5;
    }
}
