package com.smartdigimkt.u3;

import android.text.TextUtils;
import com.smartdigimkt.c5.i;
import com.smartdigimkt.t3.n;
import com.smartdigimkt.t3.o;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/* loaded from: classes5.dex */
public final class g extends com.smartdigimkt.v3.d {

    /* renamed from: d, reason: collision with root package name */
    public final o f44416d;

    /* renamed from: e, reason: collision with root package name */
    public e f44417e;

    /* renamed from: f, reason: collision with root package name */
    public final String f44418f;

    public g(o oVar) {
        super(oVar.f44331b);
        this.f44416d = oVar;
        this.f44418f = n.a().b(oVar.f44330a, i.b(oVar.f44331b));
    }

    @Override // com.smartdigimkt.v3.d
    public final boolean a(InputStream inputStream) {
        FileOutputStream fileOutputStream;
        try {
            if (TextUtils.isEmpty(this.f44418f)) {
                return false;
            }
            try {
                String strB = n.a().b(this.f44416d.f44330a);
                if (TextUtils.isEmpty(strB)) {
                    return false;
                }
                File file = new File(strB);
                if (!file.exists()) {
                    file.mkdirs();
                }
                fileOutputStream = new FileOutputStream(this.f44418f);
                try {
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int i2 = inputStream.read(bArr);
                        if (i2 == -1) {
                            fileOutputStream.close();
                            fileOutputStream.close();
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i2);
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        th.printStackTrace();
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        return false;
                    } catch (Throwable th2) {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th3) {
                                th3.printStackTrace();
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
            }
        } catch (Throwable th5) {
            th5.printStackTrace();
        }
    }

    @Override // com.smartdigimkt.v3.d
    public final void a(com.smartdigimkt.v3.c cVar) {
        com.smartdigimkt.b4.e.a().a(cVar, 4);
    }

    @Override // com.smartdigimkt.v3.d
    public final void a() {
        e eVar = this.f44417e;
        if (eVar != null) {
            String str = this.f44416d.f44331b;
            eVar.f44411b.a(eVar.f44410a.f44331b);
        }
    }

    @Override // com.smartdigimkt.v3.d
    public final void a(String str) {
        e eVar = this.f44417e;
        if (eVar != null) {
            eVar.f44411b.a(1, this.f44416d.f44331b, str);
        }
    }
}
