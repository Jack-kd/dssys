package com.anythink.core.common.res.a;

import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.res.d;
import com.anythink.core.common.res.e;
import com.anythink.core.common.v.b.c;
import com.anythink.core.common.v.n;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Map;

/* loaded from: classes2.dex */
public final class b extends com.anythink.core.common.res.image.b {

    /* renamed from: a, reason: collision with root package name */
    e f7373a;

    /* renamed from: b, reason: collision with root package name */
    a f7374b;

    /* renamed from: c, reason: collision with root package name */
    String f7375c;

    public interface a {
        void a();

        void a(e eVar, String str);
    }

    public b(e eVar) {
        super(eVar.f7467h);
        this.f7373a = eVar;
        this.f7375c = d.a(s.b().g()).b(eVar.f7466g, n.a(eVar.f7467h));
    }

    @Override // com.anythink.core.common.res.image.b
    public final Map<String, String> a() {
        return null;
    }

    @Override // com.anythink.core.common.res.image.b
    public final void b() {
    }

    @Override // com.anythink.core.common.res.image.b
    public final void c() {
        a aVar = this.f7374b;
        if (aVar != null) {
            aVar.a();
        }
    }

    private void a(a aVar) {
        this.f7374b = aVar;
    }

    @Override // com.anythink.core.common.res.image.b
    public final boolean a(InputStream inputStream) {
        if (TextUtils.isEmpty(this.f7375c)) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            String strA = d.a(s.b().g()).a(this.f7373a.f7466g);
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            File file = new File(strA);
            if (!file.exists()) {
                file.mkdirs();
            }
            FileOutputStream fileOutputStream2 = new FileOutputStream(this.f7375c);
            try {
                byte[] bArr = new byte[2048];
                while (true) {
                    int i2 = inputStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    fileOutputStream2.write(bArr, 0, i2);
                }
                fileOutputStream2.close();
                try {
                    fileOutputStream2.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return true;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                try {
                    th.printStackTrace();
                    if (fileOutputStream == null) {
                        return false;
                    }
                    try {
                        fileOutputStream.close();
                        return false;
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                        return false;
                    }
                } catch (Throwable th4) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th5) {
                            th5.printStackTrace();
                        }
                    }
                    throw th4;
                }
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(Runnable runnable) {
        c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ba, runnable));
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(String str) {
        a aVar = this.f7374b;
        if (aVar != null) {
            aVar.a(this.f7373a, str);
        }
    }
}
