package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.internal.aa;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    private static volatile s f11594a;

    /* renamed from: b, reason: collision with root package name */
    private List<aa.a> f11595b = new CopyOnWriteArrayList();

    private s() {
    }

    public static s a() {
        if (f11594a == null) {
            synchronized (s.class) {
                try {
                    if (f11594a == null) {
                        f11594a = new s();
                    }
                } finally {
                }
            }
        }
        return f11594a;
    }

    private void b(aa.a aVar) {
        if (this.f11595b.contains(aVar)) {
            this.f11595b.remove(aVar);
        }
    }

    public void a(aa.a aVar) {
        if (aVar == null || this.f11595b.contains(aVar)) {
            return;
        }
        this.f11595b.add(aVar);
    }

    public void a(int i2) {
        for (aa.a aVar : this.f11595b) {
            if (i2 == 1) {
                aVar.onSuccess();
            } else if (i2 == 2) {
                aVar.onFailure();
            }
            b(aVar);
        }
    }
}
