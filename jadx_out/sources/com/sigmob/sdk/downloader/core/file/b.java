package com.sigmob.sdk.downloader.core.file;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import com.sigmob.sdk.downloader.core.file.a;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes4.dex */
public class b implements com.sigmob.sdk.downloader.core.file.a {

    /* renamed from: a, reason: collision with root package name */
    final ParcelFileDescriptor f37556a;

    /* renamed from: b, reason: collision with root package name */
    final BufferedOutputStream f37557b;

    /* renamed from: c, reason: collision with root package name */
    final FileOutputStream f37558c;

    /* renamed from: d, reason: collision with root package name */
    private final FileChannel f37559d;

    public static class a implements a.InterfaceC0772a {
        @Override // com.sigmob.sdk.downloader.core.file.a.InterfaceC0772a
        public com.sigmob.sdk.downloader.core.file.a a(Context context, Uri uri, int i2) throws FileNotFoundException {
            return new b(context, uri, i2);
        }

        @Override // com.sigmob.sdk.downloader.core.file.a.InterfaceC0772a
        public com.sigmob.sdk.downloader.core.file.a a(Context context, File file, int i2) throws FileNotFoundException {
            return new b(context, Uri.fromFile(file), i2);
        }

        @Override // com.sigmob.sdk.downloader.core.file.a.InterfaceC0772a
        public boolean a() {
            return true;
        }
    }

    public b(Context context, Uri uri, int i2) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "rw");
        if (parcelFileDescriptorOpenFileDescriptor == null) {
            throw new FileNotFoundException("result of " + uri + " is null!");
        }
        this.f37556a = parcelFileDescriptorOpenFileDescriptor;
        FileOutputStream fileOutputStream = new FileOutputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
        this.f37558c = fileOutputStream;
        this.f37559d = fileOutputStream.getChannel();
        this.f37557b = new BufferedOutputStream(fileOutputStream, i2);
    }

    @Override // com.sigmob.sdk.downloader.core.file.a
    public void a() throws IOException {
        this.f37557b.close();
        this.f37558c.close();
        this.f37556a.close();
    }

    @Override // com.sigmob.sdk.downloader.core.file.a
    public void b() throws IOException {
        this.f37557b.flush();
        this.f37556a.getFileDescriptor().sync();
    }

    public b(FileChannel fileChannel, ParcelFileDescriptor parcelFileDescriptor, FileOutputStream fileOutputStream, BufferedOutputStream bufferedOutputStream) {
        this.f37559d = fileChannel;
        this.f37556a = parcelFileDescriptor;
        this.f37558c = fileOutputStream;
        this.f37557b = bufferedOutputStream;
    }

    @Override // com.sigmob.sdk.downloader.core.file.a
    public void a(long j2) throws IOException {
        this.f37559d.position(j2);
    }

    @Override // com.sigmob.sdk.downloader.core.file.a
    public void b(long j2) {
        StringBuilder sb;
        try {
            Os.posix_fallocate(this.f37556a.getFileDescriptor(), 0L, j2);
        } catch (Throwable th) {
            th = th;
            if (th instanceof ErrnoException) {
                int i2 = th.errno;
                if (i2 == OsConstants.ENOSYS || i2 == OsConstants.ENOTSUP) {
                    com.sigmob.sdk.downloader.core.c.a("DownloadUriOutputStream", "fallocate() not supported; falling back to ftruncate()");
                    try {
                        Os.ftruncate(this.f37556a.getFileDescriptor(), j2);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        sb = new StringBuilder();
                        sb.append("It can't pre-allocate length(");
                        sb.append(j2);
                        sb.append(") on the sdk version(");
                        sb.append(Build.VERSION.SDK_INT);
                        sb.append("), because of ");
                        sb.append(th);
                        com.sigmob.sdk.downloader.core.c.a("DownloadUriOutputStream", sb.toString());
                    }
                }
                return;
            }
            sb = new StringBuilder();
            sb.append("It can't pre-allocate length(");
            sb.append(j2);
            sb.append(") on the sdk version(");
            sb.append(Build.VERSION.SDK_INT);
            sb.append("), because of ");
            sb.append(th);
            com.sigmob.sdk.downloader.core.c.a("DownloadUriOutputStream", sb.toString());
        }
    }

    @Override // com.sigmob.sdk.downloader.core.file.a
    public void a(byte[] bArr, int i2, int i3) throws IOException {
        this.f37557b.write(bArr, i2, i3);
    }
}
