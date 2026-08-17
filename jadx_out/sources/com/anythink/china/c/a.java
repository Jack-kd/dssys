package com.anythink.china.c;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.bv;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1432a = "anythink" + File.separator + bv.az;

    private static File a(Context context) {
        try {
            File file = new File(context.getFilesDir(), f1432a);
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String b(Context context, String str) {
        try {
            ArrayList arrayList = new ArrayList(Arrays.asList(context.getAssets().list(f1432a + File.separator + str)));
            if (arrayList.isEmpty()) {
                return "";
            }
            String str2 = (String) arrayList.get(0);
            return !TextUtils.isEmpty(str2) ? str2 : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static File a(Context context, String str) {
        try {
            File fileA = a(context);
            if (fileA == null) {
                return null;
            }
            File file = new File(fileA.getAbsolutePath(), str);
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0042 A[Catch: Exception -> 0x0026, TryCatch #0 {Exception -> 0x0026, blocks: (B:3:0x0001, B:6:0x0008, B:8:0x000f, B:10:0x0013, B:12:0x001b, B:20:0x002e, B:22:0x0039, B:25:0x003f, B:27:0x0042, B:30:0x0063, B:31:0x0066, B:17:0x0028), top: B:36:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File b(android.content.Context r6, java.lang.String r7, final java.lang.String r8) throws java.lang.NumberFormatException {
        /*
            r0 = 0
            java.io.File r6 = a(r6)     // Catch: java.lang.Exception -> L26
            if (r6 != 0) goto L8
            return r0
        L8:
            java.io.File[] r6 = r6.listFiles()     // Catch: java.lang.Exception -> L26
            r1 = 0
            if (r6 == 0) goto L2b
            int r2 = r6.length     // Catch: java.lang.Exception -> L26
            r3 = r1
        L11:
            if (r3 >= r2) goto L2b
            r4 = r6[r3]     // Catch: java.lang.Exception -> L26
            boolean r5 = r4.isDirectory()     // Catch: java.lang.Exception -> L26
            if (r5 == 0) goto L28
            java.lang.String r5 = r4.getName()     // Catch: java.lang.Exception -> L26
            boolean r5 = r5.equals(r7)     // Catch: java.lang.Exception -> L26
            if (r5 == 0) goto L28
            goto L2c
        L26:
            r6 = move-exception
            goto L6b
        L28:
            int r3 = r3 + 1
            goto L11
        L2b:
            r4 = r0
        L2c:
            if (r4 == 0) goto L6e
            com.anythink.china.c.a$1 r6 = new com.anythink.china.c.a$1     // Catch: java.lang.Exception -> L26
            r6.<init>()     // Catch: java.lang.Exception -> L26
            java.io.File[] r6 = r4.listFiles(r6)     // Catch: java.lang.Exception -> L26
            if (r6 == 0) goto L6e
            int r7 = r6.length     // Catch: java.lang.Exception -> L26
            if (r7 <= 0) goto L6e
            r7 = 0
            r2 = r1
        L3f:
            int r3 = r6.length     // Catch: java.lang.Exception -> L26
            if (r1 >= r3) goto L66
            r3 = r6[r1]     // Catch: java.lang.Exception -> L26
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L26
            java.lang.String r4 = ".jar"
            java.lang.String r5 = ""
            java.lang.String r3 = r3.replaceAll(r4, r5)     // Catch: java.lang.Exception -> L26
            java.lang.String r4 = "-"
            java.lang.String[] r3 = r3.split(r4)     // Catch: java.lang.Exception -> L26
            r4 = 2
            r3 = r3[r4]     // Catch: java.lang.Exception -> L26
            long r3 = java.lang.Long.parseLong(r3)     // Catch: java.lang.Exception -> L26
            int r5 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r5 < 0) goto L63
            r2 = r1
            r7 = r3
        L63:
            int r1 = r1 + 1
            goto L3f
        L66:
            r6 = r6[r2]     // Catch: java.lang.Exception -> L26
            if (r6 == 0) goto L6e
            return r6
        L6b:
            r6.printStackTrace()
        L6e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.china.c.a.b(android.content.Context, java.lang.String, java.lang.String):java.io.File");
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0089 A[Catch: Exception -> 0x005a, IOException -> 0x0085, TRY_LEAVE, TryCatch #2 {IOException -> 0x0085, blocks: (B:45:0x0081, B:49:0x0089), top: B:57:0x0081, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r4, java.lang.String r5, java.lang.String r6) throws java.lang.Throwable {
        /*
            r0 = 0
            java.io.File r1 = a(r4, r5)     // Catch: java.lang.Exception -> L5a
            if (r1 != 0) goto L8
            return r0
        L8:
            boolean r2 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L5a
            if (r2 != 0) goto L94
            android.content.res.AssetManager r4 = r4.getAssets()     // Catch: java.lang.Exception -> L5a
            java.io.File r2 = new java.io.File     // Catch: java.lang.Exception -> L5a
            java.lang.String r1 = r1.getAbsolutePath()     // Catch: java.lang.Exception -> L5a
            r2.<init>(r1, r6)     // Catch: java.lang.Exception -> L5a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6b
            r1.<init>()     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6b
            java.lang.String r3 = com.anythink.china.c.a.f1432a     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6b
            r1.append(r3)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6b
            java.lang.String r3 = java.io.File.separator     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6b
            r1.append(r3)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6b
            r1.append(r5)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6b
            r1.append(r3)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6b
            r1.append(r6)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6b
            java.lang.String r5 = r1.toString()     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6b
            java.io.InputStream r4 = r4.open(r5)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6b
            java.io.FileOutputStream r5 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L64
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L64
            r6 = 1024(0x400, float:1.435E-42)
            byte[] r6 = new byte[r6]     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L51
        L44:
            int r1 = r4.read(r6)     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L51
            if (r1 <= 0) goto L53
            r3 = 0
            r5.write(r6, r3, r1)     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L51
            goto L44
        L4f:
            r6 = move-exception
            goto L7f
        L51:
            r6 = move-exception
            goto L6e
        L53:
            r5.close()     // Catch: java.lang.Exception -> L5a java.io.IOException -> L5c
            r4.close()     // Catch: java.lang.Exception -> L5a java.io.IOException -> L5c
            return r2
        L5a:
            r4 = move-exception
            goto L91
        L5c:
            r4 = move-exception
        L5d:
            r4.printStackTrace()     // Catch: java.lang.Exception -> L5a
            goto L7e
        L61:
            r6 = move-exception
            r5 = r0
            goto L7f
        L64:
            r6 = move-exception
            r5 = r0
            goto L6e
        L67:
            r6 = move-exception
            r4 = r0
            r5 = r4
            goto L7f
        L6b:
            r6 = move-exception
            r4 = r0
            r5 = r4
        L6e:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L4f
            if (r5 == 0) goto L79
            r5.close()     // Catch: java.lang.Exception -> L5a java.io.IOException -> L77
            goto L79
        L77:
            r4 = move-exception
            goto L5d
        L79:
            if (r4 == 0) goto L7e
            r4.close()     // Catch: java.lang.Exception -> L5a java.io.IOException -> L77
        L7e:
            return r2
        L7f:
            if (r5 == 0) goto L87
            r5.close()     // Catch: java.lang.Exception -> L5a java.io.IOException -> L85
            goto L87
        L85:
            r4 = move-exception
            goto L8d
        L87:
            if (r4 == 0) goto L90
            r4.close()     // Catch: java.lang.Exception -> L5a java.io.IOException -> L85
            goto L90
        L8d:
            r4.printStackTrace()     // Catch: java.lang.Exception -> L5a
        L90:
            throw r6     // Catch: java.lang.Exception -> L5a
        L91:
            r4.printStackTrace()
        L94:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.china.c.a.a(android.content.Context, java.lang.String, java.lang.String):java.io.File");
    }

    public static void a(Context context, String str, File file) {
        File[] fileArrListFiles;
        try {
            File fileA = a(context, str);
            if (fileA == null || !fileA.isDirectory() || (fileArrListFiles = fileA.listFiles()) == null) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                if (!file2.getName().equals(file.getName())) {
                    file2.delete();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static String a(String str) throws NoSuchAlgorithmException, IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(str);
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 != -1) {
                    messageDigest.update(bArr, 0, i2);
                } else {
                    fileInputStream.close();
                    return a(messageDigest.digest());
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b3)));
        }
        return sb.toString();
    }
}
