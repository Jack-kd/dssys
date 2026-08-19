package com.smartdigimkt.x;

import android.app.Activity;
import android.content.Context;
import com.smartdigimkt.sdk.core.SDKContext;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public com.smartdigimkt.h1.i f45052a;

    public final void a(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, m mVar) {
        Activity activity;
        Activity activity2;
        try {
            if (!(context instanceof Activity) || (activity2 = (Activity) context) == null || activity2.isFinishing() || activity2.isDestroyed()) {
                l lVarA = l.a();
                synchronized (lVarA.f45050r) {
                    try {
                        WeakReference weakReference = lVarA.f45049q;
                        activity = weakReference != null ? (Activity) weakReference.get() : null;
                    } finally {
                    }
                }
                if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
                    activity = null;
                }
            } else {
                activity = (Activity) context;
            }
            if (activity == null) {
                return;
            }
            com.smartdigimkt.h1.i iVar = new com.smartdigimkt.h1.i(com.smartdigimkt.c5.k.a(context, "myoffer_feedback_dialog", "style"), activity);
            this.f45052a = iVar;
            iVar.f40435d = mVar;
            iVar.f40433b = cVar;
            iVar.f40434c = aVar;
            if (cVar != null) {
                iVar.f40453v = cVar.f41799T;
            }
            iVar.show();
        } catch (Throwable th) {
            com.smartdigimkt.y3.h.a("show feedback dialog error", th.getMessage() + ", " + com.smartdigimkt.c5.k.a(th.getStackTrace()), SDKContext.getInstance().f(), "");
        }
    }
}
