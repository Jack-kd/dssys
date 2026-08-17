package com.meishu.sdk.core.cache.image;

import com.meishu.sdk.core.utils.y;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class b implements y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f31534a;

    public b(c cVar) {
        this.f31534a = cVar;
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onFailure(@NotNull IOException iOException) {
        c.a(this.f31534a, 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0096  */
    @Override // com.meishu.sdk.core.utils.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResponse(com.meishu.sdk.core.domain.HttpResponse<byte[]> r6) throws java.io.IOException {
        /*
            r5 = this;
            boolean r0 = r6.isSuccessful()     // Catch: java.lang.Throwable -> L9d
            if (r0 == 0) goto L96
            com.meishu.sdk.core.cache.image.c r0 = r5.f31534a     // Catch: java.lang.Throwable -> L9d
            java.lang.Object r1 = r0.f31537c     // Catch: java.lang.Throwable -> L9d
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L9d
            java.util.List<java.lang.ref.SoftReference<com.meishu.sdk.core.cache.d>> r0 = r0.f31535a     // Catch: java.lang.Throwable -> L2c
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L2c
        L11:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Throwable -> L2c
            if (r2 == 0) goto L2e
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Throwable -> L2c
            java.lang.ref.SoftReference r2 = (java.lang.ref.SoftReference) r2     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r2 = r2.get()     // Catch: java.lang.Throwable -> L27
            com.meishu.sdk.core.cache.d r2 = (com.meishu.sdk.core.cache.d) r2     // Catch: java.lang.Throwable -> L27
            r2.a()     // Catch: java.lang.Throwable -> L27
            goto L11
        L27:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L2c
            goto L11
        L2c:
            r6 = move-exception
            goto L94
        L2e:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r6 = r6.getResponseBody()     // Catch: java.lang.Throwable -> L9d
            byte[] r6 = (byte[]) r6     // Catch: java.lang.Throwable -> L9d
            if (r6 == 0) goto L96
            int r0 = r6.length     // Catch: java.lang.Throwable -> L9d
            if (r0 <= 0) goto L96
            int r0 = r6.length     // Catch: java.lang.Throwable -> L9d
            r1 = 0
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeByteArray(r6, r1, r0)     // Catch: java.lang.Throwable -> L9d
            if (r0 == 0) goto L92
            com.meishu.sdk.core.cache.image.c r1 = r5.f31534a     // Catch: java.lang.Throwable -> L9d
            java.lang.String r1 = r1.f31536b     // Catch: java.lang.Throwable -> L9d
            r2 = 0
            java.io.File r2 = com.meishu.sdk.core.bquery.g.a(r1, r2)     // Catch: java.lang.Throwable -> L5b
            java.lang.String r3 = "temp"
            java.io.File r1 = com.meishu.sdk.core.bquery.g.a(r1, r3)     // Catch: java.lang.Throwable -> L5b
            boolean r3 = r1.exists()     // Catch: java.lang.Throwable -> L5b
            if (r3 == 0) goto L5d
            r1.delete()     // Catch: java.lang.Throwable -> L5b
            goto L5d
        L5b:
            r1 = move-exception
            goto L80
        L5d:
            com.meishu.sdk.core.bquery.g.a(r1, r6)     // Catch: java.lang.Throwable -> L5b
            r1.renameTo(r2)     // Catch: java.lang.Throwable -> L5b
            if (r2 == 0) goto L76
            boolean r1 = r2.exists()     // Catch: java.lang.Throwable -> L5b
            if (r1 == 0) goto L76
            long r1 = r2.length()     // Catch: java.lang.Throwable -> L5b
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L76
            goto L8c
        L76:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.meishu.sdk.core.cache.image.a> r1 = com.meishu.sdk.core.cache.c.f31533a     // Catch: java.lang.Throwable -> L5b
            java.lang.String r1 = "c"
            java.lang.String r2 = "image file save error"
            com.meishu.sdk.core.utils.LogUtil.w(r1, r2)     // Catch: java.lang.Throwable -> L5b
            goto L8c
        L80:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L9d
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.meishu.sdk.core.cache.image.a> r1 = com.meishu.sdk.core.cache.c.f31533a     // Catch: java.lang.Throwable -> L9d
            java.lang.String r1 = "c"
            java.lang.String r2 = "image file save error"
            com.meishu.sdk.core.utils.LogUtil.w(r1, r2)     // Catch: java.lang.Throwable -> L9d
        L8c:
            com.meishu.sdk.core.cache.image.c r1 = r5.f31534a     // Catch: java.lang.Throwable -> L9d
            com.meishu.sdk.core.cache.image.c.a(r1, r0, r6)     // Catch: java.lang.Throwable -> L9d
            goto La4
        L92:
            r6 = 4
            goto L97
        L94:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2c
            throw r6     // Catch: java.lang.Throwable -> L9d
        L96:
            r6 = 3
        L97:
            com.meishu.sdk.core.cache.image.c r0 = r5.f31534a     // Catch: java.lang.Throwable -> L9d
            com.meishu.sdk.core.cache.image.c.a(r0, r6)     // Catch: java.lang.Throwable -> L9d
            goto La4
        L9d:
            com.meishu.sdk.core.cache.image.c r6 = r5.f31534a
            r0 = 9
            com.meishu.sdk.core.cache.image.c.a(r6, r0)
        La4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.cache.image.b.onResponse(com.meishu.sdk.core.domain.HttpResponse):void");
    }
}
