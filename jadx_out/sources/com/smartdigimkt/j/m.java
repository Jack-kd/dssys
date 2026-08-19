package com.smartdigimkt.j;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes5.dex */
public final class m extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f40797a;

    public m(u uVar) {
        this.f40797a = uVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        com.smartdigimkt.b4.e.a().b(new l(this, context));
    }
}
