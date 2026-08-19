package com.smartdigimkt.j3;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes5.dex */
public final class a extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f41103a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(d dVar, Looper looper) {
        super(looper);
        this.f41103a = dVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int size;
        b[] bVarArr;
        if (message.what != 1) {
            super.handleMessage(message);
            return;
        }
        d dVar = this.f41103a;
        while (true) {
            synchronized (dVar.f41113b) {
                try {
                    size = dVar.f41115d.size();
                    if (size <= 0) {
                        return;
                    }
                    bVarArr = new b[size];
                    dVar.f41115d.toArray(bVarArr);
                    dVar.f41115d.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = bVarArr[i2];
                int size2 = bVar.f41105b.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    c cVar = (c) bVar.f41105b.get(i3);
                    if (!cVar.f41109d) {
                        cVar.f41107b.onReceive(dVar.f41112a, bVar.f41104a);
                    }
                }
            }
        }
    }
}
