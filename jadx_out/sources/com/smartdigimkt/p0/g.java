package com.smartdigimkt.p0;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes5.dex */
public final class g implements e {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f42392a;

    /* renamed from: b, reason: collision with root package name */
    public final int f42393b;

    /* renamed from: c, reason: collision with root package name */
    public final int f42394c;

    /* renamed from: d, reason: collision with root package name */
    public int f42395d;

    /* renamed from: e, reason: collision with root package name */
    public int f42396e;

    public g(b bVar) {
        com.smartdigimkt.a1.l lVar = bVar.f42286P0;
        this.f42392a = lVar;
        lVar.c(12);
        this.f42394c = lVar.h() & 255;
        this.f42393b = lVar.h();
    }

    @Override // com.smartdigimkt.p0.e
    public final boolean a() {
        return false;
    }

    @Override // com.smartdigimkt.p0.e
    public final int b() {
        return this.f42393b;
    }

    @Override // com.smartdigimkt.p0.e
    public final int c() {
        int i2 = this.f42394c;
        if (i2 == 8) {
            return this.f42392a.e();
        }
        if (i2 == 16) {
            return this.f42392a.j();
        }
        int i3 = this.f42395d;
        this.f42395d = i3 + 1;
        if (i3 % 2 != 0) {
            return this.f42396e & 15;
        }
        int iE = this.f42392a.e();
        this.f42396e = iE;
        return (iE & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) >> 4;
    }
}
