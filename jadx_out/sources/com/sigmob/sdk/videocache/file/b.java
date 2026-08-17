package com.sigmob.sdk.videocache.file;

import com.kuaishou.weapon.p0.t;
import com.sigmob.sdk.videocache.p;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes4.dex */
public class b implements com.sigmob.sdk.videocache.c {

    /* renamed from: b, reason: collision with root package name */
    private static final String f38895b = ".download";

    /* renamed from: a, reason: collision with root package name */
    public File f38896a;

    /* renamed from: c, reason: collision with root package name */
    private final a f38897c;

    /* renamed from: d, reason: collision with root package name */
    private RandomAccessFile f38898d;

    public b(File file) throws p {
        this(file, new i());
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized int a(byte[] bArr, long j2, int i2) throws p {
        try {
            this.f38898d.seek(j2);
        } catch (IOException e2) {
            throw new p(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", Integer.valueOf(i2), Long.valueOf(j2), Long.valueOf(a()), Integer.valueOf(bArr.length)), e2);
        }
        return this.f38898d.read(bArr, 0, i2);
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized void b() throws p {
        try {
            this.f38898d.close();
            this.f38897c.a(this.f38896a);
        } catch (IOException e2) {
            throw new p("Error closing file " + this.f38896a, e2);
        }
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized void c() throws p {
        if (d()) {
            return;
        }
        b();
        File file = new File(this.f38896a.getParentFile(), this.f38896a.getName().substring(0, this.f38896a.getName().length() - 9));
        if (!this.f38896a.renameTo(file)) {
            throw new p("Error renaming file " + this.f38896a + " to " + file + " for completion!");
        }
        this.f38896a = file;
        try {
            this.f38898d = new RandomAccessFile(this.f38896a, t.f31269k);
            this.f38897c.a(this.f38896a);
        } catch (IOException e2) {
            throw new p("Error opening " + this.f38896a + " as disc cache", e2);
        }
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized boolean d() {
        return !a(this.f38896a);
    }

    public File e() {
        return this.f38896a;
    }

    public b(File file, a aVar) throws p {
        File file2;
        try {
            if (aVar == null) {
                throw new NullPointerException();
            }
            this.f38897c = aVar;
            d.a(file.getParentFile());
            boolean zExists = file.exists();
            if (zExists) {
                file2 = file;
            } else {
                file2 = new File(file.getParentFile(), file.getName() + f38895b);
            }
            this.f38896a = file2;
            this.f38898d = new RandomAccessFile(this.f38896a, zExists ? t.f31269k : "rw");
        } catch (IOException e2) {
            throw new p("Error using file " + file + " as disc cache", e2);
        }
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized long a() throws p {
        try {
        } catch (IOException e2) {
            throw new p("Error reading length of file " + this.f38896a, e2);
        }
        return (int) this.f38898d.length();
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized void a(byte[] bArr, int i2) throws p {
        try {
            if (d()) {
                throw new p("Error append cache: cache file " + this.f38896a + " is completed!");
            }
            this.f38898d.seek(a());
            this.f38898d.write(bArr, 0, i2);
        } catch (IOException e2) {
            throw new p(String.format("Error writing %d bytes to %s from buffer with size %d", Integer.valueOf(i2), this.f38898d, Integer.valueOf(bArr.length)), e2);
        }
    }

    private boolean a(File file) {
        return file.getName().endsWith(f38895b);
    }
}
