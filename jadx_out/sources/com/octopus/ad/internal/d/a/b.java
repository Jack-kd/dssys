package com.octopus.ad.internal.d.a;

import com.kuaishou.weapon.p0.t;
import com.octopus.ad.internal.d.p;
import java.io.File;
import java.io.RandomAccessFile;

/* loaded from: classes4.dex */
public class b implements com.octopus.ad.internal.d.a {

    /* renamed from: a, reason: collision with root package name */
    public File f34647a;

    /* renamed from: b, reason: collision with root package name */
    private final a f34648b;

    /* renamed from: c, reason: collision with root package name */
    private RandomAccessFile f34649c;

    public b(File file, a aVar) throws p {
        File file2;
        try {
            if (aVar == null) {
                throw new NullPointerException();
            }
            this.f34648b = aVar;
            d.a(file.getParentFile());
            boolean zExists = file.exists();
            if (zExists) {
                file2 = file;
            } else {
                file2 = new File(file.getParentFile(), file.getName() + ".download");
            }
            this.f34647a = file2;
            this.f34649c = new RandomAccessFile(this.f34647a, zExists ? t.f31269k : "rw");
        } catch (Exception e2) {
            throw new p("Error using file " + file + " as disc cache", e2);
        }
    }

    @Override // com.octopus.ad.internal.d.a
    public synchronized long a() throws p {
        try {
        } catch (Exception e2) {
            throw new p("Error reading length of file " + this.f34647a, e2);
        }
        return (int) this.f34649c.length();
    }

    @Override // com.octopus.ad.internal.d.a
    public synchronized void b() throws p {
        try {
            this.f34649c.close();
            this.f34648b.a(this.f34647a);
        } catch (Exception e2) {
            throw new p("Error closing file " + this.f34647a, e2);
        }
    }

    @Override // com.octopus.ad.internal.d.a
    public synchronized void c() throws p {
        if (d()) {
            return;
        }
        b();
        File file = new File(this.f34647a.getParentFile(), this.f34647a.getName().substring(0, this.f34647a.getName().length() - 9));
        if (!this.f34647a.renameTo(file)) {
            throw new p("Error renaming file " + this.f34647a + " to " + file + " for completion!");
        }
        this.f34647a = file;
        try {
            this.f34649c = new RandomAccessFile(this.f34647a, t.f31269k);
            this.f34648b.a(this.f34647a);
        } catch (Exception e2) {
            throw new p("Error opening " + this.f34647a + " as disc cache", e2);
        }
    }

    @Override // com.octopus.ad.internal.d.a
    public synchronized boolean d() {
        return !a(this.f34647a);
    }

    @Override // com.octopus.ad.internal.d.a
    public synchronized int a(byte[] bArr, long j2, int i2) throws p {
        try {
            this.f34649c.seek(j2);
        } catch (Exception e2) {
            throw new p(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", Integer.valueOf(i2), Long.valueOf(j2), Long.valueOf(a()), Integer.valueOf(bArr.length)), e2);
        }
        return this.f34649c.read(bArr, 0, i2);
    }

    @Override // com.octopus.ad.internal.d.a
    public synchronized void a(byte[] bArr, int i2) throws p {
        try {
            if (!d()) {
                this.f34649c.seek(a());
                this.f34649c.write(bArr, 0, i2);
            } else {
                throw new p("Error append cache: cache file " + this.f34647a + " is completed!");
            }
        } catch (Exception e2) {
            throw new p(String.format("Error writing %d bytes to %s from buffer with size %d", Integer.valueOf(i2), this.f34649c, Integer.valueOf(bArr.length)), e2);
        }
    }

    private boolean a(File file) {
        return file.getName().endsWith(".download");
    }
}
