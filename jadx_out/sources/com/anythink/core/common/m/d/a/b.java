package com.anythink.core.common.m.d.a;

import com.anythink.core.common.m.d.f;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class b extends d {

    /* renamed from: c, reason: collision with root package name */
    private static final int f5698c = 2;

    /* renamed from: a, reason: collision with root package name */
    protected String f5699a = getClass().getSimpleName();

    @Override // com.anythink.core.common.m.d.a.d
    public final synchronized void a(f fVar, f.a aVar) {
        InputStream inputStream = this.f5703b.getInputStream();
        if (a(inputStream) != 2) {
            if (aVar != null) {
                aVar.a((Object) null);
            }
            return;
        }
        inputStream.read(new byte[1], 0, 1);
        byte[] bArr = new byte[4];
        inputStream.read(bArr, 0, 4);
        int i2 = ByteBuffer.wrap(bArr).getInt();
        if (i2 <= 0) {
            if (aVar != null) {
                aVar.a((Object) null);
            }
            return;
        }
        byte[] bArr2 = new byte[i2];
        inputStream.read(bArr2, 0, i2);
        String str = new String(bArr2);
        if (aVar != null) {
            aVar.a(str);
        }
    }
}
