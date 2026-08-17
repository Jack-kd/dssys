package com.kwad.framework.filedownloader.services;

import android.text.TextUtils;
import com.kwad.framework.filedownloader.f.c;

/* loaded from: classes4.dex */
public final class b implements c.d {
    @Override // com.kwad.framework.filedownloader.f.c.d
    public final int f(String str, String str2, boolean z2) {
        return g(str, str2, z2);
    }

    @Override // com.kwad.framework.filedownloader.f.c.d
    public final int g(String str, String str2, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return z2 ? com.kwad.framework.filedownloader.f.f.md5(com.kwad.framework.filedownloader.f.f.c("%sp%s@dir", str, str2)).hashCode() : com.kwad.framework.filedownloader.f.f.md5(com.kwad.framework.filedownloader.f.f.c("%sp%s", str, str2)).hashCode();
        } catch (Throwable unused) {
            return str.hashCode();
        }
    }
}
