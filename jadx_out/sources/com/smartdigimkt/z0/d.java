package com.smartdigimkt.z0;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public final class d implements i {

    /* renamed from: a, reason: collision with root package name */
    public final AssetManager f45360a;

    /* renamed from: b, reason: collision with root package name */
    public Uri f45361b;

    /* renamed from: c, reason: collision with root package name */
    public InputStream f45362c;

    /* renamed from: d, reason: collision with root package name */
    public long f45363d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f45364e;

    public d(Context context) {
        this.f45360a = context.getAssets();
    }

    @Override // com.smartdigimkt.z0.i
    public final long a(k kVar) throws IOException {
        try {
            Uri uri = kVar.f45374a;
            this.f45361b = uri;
            String path = uri.getPath();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith(ServiceReference.DELIMITER)) {
                path = path.substring(1);
            }
            InputStream inputStreamOpen = this.f45360a.open(path, 1);
            this.f45362c = inputStreamOpen;
            if (inputStreamOpen.skip(kVar.f45376c) < kVar.f45376c) {
                throw new EOFException();
            }
            long jAvailable = this.f45362c.available();
            this.f45363d = jAvailable;
            if (jAvailable == 2147483647L) {
                this.f45363d = -1L;
            }
            this.f45364e = true;
            return this.f45363d;
        } catch (IOException e2) {
            throw new c(e2);
        }
    }

    @Override // com.smartdigimkt.z0.i
    public final void close() {
        this.f45361b = null;
        try {
            try {
                InputStream inputStream = this.f45362c;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e2) {
                throw new c(e2);
            }
        } finally {
            this.f45362c = null;
            if (this.f45364e) {
                this.f45364e = false;
            }
        }
    }

    @Override // com.smartdigimkt.z0.i
    public final int a(byte[] bArr, int i2, int i3) throws IOException {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f45363d;
        if (j2 == 0) {
            return -1;
        }
        if (j2 != -1) {
            try {
                i3 = (int) Math.min(j2, i3);
            } catch (IOException e2) {
                throw new c(e2);
            }
        }
        int i4 = this.f45362c.read(bArr, i2, i3);
        if (i4 == -1) {
            if (this.f45363d == -1) {
                return -1;
            }
            throw new c(new EOFException());
        }
        long j3 = this.f45363d;
        if (j3 != -1) {
            this.f45363d = j3 - i4;
        }
        return i4;
    }

    @Override // com.smartdigimkt.z0.i
    public final Uri a() {
        return this.f45361b;
    }
}
