package com.kwad.sdk.api.loader;

import android.content.Context;
import com.androidquery.callback.AjaxStatus;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes4.dex */
public final class p {
    public static int a(String str, InputStream inputStream, String str2) throws Throwable {
        try {
            boolean zA = a(str, o.decrypt(str2.getBytes("UTF-8"), a(inputStream)));
            boolean zA2 = a(inputStream, str, true);
            if (zA && zA2) {
                return 1;
            }
            if (zA) {
                return -104;
            }
            return AjaxStatus.TRANSFORM_ERROR;
        } catch (UnsupportedEncodingException unused) {
            return AjaxStatus.AUTH_ERROR;
        }
    }

    public static String bs(Context context) {
        q qVarHH = r.HH();
        if (qVarHH != null) {
            return qVarHH.getAESKey(context);
        }
        return null;
    }

    private static void closeQuietly(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private static int k(byte[] bArr) {
        int i2 = ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).getInt();
        System.out.println("Converted int: " + Integer.toHexString(i2));
        return i2;
    }

    private static byte[] a(InputStream inputStream) throws IOException {
        try {
            byte[] bArr = new byte[4];
            inputStream.read(bArr, 0, 4);
            int iK = k(bArr);
            byte[] bArr2 = new byte[iK];
            int i2 = inputStream.read(bArr2, 0, iK);
            if (i2 > 0) {
                System.out.println("readEncryptedByteArray bytes content: " + i2);
                return bArr2;
            }
            System.out.println("readEncryptedByteArray File is empty.");
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static boolean a(String str, byte[] bArr) throws Throwable {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                File file = new File(str);
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                file.setWritable(true);
                file.setReadable(true);
                fileOutputStream = new FileOutputStream(str);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e2) {
            e = e2;
        }
        try {
            fileOutputStream.write(bArr);
            System.out.println("writeEncryptedByteToFile successfully.");
            closeQuietly(fileOutputStream);
            return true;
        } catch (IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            closeQuietly(fileOutputStream2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            closeQuietly(fileOutputStream2);
            throw th;
        }
    }

    private static boolean a(InputStream inputStream, String str, boolean z2) throws Throwable {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(str, true);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 != -1) {
                    fileOutputStream.write(bArr, 0, i2);
                } else {
                    System.out.println("File copied successfully.");
                    closeQuietly(fileOutputStream);
                    return true;
                }
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            closeQuietly(fileOutputStream2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            closeQuietly(fileOutputStream2);
            throw th;
        }
    }
}
