package com.kwad.library.solder.lib;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.kwad.library.solder.lib.a.f;
import com.kwad.library.solder.lib.ext.PluginError;
import com.kwad.sdk.utils.an;
import com.kwad.sdk.utils.y;
import java.io.File;

/* loaded from: classes4.dex */
final class f implements com.kwad.library.solder.lib.a.f {
    private f.a aEw;
    private final Context mContext;

    public f(Context context) {
        this.mContext = context.getApplicationContext();
    }

    private static void e(com.kwad.library.solder.lib.a.e eVar) {
        eVar.getState();
        eVar.DX().DO().o(eVar);
    }

    private static void f(com.kwad.library.solder.lib.a.e eVar) {
        eVar.getState();
        eVar.dg(0);
        eVar.DX().DO().n(eVar);
    }

    private static void l(com.kwad.library.solder.lib.a.e eVar) {
        eVar.getState();
        eVar.DX().DO().p(eVar);
    }

    @Override // com.kwad.library.solder.lib.a.f
    public final com.kwad.library.solder.lib.a.f a(f.a aVar) {
        this.aEw = aVar;
        return this;
    }

    @Override // com.kwad.library.solder.lib.a.f
    public final boolean k(@NonNull com.kwad.library.solder.lib.a.e eVar) {
        eVar.Eb();
        eVar.cE("Update");
        e(eVar);
        if (eVar.Ec()) {
            eVar.DX().DN().cw(eVar.Eb());
        }
        if (eVar.isCanceled()) {
            f(eVar);
            return false;
        }
        try {
            eVar.DX().DN().DI();
            if (eVar.Eg()) {
                try {
                    File fileE = eVar.DX().DN().e(eVar.Eh(), false);
                    if (eVar.isCanceled()) {
                        f(eVar);
                        return false;
                    }
                    try {
                        y.a(this.mContext, eVar.Eh(), fileE);
                        eVar.cF(fileE.getAbsolutePath());
                        eVar.dg(3);
                        l(eVar);
                    } catch (Throwable th) {
                        a.e("PluginUpdaterImpl", th);
                        a(eVar, new PluginError.UpdateError(th, PluginError.ERROR_UPD_EXTRACT));
                    }
                } catch (Throwable th2) {
                    th2.getLocalizedMessage();
                    a(eVar, new PluginError.UpdateError(th2, 2003));
                    return false;
                }
            } else {
                eVar.Eb();
                eVar.getDownloadUrl();
                try {
                    File fileE2 = eVar.DX().DN().e(eVar.getDownloadUrl(), eVar.DX().DK().Et());
                    if (eVar.Ei() != null && fileE2.exists() && TextUtils.equals(an.getFileMD5Digest(fileE2), eVar.Ei())) {
                        eVar.cF(fileE2.getAbsolutePath());
                        eVar.dg(4);
                        l(eVar);
                        return true;
                    }
                    try {
                        a(eVar, fileE2);
                        eVar.cF(fileE2.getAbsolutePath());
                        eVar.dg(4);
                        l(eVar);
                    } catch (PluginError.CancelError unused) {
                        f(eVar);
                        return false;
                    } catch (PluginError.UpdateError e2) {
                        a.e("PluginUpdaterImpl", "Download plugin fail, error = " + e2.getLocalizedMessage());
                        eVar.q(e2);
                        a(eVar, e2);
                        return false;
                    }
                } catch (Throwable th3) {
                    a.e("PluginUpdaterImpl", "Can not get temp file, error = " + th3.getLocalizedMessage());
                    a(eVar, new PluginError.UpdateError(th3, 2003));
                    return false;
                }
            }
            return true;
        } catch (Throwable th4) {
            a.e("PluginUpdaterImpl", th4);
            a(eVar, new PluginError.UpdateError(th4, PluginError.ERROR_UPD_CAPACITY));
            return false;
        }
    }

    private static void a(com.kwad.library.solder.lib.a.e eVar, PluginError.UpdateError updateError) {
        eVar.getState();
        eVar.dg(1);
        eVar.q(updateError);
        eVar.DX().DO().c(eVar, updateError);
    }

    private void a(com.kwad.library.solder.lib.a.e eVar, File file) throws PluginError.UpdateError {
        System.currentTimeMillis();
        eVar.Eb();
        f.a aVar = this.aEw;
        if (aVar != null) {
            aVar.a(eVar, file);
            System.currentTimeMillis();
            eVar.Eb();
            return;
        }
        throw new PluginError.UpdateError("update ", PluginError.ERROR_UPD_NO_DOWNLOADER);
    }
}
