package com.smartdigimkt.o0;

/* loaded from: classes5.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final l f42200a;

    /* renamed from: b, reason: collision with root package name */
    public final l f42201b;

    public i(l lVar, l lVar2) {
        this.f42200a = lVar;
        this.f42201b = lVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && i.class == obj.getClass()) {
            i iVar = (i) obj;
            if (this.f42200a.equals(iVar.f42200a) && this.f42201b.equals(iVar.f42201b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f42201b.hashCode() + (this.f42200a.hashCode() * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.f42200a);
        if (this.f42200a.equals(this.f42201b)) {
            str = "";
        } else {
            str = ", " + this.f42201b;
        }
        return com.smartdigimkt.f.i.a(sb, str, "]");
    }
}
