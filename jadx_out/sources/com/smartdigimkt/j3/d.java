package com.smartdigimkt.j3;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.bytedance.pangle.LocalBroadcastManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: f, reason: collision with root package name */
    public static final Object f41110f = new Object();

    /* renamed from: g, reason: collision with root package name */
    public static d f41111g;

    /* renamed from: a, reason: collision with root package name */
    public final Context f41112a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f41113b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f41114c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f41115d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final a f41116e;

    public d(Context context) {
        this.f41112a = context;
        this.f41116e = new a(this, context.getMainLooper());
    }

    public static d a(Context context) {
        d dVar;
        synchronized (f41110f) {
            try {
                if (f41111g == null) {
                    f41111g = new d(context.getApplicationContext());
                }
                dVar = f41111g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    public final void a(Intent intent) {
        int iMatch;
        synchronized (this.f41113b) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f41112a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z2 = (intent.getFlags() & 8) != 0;
                if (z2) {
                    intent.toString();
                }
                ArrayList arrayList = (ArrayList) this.f41114c.get(intent.getAction());
                if (arrayList != null) {
                    if (z2) {
                        arrayList.toString();
                    }
                    ArrayList arrayList2 = null;
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        c cVar = (c) arrayList.get(i2);
                        if (z2) {
                            Objects.toString(cVar.f41106a);
                        }
                        if (!cVar.f41108c && (iMatch = cVar.f41106a.match(action, strResolveTypeIfNeeded, scheme, data, categories, LocalBroadcastManager.TAG)) >= 0) {
                            if (z2) {
                                Integer.toHexString(iMatch);
                            }
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(cVar);
                            cVar.f41108c = true;
                        }
                    }
                    if (arrayList2 != null) {
                        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                            ((c) arrayList2.get(i3)).f41108c = false;
                        }
                        this.f41115d.add(new b(intent, arrayList2));
                        if (!this.f41116e.hasMessages(1)) {
                            this.f41116e.sendEmptyMessage(1);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
