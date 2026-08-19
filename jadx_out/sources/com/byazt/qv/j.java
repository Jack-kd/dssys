package com.byazt.qv;

import com.byazt.ip.q;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1530, 38})
/* loaded from: classes3.dex */
public class j implements q {

    /* renamed from: a, reason: collision with root package name */
    public InputStream f25042a;
    public final Object hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f25043j;
    public q jx;

    /* renamed from: l, reason: collision with root package name */
    public final List<com.byazt.fu.jx> f25044l;

    /* renamed from: w, reason: collision with root package name */
    public long f25045w;

    public List<com.byazt.fu.jx> a() {
        return this.f25044l;
    }

    public boolean eb() {
        try {
            q qVar = this.jx;
            if (qVar != null) {
                return hp(qVar.l());
            }
            return false;
        } catch (IOException unused) {
            return false;
        }
    }

    public boolean hp(int i2) {
        return i2 >= 200 && i2 < 300;
    }

    @Override // com.byazt.ip.q
    public void j() {
        q qVar = this.jx;
        if (qVar != null) {
            qVar.j();
        }
    }

    @Override // com.byazt.ip.eb
    public void jx() {
        q qVar = this.jx;
        if (qVar != null) {
            qVar.jx();
        }
    }

    @Override // com.byazt.ip.eb
    public int l() throws IOException {
        q qVar = this.jx;
        if (qVar != null) {
            return qVar.l();
        }
        return 0;
    }

    public boolean s() {
        return System.currentTimeMillis() - this.f25045w < l.hp;
    }

    public void w() throws InterruptedException {
        synchronized (this.hp) {
            try {
                if (this.f25043j && this.jx == null) {
                    this.hp.wait();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.ip.q
    public InputStream hp() throws IOException {
        InputStream inputStream = this.f25042a;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }

    @Override // com.byazt.ip.eb
    public String hp(String str) {
        q qVar = this.jx;
        if (qVar != null) {
            return qVar.hp(str);
        }
        return null;
    }
}
