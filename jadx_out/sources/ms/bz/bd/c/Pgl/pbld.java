package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import ms.bz.bd.c.Pgl.h1;

/* loaded from: classes5.dex */
public final class pbld implements h1.pgla {

    public static class pgla {
        public ZipFile hp;

        /* renamed from: l, reason: collision with root package name */
        public ZipEntry f51972l;

        public pgla(ZipFile zipFile, ZipEntry zipEntry) {
            this.hp = zipFile;
            this.f51972l = zipEntry;
        }
    }

    private static void hp(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private static pgla hp(Context context, String[] strArr, String str, j1 j1Var) throws IOException {
        String[] strArr2;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr3 = applicationInfo.splitSourceDirs;
        int i2 = 0;
        if (strArr3 == null || strArr3.length == 0) {
            strArr2 = new String[]{applicationInfo.sourceDir};
        } else {
            strArr2 = new String[strArr3.length + 1];
            strArr2[0] = applicationInfo.sourceDir;
            System.arraycopy(strArr3, 0, strArr2, 1, strArr3.length);
        }
        int length = strArr2.length;
        int i3 = 0;
        while (true) {
            ZipFile zipFile = null;
            if (i3 >= length) {
                return null;
            }
            String str2 = strArr2[i3];
            int i4 = i2;
            while (true) {
                int i5 = i4 + 1;
                if (i4 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException unused) {
                    i4 = i5;
                }
            }
            if (zipFile != null) {
                int i6 = i2;
                while (true) {
                    int i7 = i6 + 1;
                    if (i6 < 5) {
                        int length2 = strArr.length;
                        int i8 = i2;
                        while (i8 < length2) {
                            String str3 = strArr[i8];
                            StringBuilder sb = new StringBuilder("lib");
                            char c2 = File.separatorChar;
                            sb.append(c2);
                            sb.append(str3);
                            sb.append(c2);
                            sb.append(str);
                            String string = sb.toString();
                            j1Var.getClass();
                            String.format(Locale.US, "Looking for %s in APK %s...", string, str2);
                            ZipEntry entry = zipFile.getEntry(string);
                            if (entry != null) {
                                return new pgla(zipFile, entry);
                            }
                            i8++;
                            i2 = 0;
                        }
                        i6 = i7;
                    } else {
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
            i3++;
            i2 = 0;
        }
    }

    private static String[] hp(Context context, String str) throws IOException {
        String[] strArr;
        StringBuilder sb = new StringBuilder("lib");
        char c2 = File.separatorChar;
        sb.append(c2);
        sb.append("([^\\");
        sb.append(c2);
        sb.append("]*)");
        sb.append(c2);
        sb.append(str);
        Pattern patternCompile = Pattern.compile(sb.toString());
        HashSet hashSet = new HashSet();
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr2 = applicationInfo.splitSourceDirs;
        if (strArr2 == null || strArr2.length == 0) {
            strArr = new String[]{applicationInfo.sourceDir};
        } else {
            strArr = new String[strArr2.length + 1];
            strArr[0] = applicationInfo.sourceDir;
            System.arraycopy(strArr2, 0, strArr, 1, strArr2.length);
        }
        ZipFile zipFile = null;
        for (String str2 : strArr) {
            try {
                ZipFile zipFile2 = new ZipFile(new File(str2), 1);
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
                while (enumerationEntries.hasMoreElements()) {
                    Matcher matcher = patternCompile.matcher(enumerationEntries.nextElement().getName());
                    if (matcher.matches()) {
                        hashSet.add(matcher.group(1));
                    }
                }
                zipFile = zipFile2;
            } catch (IOException unused) {
            }
        }
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException unused2) {
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public final void hp(Context context, String[] strArr, String str, File file, j1 j1Var) {
        pgla pglaVarHp;
        String[] strArrHp;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        pgla pglaVar = null;
        fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        try {
            pglaVarHp = hp(context, strArr, str, j1Var);
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (pglaVarHp == null) {
                try {
                    strArrHp = hp(context, str);
                } catch (Exception e2) {
                    strArrHp = new String[]{e2.toString()};
                }
                throw new b1(str, strArr, strArrHp);
            }
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                try {
                    if (i2 < 5) {
                        j1Var.getClass();
                        String.format(Locale.US, "Found %s! Extracting...", str);
                        try {
                            if (file.exists() || file.createNewFile()) {
                                try {
                                    inputStream = pglaVarHp.hp.getInputStream(pglaVarHp.f51972l);
                                    try {
                                        fileOutputStream = new FileOutputStream(file);
                                        try {
                                            try {
                                                byte[] bArr = new byte[4096];
                                                long j2 = 0;
                                                while (true) {
                                                    int i4 = inputStream.read(bArr);
                                                    if (i4 == -1) {
                                                        break;
                                                    }
                                                    fileOutputStream.write(bArr, 0, i4);
                                                    j2 += i4;
                                                }
                                                fileOutputStream.flush();
                                                fileOutputStream.getFD().sync();
                                                if (j2 != file.length()) {
                                                    hp(inputStream);
                                                    hp(fileOutputStream);
                                                } else {
                                                    hp(inputStream);
                                                    hp(fileOutputStream);
                                                    file.setReadable(true, false);
                                                    file.setExecutable(true, false);
                                                    file.setWritable(true);
                                                    ZipFile zipFile = pglaVarHp.hp;
                                                    if (zipFile != null) {
                                                        zipFile.close();
                                                    }
                                                }
                                            } catch (FileNotFoundException | IOException unused) {
                                                hp(inputStream);
                                                hp(fileOutputStream);
                                                i2 = i3;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            fileOutputStream2 = fileOutputStream;
                                            hp(inputStream);
                                            hp(fileOutputStream2);
                                            throw th;
                                        }
                                    } catch (FileNotFoundException | IOException unused2) {
                                        fileOutputStream = null;
                                        hp(inputStream);
                                        hp(fileOutputStream);
                                        i2 = i3;
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                } catch (FileNotFoundException | IOException unused3) {
                                    inputStream = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                    inputStream = null;
                                }
                            }
                        } catch (IOException unused4) {
                        }
                        i2 = i3;
                    } else {
                        j1Var.getClass();
                        ZipFile zipFile2 = pglaVarHp.hp;
                        if (zipFile2 != null) {
                            zipFile2.close();
                        }
                    }
                } catch (IOException unused5) {
                    return;
                }
            }
        } catch (Throwable th5) {
            th = th5;
            pglaVar = pglaVarHp;
            if (pglaVar != null) {
                try {
                    ZipFile zipFile3 = pglaVar.hp;
                    if (zipFile3 != null) {
                        zipFile3.close();
                    }
                } catch (IOException unused6) {
                }
            }
            throw th;
        }
    }
}
