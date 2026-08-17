package com.sigmob.sdk.downloader.core.breakpoint;

import android.util.SparseArray;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private final HashMap<String, Integer> f37345a;

    /* renamed from: b, reason: collision with root package name */
    private final SparseArray<String> f37346b;

    public k() {
        this(new HashMap(), new SparseArray());
    }

    public Integer a(com.sigmob.sdk.downloader.f fVar) {
        Integer num = this.f37345a.get(b(fVar));
        if (num != null) {
            return num;
        }
        return null;
    }

    public String b(com.sigmob.sdk.downloader.f fVar) {
        return fVar.i() + fVar.h() + fVar.d();
    }

    public k(HashMap<String, Integer> map, SparseArray<String> sparseArray) {
        this.f37345a = map;
        this.f37346b = sparseArray;
    }

    public void a(int i2) {
        String str = this.f37346b.get(i2);
        if (str != null) {
            this.f37345a.remove(str);
            this.f37346b.remove(i2);
        }
    }

    public void a(com.sigmob.sdk.downloader.f fVar, int i2) {
        String strB = b(fVar);
        this.f37345a.put(strB, Integer.valueOf(i2));
        this.f37346b.put(i2, strB);
    }
}
