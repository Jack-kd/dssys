package com.byazt.bo;

import com.byazt.jz.sz;
import com.byazt.ymw.eb;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1708, 28})
/* loaded from: classes2.dex */
public final class hp {
    public static byte[] hp(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        try {
            return hp(new FileInputStream(file));
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject jx(String str) {
        File fileJ = eb.j(sz.getContext(), false, null);
        if (fileJ != null) {
            File file = new File(fileJ, str);
            if (file.exists()) {
                try {
                    return new JSONObject(new String(hp(new FileInputStream(file.getAbsoluteFile()))));
                } catch (Exception unused) {
                }
            }
        }
        return null;
    }

    public static void l(String str) throws Exception {
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            int length = fileArrListFiles.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (fileArrListFiles[i2].isDirectory()) {
                    l(fileArrListFiles[i2].getAbsolutePath());
                } else {
                    fileArrListFiles[i2].delete();
                }
            }
            file.delete();
        }
    }

    public static boolean hp(InputStream inputStream, String str, String str2, long j2) throws Throwable {
        File file;
        File file2;
        if (inputStream == null) {
            return false;
        }
        long j3 = j2 != -2147483648L ? j2 * 1048576 : 1099511627776L;
        FileOutputStream fileOutputStream = null;
        long j4 = 0;
        try {
            File file3 = new File(str);
            if (!file3.exists() && !file3.mkdirs()) {
                try {
                    inputStream.close();
                } catch (Exception unused) {
                }
                return false;
            }
            file2 = new File(file3, str2);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i2 = inputStream.read(bArr);
                        if (i2 == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, i2);
                        j4 += i2;
                    }
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    inputStream.close();
                    try {
                        inputStream.close();
                        if (j2 == -2147483648L || j4 <= j3) {
                            return true;
                        }
                        file2.delete();
                        return false;
                    } catch (Exception unused2) {
                        return true;
                    }
                } catch (Exception unused3) {
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception unused4) {
                        }
                    }
                    try {
                        inputStream.close();
                        if (j2 != -2147483648L && j4 > j3 && file2 != null) {
                            file2.delete();
                        }
                    } catch (Exception unused5) {
                    }
                    return false;
                } catch (Throwable th) {
                    file = file2;
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception unused6) {
                        }
                    }
                    try {
                        inputStream.close();
                        if (j2 != -2147483648L && j4 > j3 && file != null) {
                            file.delete();
                            return false;
                        }
                        throw th;
                    } catch (Exception unused7) {
                        throw th;
                    }
                }
            } catch (Exception unused8) {
            } catch (Throwable th2) {
                file = file2;
                th = th2;
            }
        } catch (Exception unused9) {
            file2 = null;
        } catch (Throwable th3) {
            th = th3;
            file = null;
        }
    }

    public static byte[] hp(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return new byte[0];
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                hp(bufferedInputStream, byteArrayOutputStream, 2048);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    bufferedInputStream.close();
                    byteArrayOutputStream.close();
                } catch (Exception unused) {
                }
                return byteArray;
            } catch (Exception unused2) {
                return new byte[0];
            }
        } catch (IOException unused3) {
            bufferedInputStream.close();
            byteArrayOutputStream.close();
            return new byte[0];
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
                byteArrayOutputStream.close();
            } catch (Exception unused4) {
            }
            throw th;
        }
    }

    private static long hp(InputStream inputStream, OutputStream outputStream, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        int i3 = inputStream.read(bArr);
        long j2 = 0;
        while (i3 >= 0) {
            outputStream.write(bArr, 0, i3);
            j2 += i3;
            i3 = inputStream.read(bArr);
        }
        return j2;
    }
}
