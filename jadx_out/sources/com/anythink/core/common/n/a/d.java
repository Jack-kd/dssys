package com.anythink.core.common.n.a;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes2.dex */
public abstract class d implements i {

    /* renamed from: a, reason: collision with root package name */
    protected final long f5961a;

    /* renamed from: b, reason: collision with root package name */
    protected final int f5962b;

    /* renamed from: e, reason: collision with root package name */
    private final int f5963e;

    /* renamed from: f, reason: collision with root package name */
    private final String f5964f;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        Queue<Runnable> f5965a = new ConcurrentLinkedQueue();

        private void a(Runnable runnable) {
            this.f5965a.add(runnable);
        }

        private void a() {
            for (Runnable runnable : this.f5965a) {
                if (runnable != null) {
                    runnable.run();
                }
            }
        }
    }

    private d(String str) {
        this(str, (byte) 0);
    }

    public abstract e a(a aVar, String str, String str2, int i2);

    @Override // com.anythink.core.common.n.a.i
    public final l[] a(h hVar) {
        String str = hVar.f5988a;
        int i2 = this.f5963e;
        if (TextUtils.isEmpty(this.f5964f)) {
            throw new IllegalArgumentException("server can not empty");
        }
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("host can not empty");
        }
        List<l> listA = a(new a(), this.f5964f, str, i2).a();
        if (listA == null || listA.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (l lVar : listA) {
            if (lVar.a() || lVar.f6018h == 5 || lVar.b() || lVar.f6018h == this.f5963e) {
                arrayList.add(lVar);
            }
        }
        return (l[]) arrayList.toArray(new l[0]);
    }

    private d(String str, byte b3) {
        this(str, 53, 500L);
    }

    public d(String str, int i2, long j2) {
        this(str, i2, j2, 1);
    }

    public d(String str, int i2, long j2, int i3) {
        this.f5964f = str;
        this.f5962b = i2;
        this.f5961a = j2 <= 0 ? 500L : j2;
        this.f5963e = i3;
    }

    @Override // com.anythink.core.common.n.a.i
    public final f a() {
        return new f(this.f5964f, this.f5962b, this.f5961a);
    }

    private e a(String str) {
        int i2 = this.f5963e;
        if (!TextUtils.isEmpty(this.f5964f)) {
            if (str != null && !str.isEmpty()) {
                return a(new a(), this.f5964f, str, i2);
            }
            throw new IllegalArgumentException("host can not empty");
        }
        throw new IllegalArgumentException("server can not empty");
    }

    private e a(String str, int i2) {
        if (!TextUtils.isEmpty(this.f5964f)) {
            if (str != null && !str.isEmpty()) {
                return a(new a(), this.f5964f, str, i2);
            }
            throw new IllegalArgumentException("host can not empty");
        }
        throw new IllegalArgumentException("server can not empty");
    }
}
