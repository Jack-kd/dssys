package com.smartdigimkt.z0;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes5.dex */
public final class f implements i {

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f45365a;

    /* renamed from: b, reason: collision with root package name */
    public Uri f45366b;

    /* renamed from: c, reason: collision with root package name */
    public AssetFileDescriptor f45367c;

    /* renamed from: d, reason: collision with root package name */
    public FileInputStream f45368d;

    /* renamed from: e, reason: collision with root package name */
    public long f45369e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f45370f;

    public f(Context context) {
        this.f45365a = context.getContentResolver();
    }

    @Override // com.smartdigimkt.z0.i
    public final long a(k kVar) throws IOException {
        try {
            Uri uri = kVar.f45374a;
            this.f45366b = uri;
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = this.f45365a.openAssetFileDescriptor(uri, com.kuaishou.weapon.p0.t.f31269k);
            this.f45367c = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new FileNotFoundException("Could not open file descriptor for: " + this.f45366b);
            }
            this.f45368d = new FileInputStream(this.f45367c.getFileDescriptor());
            long startOffset = this.f45367c.getStartOffset();
            long jSkip = this.f45368d.skip(kVar.f45376c + startOffset) - startOffset;
            if (jSkip != kVar.f45376c) {
                throw new EOFException();
            }
            long length = this.f45367c.getLength();
            long jPosition = -1;
            if (length == -1) {
                FileChannel channel = this.f45368d.getChannel();
                long size = channel.size();
                if (size != 0) {
                    jPosition = size - channel.position();
                }
                this.f45369e = jPosition;
            } else {
                this.f45369e = length - jSkip;
            }
            this.f45370f = true;
            return this.f45369e;
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    @Override // com.smartdigimkt.z0.i
    public final void close() {
        this.f45366b = null;
        try {
            try {
                FileInputStream fileInputStream = this.f45368d;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f45368d = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f45367c;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e2) {
                        throw new e(e2);
                    }
                } finally {
                    this.f45367c = null;
                    if (this.f45370f) {
                        this.f45370f = false;
                    }
                }
            } catch (IOException e3) {
                throw new e(e3);
            }
        } catch (Throwable th) {
            this.f45368d = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f45367c;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f45367c = null;
                    if (this.f45370f) {
                        this.f45370f = false;
                    }
                    throw th;
                } catch (IOException e4) {
                    throw new e(e4);
                }
            } finally {
                this.f45367c = null;
                if (this.f45370f) {
                    this.f45370f = false;
                }
            }
        }
    }

    @Override // com.smartdigimkt.z0.i
    public final int a(byte[] bArr, int i2, int i3) throws IOException {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f45369e;
        if (j2 == 0) {
            return -1;
        }
        if (j2 != -1) {
            try {
                i3 = (int) Math.min(j2, i3);
            } catch (IOException e2) {
                throw new e(e2);
            }
        }
        int i4 = this.f45368d.read(bArr, i2, i3);
        if (i4 == -1) {
            if (this.f45369e == -1) {
                return -1;
            }
            throw new e(new EOFException());
        }
        long j3 = this.f45369e;
        if (j3 != -1) {
            this.f45369e = j3 - i4;
        }
        return i4;
    }

    @Override // com.smartdigimkt.z0.i
    public final Uri a() {
        return this.f45366b;
    }
}
