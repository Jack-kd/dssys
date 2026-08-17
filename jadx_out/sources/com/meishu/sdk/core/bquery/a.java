package com.meishu.sdk.core.bquery;

import com.meishu.sdk.core.safe.l;
import java.io.File;

/* loaded from: classes4.dex */
public class a extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f31512a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f31513b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ File f31514c;

    public a(e eVar, h hVar, String str, File file) {
        this.f31512a = hVar;
        this.f31513b = str;
        this.f31514c = file;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        h hVar = this.f31512a;
        if (hVar != null) {
            hVar.a(this.f31513b, this.f31514c, true);
        }
    }
}
