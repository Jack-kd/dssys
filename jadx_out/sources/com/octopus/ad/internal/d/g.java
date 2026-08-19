package com.octopus.ad.internal.d;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;

/* loaded from: classes4.dex */
class g extends o {

    /* renamed from: a, reason: collision with root package name */
    private final j f34665a;

    /* renamed from: b, reason: collision with root package name */
    private final com.octopus.ad.internal.d.a.b f34666b;

    /* renamed from: c, reason: collision with root package name */
    private b f34667c;

    public g(j jVar, com.octopus.ad.internal.d.a.b bVar) {
        super(jVar, bVar);
        this.f34666b = bVar;
        this.f34665a = jVar;
    }

    private String b(e eVar) throws IOException, p {
        String strC = this.f34665a.c();
        boolean zIsEmpty = TextUtils.isEmpty(strC);
        long jA = this.f34666b.d() ? this.f34666b.a() : this.f34665a.a();
        boolean z2 = false;
        boolean z3 = jA >= 0;
        boolean z4 = eVar.f34664c;
        long j2 = z4 ? jA - eVar.f34663b : jA;
        if (z3 && z4) {
            z2 = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(eVar.f34664c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb.append("Accept-Ranges: bytes\n");
        sb.append(z3 ? a("Content-Length: %d\n", Long.valueOf(j2)) : "");
        sb.append(z2 ? a("Content-Range: bytes %d-%d/%d\n", Long.valueOf(eVar.f34663b), Long.valueOf(jA - 1), Long.valueOf(jA)) : "");
        sb.append(zIsEmpty ? "" : a("Content-Type: %s\n", strC));
        sb.append("\n");
        return sb.toString();
    }

    public void a(b bVar) {
        this.f34667c = bVar;
    }

    public void a(e eVar, Socket socket) throws IOException, p {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(b(eVar).getBytes("UTF-8"));
        long j2 = eVar.f34663b;
        if (a(eVar)) {
            a(bufferedOutputStream, j2);
        } else {
            b(bufferedOutputStream, j2);
        }
    }

    private boolean a(e eVar) throws p {
        long jA = this.f34665a.a();
        return (((jA > 0L ? 1 : (jA == 0L ? 0 : -1)) > 0) && eVar.f34664c && ((float) eVar.f34663b) > ((float) this.f34666b.a()) + (((float) jA) * 0.2f)) ? false : true;
    }

    private void a(OutputStream outputStream, long j2) throws IOException, p {
        byte[] bArr = new byte[8192];
        while (true) {
            int iA = a(bArr, j2, 8192);
            if (iA != -1) {
                outputStream.write(bArr, 0, iA);
                j2 += iA;
            } else {
                outputStream.flush();
                return;
            }
        }
    }

    private void b(OutputStream outputStream, long j2) throws IOException, p {
        j jVar = new j(this.f34665a);
        try {
            jVar.a((int) j2);
            byte[] bArr = new byte[8192];
            while (true) {
                int iA = jVar.a(bArr);
                if (iA != -1) {
                    outputStream.write(bArr, 0, iA);
                } else {
                    outputStream.flush();
                    jVar.b();
                    return;
                }
            }
        } catch (Throwable th) {
            jVar.b();
            throw th;
        }
    }

    private String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    @Override // com.octopus.ad.internal.d.o
    public void a(int i2) {
        b bVar = this.f34667c;
        if (bVar != null) {
            bVar.a(this.f34666b.f34647a, this.f34665a.d(), i2);
        }
    }
}
