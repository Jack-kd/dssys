package com.smartdigimkt.z0;

import android.net.Uri;
import android.util.Base64;
import java.net.URLDecoder;

/* loaded from: classes5.dex */
public final class g implements i {

    /* renamed from: a, reason: collision with root package name */
    public k f45371a;

    /* renamed from: b, reason: collision with root package name */
    public int f45372b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f45373c;

    @Override // com.smartdigimkt.z0.i
    public final long a(k kVar) throws com.smartdigimkt.j0.y {
        this.f45371a = kVar;
        Uri uri = kVar.f45374a;
        String scheme = uri.getScheme();
        if (!"data".equals(scheme)) {
            throw new com.smartdigimkt.j0.y("Unsupported scheme: " + scheme);
        }
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        int i2 = com.smartdigimkt.a1.t.f39303a;
        String[] strArrSplit = schemeSpecificPart.split(",", -1);
        if (strArrSplit.length != 2) {
            throw new com.smartdigimkt.j0.y("Unexpected URI format: " + uri);
        }
        String str = strArrSplit[1];
        if (strArrSplit[0].contains(";base64")) {
            try {
                this.f45373c = Base64.decode(str, 0);
            } catch (IllegalArgumentException e2) {
                throw new com.smartdigimkt.j0.y("Error while parsing Base64 encoded string: " + str, e2);
            }
        } else {
            this.f45373c = URLDecoder.decode(str, "US-ASCII").getBytes();
        }
        return this.f45373c.length;
    }

    @Override // com.smartdigimkt.z0.i
    public final void close() {
        this.f45371a = null;
        this.f45373c = null;
    }

    @Override // com.smartdigimkt.z0.i
    public final int a(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        int length = this.f45373c.length - this.f45372b;
        if (length == 0) {
            return -1;
        }
        int iMin = Math.min(i3, length);
        System.arraycopy(this.f45373c, this.f45372b, bArr, i2, iMin);
        this.f45372b += iMin;
        return iMin;
    }

    @Override // com.smartdigimkt.z0.i
    public final Uri a() {
        k kVar = this.f45371a;
        if (kVar != null) {
            return kVar.f45374a;
        }
        return null;
    }
}
