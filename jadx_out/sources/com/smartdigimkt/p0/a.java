package com.smartdigimkt.p0;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class a extends c {

    /* renamed from: P0, reason: collision with root package name */
    public final long f42283P0;

    /* renamed from: Q0, reason: collision with root package name */
    public final ArrayList f42284Q0;

    /* renamed from: R0, reason: collision with root package name */
    public final ArrayList f42285R0;

    public a(int i2, long j2) {
        super(i2);
        this.f42283P0 = j2;
        this.f42284Q0 = new ArrayList();
        this.f42285R0 = new ArrayList();
    }

    public final a b(int i2) {
        int size = this.f42285R0.size();
        for (int i3 = 0; i3 < size; i3++) {
            a aVar = (a) this.f42285R0.get(i3);
            if (aVar.f42379a == i2) {
                return aVar;
            }
        }
        return null;
    }

    public final b c(int i2) {
        int size = this.f42284Q0.size();
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = (b) this.f42284Q0.get(i3);
            if (bVar.f42379a == i2) {
                return bVar;
            }
        }
        return null;
    }

    @Override // com.smartdigimkt.p0.c
    public final String toString() {
        return c.a(this.f42379a) + " leaves: " + Arrays.toString(this.f42284Q0.toArray()) + " containers: " + Arrays.toString(this.f42285R0.toArray());
    }
}
