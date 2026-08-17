package com.kwad.library.b;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import com.kwad.library.b.a.b;
import com.kwad.library.solder.lib.ext.PluginError;
import com.kwad.library.solder.lib.h;
import com.kwad.sdk.utils.y;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class a extends h {
    private b aDG;
    private Resources aDH;

    public a(String str) {
        super(str);
    }

    private b a(File file, File file2) {
        if (Build.VERSION.SDK_INT < 26) {
            if (!file.canRead()) {
                file.setReadable(true);
            }
            if (!file.canWrite()) {
                file.setWritable(true);
            }
            if (!file.canRead() || !file.canWrite()) {
                file = null;
            }
        }
        File file3 = file;
        com.kwad.library.b.a.a aVar = new com.kwad.library.b.a.a((BaseDexClassLoader) a.class.getClassLoader());
        String absolutePath = file2.getAbsolutePath();
        String absolutePath2 = this.aEE.getAbsolutePath();
        com.kwad.library.solder.lib.c.b bVar = this.aEK;
        return new b(aVar, absolutePath, file3, absolutePath2, bVar.aFz, bVar.aFy);
    }

    private File d(File file) throws IOException {
        File file2 = new File(file.getParentFile(), this.aEj.En());
        y.aa(file2);
        return file2;
    }

    public final b DG() {
        return this.aDG;
    }

    public final Resources getResources() {
        return this.aDH;
    }

    @Override // com.kwad.library.solder.lib.h, com.kwad.library.solder.lib.g, com.kwad.library.solder.lib.a.a
    public final void l(Context context, String str) throws PluginError.LoadError {
        super.l(context, str);
        File file = new File(str);
        try {
            File fileD = d(file);
            try {
                if (Build.VERSION.SDK_INT >= 34 && context != null && context.getApplicationInfo().targetSdkVersion >= 34) {
                    file.setReadOnly();
                    fileD.setReadOnly();
                }
            } catch (Throwable unused) {
            }
            this.aDG = a(fileD, file);
            try {
                this.aDH = com.kwad.library.b.b.b.a(context, context.getResources(), str);
                Objects.toString(this.aDG);
                Objects.toString(this.aDH);
            } catch (Exception e2) {
                Log.getStackTraceString(e2);
                throw new PluginError.LoadError(e2, 4006);
            }
        } catch (IOException e3) {
            throw new PluginError.LoadError(e3, 4002);
        }
    }
}
