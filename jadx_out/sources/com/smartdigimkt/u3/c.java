package com.smartdigimkt.u3;

import android.text.TextUtils;
import com.smartdigimkt.e0.n;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44402a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f44403b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f44404c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f44405d;

    public c(String str, n nVar, String str2, long j2) {
        this.f44402a = str;
        this.f44403b = nVar;
        this.f44404c = str2;
        this.f44405d = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (TextUtils.isEmpty(this.f44402a)) {
            this.f44403b.a(3, this.f44404c, "H5Template load fail:h5TemplateFilePath is empty");
            return;
        }
        this.f44403b.a(this.f44405d, this.f44404c, this.f44402a);
    }
}
