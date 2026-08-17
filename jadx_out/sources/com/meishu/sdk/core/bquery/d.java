package com.meishu.sdk.core.bquery;

import java.io.File;

/* loaded from: classes4.dex */
public class d implements h<File> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f31517a;

    public d(e eVar, j jVar) {
        this.f31517a = jVar;
    }

    @Override // com.meishu.sdk.core.bquery.h
    public void a(String str, File file, boolean z2) {
        File file2 = file;
        j jVar = this.f31517a;
        if (jVar != null) {
            jVar.onSuccess(str, file2);
        }
    }

    @Override // com.meishu.sdk.core.bquery.h
    public void onFail(int i2, String str) {
        j jVar = this.f31517a;
        if (jVar != null) {
            jVar.onFail(i2, str);
        }
    }
}
