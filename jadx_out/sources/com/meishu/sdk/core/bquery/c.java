package com.meishu.sdk.core.bquery;

import java.io.File;

/* loaded from: classes4.dex */
public class c implements h<File> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f31516a;

    public c(e eVar, h hVar) {
        this.f31516a = hVar;
    }

    @Override // com.meishu.sdk.core.bquery.h
    public void a(String str, File file, boolean z2) {
        File file2 = file;
        h hVar = this.f31516a;
        if (hVar != null) {
            hVar.a(str, file2, z2);
        }
    }

    @Override // com.meishu.sdk.core.bquery.h
    public void onFail(int i2, String str) {
        h hVar = this.f31516a;
        if (hVar != null) {
            hVar.onFail(i2, str);
        }
    }
}
