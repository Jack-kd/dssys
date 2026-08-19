package com.smartdigimkt.h3;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f40572a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f40573b;

    public k(m mVar, d dVar) {
        this.f40573b = mVar;
        this.f40572a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.x.f fVar;
        b bVar = null;
        try {
            try {
                d dVar = this.f40572a;
                if (dVar != null) {
                    b bVarA = dVar.a();
                    try {
                        synchronized (this.f40573b.f40581f) {
                            if (bVarA != null) {
                                try {
                                    int iB = this.f40572a.b();
                                    if (iB != 1) {
                                        if (iB == 2) {
                                            this.f40573b.f40580e.put(bVarA.f40552f, bVarA);
                                            String str = bVarA.f40547a;
                                            if (!TextUtils.isEmpty(str)) {
                                                m mVar = this.f40573b;
                                                if (mVar.f40587l == null) {
                                                    mVar.f40587l = Long.valueOf(System.currentTimeMillis());
                                                }
                                                this.f40573b.f40586k.remove(str);
                                                m mVar2 = this.f40573b;
                                                mVar2.f40587l = Long.valueOf(Math.min(mVar2.f40587l.longValue(), bVarA.f40548b));
                                            }
                                        }
                                    } else if (!TextUtils.isEmpty(bVarA.f40552f) && bVarA.f40549c) {
                                        this.f40573b.f40579d.put(bVarA.f40552f, bVarA.f40550d);
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        if (this.f40573b.f40578c.size() == 0 && (fVar = this.f40573b.f40588m) != null) {
                            fVar.f45027a.a(true);
                            this.f40573b.f40588m = null;
                        }
                        bVar = bVarA;
                    } catch (Throwable unused) {
                        bVar = bVarA;
                        if (bVar == null || bVar.f40551e) {
                            long j2 = this.f40573b.f40577b;
                            if (j2 > 0) {
                                Thread.sleep(j2);
                            }
                        }
                        m.a(this.f40573b);
                        this.f40573b.a();
                    }
                }
            } catch (Throwable unused2) {
            }
            if (bVar == null || bVar.f40551e) {
                long j3 = this.f40573b.f40577b;
                if (j3 > 0) {
                    Thread.sleep(j3);
                }
            }
        } catch (Throwable unused3) {
        }
        m.a(this.f40573b);
        this.f40573b.a();
    }
}
