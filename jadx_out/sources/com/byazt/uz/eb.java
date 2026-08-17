package com.byazt.uz;

import android.util.Pair;
import com.anythink.core.common.d.i;
import com.bytedance.component.sdk.annotation.WorkerThread;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, 900, 94})
/* loaded from: classes3.dex */
public class eb {
    public final w hp;

    public eb(w wVar) {
        this.hp = wVar;
    }

    private File l(String str) throws FileNotFoundException {
        File file = new File(hp(), hp(str, jx.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(hp(), hp(str, jx.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        return null;
    }

    @WorkerThread
    public Pair<jx, InputStream> hp(String str) {
        try {
            File fileL = l(str);
            if (fileL == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(fileL);
            jx jxVar = fileL.getAbsolutePath().endsWith(".zip") ? jx.ZIP : jx.JSON;
            com.byazt.ze.a.hp("Cache hit for " + str + " at " + fileL.getAbsolutePath());
            return new Pair<>(jxVar, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    public File hp(String str, InputStream inputStream, jx jxVar) throws IOException {
        File file = new File(hp(), hp(str, jxVar, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i2 = inputStream.read(bArr);
                    if (i2 != -1) {
                        fileOutputStream.write(bArr, 0, i2);
                    } else {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        return file;
                    }
                }
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } finally {
            inputStream.close();
        }
    }

    public void hp(String str, jx jxVar) {
        File file = new File(hp(), hp(str, jxVar, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean zRenameTo = file.renameTo(file2);
        com.byazt.ze.a.hp("Copying temp file to real file (" + file2 + ")");
        if (zRenameTo) {
            return;
        }
        com.byazt.ze.a.l("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + i.f2495E);
    }

    private File hp() {
        File fileHp = this.hp.hp();
        if (fileHp.isFile()) {
            fileHp.delete();
        }
        if (!fileHp.exists()) {
            fileHp.mkdirs();
        }
        return fileHp;
    }

    private static String hp(String str, jx jxVar, boolean z2) {
        StringBuilder sb = new StringBuilder("lottie_cache_");
        sb.append(str.replaceAll("\\W+", ""));
        sb.append(z2 ? jxVar.hp() : jxVar.jx);
        return sb.toString();
    }
}
