package com.smartdigimkt.z0;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;

/* loaded from: classes5.dex */
public final class m implements i {

    /* renamed from: a, reason: collision with root package name */
    public final Context f45383a;

    /* renamed from: b, reason: collision with root package name */
    public final i f45384b;

    /* renamed from: c, reason: collision with root package name */
    public r f45385c;

    /* renamed from: d, reason: collision with root package name */
    public d f45386d;

    /* renamed from: e, reason: collision with root package name */
    public f f45387e;

    /* renamed from: f, reason: collision with root package name */
    public i f45388f;

    /* renamed from: g, reason: collision with root package name */
    public g f45389g;

    /* renamed from: h, reason: collision with root package name */
    public c0 f45390h;

    /* renamed from: i, reason: collision with root package name */
    public i f45391i;

    public m(Context context, i iVar) {
        this.f45383a = context.getApplicationContext();
        iVar.getClass();
        this.f45384b = iVar;
    }

    @Override // com.smartdigimkt.z0.i
    public final long a(k kVar) {
        if (this.f45391i != null) {
            throw new IllegalStateException();
        }
        String scheme = kVar.f45374a.getScheme();
        Uri uri = kVar.f45374a;
        int i2 = com.smartdigimkt.a1.t.f39303a;
        String scheme2 = uri.getScheme();
        if (TextUtils.isEmpty(scheme2) || com.sigmob.sdk.base.n.f36463z.equals(scheme2)) {
            if (kVar.f45374a.getPath().startsWith("/android_asset/")) {
                if (this.f45386d == null) {
                    this.f45386d = new d(this.f45383a);
                }
                this.f45391i = this.f45386d;
            } else {
                if (this.f45385c == null) {
                    this.f45385c = new r();
                }
                this.f45391i = this.f45385c;
            }
        } else if ("asset".equals(scheme)) {
            if (this.f45386d == null) {
                this.f45386d = new d(this.f45383a);
            }
            this.f45391i = this.f45386d;
        } else if ("content".equals(scheme)) {
            if (this.f45387e == null) {
                this.f45387e = new f(this.f45383a);
            }
            this.f45391i = this.f45387e;
        } else if (LiveConfigKey.RTMP.equals(scheme)) {
            i iVar = this.f45388f;
            if (iVar == null && iVar == null) {
                this.f45388f = this.f45384b;
            }
            this.f45391i = this.f45388f;
        } else if ("data".equals(scheme)) {
            if (this.f45389g == null) {
                this.f45389g = new g();
            }
            this.f45391i = this.f45389g;
        } else if ("rawresource".equals(scheme)) {
            if (this.f45390h == null) {
                this.f45390h = new c0(this.f45383a);
            }
            this.f45391i = this.f45390h;
        } else {
            this.f45391i = this.f45384b;
        }
        return this.f45391i.a(kVar);
    }

    @Override // com.smartdigimkt.z0.i
    public final void close() {
        i iVar = this.f45391i;
        if (iVar != null) {
            try {
                iVar.close();
            } finally {
                this.f45391i = null;
            }
        }
    }

    @Override // com.smartdigimkt.z0.i
    public final int a(byte[] bArr, int i2, int i3) {
        return this.f45391i.a(bArr, i2, i3);
    }

    @Override // com.smartdigimkt.z0.i
    public final Uri a() {
        i iVar = this.f45391i;
        if (iVar == null) {
            return null;
        }
        return iVar.a();
    }
}
