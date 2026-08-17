package com.smartdigimkt.y3;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public abstract class o {

    /* renamed from: b, reason: collision with root package name */
    public final Handler f45236b;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f45235a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f45237c = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    public final n f45238d = new n(this);

    public o(Context context) {
        Handler handler;
        context.getApplicationContext();
        SDKContext.getInstance().a();
        com.smartdigimkt.b4.b bVar = com.smartdigimkt.b4.e.a().f39591a;
        bVar.getClass();
        String strA = com.smartdigimkt.b4.b.a(9);
        SDKContext.getInstance().getClass();
        synchronized (bVar) {
            handler = (Handler) bVar.f39584h.get(strA);
            if (handler == null) {
                try {
                    HandlerThread handlerThread = new HandlerThread(strA);
                    handlerThread.setPriority(1);
                    handlerThread.start();
                    Thread.currentThread().getId();
                    Thread.currentThread().getName();
                    Handler handler2 = new Handler(handlerThread.getLooper());
                    try {
                        bVar.f39584h.put(strA, handler2);
                        handler = handler2;
                    } catch (Throwable th) {
                        th = th;
                        handler = handler2;
                        th.getMessage();
                        h.a("create handler thread error", th.getMessage() + ", " + com.smartdigimkt.c5.k.a(th.getStackTrace()), SDKContext.getInstance().f(), "");
                        this.f45236b = handler;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        this.f45236b = handler;
    }

    public final synchronized void a(com.smartdigimkt.q3.e eVar, boolean z2) {
        Handler handler;
        try {
            if (SDKContext.getInstance().f44116e) {
                boolean z3 = true;
                if (z2) {
                    this.f45235a.add(eVar);
                    a(true);
                } else {
                    com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
                    if (this.f45237c.compareAndSet(false, true)) {
                        if (aVarA.f39383n > 0 && (handler = this.f45236b) != null) {
                            handler.removeCallbacks(this.f45238d);
                            this.f45236b.postDelayed(this.f45238d, aVarA.f39383n);
                            z3 = false;
                        }
                        this.f45235a.add(eVar);
                        a(z3);
                    } else {
                        z3 = false;
                        this.f45235a.add(eVar);
                        a(z3);
                    }
                }
            } else {
                this.f45235a.add(eVar);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract void a(ArrayList arrayList);

    public final synchronized void a(boolean z2) {
        Handler handler;
        try {
            if (z2) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.f45235a);
                if (arrayList.size() > 0) {
                    a(arrayList);
                }
                this.f45235a.clear();
            } else {
                com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
                ArrayList arrayList2 = new ArrayList();
                int size = this.f45235a.size();
                int i2 = aVarA.f39382m;
                if (size >= i2) {
                    for (int i3 = i2 - 1; i3 >= 0; i3--) {
                        arrayList2.add((com.smartdigimkt.q3.e) this.f45235a.get(i3));
                        this.f45235a.remove(i3);
                    }
                    if (arrayList2.size() > 0) {
                        a(arrayList2);
                    }
                }
            }
            if (this.f45235a.isEmpty() && (handler = this.f45236b) != null) {
                handler.removeCallbacks(this.f45238d);
                this.f45237c.set(false);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
