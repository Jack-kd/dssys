package com.smartdigimkt.s;

/* loaded from: classes5.dex */
public final class a implements com.smartdigimkt.q.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.q.a f43086a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f43087b;

    public a(b bVar, com.smartdigimkt.q.a aVar) {
        this.f43087b = bVar;
        this.f43086a = aVar;
    }

    @Override // com.smartdigimkt.q.a
    public final void a(String str, boolean z2) {
        String str2 = this.f43087b.f43088a;
        com.smartdigimkt.q.a aVar = this.f43086a;
        if (aVar != null) {
            aVar.a(str, z2);
        }
        com.smartdigimkt.y3.h.a(str, "");
    }

    @Override // com.smartdigimkt.q.a
    public final void a(String str) {
        String str2 = this.f43087b.f43088a;
        com.smartdigimkt.q.a aVar = this.f43086a;
        if (aVar != null) {
            aVar.a(str);
        }
        com.smartdigimkt.y3.h.a("", str);
    }
}
