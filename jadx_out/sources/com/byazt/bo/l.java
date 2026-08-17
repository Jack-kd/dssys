package com.byazt.bo;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 1708, 34})
/* loaded from: classes2.dex */
public class l {
    public static int hp(InputStream inputStream, OutputStream outputStream) throws IOException {
        long jL = l(inputStream, outputStream);
        if (jL > 2147483647L) {
            return -1;
        }
        return (int) jL;
    }

    private static long l(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j2 = 0;
        while (true) {
            try {
                int i2 = inputStream.read(bArr);
                if (-1 == i2) {
                    return j2;
                }
                outputStream.write(bArr, 0, i2);
                j2 += i2;
            } catch (Exception unused) {
                return 0L;
            }
        }
    }

    public static boolean hp(HashMap<String, HashMap<String, byte[]>> map, String str) throws IOException {
        try {
            Set<String> setKeySet = map.keySet();
            ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(str));
            byte[] bArr = new byte[4096];
            Iterator<String> it = setKeySet.iterator();
            while (it.hasNext()) {
                HashMap<String, byte[]> map2 = map.get(it.next());
                if (map2 != null) {
                    for (String str2 : map2.keySet()) {
                        byte[] bArr2 = map2.get(str2);
                        if (bArr2 != null) {
                            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr2);
                            zipOutputStream.putNextEntry(new ZipEntry(str2));
                            while (true) {
                                int i2 = byteArrayInputStream.read(bArr);
                                if (i2 == -1) {
                                    break;
                                }
                                zipOutputStream.write(bArr, 0, i2);
                            }
                            byteArrayInputStream.close();
                        }
                    }
                }
            }
            zipOutputStream.close();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void hp(String str, String str2) throws IOException {
        try {
            File file = new File(str);
            if (file.isDirectory()) {
                String[] list = file.list();
                byte[] bArr = new byte[4096];
                ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(str2));
                for (String str3 : list) {
                    File file2 = new File(file, str3);
                    if (!file2.isDirectory()) {
                        String path = file2.getPath();
                        int iLastIndexOf = path.lastIndexOf(ServiceReference.DELIMITER);
                        if (iLastIndexOf != -1 && iLastIndexOf != path.length()) {
                            path = path.substring(iLastIndexOf + 1);
                        }
                        FileInputStream fileInputStream = new FileInputStream(file2);
                        zipOutputStream.putNextEntry(new ZipEntry(path));
                        while (true) {
                            int i2 = fileInputStream.read(bArr);
                            if (i2 == -1) {
                                break;
                            } else {
                                zipOutputStream.write(bArr, 0, i2);
                            }
                        }
                        fileInputStream.close();
                    }
                }
                zipOutputStream.close();
            }
        } catch (Exception unused) {
        }
    }
}
