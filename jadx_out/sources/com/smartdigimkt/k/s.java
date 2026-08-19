package com.smartdigimkt.k;

import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: classes5.dex */
public final class s extends t {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f41204a;

    public s(z zVar) {
        this.f41204a = zVar;
    }

    @Override // com.smartdigimkt.k.t, java.lang.Runnable
    public final void run() {
        String string;
        Thread.currentThread().setName("sdm_download_apk");
        try {
            z zVar = this.f41204a;
            if (zVar.f41237i == 3) {
                return;
            }
            z.a(zVar);
        } catch (Throwable th) {
            try {
                StringWriter stringWriter = new StringWriter();
                th.printStackTrace(new PrintWriter(stringWriter));
                string = stringWriter.toString();
            } catch (Throwable unused) {
                string = null;
            }
            this.f41204a.a(3, "DownloadLoader#start() >>> download failed: msg = " + th.getMessage() + ", stackTrace = " + string);
        }
    }
}
