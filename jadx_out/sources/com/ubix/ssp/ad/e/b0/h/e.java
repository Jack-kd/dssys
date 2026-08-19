package com.ubix.ssp.ad.e.b0.h;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;

/* loaded from: classes5.dex */
class e extends m {

    /* renamed from: i, reason: collision with root package name */
    private final h f46694i;

    /* renamed from: j, reason: collision with root package name */
    private final com.ubix.ssp.ad.e.b0.h.s.b f46695j;

    /* renamed from: k, reason: collision with root package name */
    private b f46696k;

    public e(h hVar, com.ubix.ssp.ad.e.b0.h.s.b bVar) {
        super(hVar, bVar);
        this.f46695j = bVar;
        this.f46694i = hVar;
    }

    private String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    private String b(d dVar) {
        String strC = this.f46694i.c();
        boolean zIsEmpty = TextUtils.isEmpty(strC);
        long jB = this.f46695j.c() ? this.f46695j.b() : this.f46694i.a();
        boolean z2 = false;
        boolean z3 = jB >= 0;
        boolean z4 = dVar.f46693e;
        long j2 = z4 ? jB - dVar.f46692d : jB;
        if (z3 && z4) {
            z2 = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(dVar.f46693e ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb.append("Accept-Ranges: bytes\n");
        sb.append(z3 ? a("Content-Length: %d\n", Long.valueOf(j2)) : "");
        sb.append(z2 ? a("Content-Range: bytes %d-%d/%d\n", Long.valueOf(dVar.f46692d), Long.valueOf(jB - 1), Long.valueOf(jB)) : "");
        sb.append(zIsEmpty ? "" : a("Content-Type: %s\n", strC));
        sb.append("\n");
        return sb.toString();
    }

    private void b(OutputStream outputStream, long j2) {
        h hVar = new h(this.f46694i);
        try {
            hVar.a((int) j2);
            byte[] bArr = new byte[8192];
            while (true) {
                int iA = hVar.a(bArr);
                if (iA == -1) {
                    outputStream.flush();
                    hVar.close();
                    return;
                }
                outputStream.write(bArr, 0, iA);
            }
        } catch (Throwable th) {
            hVar.close();
            throw th;
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.h.m
    public void a(int i2) {
        b bVar = this.f46696k;
        if (bVar != null) {
            bVar.a(this.f46695j.f46751b, this.f46694i.d(), i2);
        }
    }

    public void a(b bVar) {
        this.f46696k = bVar;
    }

    public void a(d dVar, Socket socket) throws IOException, n {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(b(dVar).getBytes("UTF-8"));
        long j2 = dVar.f46692d;
        if (a(dVar)) {
            a(bufferedOutputStream, j2);
        } else {
            b(bufferedOutputStream, j2);
        }
    }

    private void a(OutputStream outputStream, long j2) throws IOException, n {
        byte[] bArr = new byte[8192];
        while (true) {
            int iA = a(bArr, j2, 8192);
            if (iA == -1) {
                outputStream.flush();
                return;
            } else {
                outputStream.write(bArr, 0, iA);
                j2 += iA;
            }
        }
    }

    private boolean a(d dVar) {
        long jA = this.f46694i.a();
        return (((jA > 0L ? 1 : (jA == 0L ? 0 : -1)) > 0) && dVar.f46693e && ((float) dVar.f46692d) > ((float) this.f46695j.b()) + (((float) jA) * 0.2f)) ? false : true;
    }
}
