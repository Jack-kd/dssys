package com.beizi.fusion;

import java.io.File;

/* loaded from: classes2.dex */
public abstract class pm {
    public static void a(File file) {
        try {
            if (!file.isDirectory()) {
                if (file.exists()) {
                    file.delete();
                    return;
                }
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (File file2 : fileArrListFiles) {
                    a(file2);
                }
            }
            file.delete();
        } catch (Exception unused) {
        }
    }
}
