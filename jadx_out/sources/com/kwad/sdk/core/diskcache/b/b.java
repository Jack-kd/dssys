package com.kwad.sdk.core.diskcache.b;

import androidx.annotation.NonNull;
import com.kwad.sdk.core.diskcache.a.a;
import com.kwad.sdk.core.network.a.a;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public final class b {
    public static void a(@NonNull final com.kwad.sdk.core.diskcache.a.a aVar, @NonNull final String str, @NonNull final String str2) {
        i.execute(new bi() { // from class: com.kwad.sdk.core.diskcache.b.b.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                OutputStream outputStreamEs = null;
                try {
                    a.C0604a c0604aEo = aVar.eo(str2);
                    if (c0604aEo != null) {
                        outputStreamEs = c0604aEo.es(0);
                        if (b.a(str, outputStreamEs, new a.C0614a())) {
                            c0604aEo.commit();
                        } else {
                            c0604aEo.abort();
                        }
                        aVar.flush();
                    }
                    com.kwad.sdk.crash.utils.b.closeQuietly(outputStreamEs);
                } catch (IOException unused) {
                    com.kwad.sdk.crash.utils.b.closeQuietly(outputStreamEs);
                } catch (Throwable th) {
                    com.kwad.sdk.crash.utils.b.closeQuietly(outputStreamEs);
                    throw th;
                }
            }
        });
    }

    public static File a(@NonNull com.kwad.sdk.core.diskcache.a.a aVar, @NonNull String str) throws Throwable {
        a.c cVarEn;
        a.c cVar = null;
        try {
            cVarEn = aVar.en(str);
            if (cVarEn != null) {
                try {
                    File fileEv = cVarEn.ev(0);
                    com.kwad.sdk.crash.utils.b.closeQuietly(cVarEn);
                    return fileEv;
                } catch (IOException unused) {
                } catch (Throwable th) {
                    th = th;
                    cVar = cVarEn;
                    com.kwad.sdk.crash.utils.b.closeQuietly(cVar);
                    throw th;
                }
            }
        } catch (IOException unused2) {
            cVarEn = null;
        } catch (Throwable th2) {
            th = th2;
        }
        com.kwad.sdk.crash.utils.b.closeQuietly(cVarEn);
        return null;
    }

    public static boolean a(@NonNull com.kwad.sdk.core.diskcache.a.a aVar, @NonNull String str, @NonNull String str2, a.C0614a c0614a) {
        boolean z2 = false;
        OutputStream outputStreamEs = null;
        try {
            try {
                a.C0604a c0604aEo = aVar.eo(str2);
                if (c0604aEo != null) {
                    outputStreamEs = c0604aEo.es(0);
                    if (a(str, outputStreamEs, c0614a)) {
                        c0604aEo.commit();
                        z2 = true;
                    } else {
                        c0604aEo.abort();
                    }
                    aVar.flush();
                }
                com.kwad.sdk.crash.utils.b.closeQuietly(outputStreamEs);
                return z2;
            } catch (IOException e2) {
                c0614a.msg = e2.getMessage();
                com.kwad.sdk.crash.utils.b.closeQuietly(outputStreamEs);
                return z2;
            }
        } catch (Throwable th) {
            com.kwad.sdk.crash.utils.b.closeQuietly(outputStreamEs);
            throw th;
        }
    }

    public static boolean a(String str, OutputStream outputStream, a.C0614a c0614a) {
        return com.kwad.sdk.core.network.a.a.a(str, outputStream, c0614a, -1L, true, null);
    }
}
