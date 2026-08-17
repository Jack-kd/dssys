package com.anythink.china.c;

import com.anythink.china.c.e;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Map;

/* loaded from: classes.dex */
public final class d extends com.anythink.core.common.res.image.b {

    /* renamed from: a, reason: collision with root package name */
    private final File f1442a;

    /* renamed from: b, reason: collision with root package name */
    private a f1443b;

    /* renamed from: c, reason: collision with root package name */
    private final e.a f1444c;

    public interface a {
        void a(File file, e.a aVar);

        void a(File file, e.a aVar, String str);
    }

    public d(String str, File file, e.a aVar) {
        super(str);
        this.f1442a = file;
        this.f1444c = aVar;
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
        a aVar = this.f1443b;
        if (aVar != null) {
            aVar.a(this.f1442a, this.f1444c);
        }
    }

    public final void a(a aVar) {
        this.f1443b = aVar;
    }

    @Override // com.anythink.core.common.res.image.b
    public final boolean a(InputStream inputStream) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(this.f1442a.getAbsolutePath());
            byte[] bArr = new byte[1048576];
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 != -1) {
                    fileOutputStream.write(bArr, 0, i2);
                    fileOutputStream.flush();
                } else {
                    fileOutputStream.close();
                    return true;
                }
            }
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(Runnable runnable) {
        com.anythink.core.common.v.b.c.a().c(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ce, runnable));
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(String str) {
        a aVar = this.f1443b;
        if (aVar != null) {
            aVar.a(this.f1442a, this.f1444c, str);
        }
    }
}
