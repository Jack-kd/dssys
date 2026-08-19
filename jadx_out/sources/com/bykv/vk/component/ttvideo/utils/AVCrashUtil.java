package com.bykv.vk.component.ttvideo.utils;

import android.content.Context;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

@Deprecated
/* loaded from: classes3.dex */
public final class AVCrashUtil {
    public static void compress(InputStream inputStream, OutputStream outputStream) throws Exception {
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        byte[] bArr = new byte[10240];
        while (true) {
            int i2 = inputStream.read(bArr, 0, 10240);
            if (i2 == -1) {
                gZIPOutputStream.flush();
                gZIPOutputStream.finish();
                gZIPOutputStream.close();
                return;
            }
            gZIPOutputStream.write(bArr, 0, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0081 A[Catch: IOException -> 0x0084, TRY_LEAVE, TryCatch #10 {IOException -> 0x0084, blocks: (B:41:0x007c, B:43:0x0081), top: B:67:0x007c }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean copyFile(java.lang.String r4, java.lang.String r5, boolean r6, boolean r7) throws java.lang.Throwable {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r5)
            boolean r5 = r0.exists()
            r1 = 0
            if (r5 != 0) goto Ld
            return r1
        Ld:
            boolean r5 = r0.isFile()
            if (r5 != 0) goto L14
            return r1
        L14:
            java.io.File r5 = new java.io.File
            r5.<init>(r4)
            boolean r2 = r5.exists()
            if (r2 == 0) goto L2a
            if (r6 == 0) goto L3f
            java.io.File r6 = new java.io.File
            r6.<init>(r4)
            r6.delete()
            goto L3f
        L2a:
            java.io.File r4 = r5.getParentFile()
            boolean r4 = r4.exists()
            if (r4 != 0) goto L3f
            java.io.File r4 = r5.getParentFile()
            boolean r4 = r4.mkdirs()
            if (r4 != 0) goto L3f
            return r1
        L3f:
            r4 = 0
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L85 java.io.FileNotFoundException -> L91
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L85 java.io.FileNotFoundException -> L91
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L86 java.io.FileNotFoundException -> L92
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L86 java.io.FileNotFoundException -> L92
            r4 = 1024(0x400, float:1.435E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
        L4e:
            int r5 = r6.read(r4)     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
            r3 = -1
            if (r5 == r3) goto L5b
            r2.write(r4, r1, r5)     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
            goto L4e
        L59:
            r4 = move-exception
            goto L7a
        L5b:
            r2.close()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
            r6.close()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
            if (r7 == 0) goto L66
            r0.delete()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
        L66:
            r2.close()     // Catch: java.io.IOException -> L6c
            r6.close()     // Catch: java.io.IOException -> L6c
        L6c:
            r4 = 1
            return r4
        L6e:
            r4 = r2
            goto L86
        L70:
            r4 = r2
            goto L92
        L72:
            r5 = move-exception
            r2 = r4
        L74:
            r4 = r5
            goto L7a
        L76:
            r5 = move-exception
            r6 = r4
            r2 = r6
            goto L74
        L7a:
            if (r2 == 0) goto L7f
            r2.close()     // Catch: java.io.IOException -> L84
        L7f:
            if (r6 == 0) goto L84
            r6.close()     // Catch: java.io.IOException -> L84
        L84:
            throw r4
        L85:
            r6 = r4
        L86:
            if (r4 == 0) goto L8b
            r4.close()     // Catch: java.io.IOException -> L90
        L8b:
            if (r6 == 0) goto L90
            r6.close()     // Catch: java.io.IOException -> L90
        L90:
            return r1
        L91:
            r6 = r4
        L92:
            if (r4 == 0) goto L97
            r4.close()     // Catch: java.io.IOException -> L9c
        L97:
            if (r6 == 0) goto L9c
            r6.close()     // Catch: java.io.IOException -> L9c
        L9c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.utils.AVCrashUtil.copyFile(java.lang.String, java.lang.String, boolean, boolean):boolean");
    }

    public static void deleteCrashFile(Context context, String str) {
        if (str == null) {
            return;
        }
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static boolean existsCrashFile(Context context, String str) {
        if (context == null && str == null) {
            return false;
        }
        return new File(str).exists();
    }

    public static String getBase64SampleCrash(String str) {
        return Base64.encodeToString(str.getBytes(), 0);
    }

    public static String getCrashFileContext(Context context, String str, StringBuilder sb) throws IOException {
        FileInputStream fileInputStream;
        if (context == null || str == null) {
            sb.append("context or path is null.\r\n");
            return null;
        }
        File file = new File(str);
        if (!file.exists()) {
            sb.append("file not exist.path:");
            sb.append(str);
            sb.append("\r\n");
            return null;
        }
        if (file.length() == 0) {
            sb.append("file size is zore.\r\n");
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        }
        try {
            compress(fileInputStream, byteArrayOutputStream);
            fileInputStream.close();
            String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
            byteArrayOutputStream.close();
            return strEncodeToString;
        } catch (Exception e3) {
            e = e3;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException unused) {
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused2) {
            }
            sb.append("gzip file is error.error:");
            sb.append(e.getMessage());
            return null;
        }
    }

    public static final boolean moveFile(String str, String str2, boolean z2) {
        return copyFile(str, str2, z2, true);
    }
}
