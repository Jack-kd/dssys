package com.meishu.sdk.core.bquery;

import com.meishu.sdk.core.safe.l;
import java.io.File;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class f extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ File f31522a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f31523b;

    public f(File file, long j2) {
        this.f31522a = file;
        this.f31523b = j2;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        File file = this.f31522a;
        long j2 = this.f31523b;
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            Arrays.sort(fileArrListFiles);
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    file2.length();
                    if (System.currentTimeMillis() - file2.lastModified() >= j2) {
                        file2.delete();
                    }
                }
            }
        } catch (Exception unused) {
        }
    }
}
