package com.fl.saas;

import com.fl.saas.adx.util.LogcatUtil;
import java.io.File;

/* loaded from: classes3.dex */
public abstract class M {
    public static void a(File file) {
        File[] fileArrListFiles;
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length == 0) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                try {
                    file2.delete();
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
            } else if (file2.isDirectory()) {
                a(file2);
            }
        }
    }
}
