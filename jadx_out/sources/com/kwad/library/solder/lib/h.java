package com.kwad.library.solder.lib;

import android.content.Context;
import android.text.TextUtils;
import com.kwad.library.solder.lib.ext.PluginError;
import com.kwad.sdk.utils.an;
import com.kwad.sdk.utils.y;
import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes4.dex */
public class h extends g {
    public h(String str) {
        super(str);
    }

    private Set<File> a(Context context, File file, File file2) throws IOException {
        String[] list;
        Objects.toString(file2);
        HashSet hashSet = new HashSet();
        if (!file2.exists() || (list = file2.list()) == null || list.length <= 0) {
            File file3 = new File(file2.getParentFile(), this.aEj.Ep());
            y.aa(file3);
            Iterator<String> it = com.kwad.library.solder.lib.d.c.b(file, file3).iterator();
            while (it.hasNext()) {
                File fileA = com.kwad.library.solder.lib.d.c.a(file3, it.next(), file2);
                if (fileA != null) {
                    hashSet.add(fileA);
                }
            }
            y.V(file3);
            return hashSet;
        }
        for (String str : list) {
            hashSet.add(new File(file2.getAbsolutePath() + File.separator + str));
        }
        return hashSet;
    }

    private void c(Set<File> set) throws Throwable {
        com.kwad.library.solder.lib.c.b bVar = this.aEK;
        if (bVar == null || bVar.aFx.size() <= 0 || set == null) {
            return;
        }
        for (Map.Entry<String, String> entry : this.aEK.aFx.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!TextUtils.isEmpty(value)) {
                for (File file : set) {
                    String fileMD5Digest = an.getFileMD5Digest(file);
                    if (file.getName().equals(key)) {
                        if (!TextUtils.equals(fileMD5Digest, value)) {
                            d(set);
                            throw new PluginError.LoadError(new Exception(file.getName() + " Md5 check error,find " + fileMD5Digest + ",except " + value), 4008);
                        }
                    }
                }
                throw new PluginError.LoadError(new Exception(key + " not found"), 4001);
            }
        }
    }

    private static void d(Set<File> set) {
        Iterator<File> it = set.iterator();
        while (it.hasNext()) {
            y.V(it.next());
        }
    }

    private File f(File file) throws IOException {
        File file2 = new File(file.getParentFile(), this.aEj.Eo());
        y.aa(file2);
        return file2;
    }

    @Override // com.kwad.library.solder.lib.g, com.kwad.library.solder.lib.a.a
    public void l(Context context, String str) {
        ClassLoader classLoader;
        super.l(context, str);
        getId();
        File file = new File(str);
        try {
            File fileF = f(file);
            this.aEE = fileF;
            try {
                try {
                    c(a(context, file, fileF));
                    com.kwad.library.solder.lib.c.b bVar = this.aEK;
                    if (bVar == null || (classLoader = bVar.aFA) == null) {
                        classLoader = getClass().getClassLoader();
                    }
                    synchronized (Runtime.getRuntime()) {
                        try {
                            try {
                                com.kwad.library.solder.lib.ext.d.c(classLoader, this.aEE);
                            } finally {
                                PluginError.LoadError loadError = new PluginError.LoadError(th, 4004);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (PluginError.LoadError e2) {
                    y.V(file);
                    throw e2;
                }
            } catch (IOException th2) {
                throw new PluginError.LoadError(th2, i);
            }
        } catch (IOException e3) {
            throw new PluginError.LoadError(e3, 4003);
        }
    }
}
