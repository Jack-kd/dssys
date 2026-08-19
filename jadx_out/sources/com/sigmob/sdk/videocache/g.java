package com.sigmob.sdk.videocache;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;

/* loaded from: classes4.dex */
class g extends o {

    /* renamed from: a, reason: collision with root package name */
    private static final float f38905a = 0.2f;

    /* renamed from: b, reason: collision with root package name */
    private final t f38906b;

    /* renamed from: c, reason: collision with root package name */
    private final com.sigmob.sdk.videocache.file.b f38907c;

    /* renamed from: d, reason: collision with root package name */
    private d f38908d;

    public g(t tVar, com.sigmob.sdk.videocache.file.b bVar) {
        super(tVar, bVar);
        this.f38907c = bVar;
        this.f38906b = tVar;
    }

    private String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    private String b(f fVar) throws p, IOException {
        String strC = this.f38906b.c();
        boolean zIsEmpty = TextUtils.isEmpty(strC);
        long jA = this.f38907c.d() ? this.f38907c.a() : this.f38906b.a();
        boolean z2 = false;
        boolean z3 = jA >= 0;
        boolean z4 = fVar.f38894c;
        long j2 = z4 ? jA - fVar.f38893b : jA;
        if (z3 && z4) {
            z2 = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(fVar.f38894c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb.append("Accept-Ranges: bytes\n");
        sb.append(z3 ? a("Content-Length: %d\n", Long.valueOf(j2)) : "");
        sb.append(z2 ? a("Content-Range: bytes %d-%d/%d\n", Long.valueOf(fVar.f38893b), Long.valueOf(jA - 1), Long.valueOf(jA)) : "");
        sb.append(zIsEmpty ? "" : a("Content-Type: %s\n", strC));
        sb.append("\n");
        return sb.toString();
    }

    private String c(f fVar) {
        return "HTTP/1.1 404 Not Found\n";
    }

    private void b(OutputStream outputStream, long j2) throws p, IOException {
        t tVarA = s.a(this.f38906b);
        try {
            tVarA.a((int) j2);
            byte[] bArr = new byte[8192];
            while (true) {
                int iA = tVarA.a(bArr);
                if (iA == -1) {
                    outputStream.flush();
                    tVarA.b();
                    return;
                }
                outputStream.write(bArr, 0, iA);
            }
        } catch (Throwable th) {
            tVarA.b();
            throw th;
        }
    }

    @Override // com.sigmob.sdk.videocache.o
    public void a(int i2) {
        d dVar = this.f38908d;
        if (dVar != null) {
            dVar.a(this.f38907c.f38896a, this.f38906b.g(), i2);
        }
    }

    public void a(d dVar) {
        this.f38908d = dVar;
    }

    public void a(f fVar, Socket socket) throws p, IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(b(fVar).getBytes("UTF-8"));
        long j2 = fVar.f38893b;
        if (a(fVar)) {
            a(bufferedOutputStream, j2);
        } else {
            b(bufferedOutputStream, j2);
        }
    }

    private void a(OutputStream outputStream, long j2) throws p, IOException {
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

    @Override // com.sigmob.sdk.videocache.o
    public void a(Throwable th) {
        super.a(th);
        d dVar = this.f38908d;
        if (dVar != null) {
            dVar.a(this.f38906b.g(), th);
        }
    }

    private boolean a(f fVar) throws p {
        long jA = this.f38906b.a();
        return (((jA > 0L ? 1 : (jA == 0L ? 0 : -1)) > 0) && fVar.f38894c && ((float) fVar.f38893b) > ((float) this.f38907c.a()) + (((float) jA) * f38905a)) ? false : true;
    }
}
