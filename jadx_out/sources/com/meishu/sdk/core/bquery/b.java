package com.meishu.sdk.core.bquery;

import android.media.MediaPlayer;
import com.meishu.sdk.meishu_ad.view.player.c;

/* loaded from: classes4.dex */
public class b implements c.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f31515a;

    public b(e eVar, h hVar) {
        this.f31515a = hVar;
    }

    public void a(String str, MediaPlayer mediaPlayer) {
        h hVar = this.f31515a;
        if (hVar != null) {
            hVar.a(str, mediaPlayer, false);
        }
    }

    public void a() {
        h hVar = this.f31515a;
        if (hVar != null) {
            hVar.onFail(0, "mediaPlayer loadVideo error");
        }
    }
}
