package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class e8 {
    public static File[] a(File file, final long j2) {
        if (file != null && file.exists() && file.isDirectory()) {
            return file.listFiles(new FileFilter() { // from class: com.beizi.fusion.B
                @Override // java.io.FileFilter
                public final boolean accept(File file2) {
                    return e8.a(j2, file2);
                }
            });
        }
        return null;
    }

    public static boolean b(File file, String str) {
        File[] fileArrA = a(file, str);
        return fileArrA != null && fileArrA.length > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(long j2, File file) {
        return file.lastModified() < j2;
    }

    public static File[] a(File file, final String str) {
        if (file == null || !file.exists() || !file.isDirectory() || TextUtils.isEmpty(str)) {
            return null;
        }
        return file.listFiles(new FilenameFilter() { // from class: com.beizi.fusion.A
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str2) {
                return e8.a(str, file2, str2);
            }
        });
    }

    public static String b(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (!file.exists() || !file.canRead()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                String strA = be.a((InputStream) fileInputStream);
                be.a((Closeable) fileInputStream);
                return strA;
            } catch (IOException e2) {
                e = e2;
                try {
                    rm.a(e);
                    be.a((Closeable) fileInputStream);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    fileInputStream = fileInputStream2;
                    be.a((Closeable) fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                be.a((Closeable) fileInputStream);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = fileInputStream2;
            be.a((Closeable) fileInputStream);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(String str, File file, String str2) {
        return str2.equals(str);
    }

    public static long a(File file) {
        long jA;
        File[] fileArrListFiles = file.listFiles();
        long j2 = 0;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    jA = file2.length();
                } else if (file2.isDirectory()) {
                    jA = a(file2);
                }
                j2 += jA;
            }
        }
        return j2;
    }

    public static File a(Context context) {
        return context.getFilesDir();
    }

    public static File a(String str) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            try {
                file.createNewFile();
                return file;
            } catch (IOException e2) {
                rm.a(e2);
            }
        }
        return file;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v12 */
    public static boolean a(String str, long j2, String str2) throws Throwable {
        Throwable th;
        FileWriter fileWriter;
        FileWriter fileWriter2;
        FileWriter fileWriter3;
        BufferedWriter bufferedWriter;
        FileWriter fileWriter4 = null;
        try {
            fileWriter3 = new FileWriter(a(str), true);
            try {
                bufferedWriter = new BufferedWriter(fileWriter3);
            } catch (IOException e2) {
                e = e2;
                bufferedWriter = 0;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            e = e3;
            fileWriter2 = null;
        } catch (Throwable th3) {
            th = th3;
            fileWriter = null;
            fileWriter3 = fileWriter;
            be.a(fileWriter4);
            be.a(fileWriter3);
            throw th;
        }
        try {
            bufferedWriter.write(qo.a(j2));
            bufferedWriter.write("\r\n");
            bufferedWriter.write("------------------crash----------------------");
            bufferedWriter.write("\r\n");
            bufferedWriter.write(str2);
            bufferedWriter.write("\r\n");
            bufferedWriter.write("-------------------end-----------------------");
            bufferedWriter.newLine();
            be.a(bufferedWriter);
            be.a(fileWriter3);
            return true;
        } catch (IOException e4) {
            e = e4;
            fileWriter4 = fileWriter3;
            fileWriter2 = bufferedWriter;
            try {
                rm.a(e);
                be.a(fileWriter2);
                be.a(fileWriter4);
                return false;
            } catch (Throwable th4) {
                th = th4;
                FileWriter fileWriter5 = fileWriter4;
                fileWriter4 = fileWriter2;
                fileWriter = fileWriter5;
                fileWriter3 = fileWriter;
                be.a(fileWriter4);
                be.a(fileWriter3);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            fileWriter4 = bufferedWriter;
            be.a(fileWriter4);
            be.a(fileWriter3);
            throw th;
        }
    }

    public static void a(File file, Set set) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            String name = file2.getName();
            if (set == null || !set.contains(name)) {
                try {
                    file2.delete();
                } catch (Throwable th) {
                    rm.a(th);
                }
            }
        }
    }
}
