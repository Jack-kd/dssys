package com.bykv.vk.component.ttvideo.player;

import android.content.Context;
import android.util.Base64;
import com.bykv.vk.component.ttvideo.utils.AVTime;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Locale;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes3.dex */
public final class TTCrashUtil {
    public static void addDebugTrackInfo(long j2, String str, String str2, boolean z2) throws Throwable {
        appendTrackInfo(getDebugTrackFilePath(j2, str), z2, str2);
    }

    public static void addTrackInfo(long j2, String str, String str2) throws Throwable {
        appendTrackInfo(getTrackFilePath(j2, str), true, str2);
    }

    private static void appendTrackInfo(String str, boolean z2, String str2) throws Throwable {
        FileWriter fileWriter = null;
        try {
            try {
                FileWriter fileWriter2 = new FileWriter(str, z2);
                try {
                    fileWriter2.write(str2);
                    fileWriter2.close();
                } catch (Exception unused) {
                    fileWriter = fileWriter2;
                    fileWriter.close();
                } catch (Throwable th) {
                    th = th;
                    fileWriter = fileWriter2;
                    try {
                        fileWriter.close();
                    } catch (Exception unused2) {
                    }
                    throw th;
                }
            } catch (Exception unused3) {
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void checkLogDir(String str) {
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (!file.exists()) {
            if (file.mkdir()) {
                return;
            }
            file.getName();
        } else if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (!file2.delete()) {
                        file2.getName();
                    }
                }
            }
            if (file.delete()) {
                return;
            }
            file.getName();
        }
    }

    public static void checkTrackDir(String str) {
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (file.exists()) {
            return;
        }
        file.mkdir();
    }

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

    /* JADX WARN: Removed duplicated region for block: B:42:0x007b A[Catch: IOException -> 0x007e, TRY_LEAVE, TryCatch #10 {IOException -> 0x007e, blocks: (B:40:0x0076, B:42:0x007b), top: B:68:0x0076 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L70 java.io.IOException -> L7f java.io.FileNotFoundException -> L8b
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L70 java.io.IOException -> L7f java.io.FileNotFoundException -> L8b
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L80 java.io.FileNotFoundException -> L8c
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L80 java.io.FileNotFoundException -> L8c
            r4 = 1024(0x400, float:1.435E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L68 java.io.FileNotFoundException -> L6a
        L4e:
            int r5 = r6.read(r4)     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L68 java.io.FileNotFoundException -> L6a
            r3 = -1
            if (r5 == r3) goto L5b
            r2.write(r4, r1, r5)     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L68 java.io.FileNotFoundException -> L6a
            goto L4e
        L59:
            r4 = move-exception
            goto L74
        L5b:
            if (r7 == 0) goto L60
            r0.delete()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L68 java.io.FileNotFoundException -> L6a
        L60:
            r2.close()     // Catch: java.io.IOException -> L66
            r6.close()     // Catch: java.io.IOException -> L66
        L66:
            r4 = 1
            return r4
        L68:
            r4 = r2
            goto L80
        L6a:
            r4 = r2
            goto L8c
        L6c:
            r5 = move-exception
            r2 = r4
        L6e:
            r4 = r5
            goto L74
        L70:
            r5 = move-exception
            r6 = r4
            r2 = r6
            goto L6e
        L74:
            if (r2 == 0) goto L79
            r2.close()     // Catch: java.io.IOException -> L7e
        L79:
            if (r6 == 0) goto L7e
            r6.close()     // Catch: java.io.IOException -> L7e
        L7e:
            throw r4
        L7f:
            r6 = r4
        L80:
            if (r4 == 0) goto L85
            r4.close()     // Catch: java.io.IOException -> L8a
        L85:
            if (r6 == 0) goto L8a
            r6.close()     // Catch: java.io.IOException -> L8a
        L8a:
            return r1
        L8b:
            r6 = r4
        L8c:
            if (r4 == 0) goto L91
            r4.close()     // Catch: java.io.IOException -> L96
        L91:
            if (r6 == 0) goto L96
            r6.close()     // Catch: java.io.IOException -> L96
        L96:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.player.TTCrashUtil.copyFile(java.lang.String, java.lang.String, boolean, boolean):boolean");
    }

    public static void deleteCrashFile(Context context, String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static void deleteDebugTrackFile(long j2, String str) {
        deleteTrackFile(getDebugTrackFilePath(j2, str));
    }

    private static void deleteTrackFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static boolean existLogsFile(long j2, String str) {
        File[] fileArrListFiles;
        String strValueOf = String.valueOf(j2);
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            String name = file2.getName();
            if (name != null && !name.startsWith(strValueOf)) {
                return true;
            }
        }
        return false;
    }

    public static boolean existsCrashFile(Context context, String str) {
        if (context == null && str == null) {
            return false;
        }
        return new File(str).exists();
    }

    public static final String existsCrashFilePath(Context context) {
        if (TTPlayerConfiger.getValue(18, 1) == 1) {
            String appCrashFilePath = TTPlayerConfiger.getAppCrashFilePath(context);
            if (appCrashFilePath == null || !new File(appCrashFilePath).exists()) {
                return null;
            }
            return appCrashFilePath;
        }
        String appCrashFilePath2 = TTPlayerConfiger.getAppCrashFilePath2(context);
        if (appCrashFilePath2 != null && new File(appCrashFilePath2).exists()) {
            return appCrashFilePath2;
        }
        String plugerCrashFilePath = TTPlayerConfiger.getPlugerCrashFilePath(context);
        if (plugerCrashFilePath != null && new File(plugerCrashFilePath).exists()) {
            return plugerCrashFilePath;
        }
        String externalStorageDirectoryCrashFilePath = TTPlayerConfiger.getExternalStorageDirectoryCrashFilePath();
        if (externalStorageDirectoryCrashFilePath == null || new File(externalStorageDirectoryCrashFilePath).exists()) {
            return externalStorageDirectoryCrashFilePath;
        }
        return null;
    }

    public static boolean existsTrackFile(long j2, String str) {
        return new File(getTrackFilePath(j2, str)).exists();
    }

    public static String getBase64SampleCrash(String str) {
        return Base64.encodeToString(str.getBytes(), 0);
    }

    public static String getCrashFileContext(Context context, String str, StringBuilder sb) throws IOException {
        FileInputStream fileInputStream;
        if (context == null && str == null) {
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

    private static String getDebugTrackFilePath(long j2, String str) {
        return String.format(Locale.US, "%s/ttplayer_logs/%d_d.log", str, Long.valueOf(j2));
    }

    private static boolean getTrackFileInfos(File file, StringBuilder sb) throws IOException {
        int i2;
        FileReader fileReader = null;
        try {
            if (!file.exists()) {
                return false;
            }
            char[] cArr = new char[1024];
            FileReader fileReader2 = new FileReader(file);
            do {
                try {
                    i2 = fileReader2.read(cArr);
                    if (i2 <= 0) {
                        break;
                    }
                    sb.append(cArr, 0, i2);
                } catch (Throwable th) {
                    th = th;
                    fileReader = fileReader2;
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception unused) {
                        }
                    }
                    sb.append("track message:");
                    sb.append(th.getMessage());
                    sb.append("\r\n");
                    return true;
                }
            } while (i2 >= 1024);
            fileReader2.close();
            return true;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String getTrackFilePath(long j2, String str) {
        return String.format(Locale.US, "%s/ttplayer_logs/%d.log", str, Long.valueOf(j2));
    }

    public static final boolean moveFile(String str, String str2, boolean z2) {
        return copyFile(str, str2, z2, true);
    }

    public static boolean moveTrackFile(long j2, long j3, String str) {
        return new File(getTrackFilePath(j2, str)).renameTo(new File(getTrackFilePath(j3, str)));
    }

    public static boolean readDebugTrackInfos(long j2, String str, StringBuilder sb) {
        return getTrackFileInfos(getDebugTrackFilePath(j2, str), sb);
    }

    public static boolean readLogsInfo(long j2, String str, StringBuilder sb) {
        File[] fileArrListFiles;
        String strValueOf = String.valueOf(j2);
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            String name = file2.getName();
            if (name != null && !name.startsWith(strValueOf) && getTrackFileInfos(file2, sb)) {
                boolean zDelete = file2.delete();
                if (!zDelete) {
                    file2.getName();
                }
                return zDelete;
            }
        }
        return false;
    }

    public static boolean readTrackInfos(long j2, String str, StringBuilder sb) {
        return getTrackFileInfos(getTrackFilePath(j2, str), sb);
    }

    public static final void saveException(Throwable th, String str) throws Throwable {
        FileOutputStream fileOutputStream;
        if (str == null) {
            return;
        }
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        PrintStream printStream = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    PrintStream printStream2 = new PrintStream(fileOutputStream);
                    try {
                        printStream2.write("EXCE".getBytes());
                        th.printStackTrace(printStream2);
                        printStream2.close();
                        fileOutputStream.close();
                    } catch (Exception unused) {
                        printStream = printStream2;
                        if (printStream != null) {
                            printStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        printStream = printStream2;
                        if (printStream != null) {
                            printStream.close();
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception unused3) {
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception unused4) {
            }
        } catch (Exception unused5) {
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    public static void saveLowMemoryInfo(int i2, String str) throws Throwable {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        FileWriter fileWriter = null;
        try {
            try {
                FileWriter fileWriter2 = new FileWriter(file);
                try {
                    fileWriter2.write("LOWM\r\nrecv low memory warring info.level:" + i2);
                    fileWriter2.close();
                } catch (IOException unused) {
                    fileWriter = fileWriter2;
                    if (fileWriter != null) {
                        fileWriter.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    fileWriter = fileWriter2;
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused3) {
            }
        } catch (IOException unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void saveStopInfo(String str, String str2) throws Throwable {
        FileWriter fileWriter;
        Throwable th;
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        FileWriter fileWriter2 = null;
        try {
            try {
                fileWriter = new FileWriter(file);
                try {
                    fileWriter.write("STOP recv stop info:" + str2 + ".time:" + AVTime.getFormatNow() + "\r\n");
                    fileWriter.close();
                } catch (IOException unused) {
                    fileWriter2 = fileWriter;
                    if (fileWriter2 != null) {
                        fileWriter2.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused3) {
            }
        } catch (IOException unused4) {
        } catch (Throwable th3) {
            fileWriter = null;
            th = th3;
        }
    }

    public static void addTrackInfo(long j2, String str, String str2, boolean z2) throws Throwable {
        appendTrackInfo(getTrackFilePath(j2, str), z2, str2);
    }

    public static void deleteTrackFile(long j2, String str) {
        deleteTrackFile(getTrackFilePath(j2, str));
    }

    private static boolean getTrackFileInfos(String str, StringBuilder sb) throws IOException {
        int i2;
        FileReader fileReader = null;
        try {
            File file = new File(str);
            if (!file.exists()) {
                sb.append("path");
                sb.append(str);
                sb.append(" not exists.\r\n");
                return false;
            }
            char[] cArr = new char[1024];
            FileReader fileReader2 = new FileReader(file);
            do {
                try {
                    i2 = fileReader2.read(cArr);
                    if (i2 <= 0) {
                        break;
                    }
                    sb.append(cArr, 0, i2);
                } catch (Throwable th) {
                    th = th;
                    fileReader = fileReader2;
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception unused) {
                        }
                    }
                    sb.append("track message:");
                    sb.append(th.getMessage());
                    sb.append("\r\n");
                    return true;
                }
            } while (i2 >= 1024);
            fileReader2.close();
            return true;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
