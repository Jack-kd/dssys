package com.smartdigimkt.j;

import android.widget.Toast;

/* loaded from: classes5.dex */
public final class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40817a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f40818b;

    public t(u uVar, String str) {
        this.f40818b = uVar;
        this.f40817a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Toast.makeText(this.f40818b.f40820a, this.f40817a, 0).show();
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
