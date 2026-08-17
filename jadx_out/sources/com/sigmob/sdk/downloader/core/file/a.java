package com.sigmob.sdk.downloader.core.file;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes4.dex */
public interface a {

    /* renamed from: com.sigmob.sdk.downloader.core.file.a$a, reason: collision with other inner class name */
    public interface InterfaceC0772a {
        a a(Context context, Uri uri, int i2) throws FileNotFoundException;

        a a(Context context, File file, int i2) throws FileNotFoundException;

        boolean a();
    }

    void a() throws IOException;

    void a(long j2) throws IOException;

    void a(byte[] bArr, int i2, int i3) throws IOException;

    void b() throws IOException;

    void b(long j2) throws IOException;
}
