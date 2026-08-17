package com.fl.saas;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;

/* loaded from: classes3.dex */
class U extends AbstractC1234y0 {

    /* renamed from: i, reason: collision with root package name */
    private final X f30064i;

    /* renamed from: j, reason: collision with root package name */
    private final L f30065j;

    /* renamed from: k, reason: collision with root package name */
    private InterfaceC1209q f30066k;

    public U(X x2, L l2) {
        super(x2, l2);
        this.f30065j = l2;
        this.f30064i = x2;
    }

    private String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    private String b(P p2) {
        String strC = this.f30064i.c();
        boolean zIsEmpty = TextUtils.isEmpty(strC);
        long jB = this.f30065j.c() ? this.f30065j.b() : this.f30064i.a();
        boolean z2 = false;
        boolean z3 = jB >= 0;
        boolean z4 = p2.f30016c;
        long j2 = z4 ? jB - p2.f30015b : jB;
        if (z3 && z4) {
            z2 = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(p2.f30016c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb.append("Accept-Ranges: bytes\n");
        sb.append(z3 ? a("Content-Length: %d\n", Long.valueOf(j2)) : "");
        sb.append(z2 ? a("Content-Range: bytes %d-%d/%d\n", Long.valueOf(p2.f30015b), Long.valueOf(jB - 1), Long.valueOf(jB)) : "");
        sb.append(zIsEmpty ? "" : a("Content-Type: %s\n", strC));
        sb.append("\n");
        return sb.toString();
    }

    private boolean a(P p2) {
        long jA = this.f30064i.a();
        return (((jA > 0L ? 1 : (jA == 0L ? 0 : -1)) > 0) && p2.f30016c && ((float) p2.f30015b) > ((float) this.f30065j.b()) + (((float) jA) * 0.2f)) ? false : true;
    }

    private void b(OutputStream outputStream, long j2) {
        X x2 = new X(this.f30064i);
        try {
            x2.a((int) j2);
            byte[] bArr = new byte[8192];
            while (true) {
                int iA = x2.a(bArr);
                if (iA == -1) {
                    outputStream.flush();
                    x2.close();
                    return;
                }
                outputStream.write(bArr, 0, iA);
            }
        } catch (Throwable th) {
            x2.close();
            throw th;
        }
    }

    @Override // com.fl.saas.AbstractC1234y0
    public void a(int i2) {
        InterfaceC1209q interfaceC1209q = this.f30066k;
        if (interfaceC1209q != null) {
            interfaceC1209q.a(this.f30065j.f29989b, this.f30064i.d(), i2);
        }
    }

    public void a(P p2, Socket socket) throws IOException, C1237z0 {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(b(p2).getBytes("UTF-8"));
        long j2 = p2.f30015b;
        if (a(p2)) {
            a(bufferedOutputStream, j2);
        } else {
            b(bufferedOutputStream, j2);
        }
    }

    public void a(InterfaceC1209q interfaceC1209q) {
        this.f30066k = interfaceC1209q;
    }

    private void a(OutputStream outputStream, long j2) throws IOException, C1237z0 {
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
}
