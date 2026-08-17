package com.smartdigimkt.j3;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import com.smartdigimkt.z.c0;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final IntentFilter f41106a;

    /* renamed from: b, reason: collision with root package name */
    public final BroadcastReceiver f41107b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f41108c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f41109d;

    public c(IntentFilter intentFilter, c0 c0Var) {
        this.f41106a = intentFilter;
        this.f41107b = c0Var;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("Receiver{");
        sb.append(this.f41107b);
        sb.append(" filter=");
        sb.append(this.f41106a);
        if (this.f41109d) {
            sb.append(" DEAD");
        }
        sb.append("}");
        return sb.toString();
    }
}
