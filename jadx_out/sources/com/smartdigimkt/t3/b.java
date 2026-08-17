package com.smartdigimkt.t3;

import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class b extends FilterOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f44276a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(c cVar, FileOutputStream fileOutputStream) {
        super(fileOutputStream);
        this.f44276a = cVar;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            ((FilterOutputStream) this).out.close();
        } catch (IOException unused) {
            this.f44276a.f44278b = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        try {
            ((FilterOutputStream) this).out.flush();
        } catch (IOException unused) {
            this.f44276a.f44278b = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i2) throws IOException {
        try {
            ((FilterOutputStream) this).out.write(i2);
        } catch (IOException unused) {
            this.f44276a.f44278b = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        try {
            ((FilterOutputStream) this).out.write(bArr, i2, i3);
        } catch (IOException unused) {
            this.f44276a.f44278b = true;
        }
    }
}
