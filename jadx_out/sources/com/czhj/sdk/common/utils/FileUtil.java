package com.czhj.sdk.common.utils;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.n;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes3.dex */
public final class FileUtil {
    public static File[] clearCacheFileByCount(File[] fileArr, int i2) {
        if (fileArr == null || fileArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(fileArr));
        for (File file : fileArr) {
            if (arrayList.size() <= i2) {
                break;
            }
            if (file.exists()) {
                file.delete();
                arrayList.remove(file);
                SigmobLog.d("file delete " + file.getName());
            }
        }
        return (File[]) arrayList.toArray(new File[0]);
    }

    public static boolean deleteDirectory(String str) {
        try {
            String str2 = File.separator;
            if (!str.endsWith(str2)) {
                str = str + str2;
            }
            File file = new File(str);
            if (file.exists() && file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    return false;
                }
                boolean zDeleteDirectory = true;
                for (File file2 : fileArrListFiles) {
                    if (!file2.isFile()) {
                        if (file2.isDirectory() && !(zDeleteDirectory = deleteDirectory(file2.getAbsolutePath()))) {
                            break;
                        }
                    } else {
                        zDeleteDirectory = deleteFile(file2.getAbsolutePath());
                        if (!zDeleteDirectory) {
                            break;
                        }
                    }
                }
                if (!zDeleteDirectory || !file.delete()) {
                    return false;
                }
                SigmobLog.d("删除目录 " + str + " 成功！");
                return true;
            }
            SigmobLog.d("删除目录失败：" + str + "不存在！");
            return false;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return false;
        }
    }

    public static boolean deleteFile(String str) {
        try {
            new SecurityManager().checkDelete(str);
            File file = new File(str);
            if (!file.exists() || !file.isFile()) {
                SigmobLog.d("删除单个文件失败：" + str + " 不存在！");
                return false;
            }
            if (file.delete()) {
                SigmobLog.d("删除单个文件" + str + " 成功！");
                return true;
            }
            SigmobLog.d("删除单个文件" + str + " 失败！");
            return false;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return false;
        }
    }

    public static String getExtensionName(String str) {
        int iLastIndexOf;
        return (str == null || str.isEmpty() || (iLastIndexOf = str.lastIndexOf(46)) <= -1 || iLastIndexOf >= str.length() + (-1)) ? str : str.substring(iLastIndexOf + 1);
    }

    public static String getRealFilePath(Context context, Uri uri) {
        Cursor cursorQuery;
        int columnIndex;
        String string = null;
        if (uri == null) {
            return null;
        }
        String scheme = uri.getScheme();
        if (scheme != null && !n.f36463z.equals(scheme)) {
            if ("content".equals(scheme) && (cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null)) != null) {
                if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_data")) > -1) {
                    string = cursorQuery.getString(columnIndex);
                }
                cursorQuery.close();
            }
            return string;
        }
        return uri.getPath();
    }

    public static File[] orderByDate(String str) {
        File[] fileArrListFiles = new File(str).listFiles();
        if (fileArrListFiles == null) {
            return fileArrListFiles;
        }
        Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.czhj.sdk.common.utils.FileUtil.1
            @Override // java.util.Comparator
            public int compare(File file, File file2) {
                long jLastModified = file.lastModified() - file2.lastModified();
                if (jLastModified > 0) {
                    return 1;
                }
                return jLastModified == 0 ? 0 : -1;
            }

            @Override // java.util.Comparator
            public boolean equals(Object obj) {
                return true;
            }
        });
        return fileArrListFiles;
    }

    public static byte[] readBytes(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 == -1) {
                    fileInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static String readFileToString(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file), 8192);
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return sb.toString();
                }
                sb.append("\n");
                sb.append(line);
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static Object readFromCache(String str) {
        FileInputStream fileInputStream;
        File file;
        ObjectInputStream objectInputStream;
        Object object = null;
        try {
            try {
                file = new File(str);
                try {
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = null;
                    objectInputStream = null;
                }
            } catch (Throwable th2) {
                SigmobLog.e(th2.getMessage());
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            file = null;
            objectInputStream = null;
        }
        if (!file.exists()) {
            return null;
        }
        fileInputStream = new FileInputStream(file);
        try {
            objectInputStream = new ObjectInputStream(fileInputStream);
            try {
                object = objectInputStream.readObject();
                fileInputStream.close();
                objectInputStream.close();
            } catch (Throwable th4) {
                th = th4;
                if (file != null) {
                    try {
                        if (file.exists()) {
                            file.delete();
                        }
                    } catch (Throwable th5) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th6) {
                                SigmobLog.e(th6.getMessage());
                                throw th5;
                            }
                        }
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        throw th5;
                    }
                }
                SigmobLog.e(th.getMessage());
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                return object;
            }
        } catch (Throwable th7) {
            th = th7;
            objectInputStream = null;
        }
        return object;
    }

    public static void writeToBuffer(byte[] bArr, String str) {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                File file = new File(str);
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    fileOutputStream2.write(bArr);
                    SigmobLog.d("writeCache :" + file.getName());
                    fileOutputStream2.close();
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        SigmobLog.e(th.getMessage());
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                    } catch (Throwable th2) {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th3) {
                                SigmobLog.e(th3.getMessage());
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            SigmobLog.e(th5.getMessage());
        }
    }

    public static boolean writeToCache(InputStream inputStream, String str) {
        FileOutputStream fileOutputStream;
        File file;
        File file2 = null;
        try {
            file = new File(str);
            try {
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            byte[] bArr = new byte[1024];
            long j2 = 0;
            while (true) {
                int i2 = bufferedInputStream.read(bArr);
                if (i2 == -1) {
                    break;
                }
                j2 += i2;
                fileOutputStream.write(bArr, 0, i2);
            }
            fileOutputStream.getFD().sync();
            if (j2 == 0) {
                file.delete();
            }
            SigmobLog.d("writeCache :" + file.getName());
            try {
                fileOutputStream.close();
                return true;
            } catch (Throwable th3) {
                SigmobLog.e(th3.getMessage());
                return true;
            }
        } catch (Throwable th4) {
            th = th4;
            file2 = file;
            if (file2 != null) {
                try {
                    if (file2.exists()) {
                        file2.delete();
                    }
                } finally {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th5) {
                            SigmobLog.e(th5.getMessage());
                        }
                    }
                }
            }
            SigmobLog.e(th.getMessage());
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th6) {
                    SigmobLog.e(th6.getMessage());
                }
            }
            return false;
        }
    }

    public static boolean writeToCache(Object obj, String str) {
        ObjectOutputStream objectOutputStream;
        FileOutputStream fileOutputStream = null;
        try {
            File file = new File(str);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                objectOutputStream = new ObjectOutputStream(fileOutputStream2);
                try {
                    objectOutputStream.writeObject(obj);
                    SigmobLog.d("writeCache :" + file.getName());
                    try {
                        fileOutputStream2.close();
                        objectOutputStream.close();
                        return true;
                    } catch (Throwable th) {
                        SigmobLog.e(th.getMessage());
                        return true;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    try {
                        SigmobLog.e(th.getMessage());
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th3) {
                                SigmobLog.e(th3.getMessage());
                                return false;
                            }
                        }
                        if (objectOutputStream == null) {
                            return false;
                        }
                        objectOutputStream.close();
                        return false;
                    } catch (Throwable th4) {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th5) {
                                SigmobLog.e(th5.getMessage());
                                throw th4;
                            }
                        }
                        if (objectOutputStream != null) {
                            objectOutputStream.close();
                        }
                        throw th4;
                    }
                }
            } catch (Throwable th6) {
                th = th6;
                objectOutputStream = null;
            }
        } catch (Throwable th7) {
            th = th7;
            objectOutputStream = null;
        }
    }
}
