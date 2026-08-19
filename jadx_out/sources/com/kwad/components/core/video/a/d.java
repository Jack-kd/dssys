package com.kwad.components.core.video.a;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.core.video.j;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;

/* loaded from: classes4.dex */
public final class d extends com.kwad.components.core.video.a.a {
    private String CC;
    private long anW;
    private long anX;
    private long anY;
    private String anZ;
    private boolean aoa;
    private boolean aob;
    private boolean aoc;
    private long aod;
    private long aoe;
    private long aof;
    private long aog;
    private int aoh;
    private boolean aoi;
    private AdTemplate mAdTemplate;
    private int mMediaPlayerType;
    private j yn;

    @KsJson
    public static class a extends com.kwad.sdk.commercial.c.a {
        public String aon;
        public int aoo;
        public long authorId;
        public int code;
        public long creativeId;
        public long llsid;
        public String msg;
        public String videoUrl;
    }

    @KsJson
    public static class b extends com.kwad.sdk.commercial.c.a implements Cloneable {
        public int adStyle;
        public int anU;
        public String aon;
        public int aoo;
        public long aop;
        public long aoq;
        public long aor;
        public long authorId;
        public long creativeId;
        public long llsid;
        public long videoDuration;
        public String videoUrl;

        /* renamed from: xY, reason: merged with bridge method [inline-methods] */
        public final b clone() {
            try {
                return (b) super.clone();
            } catch (CloneNotSupportedException unused) {
                return new b();
            }
        }
    }

    private d(@NonNull AdTemplate adTemplate, int i2, boolean z2) {
        this.aoa = false;
        this.aob = false;
        this.aoc = false;
        this.mMediaPlayerType = 0;
        this.aoi = false;
        try {
            AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
            this.mAdTemplate = adTemplate;
            this.CC = com.kwad.sdk.core.response.helper.a.M(adInfoEO);
            this.anW = com.kwad.sdk.core.response.helper.e.eL(adTemplate);
            this.anX = com.kwad.sdk.core.response.helper.e.eY(adTemplate);
            this.anY = com.kwad.sdk.core.response.helper.a.cw(adInfoEO);
            this.anZ = com.kwad.sdk.core.response.helper.a.cs(adInfoEO);
            this.aoh = com.kwad.sdk.core.response.helper.e.eI(adTemplate);
            this.mMediaPlayerType = i2;
            this.aoi = z2;
            this.yn = new j();
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
        }
    }

    private void b(boolean z2, int i2, int i3) {
        if (this.aoc) {
            this.yn.xR();
            this.aog = SystemClock.elapsedRealtime();
            a(z2, i2, i3);
            reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a r(int i2, int i3) {
        a aVar = new a();
        aVar.code = i2;
        aVar.msg = String.valueOf(i3);
        aVar.videoUrl = this.CC;
        aVar.llsid = this.anW;
        aVar.creativeId = this.anX;
        aVar.authorId = this.anY;
        aVar.aon = this.anZ;
        aVar.aoo = this.mMediaPlayerType;
        aVar.setAdTemplate(this.mAdTemplate);
        return aVar;
    }

    private void reset() {
        this.yn.reset();
        this.aod = 0L;
        this.aoe = 0L;
        this.aog = 0L;
        this.aof = 0L;
        this.aoa = false;
        this.aob = false;
        this.aoc = false;
    }

    private b xX() {
        b bVar = new b();
        long j2 = this.aoe;
        long j3 = this.aod;
        bVar.aop = j2 - j3;
        bVar.aoq = this.aof - j3;
        bVar.aor = this.yn.xT().xW();
        bVar.videoDuration = this.aog - this.aod;
        bVar.anU = this.yn.xT().xV();
        bVar.videoUrl = this.CC;
        bVar.llsid = this.anW;
        bVar.creativeId = this.anX;
        bVar.authorId = this.anY;
        bVar.aon = this.anZ;
        bVar.adStyle = this.aoh;
        bVar.aoo = this.mMediaPlayerType;
        bVar.setAdTemplate(this.mAdTemplate);
        return bVar;
    }

    @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
    public final void onMediaPlayError(int i2, int i3) {
        super.onMediaPlayError(i2, i3);
        this.yn.xR();
        b(false, i2, i3);
    }

    @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
    public final void onMediaPlayPaused() {
        super.onMediaPlayPaused();
        this.yn.xR();
    }

    @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
    public final void onMediaPlayStart() {
        super.onMediaPlayStart();
        if (this.aob) {
            return;
        }
        this.aoe = SystemClock.elapsedRealtime();
        this.aob = true;
    }

    @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
    public final void onMediaPlaying() {
        super.onMediaPlaying();
        qZ();
        this.yn.xR();
    }

    @Override // com.kwad.components.core.video.a.c
    public final void onRelease() {
        b(true, 0, 0);
    }

    @Override // com.kwad.components.core.video.a.c
    public final void onReset() {
        b(false, 0, 0);
    }

    @Override // com.kwad.components.core.video.a.c
    public final void onStart() {
        if (this.aoa) {
            return;
        }
        this.aod = SystemClock.elapsedRealtime();
        this.aoa = true;
    }

    @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.l
    public final void onVideoPlayBufferingPaused() {
        super.onVideoPlayBufferingPaused();
        this.yn.xQ();
    }

    @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.l
    public final void onVideoPlayBufferingPlaying() {
        super.onVideoPlayBufferingPlaying();
        this.yn.xQ();
    }

    @Override // com.kwad.components.core.video.a.a
    public final void qZ() {
        if (this.aoc) {
            return;
        }
        this.aof = SystemClock.elapsedRealtime();
        this.aoc = true;
    }

    private void a(final boolean z2, final int i2, final int i3) {
        final b bVarClone = xX().clone();
        i.execute(new bi() { // from class: com.kwad.components.core.video.a.d.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                if (z2) {
                    com.kwad.sdk.commercial.c.t(bVarClone);
                } else {
                    com.kwad.sdk.commercial.c.u(d.this.r(i2, i3));
                }
            }
        });
    }

    public static com.kwad.components.core.video.a.a a(@NonNull AdTemplate adTemplate, int i2, boolean z2) {
        return com.kwad.sdk.core.config.e.a(com.kwad.sdk.core.config.c.aPL) ? new d(adTemplate, i2, false) : new com.kwad.components.core.video.a.b();
    }

    public static com.kwad.components.core.video.a.a a(AdTemplate adTemplate, AdTemplate adTemplate2, String str, int i2, boolean z2) {
        if (!com.kwad.sdk.core.config.e.a(com.kwad.sdk.core.config.c.aPL)) {
            return new com.kwad.components.core.video.a.b();
        }
        if (adTemplate != null) {
            return new d(adTemplate, i2, z2);
        }
        if (adTemplate2 == null) {
            return new d(str, i2);
        }
        return new d(adTemplate2, i2, z2);
    }

    private d(String str, int i2) {
        this.aoa = false;
        this.aob = false;
        this.aoc = false;
        this.aoi = false;
        this.CC = str;
        this.mMediaPlayerType = i2;
        this.yn = new j();
    }
}
