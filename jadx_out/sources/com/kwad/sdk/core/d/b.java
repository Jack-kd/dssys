package com.kwad.sdk.core.d;

import android.util.Log;

/* loaded from: classes4.dex */
final class b implements com.kwad.sdk.core.d.a.a {
    @Override // com.kwad.sdk.core.d.a.a
    public final void d(String str, String str2) {
        if (c.aSP) {
            a.pe.booleanValue();
        }
    }

    @Override // com.kwad.sdk.core.d.a.a
    public final void e(String str, String str2) {
        if (c.aSP) {
            Log.e(str, str2);
        }
    }

    @Override // com.kwad.sdk.core.d.a.a
    public final void i(String str, String str2) {
        boolean z2 = c.aSP;
    }

    @Override // com.kwad.sdk.core.d.a.a
    public final void printStackTraceOnly(Throwable th) {
        if (c.aSP && a.pe.booleanValue() && th != null) {
            th.printStackTrace();
        }
    }

    @Override // com.kwad.sdk.core.d.a.a
    public final void v(String str, String str2, boolean z2) {
    }

    @Override // com.kwad.sdk.core.d.a.a
    public final void w(String str, String str2, boolean z2) {
    }

    @Override // com.kwad.sdk.core.d.a.a
    public final void v(String str, String str2) {
        if (c.aSP) {
            a.pe.booleanValue();
        }
    }

    @Override // com.kwad.sdk.core.d.a.a
    public final void w(String str, String str2) {
        boolean z2 = c.aSP;
    }
}
