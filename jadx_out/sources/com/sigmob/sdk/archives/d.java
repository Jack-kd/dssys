package com.sigmob.sdk.archives;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f35404a = "ar";

    /* renamed from: b, reason: collision with root package name */
    public static final String f35405b = "cpio";

    /* renamed from: c, reason: collision with root package name */
    public static final String f35406c = "dump";

    /* renamed from: d, reason: collision with root package name */
    public static final String f35407d = "jar";

    /* renamed from: e, reason: collision with root package name */
    public static final String f35408e = "zip";

    /* renamed from: f, reason: collision with root package name */
    private static final String f35409f = "tar";

    public c a(InputStream inputStream) throws b, IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("Stream must not be null.");
        }
        if (!inputStream.markSupported()) {
            throw new IllegalArgumentException("Mark is not supported.");
        }
        byte[] bArr = new byte[12];
        inputStream.mark(12);
        try {
            inputStream.read(bArr);
            inputStream.reset();
            inputStream.mark(32);
            inputStream.read(new byte[32]);
            inputStream.reset();
            byte[] bArr2 = new byte[512];
            inputStream.mark(512);
            int i2 = inputStream.read(bArr2);
            inputStream.reset();
            if (com.sigmob.sdk.archives.tar.b.a(bArr2, i2)) {
                return new com.sigmob.sdk.archives.tar.b(inputStream);
            }
            new com.sigmob.sdk.archives.tar.b(new ByteArrayInputStream(bArr2)).a();
            return new com.sigmob.sdk.archives.tar.b(inputStream);
        } catch (IOException e2) {
            throw new b("Could not use reset and mark operations.", e2);
        }
    }

    public c a(String str, InputStream inputStream) throws b {
        if (str == null) {
            throw new IllegalArgumentException("Archivername must not be null.");
        }
        if (inputStream == null) {
            throw new IllegalArgumentException("InputStream must not be null.");
        }
        if (f35409f.equalsIgnoreCase(str)) {
            return new com.sigmob.sdk.archives.tar.b(inputStream);
        }
        throw new b("Archiver: " + str + " not found.");
    }
}
