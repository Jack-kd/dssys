package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.xi;
import java.io.File;

/* loaded from: classes2.dex */
public class s5 {

    /* renamed from: a, reason: collision with root package name */
    private ua f16163a;

    /* renamed from: c, reason: collision with root package name */
    private fm f16165c;

    /* renamed from: d, reason: collision with root package name */
    private String f16166d;

    /* renamed from: e, reason: collision with root package name */
    private byte[] f16167e;

    /* renamed from: g, reason: collision with root package name */
    private File f16169g;

    /* renamed from: b, reason: collision with root package name */
    private final n5 f16164b = n5.a();

    /* renamed from: f, reason: collision with root package name */
    private boolean f16168f = true;

    public s5 a(byte[] bArr) {
        this.f16167e = bArr;
        return this;
    }

    public void b(String str) {
        this.f16165c = fm.GET;
        this.f16166d = str;
    }

    public void c(String str) {
        this.f16165c = fm.POST;
        this.f16166d = str;
    }

    public void d(String str) {
        this.f16165c = fm.STREAM;
        this.f16166d = str;
    }

    public s5 a(boolean z2) {
        this.f16168f = z2;
        return this;
    }

    public void a(String str, String str2) {
        this.f16164b.put(str, str2);
    }

    public void a(String str, File file) {
        this.f16165c = fm.DOWNLOAD;
        this.f16166d = str;
        this.f16169g = file;
    }

    public void a(String str) {
        this.f16165c = fm.CACHE_IMAGE;
        this.f16166d = str;
    }

    public s5 a(ua uaVar) {
        this.f16163a = uaVar;
        return this;
    }

    public void a(Context context) {
        hb hbVar = (hb) fn.a().b(context);
        sa saVarA = l9.a(new m9(this.f16166d, this.f16165c, this.f16167e, this.f16164b, this.f16168f), this.f16163a);
        if (saVarA != null) {
            if (saVarA instanceof jh) {
                ((jh) saVarA).a(this.f16169g);
            }
            hbVar.b(saVarA);
            return;
        }
        a(xi.a.ERROR_METHOD);
    }

    public sa a() {
        sa saVarA = l9.a(new m9(this.f16166d, this.f16165c, this.f16167e, this.f16164b, this.f16168f), this.f16163a);
        if (saVarA instanceof jh) {
            ((jh) saVarA).a(this.f16169g);
        }
        return saVarA;
    }

    private void a(pc pcVar) {
        ua uaVar = this.f16163a;
        if (uaVar != null) {
            uaVar.a(pcVar);
        }
    }
}
