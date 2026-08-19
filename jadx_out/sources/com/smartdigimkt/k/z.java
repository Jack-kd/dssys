package com.smartdigimkt.k;

import android.util.SparseIntArray;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

/* loaded from: classes5.dex */
public final class z {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f41228m = 0;

    /* renamed from: a, reason: collision with root package name */
    public String f41229a;

    /* renamed from: b, reason: collision with root package name */
    public String f41230b;

    /* renamed from: c, reason: collision with root package name */
    public String f41231c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f41232d;

    /* renamed from: f, reason: collision with root package name */
    public long f41234f;

    /* renamed from: g, reason: collision with root package name */
    public long f41235g;

    /* renamed from: h, reason: collision with root package name */
    public int f41236h;

    /* renamed from: j, reason: collision with root package name */
    public c0 f41238j;

    /* renamed from: k, reason: collision with root package name */
    public ExecutorService f41239k;

    /* renamed from: l, reason: collision with root package name */
    public y f41240l;

    /* renamed from: e, reason: collision with root package name */
    public int f41233e = 2;

    /* renamed from: i, reason: collision with root package name */
    public int f41237i = 1;

    public static void a(z zVar) throws ProtocolException {
        if (zVar.f41234f > 0) {
            if (zVar.f41232d) {
                zVar.a();
                return;
            }
            String str = zVar.f41229a;
            zVar.f41233e = 1;
            zVar.f41239k.execute(new v(0, str, com.smartdigimkt.n.c.a(0, zVar.f41231c), zVar.f41230b, zVar.f41235g, 0, 0, 0, zVar.f41240l, zVar));
            return;
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(zVar.f41229a).openConnection();
        httpURLConnection.setRequestMethod(com.sigmob.sdk.downloader.core.c.f37362a);
        long contentLength = httpURLConnection.getContentLength();
        zVar.f41234f = contentLength;
        if (contentLength <= 0) {
            zVar.a(3, "downloadSize <= 0");
            return;
        }
        String headerField = httpURLConnection.getHeaderField(com.sigmob.sdk.downloader.core.c.f37370i);
        if (headerField != null && headerField.equals("bytes")) {
            zVar.f41232d = true;
            zVar.a();
        } else {
            zVar.f41232d = false;
            String str2 = zVar.f41229a;
            zVar.f41233e = 1;
            zVar.f41239k.execute(new v(0, str2, com.smartdigimkt.n.c.a(0, zVar.f41231c), zVar.f41230b, zVar.f41235g, 0, 0, 0, zVar.f41240l, zVar));
        }
    }

    public final void a() {
        z zVar = this;
        int i2 = zVar.f41236h;
        if (i2 > 0 && zVar.f41234f < i2) {
            zVar.f41233e = 1;
        }
        int i3 = zVar.f41233e;
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        SparseIntArray sparseIntArray3 = new SparseIntArray();
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < i3; i4++) {
            File file = new File(zVar.f41231c + "_" + i4);
            if (file.exists()) {
                arrayList.add(file);
            }
        }
        zVar.a(sparseIntArray, sparseIntArray2, sparseIntArray3, i3, zVar.f41234f, zVar.f41231c);
        if (arrayList.size() > 0 && i3 != arrayList.size()) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                File file2 = (File) arrayList.get(i5);
                if (file2.exists()) {
                    file2.delete();
                }
            }
            zVar.a(sparseIntArray, sparseIntArray2, sparseIntArray3, i3, zVar.f41234f, zVar.f41231c);
        }
        int i6 = 0;
        for (int i7 = i3; i6 < i7; i7 = i7) {
            zVar.f41239k.execute(new v(i6, zVar.f41229a, com.smartdigimkt.n.c.a(i6, zVar.f41231c), zVar.f41230b, zVar.f41235g, sparseIntArray.get(i6), sparseIntArray2.get(i6), sparseIntArray3.get(i6), zVar.f41240l, zVar));
            i6++;
            zVar = this;
        }
    }

    public final void a(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2, SparseIntArray sparseIntArray3, int i2, long j2, String str) {
        long length;
        long length2;
        long jCeil = (long) Math.ceil(j2 / i2);
        for (int i3 = 0; i3 < i2; i3++) {
            File file = new File(com.smartdigimkt.n.c.a(i3, str));
            file.length();
            if (file.exists()) {
                length = file.length() + (i3 * jCeil);
                length2 = file.length();
            } else if (!file.createNewFile()) {
                a(3, "create part File failed.");
                return;
            } else {
                length = i3 * jCeil;
                length2 = 0;
            }
            long jMin = Math.min(((i3 * jCeil) + jCeil) - 1, j2 - 1);
            long jMin2 = Math.min(length, jMin);
            long jMin3 = Math.min(length2, jCeil - 1);
            sparseIntArray.put(i3, (int) jMin2);
            sparseIntArray2.put(i3, (int) jMin);
            sparseIntArray3.put(i3, (int) jMin3);
        }
    }

    public final void a(int i2, String str) {
        c0 c0Var = this.f41238j;
        if (c0Var != null) {
            c0Var.a(7);
            this.f41238j.a(i2, str);
        }
    }
}
