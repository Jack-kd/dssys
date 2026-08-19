package com.smartdigimkt.i;

import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;
import com.smartdigimkt.dlopt.activity.ApkConfirmDialogActivity;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f40596a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f40597b;

    public a(b bVar, boolean z2) {
        this.f40597b = bVar;
        this.f40596a = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b bVar = this.f40597b;
        ApkConfirmDialogActivity.f39914c = bVar.f40599b;
        ApkConfirmDialogActivity.f39915d = bVar.f40598a;
        Intent intent = new Intent(this.f40597b.f40600c, (Class<?>) ApkConfirmDialogActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("flag_apk_exists", this.f40596a);
        this.f40597b.f40600c.startActivity(intent);
    }
}
