package com.ubix.ssp.ad.e.b0.h.s;

import com.kuaishou.weapon.p0.t;
import com.ubix.ssp.ad.e.b0.h.n;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes5.dex */
public class b implements com.ubix.ssp.ad.e.b0.h.a {

    /* renamed from: a, reason: collision with root package name */
    private final a f46750a;

    /* renamed from: b, reason: collision with root package name */
    public File f46751b;

    /* renamed from: c, reason: collision with root package name */
    private RandomAccessFile f46752c;

    public b(File file) {
        this(file, new h());
    }

    @Override // com.ubix.ssp.ad.e.b0.h.a
    public synchronized int a(byte[] bArr, long j2, int i2) {
        try {
            this.f46752c.seek(j2);
        } catch (IOException e2) {
            throw new n(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", Integer.valueOf(i2), Long.valueOf(j2), Long.valueOf(b()), Integer.valueOf(bArr.length)), e2);
        }
        return this.f46752c.read(bArr, 0, i2);
    }

    @Override // com.ubix.ssp.ad.e.b0.h.a
    public synchronized long b() {
        try {
        } catch (IOException e2) {
            throw new n("Error reading length of file " + this.f46751b, e2);
        }
        return (int) this.f46752c.length();
    }

    @Override // com.ubix.ssp.ad.e.b0.h.a
    public synchronized boolean c() {
        return !a(this.f46751b);
    }

    @Override // com.ubix.ssp.ad.e.b0.h.a
    public synchronized void close() {
        try {
            this.f46752c.close();
            this.f46750a.a(this.f46751b);
        } catch (IOException e2) {
            throw new n("Error closing file " + this.f46751b, e2);
        }
    }

    public b(File file, a aVar) throws n {
        File file2;
        try {
            if (aVar == null) {
                throw new NullPointerException();
            }
            this.f46750a = aVar;
            d.b(file.getParentFile());
            boolean zExists = file.exists();
            if (zExists) {
                file2 = file;
            } else {
                file2 = new File(file.getParentFile(), file.getName() + ".download");
            }
            this.f46751b = file2;
            this.f46752c = new RandomAccessFile(this.f46751b, zExists ? t.f31269k : "rw");
        } catch (IOException e2) {
            throw new n("Error using file " + file + " as disc cache", e2);
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.h.a
    public synchronized void a() {
        if (c()) {
            return;
        }
        close();
        File file = new File(this.f46751b.getParentFile(), this.f46751b.getName().substring(0, this.f46751b.getName().length() - 9));
        if (!this.f46751b.renameTo(file)) {
            throw new n("Error renaming file " + this.f46751b + " to " + file + " for completion!");
        }
        this.f46751b = file;
        try {
            this.f46752c = new RandomAccessFile(this.f46751b, t.f31269k);
            this.f46750a.a(this.f46751b);
        } catch (IOException e2) {
            throw new n("Error opening " + this.f46751b + " as disc cache", e2);
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.h.a
    public synchronized void a(byte[] bArr, int i2) {
        try {
            if (c()) {
                throw new n("Error append cache: cache file " + this.f46751b + " is completed!");
            }
            this.f46752c.seek(b());
            this.f46752c.write(bArr, 0, i2);
        } catch (IOException e2) {
            throw new n(String.format("Error writing %d bytes to %s from buffer with size %d", Integer.valueOf(i2), this.f46752c, Integer.valueOf(bArr.length)), e2);
        }
    }

    private boolean a(File file) {
        return file.getName().endsWith(".download");
    }
}
