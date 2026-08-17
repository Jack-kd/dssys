package com.smartdigimkt.f3;

import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class x implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a0 f40263a;

    public x(a0 a0Var) {
        this.f40263a = a0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f40263a.f40207d = true;
            new ArrayList();
            a0 a0Var = this.f40263a;
            a0Var.f40209f = a0Var.f40205b.c();
            a0 a0Var2 = this.f40263a;
            String str = a0Var2.f40204a;
            if (a0Var2.f40209f > a0Var2.f40208e) {
                ArrayList arrayListD = a0Var2.f40205b.d();
                String str2 = this.f40263a.f40204a;
                arrayListD.size();
                int size = arrayListD.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayListD.get(i2);
                    i2++;
                    w wVar = (w) obj;
                    try {
                        File file = new File(wVar.f40259b);
                        if (file.exists()) {
                            file.delete();
                        }
                    } catch (Throwable unused) {
                    }
                    try {
                        if (TextUtils.isEmpty(wVar.f40258a)) {
                            continue;
                        } else {
                            String str3 = wVar.f40258a;
                            this.f40263a.f40206c.remove(str3);
                            com.smartdigimkt.w3.d dVarA = com.smartdigimkt.w3.d.a();
                            synchronized (dVarA) {
                                if (dVarA.f44940a != null && !TextUtils.isEmpty(str3)) {
                                    dVarA.f44940a.remove(str3);
                                }
                            }
                        }
                    } catch (Throwable unused2) {
                        continue;
                    }
                }
                String str4 = this.f40263a.f40204a;
            }
        } catch (Throwable unused3) {
        }
        this.f40263a.f40207d = false;
    }
}
