package com.sigmob.sdk.archives.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public final class c {
    private c() {
    }

    public static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        return a(inputStream, outputStream, 8024);
    }

    public static long a(InputStream inputStream, OutputStream outputStream, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        long j2 = 0;
        while (true) {
            int i3 = inputStream.read(bArr);
            if (-1 == i3) {
                return j2;
            }
            outputStream.write(bArr, 0, i3);
            j2 += i3;
        }
    }
}
