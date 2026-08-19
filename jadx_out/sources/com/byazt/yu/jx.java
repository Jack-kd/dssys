package com.byazt.yu;

import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, 30})
/* loaded from: classes3.dex */
public abstract class jx {
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f28294j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f28295l;

    public jx(boolean z2, boolean z3) {
        this.f28295l = z2;
        this.jx = z3;
        this.f28294j = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x00dc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String hp(java.lang.String r8, java.lang.String r9) throws java.lang.Throwable {
        /*
            r7 = this;
            java.lang.String r0 = android.os.Environment.getExternalStorageState()
            java.lang.String r1 = "mounted"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto Le
            goto Lcc
        Le:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.io.File r1 = android.os.Environment.getExternalStorageDirectory()
            java.lang.String r1 = r1.getPath()
            r0.append(r1)
            java.lang.String r1 = "/Android/data/com.snssdk.api.embed/cache"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r2 = "/"
            r1.append(r2)
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L53
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L53
            boolean r0 = r2.exists()     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L53
            if (r0 != 0) goto L56
            boolean r0 = r2.mkdirs()     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L53
            if (r0 != 0) goto L56
            goto Lcc
        L4f:
            r8 = move-exception
            r0 = r1
            goto Ld5
        L53:
            r8 = move-exception
            r0 = r1
            goto Lb1
        L56:
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L53
            r0.<init>(r8)     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L53
            java.io.RandomAccessFile r8 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L53
            java.lang.String r2 = "rwd"
            r8.<init>(r0, r2)     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L53
            java.nio.channels.FileChannel r2 = r8.getChannel()     // Catch: java.lang.Throwable -> L93 java.io.IOException -> L97
            java.nio.channels.FileLock r1 = r2.lock()     // Catch: java.lang.Throwable -> L93 java.io.IOException -> L97
            boolean r0 = r0.isFile()     // Catch: java.lang.Throwable -> L93 java.io.IOException -> L97
            java.lang.String r2 = "UTF-8"
            if (r0 == 0) goto L9c
            r0 = 129(0x81, float:1.81E-43)
            byte[] r3 = new byte[r0]     // Catch: java.lang.Throwable -> L93 java.io.IOException -> L97
            r4 = 0
            int r5 = r8.read(r3, r4, r0)     // Catch: java.lang.Throwable -> L93 java.io.IOException -> L97
            if (r5 <= 0) goto L9c
            if (r5 >= r0) goto L9c
            java.lang.String r0 = new java.lang.String     // Catch: java.lang.Throwable -> L93 java.io.IOException -> L97
            r0.<init>(r3, r4, r5, r2)     // Catch: java.lang.Throwable -> L93 java.io.IOException -> L97
            boolean r3 = com.byazt.yu.q.hp(r0)     // Catch: java.lang.Throwable -> L93 java.io.IOException -> L97
            if (r3 == 0) goto L9c
            if (r1 == 0) goto L8f
            r1.release()     // Catch: java.lang.Exception -> L8f
        L8f:
            r8.close()     // Catch: java.lang.Exception -> L92
        L92:
            return r0
        L93:
            r9 = move-exception
            r0 = r8
            r8 = r9
            goto Ld5
        L97:
            r0 = move-exception
            r6 = r0
            r0 = r8
            r8 = r6
            goto Lb1
        L9c:
            byte[] r0 = r9.getBytes(r2)     // Catch: java.lang.Throwable -> L93 java.io.IOException -> L97
            r2 = 0
            r8.setLength(r2)     // Catch: java.lang.Throwable -> L93 java.io.IOException -> L97
            r8.write(r0)     // Catch: java.lang.Throwable -> L93 java.io.IOException -> L97
            if (r1 == 0) goto Lad
            r1.release()     // Catch: java.lang.Exception -> Lad
        Lad:
            r8.close()     // Catch: java.lang.Exception -> Lb0
        Lb0:
            return r9
        Lb1:
            com.byazt.lxu.j r2 = com.byazt.lxu.j.w()     // Catch: java.lang.Throwable -> Lcd
            android.app.Application r2 = r2.hp     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r3 = "android.permission.READ_EXTERNAL_STORAGE"
            int r2 = r2.checkSelfPermission(r3)     // Catch: java.lang.Throwable -> Lcd
            if (r2 != 0) goto Lcf
            com.byazt.gt.e.l(r8)     // Catch: java.lang.Throwable -> Lcd
            if (r1 == 0) goto Lc7
            r1.release()     // Catch: java.lang.Exception -> Lc7
        Lc7:
            if (r0 == 0) goto Lcc
            r0.close()     // Catch: java.lang.Exception -> Lcc
        Lcc:
            return r9
        Lcd:
            r8 = move-exception
            goto Ld5
        Lcf:
            java.lang.SecurityException r9 = new java.lang.SecurityException     // Catch: java.lang.Throwable -> Lcd
            r9.<init>(r8)     // Catch: java.lang.Throwable -> Lcd
            throw r9     // Catch: java.lang.Throwable -> Lcd
        Ld5:
            if (r1 == 0) goto Lda
            r1.release()     // Catch: java.lang.Exception -> Lda
        Lda:
            if (r0 == 0) goto Ldf
            r0.close()     // Catch: java.lang.Exception -> Ldf
        Ldf:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.yu.jx.hp(java.lang.String, java.lang.String):java.lang.String");
    }

    public abstract boolean hp(JSONObject jSONObject) throws JSONException, SecurityException;

    public jx(boolean z2, boolean z3, boolean z4) {
        this.f28295l = z2;
        this.jx = z3;
        this.f28294j = z4;
    }
}
