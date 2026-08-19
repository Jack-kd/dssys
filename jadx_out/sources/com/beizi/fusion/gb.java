package com.beizi.fusion;

import android.content.Context;
import com.anythink.core.common.m.AbstractC1114b;

/* loaded from: classes2.dex */
public class gb {

    /* renamed from: a, reason: collision with root package name */
    protected final Context f14058a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f14059b;

    public gb(Context context, boolean z2) {
        this.f14058a = context;
        this.f14059b = z2;
    }

    public void a(String str, ua uaVar) {
        s5 s5VarA = a(fm.GET, str, uaVar);
        if (s5VarA != null) {
            s5VarA.a(this.f14058a);
        }
    }

    public void a(String str, String str2, ua uaVar) {
        s5 s5VarA = a(fm.POST, str, uaVar);
        if (s5VarA != null) {
            s5VarA.a(str2.getBytes()).a(this.f14058a);
        }
    }

    public void a(String str, byte[] bArr, ua uaVar) {
        s5 s5VarA = a(fm.STREAM, str, uaVar);
        if (s5VarA != null) {
            s5VarA.a(bArr).a(this.f14058a);
        }
    }

    public s5 a(fm fmVar, String str, ua uaVar) {
        s5 s5VarA = new s5().a(this.f14059b).a(uaVar);
        if (fm.POST == fmVar) {
            s5VarA.c(str);
        }
        if (fm.GET == fmVar) {
            s5VarA.b(str);
        }
        if (fm.STREAM == fmVar) {
            s5VarA.d(str);
            s5VarA.a(AbstractC1114b.f5589g, "application/octet-stream");
        }
        return s5VarA;
    }
}
