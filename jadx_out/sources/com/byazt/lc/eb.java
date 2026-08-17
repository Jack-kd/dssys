package com.byazt.lc;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

@com.byazt.kj.hp(hp = {0, 1, 1769, 94})
/* loaded from: classes3.dex */
public class eb {
    public static String hp = null;
    public static int jx = 8192;

    /* renamed from: l, reason: collision with root package name */
    public static String f22415l;

    public static void hp(String str) {
        hp(new File(str));
    }

    public static String l(Context context) {
        File parentFile;
        if (f22415l == null && (parentFile = context.getCacheDir().getParentFile()) != null) {
            try {
                f22415l = parentFile.getCanonicalPath();
            } catch (IOException e2) {
                com.byazt.ik.a.hp(e2);
            }
        }
        return f22415l;
    }

    public static void hp(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                hp(file2);
            }
        }
        file.delete();
    }

    public static void l(String str, String str2) throws Exception {
        ZipInputStream zipInputStream;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(str)));
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        String name = nextEntry.getName();
                        if (!name.contains("..")) {
                            if (nextEntry.isDirectory()) {
                                new File(str2 + File.separator + name).mkdirs();
                            } else {
                                File file = new File(str2 + File.separator + name);
                                if (file.exists()) {
                                    file.delete();
                                } else {
                                    file.getParentFile().mkdirs();
                                }
                                file.createNewFile();
                                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file));
                                try {
                                    byte[] bArr = new byte[2048];
                                    while (true) {
                                        int i2 = zipInputStream.read(bArr);
                                        if (i2 == -1) {
                                            break;
                                        } else {
                                            bufferedOutputStream2.write(bArr, 0, i2);
                                        }
                                    }
                                    bufferedOutputStream2.flush();
                                    bufferedOutputStream2.close();
                                    bufferedOutputStream = bufferedOutputStream2;
                                } catch (Exception e2) {
                                    e = e2;
                                    bufferedOutputStream = bufferedOutputStream2;
                                    hp(bufferedOutputStream);
                                    hp(zipInputStream);
                                    throw e;
                                }
                            }
                        }
                    } else {
                        zipInputStream.close();
                        return;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            }
        } catch (Exception e4) {
            e = e4;
            zipInputStream = null;
        }
    }

    public static void hp(InputStream inputStream, OutputStream outputStream) throws IOException {
        hp(inputStream, outputStream, 0L, 1048576);
    }

    private static void hp(InputStream inputStream, OutputStream outputStream, long j2, int i2) throws IOException {
        if (inputStream == null || outputStream == null) {
            return;
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        try {
            byte[] bArr = new byte[i2];
            int i3 = 0;
            while (true) {
                int i4 = bufferedInputStream.read(bArr);
                if (i4 == -1) {
                    break;
                }
                bufferedOutputStream.write(bArr, 0, i4);
                i3 += i4;
            }
            bufferedOutputStream.flush();
            if (j2 > 0 && i3 != j2) {
                throw new IOException("copy is not completed");
            }
        } finally {
            bufferedInputStream.close();
            bufferedOutputStream.close();
        }
    }

    public static void hp(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void hp(ZipFile zipFile) throws IOException {
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String hp(Context context) {
        File parentFile;
        if (hp == null && (parentFile = context.getCacheDir().getParentFile()) != null) {
            hp = parentFile.getAbsolutePath();
        }
        return hp;
    }

    public static void hp(String str, String str2) throws Exception {
        File file = new File(str);
        File file2 = new File(str2);
        if (file.exists()) {
            if (file.isDirectory()) {
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                if (file2.isDirectory()) {
                    File[] fileArrListFiles = file.listFiles();
                    if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                        return;
                    }
                    for (File file3 : fileArrListFiles) {
                        String str3 = file2 + File.separator + file3.getName();
                        if (file3.isDirectory()) {
                            hp(file3.getAbsolutePath(), str3);
                        } else if (!new File(str3).exists()) {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file3));
                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str3));
                            byte[] bArr = new byte[jx];
                            while (true) {
                                int i2 = bufferedInputStream.read(bArr);
                                if (i2 == -1) {
                                    break;
                                } else {
                                    bufferedOutputStream.write(bArr, 0, i2);
                                }
                            }
                            bufferedOutputStream.close();
                            bufferedInputStream.close();
                        }
                    }
                    return;
                }
                throw new Exception("目标文件夹不是目录");
            }
            throw new Exception("源文件夹不是目录");
        }
        throw new Exception("文件夹不存在");
    }

    public static boolean l(File file) throws IOException {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (file == null) {
            hp((Closeable) null);
            return false;
        }
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable unused) {
        }
        try {
            byte[] bArr = new byte[6];
            if (fileInputStream.read(bArr) != 6) {
                hp(fileInputStream);
                return false;
            }
            byte[] bArr2 = {80, 75, 3, 4};
            for (int i2 = 0; i2 < 4; i2++) {
                if (bArr2[i2] != bArr[i2]) {
                    hp(fileInputStream);
                    return false;
                }
            }
            byte b3 = bArr[4];
            if (b3 == 0 && bArr[5] == 0) {
                hp(fileInputStream);
                return false;
            }
            if (b3 == 20) {
                if (bArr[5] == 3) {
                    hp(fileInputStream);
                    return true;
                }
            }
            hp(fileInputStream);
            return false;
        } catch (Throwable unused2) {
            fileInputStream2 = fileInputStream;
            hp(fileInputStream2);
            return false;
        }
    }

    public static void hp(RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2, long j2, long j3, String str) throws IOException {
        byte[] bArr;
        long j4 = 0;
        if (j2 < 0 || j3 < 0 || j2 > j3) {
            throw new IOException("invalid offsets  ".concat(String.valueOf(str)));
        }
        if (j2 == j3) {
            return;
        }
        randomAccessFile.seek(j2);
        long j5 = j3 - j2;
        int i2 = jx;
        if (j5 < i2) {
            bArr = new byte[(int) j5];
        } else {
            bArr = new byte[i2];
        }
        while (true) {
            int i3 = randomAccessFile.read(bArr);
            if (i3 == -1) {
                return;
            }
            randomAccessFile2.write(bArr, 0, i3);
            j4 += i3;
            if (j4 == j5) {
                return;
            }
            if (bArr.length + j4 > j5) {
                bArr = new byte[(int) (j5 - j4)];
            }
        }
    }
}
