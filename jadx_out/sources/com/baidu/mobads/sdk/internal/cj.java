package com.baidu.mobads.sdk.internal;

import android.content.SharedPreferences;
import android.os.Handler;
import com.baidu.mobads.sdk.internal.cb;

/* loaded from: classes2.dex */
class cj extends j {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ cb.c f11318b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ Handler f11319c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ cb f11320d;

    public cj(cb cbVar, cb.c cVar, Handler handler) {
        this.f11320d = cbVar;
        this.f11318b = cVar;
        this.f11319c = handler;
    }

    @Override // com.baidu.mobads.sdk.internal.j
    public Object i() {
        try {
            try {
                synchronized (cb.class) {
                    this.f11320d.b(this.f11318b, this.f11319c);
                }
                SharedPreferences.Editor editorEdit = this.f11320d.m().edit();
                editorEdit.putString(cb.f11281d, this.f11320d.a());
                editorEdit.apply();
                return null;
            } catch (Throwable th) {
                try {
                    this.f11320d.f11306z.a(cb.f11278a, "Load APK Failed: " + th.toString());
                    this.f11320d.b(false);
                    SharedPreferences.Editor editorEdit2 = this.f11320d.m().edit();
                    editorEdit2.putString(cb.f11281d, this.f11320d.a());
                    editorEdit2.apply();
                    return null;
                } catch (Throwable th2) {
                    try {
                        SharedPreferences.Editor editorEdit3 = this.f11320d.m().edit();
                        editorEdit3.putString(cb.f11281d, this.f11320d.a());
                        editorEdit3.apply();
                    } catch (Throwable th3) {
                        this.f11320d.f11306z.a(cb.f11278a, th3);
                    }
                    throw th2;
                }
            }
        } catch (Throwable th4) {
            this.f11320d.f11306z.a(cb.f11278a, th4);
            return null;
        }
    }
}
