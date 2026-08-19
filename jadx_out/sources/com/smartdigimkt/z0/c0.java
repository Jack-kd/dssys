package com.smartdigimkt.z0;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class c0 implements i {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f45354a;

    /* renamed from: b, reason: collision with root package name */
    public Uri f45355b;

    /* renamed from: c, reason: collision with root package name */
    public AssetFileDescriptor f45356c;

    /* renamed from: d, reason: collision with root package name */
    public FileInputStream f45357d;

    /* renamed from: e, reason: collision with root package name */
    public long f45358e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f45359f;

    public c0(Context context) {
        this.f45354a = context.getResources();
    }

    @Override // com.smartdigimkt.z0.i
    public final long a(k kVar) throws NumberFormatException, IOException {
        try {
            Uri uri = kVar.f45374a;
            this.f45355b = uri;
            if (!TextUtils.equals("rawresource", uri.getScheme())) {
                throw new b0("URI must use scheme rawresource");
            }
            try {
                this.f45356c = this.f45354a.openRawResourceFd(Integer.parseInt(this.f45355b.getLastPathSegment()));
                FileInputStream fileInputStream = new FileInputStream(this.f45356c.getFileDescriptor());
                this.f45357d = fileInputStream;
                fileInputStream.skip(this.f45356c.getStartOffset());
                if (this.f45357d.skip(kVar.f45376c) < kVar.f45376c) {
                    throw new EOFException();
                }
                long length = this.f45356c.getLength();
                long j2 = -1;
                if (length != -1) {
                    j2 = length - kVar.f45376c;
                }
                this.f45358e = j2;
                this.f45359f = true;
                return j2;
            } catch (NumberFormatException unused) {
                throw new b0("Resource identifier must be an integer.");
            }
        } catch (IOException e2) {
            throw new b0(e2);
        }
    }

    @Override // com.smartdigimkt.z0.i
    public final void close() {
        this.f45355b = null;
        try {
            try {
                FileInputStream fileInputStream = this.f45357d;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f45357d = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f45356c;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e2) {
                        throw new b0(e2);
                    }
                } finally {
                    this.f45356c = null;
                    if (this.f45359f) {
                        this.f45359f = false;
                    }
                }
            } catch (IOException e3) {
                throw new b0(e3);
            }
        } catch (Throwable th) {
            this.f45357d = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f45356c;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f45356c = null;
                    if (this.f45359f) {
                        this.f45359f = false;
                    }
                    throw th;
                } catch (IOException e4) {
                    throw new b0(e4);
                }
            } finally {
                this.f45356c = null;
                if (this.f45359f) {
                    this.f45359f = false;
                }
            }
        }
    }

    @Override // com.smartdigimkt.z0.i
    public final int a(byte[] bArr, int i2, int i3) throws IOException {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f45358e;
        if (j2 == 0) {
            return -1;
        }
        if (j2 != -1) {
            try {
                i3 = (int) Math.min(j2, i3);
            } catch (IOException e2) {
                throw new b0(e2);
            }
        }
        int i4 = this.f45357d.read(bArr, i2, i3);
        if (i4 == -1) {
            if (this.f45358e == -1) {
                return -1;
            }
            throw new b0(new EOFException());
        }
        long j3 = this.f45358e;
        if (j3 != -1) {
            this.f45358e = j3 - i4;
        }
        return i4;
    }

    @Override // com.smartdigimkt.z0.i
    public final Uri a() {
        return this.f45355b;
    }
}
