package com.smartdigimkt.d1;

import android.content.Context;
import android.media.AudioManager;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.smartdigimkt.q1.v;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Context f39876a;

    /* renamed from: b, reason: collision with root package name */
    public final AudioManager f39877b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f39878c = false;

    /* renamed from: d, reason: collision with root package name */
    public v f39879d;

    /* renamed from: e, reason: collision with root package name */
    public c f39880e;

    public d(Context context) {
        this.f39876a = context;
        this.f39877b = (AudioManager) context.getApplicationContext().getSystemService(MediaFormat.KEY_AUDIO);
    }
}
