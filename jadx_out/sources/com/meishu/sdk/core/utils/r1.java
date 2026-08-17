package com.meishu.sdk.core.utils;

import java.io.File;

/* loaded from: classes4.dex */
public class r1 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.core.bquery.h f31991a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f31992b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ File f31993c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f31994d;

    public r1(VideoLoadManager videoLoadManager, com.meishu.sdk.core.bquery.h hVar, String str, File file, boolean z2) {
        this.f31991a = hVar;
        this.f31992b = str;
        this.f31993c = file;
        this.f31994d = z2;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        this.f31991a.a(this.f31992b, this.f31993c, this.f31994d);
    }
}
