package com.smartdigimkt.c5;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes5.dex */
public abstract class q {
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f9 A[PHI: r3
      0x00f9: PHI (r3v2 java.io.File) = (r3v1 java.io.File), (r3v1 java.io.File), (r3v7 java.io.File) binds: [B:29:0x0063, B:31:0x0069, B:48:0x00f7] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r10) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.c5.q.a(android.content.Context):java.io.File");
    }

    public static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", context.getPackageName()) == 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c(java.io.File r4) throws java.lang.Throwable {
        /*
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            java.lang.StringBuffer r4 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L33
            r4.<init>()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L33
        L10:
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            if (r2 == 0) goto L2f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            r3.<init>()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            r3.append(r2)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            java.lang.String r2 = "\n"
            r3.append(r2)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            r4.append(r2)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            goto L10
        L2b:
            r4 = move-exception
            goto L50
        L2d:
            r2 = move-exception
            goto L3d
        L2f:
            r1.close()     // Catch: java.io.IOException -> L45
            goto L45
        L33:
            r4 = move-exception
            r2 = r4
            r4 = r0
            goto L3d
        L37:
            r4 = move-exception
            goto L4f
        L39:
            r4 = move-exception
            r2 = r4
            r4 = r0
            r1 = r4
        L3d:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L4d
            if (r1 == 0) goto L45
            r1.close()     // Catch: java.io.IOException -> L45
        L45:
            if (r4 == 0) goto L4c
            java.lang.String r4 = r4.toString()
            return r4
        L4c:
            return r0
        L4d:
            r4 = move-exception
            r0 = r1
        L4f:
            r1 = r0
        L50:
            if (r1 == 0) goto L55
            r1.close()     // Catch: java.io.IOException -> L55
        L55:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.c5.q.c(java.io.File):java.lang.String");
    }

    public static long b(File file) throws Throwable {
        long jA;
        File[] fileArrListFiles = file.listFiles();
        long j2 = 0;
        if (fileArrListFiles != null) {
            for (int i2 = 0; i2 < fileArrListFiles.length; i2++) {
                if (fileArrListFiles[i2].isDirectory()) {
                    jA = b(fileArrListFiles[i2]);
                } else {
                    jA = a(fileArrListFiles[i2]);
                }
                j2 = jA + j2;
            }
        }
        return j2;
    }

    public static long a(File file) throws Throwable {
        FileInputStream fileInputStream;
        long jAvailable = 0;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                try {
                    if (file.exists()) {
                        fileInputStream = new FileInputStream(file);
                        try {
                            jAvailable = fileInputStream.available();
                            fileInputStream2 = fileInputStream;
                        } catch (Exception e2) {
                            e = e2;
                            fileInputStream2 = fileInputStream;
                            e.printStackTrace();
                            if (fileInputStream2 != null) {
                                fileInputStream2.close();
                            }
                            return 0L;
                        } catch (Throwable th) {
                            th = th;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } else {
                        file.createNewFile();
                    }
                    if (fileInputStream2 == null) {
                        return jAvailable;
                    }
                    fileInputStream2.close();
                    return jAvailable;
                } catch (Exception e4) {
                    e = e4;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public static void a(byte[] bArr, File file) throws Throwable {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                if (file.getParentFile() != null && !file.exists()) {
                    file.getParentFile().mkdirs();
                }
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            fileOutputStream.write(bArr);
            try {
                fileOutputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        } catch (Exception e4) {
            e = e4;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            throw th;
        }
    }
}
