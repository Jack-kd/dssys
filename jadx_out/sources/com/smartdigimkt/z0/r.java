package com.smartdigimkt.z0;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes5.dex */
public final class r implements i {

    /* renamed from: a, reason: collision with root package name */
    public RandomAccessFile f45413a;

    /* renamed from: b, reason: collision with root package name */
    public Uri f45414b;

    /* renamed from: c, reason: collision with root package name */
    public long f45415c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f45416d;

    @Override // com.smartdigimkt.z0.i
    public final long a(k kVar) throws IOException {
        try {
            this.f45414b = kVar.f45374a;
            RandomAccessFile randomAccessFile = new RandomAccessFile(kVar.f45374a.getPath(), com.kuaishou.weapon.p0.t.f31269k);
            this.f45413a = randomAccessFile;
            randomAccessFile.seek(kVar.f45376c);
            long length = this.f45413a.length() - kVar.f45376c;
            this.f45415c = length;
            if (length < 0) {
                throw new EOFException();
            }
            this.f45416d = true;
            return length;
        } catch (IOException e2) {
            throw new q(e2);
        }
    }

    @Override // com.smartdigimkt.z0.i
    public final void close() {
        this.f45414b = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f45413a;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e2) {
                throw new q(e2);
            }
        } finally {
            this.f45413a = null;
            if (this.f45416d) {
                this.f45416d = false;
            }
        }
    }

    @Override // com.smartdigimkt.z0.i
    public final int a(byte[] bArr, int i2, int i3) throws IOException {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f45415c;
        if (j2 == 0) {
            return -1;
        }
        try {
            int i4 = this.f45413a.read(bArr, i2, (int) Math.min(j2, i3));
            if (i4 > 0) {
                this.f45415c -= i4;
            }
            return i4;
        } catch (IOException e2) {
            throw new q(e2);
        }
    }

    @Override // com.smartdigimkt.z0.i
    public final Uri a() {
        return this.f45414b;
    }
}
