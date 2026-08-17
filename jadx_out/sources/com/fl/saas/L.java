package com.fl.saas;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes3.dex */
public class L implements InterfaceC1206p {

    /* renamed from: a, reason: collision with root package name */
    private final D f29988a;

    /* renamed from: b, reason: collision with root package name */
    public File f29989b;

    /* renamed from: c, reason: collision with root package name */
    private RandomAccessFile f29990c;

    public L(File file, D d2) throws C1237z0 {
        File file2;
        try {
            if (d2 == null) {
                throw new NullPointerException();
            }
            this.f29988a = d2;
            O.b(file.getParentFile());
            boolean zExists = file.exists();
            if (zExists) {
                file2 = file;
            } else {
                file2 = new File(file.getParentFile(), file.getName() + ".download");
            }
            this.f29989b = file2;
            this.f29990c = new RandomAccessFile(this.f29989b, zExists ? com.kuaishou.weapon.p0.t.f31269k : "rw");
        } catch (IOException e2) {
            throw new C1237z0("Error using file " + file + " as disc cache", e2);
        }
    }

    @Override // com.fl.saas.InterfaceC1206p
    public synchronized void a(byte[] bArr, int i2) {
        try {
            if (c()) {
                throw new C1237z0("Error append cache: cache file " + this.f29989b + " is completed!");
            }
            this.f29990c.seek(b());
            this.f29990c.write(bArr, 0, i2);
        } catch (IOException e2) {
            throw new C1237z0(String.format("Error writing %d bytes to %s from buffer with size %d", Integer.valueOf(i2), this.f29990c, Integer.valueOf(bArr.length)), e2);
        }
    }

    @Override // com.fl.saas.InterfaceC1206p
    public synchronized long b() {
        try {
        } catch (IOException e2) {
            throw new C1237z0("Error reading length of file " + this.f29989b, e2);
        }
        return (int) this.f29990c.length();
    }

    @Override // com.fl.saas.InterfaceC1206p
    public synchronized boolean c() {
        return !a(this.f29989b);
    }

    @Override // com.fl.saas.InterfaceC1206p
    public synchronized void close() {
        try {
            this.f29990c.close();
            this.f29988a.a(this.f29989b);
        } catch (IOException e2) {
            throw new C1237z0("Error closing file " + this.f29989b, e2);
        }
    }

    @Override // com.fl.saas.InterfaceC1206p
    public synchronized void a() {
        if (c()) {
            return;
        }
        close();
        File file = new File(this.f29989b.getParentFile(), this.f29989b.getName().substring(0, this.f29989b.getName().length() - 9));
        if (!this.f29989b.renameTo(file)) {
            throw new C1237z0("Error renaming file " + this.f29989b + " to " + file + " for completion!");
        }
        this.f29989b = file;
        try {
            this.f29990c = new RandomAccessFile(this.f29989b, com.kuaishou.weapon.p0.t.f31269k);
            this.f29988a.a(this.f29989b);
        } catch (IOException e2) {
            throw new C1237z0("Error opening " + this.f29989b + " as disc cache", e2);
        }
    }

    private boolean a(File file) {
        return file.getName().endsWith(".download");
    }

    @Override // com.fl.saas.InterfaceC1206p
    public synchronized int a(byte[] bArr, long j2, int i2) {
        try {
            this.f29990c.seek(j2);
        } catch (IOException e2) {
            throw new C1237z0(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", Integer.valueOf(i2), Long.valueOf(j2), Long.valueOf(b()), Integer.valueOf(bArr.length)), e2);
        }
        return this.f29990c.read(bArr, 0, i2);
    }
}
