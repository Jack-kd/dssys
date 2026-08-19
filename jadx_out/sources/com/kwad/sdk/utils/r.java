package com.kwad.sdk.utils;

import androidx.annotation.RequiresApi;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public final class r {
    public static void a(File[] fileArr, String str) throws Throwable {
        a(fileArr, str, -1);
    }

    @RequiresApi(api = 19)
    public static byte[] o(byte[] bArr) throws IOException {
        byte[] byteArray = null;
        if (bArr != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                    try {
                        gZIPOutputStream.write(bArr);
                        gZIPOutputStream.flush();
                        gZIPOutputStream.close();
                        byteArrayOutputStream.flush();
                        byteArrayOutputStream.close();
                        byteArray = byteArrayOutputStream.toByteArray();
                        gZIPOutputStream.close();
                        byteArrayOutputStream.close();
                        return byteArray;
                    } finally {
                    }
                } finally {
                }
            } catch (IOException e2) {
                com.kwad.sdk.core.d.c.printStackTrace(e2);
            }
        }
        return byteArray;
    }

    private static void a(File[] fileArr, String str, int i2) throws Throwable {
        ZipOutputStream zipOutputStream;
        BufferedInputStream bufferedInputStream = null;
        try {
            zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str)));
            try {
                try {
                    byte[] bArr = new byte[4096];
                    int i3 = 0;
                    while (i3 < fileArr.length) {
                        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(fileArr[i3]), 4096);
                        try {
                            String absolutePath = fileArr[i3].getAbsolutePath();
                            zipOutputStream.putNextEntry(new ZipEntry(absolutePath.substring(absolutePath.lastIndexOf(ServiceReference.DELIMITER) + 1)));
                            while (true) {
                                int i4 = bufferedInputStream2.read(bArr, 0, 4096);
                                if (i4 == -1) {
                                    break;
                                } else {
                                    zipOutputStream.write(bArr, 0, i4);
                                }
                            }
                            bufferedInputStream2.close();
                            i3++;
                            bufferedInputStream = bufferedInputStream2;
                        } catch (Exception e2) {
                            e = e2;
                            bufferedInputStream = bufferedInputStream2;
                            com.kwad.sdk.core.d.c.printStackTrace(e);
                            com.kwad.sdk.crash.utils.b.closeQuietly(bufferedInputStream);
                            com.kwad.sdk.crash.utils.b.closeQuietly(zipOutputStream);
                        } catch (Throwable th) {
                            th = th;
                            bufferedInputStream = bufferedInputStream2;
                            com.kwad.sdk.crash.utils.b.closeQuietly(bufferedInputStream);
                            com.kwad.sdk.crash.utils.b.closeQuietly(zipOutputStream);
                            throw th;
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e4) {
            e = e4;
            zipOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            zipOutputStream = null;
        }
        com.kwad.sdk.crash.utils.b.closeQuietly(bufferedInputStream);
        com.kwad.sdk.crash.utils.b.closeQuietly(zipOutputStream);
    }
}
