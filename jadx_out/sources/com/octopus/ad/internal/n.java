package com.octopus.ad.internal;

import android.content.Context;
import com.octopus.ad.internal.c.d;
import com.octopus.ad.internal.y;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    private String f34954a;

    /* renamed from: b, reason: collision with root package name */
    private String f34955b;

    /* renamed from: c, reason: collision with root package name */
    private String f34956c;

    /* renamed from: d, reason: collision with root package name */
    private long f34957d;

    /* renamed from: e, reason: collision with root package name */
    private String f34958e;

    /* renamed from: f, reason: collision with root package name */
    private y f34959f;

    /* renamed from: h, reason: collision with root package name */
    private Context f34961h;

    /* renamed from: j, reason: collision with root package name */
    private ArrayList<String> f34963j;

    /* renamed from: k, reason: collision with root package name */
    private d.a f34964k;

    /* renamed from: g, reason: collision with root package name */
    private boolean f34960g = false;

    /* renamed from: i, reason: collision with root package name */
    private a f34962i = new a();

    public class a implements y.a {

        /* renamed from: a, reason: collision with root package name */
        long f34966a;

        private a() {
            this.f34966a = 0L;
        }

        @Override // com.octopus.ad.internal.y.a
        public void a(boolean z2) {
            if (z2) {
                this.f34966a += 250;
            } else {
                this.f34966a = 0L;
            }
            if (this.f34966a >= 500) {
                if (n.this.f34959f != null) {
                    n.this.f34959f.a();
                }
                n.this.a();
            }
        }
    }

    private n(String str, String str2, String str3, long j2, String str4, y yVar, Context context, ArrayList<String> arrayList) {
        this.f34954a = str;
        this.f34955b = str2;
        this.f34956c = str3;
        this.f34957d = j2;
        this.f34958e = str4;
        this.f34959f = yVar;
        this.f34961h = context;
        this.f34963j = arrayList;
    }

    public static n a(String str, String str2, String str3, long j2, String str4, y yVar, Context context, ArrayList<String> arrayList) {
        if (yVar == null) {
            return null;
        }
        n nVar = new n(str, str2, str3, j2, str4, yVar, context, arrayList);
        yVar.a(nVar.f34962i);
        return nVar;
    }

    private void b() {
        u uVar = new u(this.f34954a, this.f34955b, this.f34956c, this.f34957d, this.f34958e, this.f34963j, true);
        uVar.a(new d.a() { // from class: com.octopus.ad.internal.n.1
            @Override // com.octopus.ad.internal.c.d.a
            public void a(int i2, boolean z2, String str) {
                if (n.this.f34964k != null) {
                    n.this.f34964k.a(i2, z2, str);
                }
            }
        });
        uVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a() {
        Context context;
        try {
            if (!this.f34960g && (context = this.f34961h) != null) {
                com.octopus.ad.internal.b.g gVarA = com.octopus.ad.internal.b.g.a(context.getApplicationContext());
                if (gVarA.b(this.f34961h)) {
                    b();
                    this.f34959f.b(this.f34962i);
                    this.f34962i = null;
                } else {
                    gVarA.a(this.f34958e, this.f34961h);
                }
                this.f34960g = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void a(d.a aVar) {
        this.f34964k = aVar;
    }
}
