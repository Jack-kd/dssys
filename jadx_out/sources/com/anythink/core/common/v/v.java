package com.anythink.core.common.v;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class v {
    /* JADX WARN: Removed duplicated region for block: B:14:0x004b A[PHI: r1
      0x004b: PHI (r1v2 java.io.File) = (r1v1 java.io.File), (r1v1 java.io.File), (r1v5 java.io.File) binds: [B:9:0x000f, B:11:0x0015, B:13:0x0049] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r6) {
        /*
            r0 = 0
            java.io.File r1 = r6.getExternalFilesDir(r0)     // Catch: java.lang.Throwable -> Le
            if (r1 == 0) goto Le
            java.io.File r1 = b(r1)     // Catch: java.lang.Throwable -> Le
            if (r1 == 0) goto Lf
            return r1
        Le:
            r1 = r0
        Lf:
            if (r1 != 0) goto L4b
            boolean r2 = c(r6)
            if (r2 == 0) goto L4b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.io.File r2 = android.os.Environment.getExternalStorageDirectory()
            java.lang.String r2 = r2.getPath()
            r1.append(r2)
            java.lang.String r2 = java.io.File.separator
            r1.append(r2)
            java.lang.String r2 = r6.getPackageName()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.io.File r2 = new java.io.File
            r2.<init>(r1)
            java.io.File r1 = b(r2)
            long r2 = e(r6)
            r4 = 31457280(0x1e00000, double:1.55419614E-316)
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 <= 0) goto L4c
        L4b:
            r0 = r1
        L4c:
            if (r0 != 0) goto L5f
            java.io.File r6 = r6.getFilesDir()
            java.io.File r6 = r6.getAbsoluteFile()
            java.lang.String r6 = r6.getAbsolutePath()
            java.io.File r0 = new java.io.File
            r0.<init>(r6)
        L5f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.v.a(android.content.Context):java.io.File");
    }

    private static File b(File file) {
        StringBuilder sb = new StringBuilder();
        sb.append(UUID.randomUUID());
        File file2 = new File(file, sb.toString());
        if (file2.exists()) {
            file2.delete();
        }
        if (!file2.mkdirs()) {
            return null;
        }
        file2.delete();
        return file.getAbsoluteFile();
    }

    private static boolean c(Context context) {
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

    private static boolean d(Context context) {
        return e(context) > 31457280;
    }

    private static long e(Context context) {
        if ("mounted".equals(Environment.getExternalStorageState()) && c(context)) {
            try {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                return statFs.getAvailableBlocks() * statFs.getBlockSize();
            } catch (Error unused) {
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 0L;
    }

    private static long d(File file) {
        File[] fileArrListFiles = file.listFiles();
        long jD = 0;
        if (fileArrListFiles != null) {
            for (int i2 = 0; i2 < fileArrListFiles.length; i2++) {
                jD += fileArrListFiles[i2].isDirectory() ? d(fileArrListFiles[i2]) : c(fileArrListFiles[i2]);
            }
        }
        return jD;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0024 A[EXC_TOP_SPLITTER, PHI: r0 r2
      0x0024: PHI (r0v2 long) = (r0v0 long), (r0v4 long) binds: [B:23:0x0030, B:17:0x0022] A[DONT_GENERATE, DONT_INLINE]
      0x0024: PHI (r2v3 java.io.FileInputStream) = (r2v2 java.io.FileInputStream), (r2v4 java.io.FileInputStream) binds: [B:23:0x0030, B:17:0x0022] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long c(java.io.File r4) throws java.lang.Throwable {
        /*
            r0 = 0
            r2 = 0
            boolean r3 = r4.exists()     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            if (r3 == 0) goto L1f
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            int r4 = r3.available()     // Catch: java.lang.Throwable -> L15 java.lang.Exception -> L18
            long r0 = (long) r4
            r2 = r3
            goto L22
        L15:
            r4 = move-exception
            r2 = r3
            goto L34
        L18:
            r4 = move-exception
            r2 = r3
            goto L2d
        L1b:
            r4 = move-exception
            goto L34
        L1d:
            r4 = move-exception
            goto L2d
        L1f:
            r4.createNewFile()     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
        L22:
            if (r2 == 0) goto L33
        L24:
            r2.close()     // Catch: java.lang.Exception -> L28
            goto L33
        L28:
            r4 = move-exception
            r4.printStackTrace()
            goto L33
        L2d:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L1b
            if (r2 == 0) goto L33
            goto L24
        L33:
            return r0
        L34:
            if (r2 == 0) goto L3e
            r2.close()     // Catch: java.lang.Exception -> L3a
            goto L3e
        L3a:
            r0 = move-exception
            r0.printStackTrace()
        L3e:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.v.c(java.io.File):long");
    }

    private static String b(String str) {
        return n.a(str);
    }

    public static String b(Context context) {
        return context.getFilesDir().getAbsolutePath() + "/tktp/";
    }

    private static boolean a() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static long a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        File file = new File(str);
        if (!file.exists()) {
            return 0L;
        }
        try {
            if (file.isDirectory()) {
                return d(file);
            }
            return c(file);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static boolean a(byte[] bArr, File file) throws Throwable {
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
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            fileOutputStream.write(bArr);
            try {
                fileOutputStream.close();
                return true;
            } catch (IOException e3) {
                e3.printStackTrace();
                return true;
            }
        } catch (Exception e4) {
            e = e4;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 == null) {
                return false;
            }
            try {
                fileOutputStream2.close();
                return false;
            } catch (IOException e5) {
                e5.printStackTrace();
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(2:(3:39|5|(1:7)(0))|35) */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0049 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.io.File r4) throws java.lang.Throwable {
        /*
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            java.lang.StringBuffer r4 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L34
            r4.<init>()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L34
        L10:
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            if (r2 == 0) goto L30
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            r3.<init>()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            r3.append(r2)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            java.lang.String r2 = "\n"
            r3.append(r2)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            r4.append(r2)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            goto L10
        L2b:
            r4 = move-exception
            r0 = r1
            goto L4a
        L2e:
            r2 = move-exception
            goto L3c
        L30:
            r1.close()     // Catch: java.io.IOException -> L42
            goto L42
        L34:
            r2 = move-exception
            r4 = r0
            goto L3c
        L37:
            r4 = move-exception
            goto L4a
        L39:
            r2 = move-exception
            r4 = r0
            r1 = r4
        L3c:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L2b
            if (r1 == 0) goto L42
            goto L30
        L42:
            if (r4 == 0) goto L49
            java.lang.String r4 = r4.toString()
            return r4
        L49:
            return r0
        L4a:
            if (r0 == 0) goto L4f
            r0.close()     // Catch: java.io.IOException -> L4f
        L4f:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.v.a(java.io.File):java.lang.String");
    }
}
