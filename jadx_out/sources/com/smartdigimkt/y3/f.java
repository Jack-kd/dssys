package com.smartdigimkt.y3;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes5.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f45202a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f45203b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f45204c;

    public f(Context context, String str, String str2) {
        this.f45202a = str;
        this.f45203b = str2;
        this.f45204c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Intent intent = new Intent();
        intent.setAction(this.f45202a + "_log_agent");
        intent.putExtra(com.smartdigimkt.f.i.a(new StringBuilder(), this.f45202a, "_log_agent_data"), this.f45203b);
        intent.addFlags(8);
        com.smartdigimkt.i3.a.a(this.f45204c).a(intent);
    }
}
