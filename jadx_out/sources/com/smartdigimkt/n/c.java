package com.smartdigimkt.n;

import android.content.Context;
import com.smartdigimkt.f.i;
import com.smartdigimkt.sdk.core.SDKContext;
import java.io.File;
import java.util.UUID;

/* loaded from: classes5.dex */
public abstract class c {
    public static File a(File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, UUID.randomUUID() + "");
        if (file2.exists()) {
            file2.delete();
        }
        if (!file2.mkdirs()) {
            return null;
        }
        file2.delete();
        return file.getAbsoluteFile();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b() {
        /*
            android.content.Context r0 = a()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            android.content.Context r0 = a()
            java.lang.String r2 = "sdm_myoffer_download"
            if (r0 != 0) goto L12
            goto L8c
        L12:
            android.content.pm.PackageManager r3 = r0.getPackageManager()     // Catch: java.lang.Exception -> L88
            java.lang.String r4 = "android.permission.WRITE_EXTERNAL_STORAGE"
            java.lang.String r0 = r0.getPackageName()     // Catch: java.lang.Exception -> L88
            int r0 = r3.checkPermission(r4, r0)     // Catch: java.lang.Exception -> L88
            if (r0 != 0) goto L8c
            java.lang.String r0 = android.os.Environment.getExternalStorageState()
            java.lang.String r3 = "mounted"
            boolean r0 = r3.equals(r0)
            r3 = 0
            if (r0 == 0) goto L4d
            java.io.File r0 = android.os.Environment.getExternalStorageDirectory()     // Catch: java.lang.Exception -> L49 java.lang.Error -> L4d
            android.os.StatFs r5 = new android.os.StatFs     // Catch: java.lang.Exception -> L49 java.lang.Error -> L4d
            java.lang.String r0 = r0.getPath()     // Catch: java.lang.Exception -> L49 java.lang.Error -> L4d
            r5.<init>(r0)     // Catch: java.lang.Exception -> L49 java.lang.Error -> L4d
            int r0 = r5.getBlockSize()     // Catch: java.lang.Exception -> L49 java.lang.Error -> L4d
            long r6 = (long) r0     // Catch: java.lang.Exception -> L49 java.lang.Error -> L4d
            int r0 = r5.getAvailableBlocks()     // Catch: java.lang.Exception -> L49 java.lang.Error -> L4d
            long r3 = (long) r0
            long r3 = r3 * r6
            goto L4d
        L49:
            r0 = move-exception
            r0.printStackTrace()
        L4d:
            r5 = 104857600(0x6400000, double:5.1806538E-316)
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 <= 0) goto L8c
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = 28
            if (r0 > r3) goto L8c
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.io.File r3 = android.os.Environment.getExternalStorageDirectory()
            java.lang.String r3 = r3.getAbsolutePath()
            r0.append(r3)
            java.lang.String r3 = java.io.File.separator
            r0.append(r3)
            java.lang.String r4 = android.os.Environment.DIRECTORY_DOWNLOADS
            r0.append(r4)
            r0.append(r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.io.File r3 = new java.io.File
            r3.<init>(r0)
            java.io.File r0 = a(r3)
            goto L8d
        L88:
            r0 = move-exception
            r0.printStackTrace()
        L8c:
            r0 = r1
        L8d:
            if (r0 != 0) goto La5
            android.content.Context r3 = a()     // Catch: java.lang.Throwable -> La5
            java.io.File r1 = r3.getExternalFilesDir(r1)     // Catch: java.lang.Throwable -> La5
            if (r1 == 0) goto La5
            java.io.File r0 = a(r1)     // Catch: java.lang.Throwable -> La5
            if (r0 == 0) goto La5
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> La5
            r1.<init>(r0, r2)     // Catch: java.lang.Throwable -> La5
            r0 = r1
        La5:
            if (r0 != 0) goto Lc7
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            android.content.Context r1 = a()
            java.io.File r1 = r1.getFilesDir()
            java.io.File r1 = r1.getAbsoluteFile()
            r0.append(r1)
            java.lang.String r1 = java.io.File.separator
            java.lang.String r0 = com.smartdigimkt.f.i.a(r0, r1, r2)
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            r0 = r1
        Lc7:
            java.lang.String r0 = r0.getAbsolutePath()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.n.c.b():java.lang.String");
    }

    public static String a(String str) {
        String strA;
        StringBuilder sb = new StringBuilder();
        String strB = b();
        if (strB != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strB);
            strA = i.a(sb2, File.separator, str);
        } else {
            strA = null;
        }
        return i.a(sb, strA, ".apk");
    }

    public static String a(int i2, String str) {
        return str + "_" + i2;
    }

    public static Context a() {
        try {
            return SDKContext.getInstance().d().getApplicationContext();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
