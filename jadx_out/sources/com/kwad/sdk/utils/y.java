package com.kwad.sdk.utils;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public final class y {
    public static final BigInteger boS;
    public static final BigInteger boT;
    public static final BigInteger boU;
    public static final BigInteger boV;
    public static final BigInteger boW;
    public static final BigInteger boX;
    public static final char boY;
    public static final BigInteger boZ;
    public static final BigInteger bpa;
    public static final File[] bpb;
    public static final String bpc;
    private static final char bpd;

    static {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(1024L);
        boS = bigIntegerValueOf;
        BigInteger bigIntegerMultiply = bigIntegerValueOf.multiply(bigIntegerValueOf);
        boT = bigIntegerMultiply;
        BigInteger bigIntegerMultiply2 = bigIntegerValueOf.multiply(bigIntegerMultiply);
        boU = bigIntegerMultiply2;
        BigInteger bigIntegerMultiply3 = bigIntegerValueOf.multiply(bigIntegerMultiply2);
        boV = bigIntegerMultiply3;
        BigInteger bigIntegerMultiply4 = bigIntegerValueOf.multiply(bigIntegerMultiply3);
        boW = bigIntegerMultiply4;
        boX = bigIntegerValueOf.multiply(bigIntegerMultiply4);
        BigInteger bigIntegerMultiply5 = BigInteger.valueOf(1024L).multiply(BigInteger.valueOf(1152921504606846976L));
        boZ = bigIntegerMultiply5;
        bpa = bigIntegerValueOf.multiply(bigIntegerMultiply5);
        bpb = new File[0];
        bpc = Character.toString('.');
        bpd = File.separatorChar;
        if (UP()) {
            boY = '/';
        } else {
            boY = '\\';
        }
    }

    private static void M(File file) throws IOException {
        if (file.exists()) {
            if (!ac(file)) {
                N(file);
            }
            if (file.delete()) {
                return;
            }
            throw new IOException("Unable to delete directory " + file + com.anythink.core.common.d.i.f2495E);
        }
    }

    public static void N(File file) throws IOException {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        }
        if (!file.isDirectory()) {
            throw new IllegalArgumentException(file + " is not a directory");
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("Failed to list contents of " + file);
        }
        IOException e2 = null;
        for (File file2 : fileArrListFiles) {
            try {
                Z(file2);
            } catch (IOException e3) {
                e2 = e3;
            }
        }
        if (e2 != null) {
            throw e2;
        }
    }

    public static boolean Q(File file) {
        return file != null && file.exists() && file.length() > 0;
    }

    public static boolean R(File file) {
        return file.exists();
    }

    private static FileInputStream S(File file) throws IOException {
        if (!file.exists()) {
            throw new FileNotFoundException("File '" + file + "' does not exist");
        }
        if (file.isDirectory()) {
            throw new IOException("File '" + file + "' exists but is a directory");
        }
        if (file.canRead()) {
            return new FileInputStream(file);
        }
        throw new IOException("File '" + file + "' cannot be read");
    }

    private static FileOutputStream T(File file) {
        return a(file, false);
    }

    public static void U(File file) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                throw new IOException("File '" + file + "' exists but is a directory");
            }
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            throw new IOException("Could not find parent directory");
        }
        if (parentFile.mkdirs() || parentFile.isDirectory()) {
            file.createNewFile();
            return;
        }
        throw new IOException("Directory '" + parentFile + "' could not be created");
    }

    private static boolean UP() {
        return bpd == '\\';
    }

    public static boolean V(File file) {
        if (file == null) {
            return false;
        }
        try {
            if (file.isDirectory()) {
                N(file);
            }
        } catch (Exception unused) {
        }
        try {
            return file.delete();
        } catch (Exception unused2) {
            return false;
        }
    }

    public static boolean W(File file) {
        return V(file);
    }

    public static byte[] X(File file) {
        return Y(file).getBytes();
    }

    public static String Y(File file) {
        return a(file, Charset.defaultCharset());
    }

    private static void Z(File file) throws IOException {
        if (file.isDirectory()) {
            M(file);
            return;
        }
        boolean zExists = file.exists();
        if (file.delete()) {
            return;
        }
        if (zExists) {
            throw new IOException("Unable to delete file: " + file);
        }
        throw new FileNotFoundException("File does not exist: " + file);
    }

    public static FileOutputStream a(File file, boolean z2) throws IOException {
        U(file);
        return new FileOutputStream(file, z2);
    }

    public static void aa(File file) throws IOException {
        if (file == null) {
            throw new IOException("Dir is null.");
        }
        if (!file.exists()) {
            file.mkdirs();
        } else {
            if (file.isDirectory()) {
                return;
            }
            if (!V(file)) {
                throw new IOException("Fail to delete existing file, file = " + file.getAbsolutePath());
            }
            file.mkdir();
        }
        if (file.exists() && file.isDirectory()) {
            return;
        }
        throw new IOException("Fail to create dir, dir = " + file.getAbsolutePath());
    }

    public static void ab(File file) throws IOException {
        V(file);
        s(file);
        if (!file.exists()) {
            throw new IOException("Create file fail");
        }
    }

    private static boolean ac(File file) {
        az.checkNotNull(file);
        if (UP()) {
            return false;
        }
        if (file.getParent() != null) {
            file = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }

    public static boolean ad(File file) throws Throwable {
        File file2 = new File(file.getAbsolutePath() + System.currentTimeMillis());
        g(file, file2);
        return V(file2);
    }

    private static void b(File file, File file2, boolean z2) throws Throwable {
        az.g(file, "Source");
        az.g(file2, "Destination");
        if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        }
        if (file.isDirectory()) {
            throw new IOException("Source '" + file + "' exists but is a directory");
        }
        if (file.getCanonicalPath().equals(file2.getCanonicalPath())) {
            throw new IOException("Source '" + file + "' and destination '" + file2 + "' are the same");
        }
        File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
            throw new IOException("Destination '" + parentFile + "' directory cannot be created");
        }
        if (!file2.exists() || file2.canWrite()) {
            c(file, file2, true);
            return;
        }
        throw new IOException("Destination '" + file2 + "' exists but is read-only");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void c(File file, File file2, boolean z2) throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        FileChannel fileChannel;
        FileChannel channel;
        FileChannel fileChannel2;
        long j2;
        if (file2.exists() && file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' exists but is a directory");
        }
        FileChannel fileChannel3 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    channel = fileInputStream.getChannel();
                    try {
                        FileChannel channel2 = fileOutputStream.getChannel();
                        try {
                            long size = channel.size();
                            for (long jTransferFrom = 0; jTransferFrom < size; jTransferFrom += channel2.transferFrom(channel, jTransferFrom, j2)) {
                                j2 = size - jTransferFrom;
                                if (j2 > 31457280) {
                                    j2 = 31457280;
                                }
                            }
                            com.kwad.sdk.crash.utils.b.closeQuietly(channel2);
                            com.kwad.sdk.crash.utils.b.closeQuietly(fileOutputStream);
                            com.kwad.sdk.crash.utils.b.closeQuietly(channel);
                            com.kwad.sdk.crash.utils.b.closeQuietly(fileInputStream);
                            if (file.length() != file2.length()) {
                                throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "'");
                            }
                            if (z2) {
                                file2.setLastModified(file.lastModified());
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileChannel3 = channel2;
                            fileChannel2 = fileOutputStream;
                            com.kwad.sdk.crash.utils.b.closeQuietly(fileChannel3);
                            com.kwad.sdk.crash.utils.b.closeQuietly(fileChannel2);
                            com.kwad.sdk.crash.utils.b.closeQuietly(channel);
                            com.kwad.sdk.crash.utils.b.closeQuietly(fileInputStream);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        fileChannel2 = fileOutputStream;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    channel = null;
                    fileChannel2 = fileOutputStream;
                }
            } catch (Throwable th5) {
                th = th5;
                fileChannel = null;
                channel = fileChannel;
                fileChannel2 = fileChannel;
                com.kwad.sdk.crash.utils.b.closeQuietly(fileChannel3);
                com.kwad.sdk.crash.utils.b.closeQuietly(fileChannel2);
                com.kwad.sdk.crash.utils.b.closeQuietly(channel);
                com.kwad.sdk.crash.utils.b.closeQuietly(fileInputStream);
                throw th;
            }
        } catch (Throwable th6) {
            th = th6;
            fileInputStream = null;
            fileChannel = null;
        }
    }

    private static void d(File file, File file2, boolean z2) throws Throwable {
        a(file, file2, (FileFilter) null, true);
    }

    public static boolean delete(String str) {
        return V(new File(str));
    }

    public static void deleteContents(@NonNull File file) {
        File[] fileArrListFiles;
        if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    deleteContents(file2);
                }
                file2.delete();
            }
        }
    }

    private static boolean g(File file, File file2) throws Throwable {
        if (file.renameTo(file2)) {
            return true;
        }
        try {
            h(file, file2);
            try {
                file.delete();
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            }
            return true;
        } catch (Exception e3) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e3);
            return false;
        }
    }

    public static String getExtension(String str) {
        if (str == null) {
            return null;
        }
        int iHJ = hJ(str);
        return iHJ == -1 ? "" : str.substring(iHJ + 1);
    }

    public static void h(File file, File file2) throws Throwable {
        b(file, file2, true);
    }

    public static BufferedInputStream hF(String str) {
        FileInputStream fileInputStream;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists() || file.isDirectory()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Exception unused) {
            fileInputStream = null;
        }
        if (fileInputStream == null) {
            return null;
        }
        return new BufferedInputStream(fileInputStream);
    }

    public static boolean hG(String str) {
        return !TextUtils.isEmpty(str) && new File(str).exists();
    }

    public static boolean hH(String str) {
        return !TextUtils.isEmpty(str) && Q(new File(str));
    }

    private static int hI(String str) {
        if (str == null) {
            return -1;
        }
        return Math.max(str.lastIndexOf(47), str.lastIndexOf(92));
    }

    private static int hJ(String str) {
        int iLastIndexOf;
        if (str != null && hI(str) <= (iLastIndexOf = str.lastIndexOf(46))) {
            return iLastIndexOf;
        }
        return -1;
    }

    public static void i(File file, File file2) throws Throwable {
        d(file, file2, true);
    }

    private static void s(File file) throws IOException {
        if (!file.exists()) {
            com.kwad.sdk.crash.utils.b.closeQuietly(T(file));
        }
        if (file.setLastModified(System.currentTimeMillis())) {
            return;
        }
        throw new IOException("Unable to set the last modification time for " + file);
    }

    public static String T(@NonNull Context context, String str) {
        return "/data/data/" + context.getPackageName() + ServiceReference.DELIMITER + str + ServiceReference.DELIMITER;
    }

    private static void a(File file, File file2, FileFilter fileFilter, boolean z2) throws Throwable {
        ArrayList arrayList;
        File[] fileArrListFiles;
        az.g(file, "Source");
        az.g(file2, "Destination");
        if (file.exists()) {
            if (file.isDirectory()) {
                if (!file.getCanonicalPath().equals(file2.getCanonicalPath())) {
                    if (!file2.getCanonicalPath().startsWith(file.getCanonicalPath()) || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(fileArrListFiles.length);
                        for (File file3 : fileArrListFiles) {
                            arrayList.add(new File(file2, file3.getName()).getCanonicalPath());
                        }
                    }
                    a(file, file2, null, z2, arrayList);
                    return;
                }
                throw new IOException("Source '" + file + "' and destination '" + file2 + "' are the same");
            }
            throw new IOException("Source '" + file + "' exists but is not a directory");
        }
        throw new FileNotFoundException("Source '" + file + "' does not exist");
    }

    private static void b(InputStream inputStream, File file) throws Throwable {
        FileOutputStream fileOutputStreamT;
        try {
            fileOutputStreamT = T(file);
        } catch (Throwable th) {
            th = th;
            fileOutputStreamT = null;
        }
        try {
            com.kwad.sdk.crash.utils.h.e(inputStream, fileOutputStreamT);
            com.kwad.sdk.crash.utils.b.closeQuietly(fileOutputStreamT);
            com.kwad.sdk.crash.utils.b.closeQuietly(inputStream);
        } catch (Throwable th2) {
            th = th2;
            com.kwad.sdk.crash.utils.b.closeQuietly(fileOutputStreamT);
            com.kwad.sdk.crash.utils.b.closeQuietly(inputStream);
            throw th;
        }
    }

    private static void a(File file, File file2, FileFilter fileFilter, boolean z2, List<String> list) throws Throwable {
        File[] fileArrListFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        if (fileArrListFiles != null) {
            if (file2.exists()) {
                if (!file2.isDirectory()) {
                    throw new IOException("Destination '" + file2 + "' exists but is not a directory");
                }
            } else if (!file2.mkdirs() && !file2.isDirectory()) {
                throw new IOException("Destination '" + file2 + "' directory cannot be created");
            }
            if (file2.canWrite()) {
                for (File file3 : fileArrListFiles) {
                    File file4 = new File(file2, file3.getName());
                    if (list == null || !list.contains(file3.getCanonicalPath())) {
                        if (file3.isDirectory()) {
                            a(file3, file4, fileFilter, z2, list);
                        } else {
                            c(file3, file4, z2);
                        }
                    }
                }
                if (z2) {
                    file2.setLastModified(file.lastModified());
                    return;
                }
                return;
            }
            throw new IOException("Destination '" + file2 + "' cannot be written to");
        }
        throw new IOException("Failed to list contents of " + file);
    }

    public static void a(Context context, String str, File file) {
        if (!TextUtils.isEmpty(str)) {
            InputStream inputStreamOpen = null;
            try {
                inputStreamOpen = context.getAssets().open(str);
                b(inputStreamOpen, file);
                return;
            } finally {
                com.kwad.sdk.crash.utils.b.closeQuietly(inputStreamOpen);
            }
        }
        throw new IllegalArgumentException("Asset path is empty.");
    }

    public static String a(File file, Charset charset) throws Throwable {
        FileInputStream fileInputStreamS;
        try {
            fileInputStreamS = S(file);
            try {
                String strA = com.kwad.sdk.crash.utils.h.a(fileInputStreamS, com.kwad.sdk.crash.utils.a.a(charset));
                com.kwad.sdk.crash.utils.b.closeQuietly(fileInputStreamS);
                return strA;
            } catch (Throwable th) {
                th = th;
                com.kwad.sdk.crash.utils.b.closeQuietly(fileInputStreamS);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStreamS = null;
        }
    }

    public static void a(File file, String str, Charset charset, boolean z2) {
        FileOutputStream fileOutputStreamA;
        try {
            fileOutputStreamA = a(file, false);
            try {
                com.kwad.sdk.crash.utils.h.a(str, fileOutputStreamA, charset);
                com.kwad.sdk.crash.utils.b.closeQuietly(fileOutputStreamA);
            } catch (Throwable th) {
                th = th;
                com.kwad.sdk.crash.utils.b.closeQuietly(fileOutputStreamA);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStreamA = null;
        }
    }
}
