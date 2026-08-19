package com.smartdigimkt.k;

import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public final class y implements w {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f41217a = new AtomicInteger(0);

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f41218b = new AtomicInteger(0);

    /* renamed from: c, reason: collision with root package name */
    public final AtomicInteger f41219c = new AtomicInteger(0);

    /* renamed from: d, reason: collision with root package name */
    public final AtomicInteger f41220d = new AtomicInteger(0);

    /* renamed from: e, reason: collision with root package name */
    public final AtomicInteger f41221e = new AtomicInteger(0);

    /* renamed from: f, reason: collision with root package name */
    public final AtomicInteger f41222f = new AtomicInteger(0);

    /* renamed from: g, reason: collision with root package name */
    public final AtomicInteger f41223g = new AtomicInteger(0);

    /* renamed from: h, reason: collision with root package name */
    public final SparseIntArray f41224h = new SparseIntArray();

    /* renamed from: i, reason: collision with root package name */
    public final HandlerThread f41225i;

    /* renamed from: j, reason: collision with root package name */
    public final x f41226j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ z f41227k;

    public y(z zVar) {
        this.f41227k = zVar;
        try {
            HandlerThread handlerThread = new HandlerThread("sdm_download_apk");
            this.f41225i = handlerThread;
            handlerThread.start();
            this.f41226j = new x(this, handlerThread.getLooper());
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void a(int i2) {
        c0 c0Var;
        r rVar;
        int iAddAndGet = this.f41223g.addAndGet(i2);
        int iIncrementAndGet = this.f41219c.incrementAndGet();
        z zVar = this.f41227k;
        if (iIncrementAndGet != zVar.f41233e || (c0Var = zVar.f41238j) == null) {
            return;
        }
        zVar.f41237i = 3;
        c0Var.a(3);
        z zVar2 = this.f41227k;
        c0 c0Var2 = zVar2.f41238j;
        long j2 = iAddAndGet;
        long j3 = zVar2.f41234f;
        int i3 = zVar2.f41233e;
        d0 d0Var = c0Var2.f41133a;
        r rVar2 = d0Var.f41123a;
        if (rVar2 != null) {
            if (rVar2.f41171A <= 0) {
                d0Var.f41137e = System.currentTimeMillis();
                d0 d0Var2 = c0Var2.f41133a;
                d0Var2.f41123a.f41171A = d0Var2.f41137e;
            }
            d0 d0Var3 = c0Var2.f41133a;
            r rVar3 = d0Var3.f41123a;
            rVar3.f41185h = j3;
            rVar3.f41201x = i3;
            rVar3.f41203z = d0Var3.f41135c.f41232d;
        }
        d0 d0Var4 = c0Var2.f41133a;
        a aVar = d0Var4.f41136d;
        if (aVar != null) {
            aVar.b(d0Var4.f41123a, j2, j3);
        }
        d0 d0Var5 = c0Var2.f41133a;
        o oVar = d0Var5.f41138f;
        if (oVar == null || (rVar = d0Var5.f41123a) == null) {
            return;
        }
        try {
            oVar.a(rVar.f41179b, (int) j3, d0Var5.f41135c.f41232d);
        } catch (Throwable unused) {
        }
    }

    public final void b() {
        try {
            x xVar = this.f41226j;
            if (xVar != null) {
                xVar.removeCallbacksAndMessages(null);
            }
            HandlerThread handlerThread = this.f41225i;
            if (handlerThread != null) {
                handlerThread.quitSafely();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void a(int i2, int i3, long j2) {
        x xVar;
        synchronized (this.f41224h) {
            this.f41224h.put(i2, (int) (i3 + j2));
        }
        if (this.f41220d.get() == 1 || this.f41220d.incrementAndGet() != 1 || (xVar = this.f41226j) == null) {
            return;
        }
        this.f41226j.sendMessageDelayed(xVar.obtainMessage(100), 500L);
    }

    public final void a() {
        String str;
        int iIncrementAndGet = this.f41221e.incrementAndGet();
        z zVar = this.f41227k;
        int i2 = zVar.f41233e;
        if (iIncrementAndGet == i2) {
            String str2 = zVar.f41231c;
            try {
                File file = new File(str2);
                if (!file.exists()) {
                    file.createNewFile();
                } else {
                    file.delete();
                    file.createNewFile();
                }
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                for (int i3 = 0; i3 < i2; i3++) {
                    this.f41227k.getClass();
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(com.smartdigimkt.n.c.a(i3, str2)));
                    byte[] bArr = new byte[1048576];
                    while (true) {
                        int i4 = bufferedInputStream.read(bArr);
                        if (i4 != -1) {
                            bufferedOutputStream.write(bArr, 0, i4);
                        }
                    }
                    bufferedInputStream.close();
                }
                bufferedOutputStream.close();
                str = "";
            } catch (Throwable th) {
                th.getMessage();
                str = "mergeFiles() >>> failed: " + th.getMessage();
            }
            if (this.f41227k.f41238j != null) {
                if (TextUtils.isEmpty(str)) {
                    z zVar2 = this.f41227k;
                    zVar2.f41237i = 6;
                    zVar2.f41238j.a(6);
                    z zVar3 = this.f41227k;
                    int i5 = zVar3.f41233e;
                    String str3 = zVar3.f41231c;
                    for (int i6 = 0; i6 < i5; i6++) {
                        this.f41227k.getClass();
                        File file2 = new File(com.smartdigimkt.n.c.a(i6, str3));
                        if (file2.exists()) {
                            file2.delete();
                        }
                    }
                    c0 c0Var = this.f41227k.f41238j;
                    c0Var.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    d0 d0Var = c0Var.f41133a;
                    long j2 = jCurrentTimeMillis - d0Var.f41137e;
                    r rVar = d0Var.f41123a;
                    if (rVar != null) {
                        rVar.f41172B = jCurrentTimeMillis;
                        rVar.f41186i = j2;
                    }
                    a aVar = d0Var.f41136d;
                    if (aVar != null) {
                        aVar.a(rVar, j2);
                    }
                } else {
                    z zVar4 = this.f41227k;
                    zVar4.f41237i = 7;
                    zVar4.f41238j.a(7);
                    this.f41227k.f41238j.a(3, str);
                }
            }
            b();
        }
    }

    public final void a(int i2, String str) {
        if (this.f41222f.incrementAndGet() == 1) {
            z zVar = this.f41227k;
            zVar.f41237i = 7;
            zVar.a(i2, str);
            b();
        }
    }
}
