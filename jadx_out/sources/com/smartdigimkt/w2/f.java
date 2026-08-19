package com.smartdigimkt.w2;

import android.text.TextUtils;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f44883a;

    public f(d dVar) {
        this.f44883a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            d dVar = this.f44883a;
            Object obj = dVar.f44875b;
            com.smartdigimkt.b3.b bVar = dVar.f44876c;
            if (bVar == null || obj == null) {
                return;
            }
            Object[] objArr = {dVar, TextUtils.isEmpty(dVar.f44879f) ? "{}" : this.f44883a.f44879f};
            Method method = bVar.f39575a;
            if (method == null) {
                return;
            }
            try {
                method.invoke(obj, objArr);
            } catch (Exception e2) {
                e2.getMessage();
            }
        } catch (Throwable unused) {
        }
    }
}
