package com.meishu.sdk.core.utils;

import java.io.File;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class b0 implements Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f31836a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ File f31837b;

    public b0(y yVar, File file) {
        this.f31836a = yVar;
        this.f31837b = file;
    }

    @Override // okhttp3.Callback
    public void onFailure(@NotNull Call call, IOException iOException) {
        try {
            this.f31836a.onFailure(iOException);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004c A[Catch: all -> 0x0052, Exception -> 0x0054, TRY_LEAVE, TryCatch #2 {Exception -> 0x0054, blocks: (B:25:0x0044, B:27:0x004c), top: B:67:0x0044, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x006f A[EXC_TOP_SPLITTER, PHI: r4
      0x006f: PHI (r4v4 java.io.FileOutputStream) = (r4v3 java.io.FileOutputStream), (r4v6 java.io.FileOutputStream), (r4v6 java.io.FileOutputStream) binds: [B:35:0x006d, B:58:0x006f, B:18:0x0038] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    @Override // okhttp3.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResponse(@org.jetbrains.annotations.NotNull okhttp3.Call r9, @org.jetbrains.annotations.NotNull okhttp3.Response r10) throws java.io.IOException {
        /*
            r8 = this;
            java.lang.String r9 = "bad file"
            com.meishu.sdk.core.domain.HttpResponse r0 = new com.meishu.sdk.core.domain.HttpResponse
            r0.<init>()
            r1 = 0
            boolean r2 = r10.isSuccessful()     // Catch: java.lang.Throwable -> L7e
            if (r2 == 0) goto L8e
            okhttp3.ResponseBody r2 = r10.body()     // Catch: java.lang.Throwable -> L7e
            if (r2 == 0) goto L80
            r3 = 0
            java.io.InputStream r2 = r2.byteStream()     // Catch: java.lang.Throwable -> L3e
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L3c
            java.io.File r5 = r8.f31837b     // Catch: java.lang.Throwable -> L3c
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L3c
            r3 = 8192(0x2000, float:1.148E-41)
            byte[] r3 = new byte[r3]     // Catch: java.lang.Throwable -> L2f
        L24:
            int r5 = r2.read(r3)     // Catch: java.lang.Throwable -> L2f
            r6 = -1
            if (r5 == r6) goto L31
            r4.write(r3, r1, r5)     // Catch: java.lang.Throwable -> L2f
            goto L24
        L2f:
            r3 = move-exception
            goto L44
        L31:
            r4.flush()     // Catch: java.lang.Throwable -> L2f
            r3 = 1
            r0.setSuccessful(r3)     // Catch: java.lang.Throwable -> L2f
            r2.close()     // Catch: java.lang.Throwable -> L6f
            goto L6f
        L3c:
            r4 = move-exception
            goto L41
        L3e:
            r2 = move-exception
            r4 = r2
            r2 = r3
        L41:
            r7 = r4
            r4 = r3
            r3 = r7
        L44:
            java.io.File r5 = r8.f31837b     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            boolean r5 = r5.exists()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            if (r5 == 0) goto L57
            java.io.File r5 = r8.f31837b     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r5.delete()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            goto L57
        L52:
            r3 = move-exception
            goto L73
        L54:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L52
        L57:
            r0.setSuccessful(r1)     // Catch: java.lang.Throwable -> L52
            java.lang.Integer r3 = com.meishu.sdk.core.exception.ErrorCodeUtil.RES_READ_RESPONSE_ERROR     // Catch: java.lang.Throwable -> L52
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> L52
            r0.setErrorCode(r3)     // Catch: java.lang.Throwable -> L52
            java.lang.String r3 = "write file error"
            r0.setErrorDescription(r3)     // Catch: java.lang.Throwable -> L52
            if (r2 == 0) goto L6d
            r2.close()     // Catch: java.lang.Throwable -> L6d
        L6d:
            if (r4 == 0) goto Lb2
        L6f:
            r4.close()     // Catch: java.lang.Throwable -> Lb2
            goto Lb2
        L73:
            if (r2 == 0) goto L78
            r2.close()     // Catch: java.lang.Throwable -> L78
        L78:
            if (r4 == 0) goto L7d
            r4.close()     // Catch: java.lang.Throwable -> L7d
        L7d:
            throw r3     // Catch: java.lang.Throwable -> L7e
        L7e:
            r2 = move-exception
            goto La0
        L80:
            r0.setSuccessful(r1)     // Catch: java.lang.Throwable -> L7e
            int r2 = r10.code()     // Catch: java.lang.Throwable -> L7e
            r0.setErrorCode(r2)     // Catch: java.lang.Throwable -> L7e
            r0.setErrorDescription(r9)     // Catch: java.lang.Throwable -> L7e
            goto Lb2
        L8e:
            r0.setSuccessful(r1)     // Catch: java.lang.Throwable -> L7e
            int r2 = r10.code()     // Catch: java.lang.Throwable -> L7e
            r0.setErrorCode(r2)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r2 = r10.message()     // Catch: java.lang.Throwable -> L7e
            r0.setErrorDescription(r2)     // Catch: java.lang.Throwable -> L7e
            goto Lb2
        La0:
            r2.printStackTrace()
            r0.setSuccessful(r1)
            java.lang.Integer r1 = com.meishu.sdk.core.exception.ErrorCodeUtil.RES_READ_RESPONSE_ERROR
            int r1 = r1.intValue()
            r0.setErrorCode(r1)
            r0.setErrorDescription(r9)
        Lb2:
            r10.close()     // Catch: java.lang.Exception -> Lb6
            goto Lba
        Lb6:
            r9 = move-exception
            r9.printStackTrace()
        Lba:
            com.meishu.sdk.core.utils.y r9 = r8.f31836a     // Catch: java.lang.Throwable -> Lc0
            r9.onResponse(r0)     // Catch: java.lang.Throwable -> Lc0
            goto Lc4
        Lc0:
            r9 = move-exception
            r9.printStackTrace()
        Lc4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.b0.onResponse(okhttp3.Call, okhttp3.Response):void");
    }
}
