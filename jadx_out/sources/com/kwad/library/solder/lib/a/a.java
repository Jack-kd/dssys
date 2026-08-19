package com.kwad.library.solder.lib.a;

import android.content.Context;
import androidx.annotation.NonNull;
import com.kwad.library.solder.lib.i;
import java.io.File;

/* loaded from: classes4.dex */
public abstract class a {
    protected File aEE;
    protected String aEF;
    protected String aEG;
    private final String aEJ;
    protected com.kwad.library.solder.lib.c.b aEK;
    protected String mVersion;
    private final byte[] aEI = new byte[0];
    private boolean aEH = false;
    protected com.kwad.library.solder.lib.ext.c aEj = i.DQ().DK();

    public a(String str) {
        this.aEJ = str;
        this.aEF = str;
    }

    private void DU() {
        if (this.aEH) {
            return;
        }
        synchronized (this.aEI) {
            this.aEH = true;
        }
    }

    public final String DV() {
        return this.aEJ;
    }

    public final String DW() {
        com.kwad.library.solder.lib.c.b bVar = this.aEK;
        if (bVar != null) {
            return bVar.aFu;
        }
        return null;
    }

    public final a a(@NonNull com.kwad.library.solder.lib.c.b bVar) {
        this.aEK = bVar;
        return this;
    }

    public final void cB(String str) {
        this.mVersion = str;
    }

    public final void cC(String str) {
        this.aEG = str;
    }

    public final void cD(String str) {
        this.aEF = str;
    }

    public final String getId() {
        return this.aEG;
    }

    public final String getVersion() {
        return this.mVersion;
    }

    public final boolean isLoaded() {
        boolean z2;
        if (this.aEH) {
            return true;
        }
        synchronized (this.aEI) {
            z2 = this.aEH;
        }
        return z2;
    }

    public abstract void l(Context context, String str);

    public final void q(Context context, String str) {
        l(context, str);
        DU();
    }

    public String toString() {
        return "Plugin{, ApkPath = '" + this.aEJ + "'}";
    }
}
