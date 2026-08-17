package com.kwad.sdk.utils;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;

/* renamed from: com.kwad.sdk.utils.a, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1241a {
    @Nullable
    @WorkerThread
    public static String getFileMD5(File file) {
        try {
            byte[] fileMD5Digest = getFileMD5Digest(file);
            if (fileMD5Digest != null && fileMD5Digest.length != 0) {
                return an.toHexString(fileMD5Digest, 0, fileMD5Digest.length);
            }
            return null;
        } catch (IOException e2) {
            com.kwad.sdk.core.d.c.e("FileMD5Utils", "cannot calculate md5 of file", e2);
            return null;
        }
    }

    @Nullable
    @WorkerThread
    public static byte[] getFileMD5Digest(File file) {
        if (file == null) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                byte[] bArr = new byte[4096];
                while (true) {
                    int i2 = fileInputStream.read(bArr);
                    if (i2 == -1) {
                        byte[] bArrDigest = messageDigest.digest();
                        com.kwad.sdk.crash.utils.b.closeQuietly(fileInputStream);
                        return bArrDigest;
                    }
                    messageDigest.update(bArr, 0, i2);
                }
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.e("FileMD5Utils", "getting file md5 digest error.", e2);
                com.kwad.sdk.crash.utils.b.closeQuietly(fileInputStream);
                return null;
            }
        } catch (Throwable th) {
            com.kwad.sdk.crash.utils.b.closeQuietly(fileInputStream);
            throw th;
        }
    }

    @Nullable
    @WorkerThread
    public static byte[] hD(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return getFileMD5Digest(new File(str));
    }
}
