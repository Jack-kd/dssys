package com.octopus.ad.c.j;

import android.database.ContentObserver;
import com.octopus.ad.d.b.f;

/* loaded from: classes4.dex */
public class c extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    private String f33884a;

    /* renamed from: b, reason: collision with root package name */
    private int f33885b;

    /* renamed from: c, reason: collision with root package name */
    private b f33886c;

    public c(b bVar, int i2, String str) {
        super(null);
        this.f33886c = bVar;
        this.f33885b = i2;
        this.f33884a = str;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z2) {
        b bVar = this.f33886c;
        if (bVar != null) {
            bVar.b(this.f33885b, this.f33884a);
        } else {
            f.d("VMS_SDK_Observer", "mIdentifierIdClient is null");
        }
    }
}
