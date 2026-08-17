package com.kwad.sdk.core.videocache;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;

/* loaded from: classes4.dex */
final class e extends k {
    private final p aZV;
    private final com.kwad.sdk.core.videocache.a.b aZW;
    private b aZX;

    public e(p pVar, com.kwad.sdk.core.videocache.a.b bVar) {
        super(pVar, bVar);
        this.aZW = bVar;
        this.aZV = pVar;
    }

    private String b(d dVar) {
        String strPf = this.aZV.Pf();
        boolean zIsEmpty = TextUtils.isEmpty(strPf);
        long jOV = this.aZW.isCompleted() ? this.aZW.OV() : this.aZV.length();
        boolean z2 = false;
        boolean z3 = jOV >= 0;
        boolean z4 = dVar.aZU;
        long j2 = z4 ? jOV - dVar.aZT : jOV;
        if (z3 && z4) {
            z2 = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(dVar.aZU ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb.append("Accept-Ranges: bytes\n");
        sb.append(z3 ? format("Content-Length: %d\n", Long.valueOf(j2)) : "");
        sb.append(z2 ? format("Content-Range: bytes %d-%d/%d\n", Long.valueOf(dVar.aZT), Long.valueOf(jOV - 1), Long.valueOf(jOV)) : "");
        sb.append(zIsEmpty ? "" : format("Content-Type: %s\n", strPf));
        sb.append("\n");
        return sb.toString();
    }

    private static String format(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public final void a(b bVar) {
        this.aZX = bVar;
    }

    @Override // com.kwad.sdk.core.videocache.k
    public final void eM(int i2) {
        b bVar = this.aZX;
        if (bVar != null) {
            bVar.a(this.aZW.file, i2);
        }
    }

    public final void a(d dVar, Socket socket) throws IOException, ProxyCacheException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(b(dVar).getBytes("UTF-8"));
        long j2 = dVar.aZT;
        if (a(dVar)) {
            a(bufferedOutputStream, j2);
        } else {
            b(bufferedOutputStream, j2);
        }
    }

    private boolean a(d dVar) {
        long length = this.aZV.length();
        return (((length > 0L ? 1 : (length == 0L ? 0 : -1)) > 0) && dVar.aZU && ((float) dVar.aZT) > ((float) this.aZW.OV()) + (((float) length) * 0.2f)) ? false : true;
    }

    private void a(OutputStream outputStream, long j2) throws ProxyCacheException, IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int iA = a(bArr, j2, 1024);
            if (iA == -1) {
                break;
            }
            try {
                outputStream.write(bArr, 0, iA);
                j2 += iA;
            } catch (Exception unused) {
            }
        }
        outputStream.flush();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b A[Catch: all -> 0x0030, LOOP:0: B:11:0x0024->B:13:0x002b, LOOP_END, TryCatch #0 {all -> 0x0030, blocks: (B:10:0x001d, B:11:0x0024, B:13:0x002b, B:16:0x0032), top: B:21:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0032 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(java.io.OutputStream r3, long r4) {
        /*
            r2 = this;
            com.kwad.sdk.core.videocache.p r0 = r2.aZV
            boolean r1 = r0 instanceof com.kwad.sdk.core.videocache.h
            if (r1 == 0) goto Lf
            com.kwad.sdk.core.videocache.h r1 = new com.kwad.sdk.core.videocache.h
            com.kwad.sdk.core.videocache.h r0 = (com.kwad.sdk.core.videocache.h) r0
            r1.<init>(r0)
        Ld:
            r0 = r1
            goto L1b
        Lf:
            boolean r1 = r0 instanceof com.kwad.sdk.core.videocache.j
            if (r1 == 0) goto L1b
            com.kwad.sdk.core.videocache.j r1 = new com.kwad.sdk.core.videocache.j
            com.kwad.sdk.core.videocache.j r0 = (com.kwad.sdk.core.videocache.j) r0
            r1.<init>(r0)
            goto Ld
        L1b:
            int r4 = (int) r4
            long r4 = (long) r4
            r0.aP(r4)     // Catch: java.lang.Throwable -> L30
            r4 = 1024(0x400, float:1.435E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L30
        L24:
            int r5 = r0.read(r4)     // Catch: java.lang.Throwable -> L30
            r1 = -1
            if (r5 == r1) goto L32
            r1 = 0
            r3.write(r4, r1, r5)     // Catch: java.lang.Throwable -> L30
            goto L24
        L30:
            r3 = move-exception
            goto L39
        L32:
            r3.flush()     // Catch: java.lang.Throwable -> L30
            r0.close()
            return
        L39:
            r0.close()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.videocache.e.b(java.io.OutputStream, long):void");
    }
}
