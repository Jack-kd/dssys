package com.meishu.sdk.meishu_ad.view.player;

import android.media.MediaPlayer;
import com.meishu.sdk.core.safe.f;
import com.meishu.sdk.core.safe.h;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.meishu_ad.view.player.c;

/* loaded from: classes4.dex */
public class a extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f32716a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f32717b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f32718c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ c.a f32719d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f32720e;

    /* renamed from: com.meishu.sdk.meishu_ad.view.player.a$a, reason: collision with other inner class name */
    public class C0685a extends h {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean[] f32721a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.view.player.e[] f32722b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MediaPlayer f32723c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int[] f32724d;

        /* renamed from: com.meishu.sdk.meishu_ad.view.player.a$a$a, reason: collision with other inner class name */
        public class C0686a extends l {
            public C0686a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                StringBuilder sbA = com.meishu.sdk.activity.a.a("cache video success:");
                sbA.append(System.currentTimeMillis() - a.this.f32718c);
                LogUtil.d("CacheMediaPlayerHelper", sbA.toString());
                C0685a c0685a = C0685a.this;
                a aVar = a.this;
                ((com.meishu.sdk.core.bquery.b) aVar.f32719d).a(aVar.f32720e, c0685a.f32723c);
            }
        }

        public C0685a(boolean[] zArr, com.meishu.sdk.meishu_ad.view.player.e[] eVarArr, MediaPlayer mediaPlayer, int[] iArr) {
            this.f32721a = zArr;
            this.f32722b = eVarArr;
            this.f32723c = mediaPlayer;
            this.f32724d = iArr;
        }

        @Override // com.meishu.sdk.core.safe.h
        public void a(MediaPlayer mediaPlayer) {
            LogUtil.d("CacheMediaPlayerHelper", "onPrepared");
            this.f32721a[0] = true;
            try {
                a aVar = a.this;
                int i2 = aVar.f32716a;
                if (i2 > 0 && i2 > aVar.f32717b && this.f32722b[0] != null) {
                    int duration = this.f32723c.getDuration();
                    long size = this.f32722b[0].getSize();
                    if (duration > 0 && size > 0) {
                        long j2 = (long) ((a.this.f32716a / duration) * size);
                        com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.b bVar = this.f32722b[0].f32743a.f32753j;
                        if (bVar != null) {
                            bVar.a(j2);
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            boolean[] zArr = this.f32721a;
            if (zArr[1] || !com.meishu.sdk.meishu_ad.view.player.c.a(zArr[0], mediaPlayer, this.f32724d[0], a.this.f32717b)) {
                return;
            }
            this.f32721a[1] = true;
            SdkHandler.runOnMainThread(new C0686a());
        }
    }

    public class b extends com.meishu.sdk.core.safe.d {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int[] f32727a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean[] f32728b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MediaPlayer f32729c;

        /* renamed from: com.meishu.sdk.meishu_ad.view.player.a$b$a, reason: collision with other inner class name */
        public class C0687a extends l {
            public C0687a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                StringBuilder sbA = com.meishu.sdk.activity.a.a("cache video success :");
                sbA.append(System.currentTimeMillis() - a.this.f32718c);
                LogUtil.d("CacheMediaPlayerHelper", sbA.toString());
                b bVar = b.this;
                a aVar = a.this;
                ((com.meishu.sdk.core.bquery.b) aVar.f32719d).a(aVar.f32720e, bVar.f32729c);
            }
        }

        public b(int[] iArr, boolean[] zArr, MediaPlayer mediaPlayer) {
            this.f32727a = iArr;
            this.f32728b = zArr;
            this.f32729c = mediaPlayer;
        }

        @Override // com.meishu.sdk.core.safe.d
        public void a(MediaPlayer mediaPlayer, int i2) {
            this.f32727a[0] = i2;
            boolean[] zArr = this.f32728b;
            if (zArr[1] || !com.meishu.sdk.meishu_ad.view.player.c.a(zArr[0], mediaPlayer, i2, a.this.f32717b)) {
                return;
            }
            this.f32728b[1] = true;
            SdkHandler.runOnMainThread(new C0687a());
        }
    }

    public class c extends f {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean[] f32732a;

        /* renamed from: com.meishu.sdk.meishu_ad.view.player.a$c$a, reason: collision with other inner class name */
        public class C0688a extends l {
            public C0688a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                ((com.meishu.sdk.core.bquery.b) a.this.f32719d).a();
            }
        }

        public c(boolean[] zArr) {
            this.f32732a = zArr;
        }

        @Override // com.meishu.sdk.core.safe.f
        public boolean a(MediaPlayer mediaPlayer, int i2, int i3) {
            LogUtil.d("CacheMediaPlayerHelper", "onError: what:" + i2 + "  extra:" + i3);
            boolean[] zArr = this.f32732a;
            if (zArr[1]) {
                return false;
            }
            zArr[1] = true;
            SdkHandler.runOnMainThread(new C0688a());
            return false;
        }
    }

    public class d implements com.meishu.sdk.meishu_ad.view.player.media.datasouce.c {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int[] f32735a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean[] f32736b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MediaPlayer f32737c;

        /* renamed from: com.meishu.sdk.meishu_ad.view.player.a$d$a, reason: collision with other inner class name */
        public class C0689a extends l {
            public C0689a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                StringBuilder sbA = com.meishu.sdk.activity.a.a("cache video success  :");
                sbA.append(System.currentTimeMillis() - a.this.f32718c);
                LogUtil.d("CacheMediaPlayerHelper", sbA.toString());
                d dVar = d.this;
                a aVar = a.this;
                ((com.meishu.sdk.core.bquery.b) aVar.f32719d).a(aVar.f32720e, dVar.f32737c);
            }
        }

        public d(int[] iArr, boolean[] zArr, MediaPlayer mediaPlayer) {
            this.f32735a = iArr;
            this.f32736b = zArr;
            this.f32737c = mediaPlayer;
        }

        public void a(int i2) {
            this.f32735a[0] = i2;
            boolean[] zArr = this.f32736b;
            if (zArr[1] || !com.meishu.sdk.meishu_ad.view.player.c.a(zArr[0], this.f32737c, i2, a.this.f32717b)) {
                return;
            }
            this.f32736b[1] = true;
            SdkHandler.runOnMainThread(new C0689a());
        }
    }

    public class e extends l {
        public e() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            ((com.meishu.sdk.core.bquery.b) a.this.f32719d).a();
        }
    }

    public a(int i2, int i3, long j2, c.a aVar, String str) {
        this.f32716a = i2;
        this.f32717b = i3;
        this.f32718c = j2;
        this.f32719d = aVar;
        this.f32720e = str;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            boolean[] zArr = new boolean[2];
            int[] iArr = new int[1];
            com.meishu.sdk.meishu_ad.view.player.e[] eVarArr = new com.meishu.sdk.meishu_ad.view.player.e[1];
            MediaPlayer mediaPlayer = new MediaPlayer();
            mediaPlayer.setAudioStreamType(3);
            try {
                mediaPlayer.setOnPreparedListener(new C0685a(zArr, eVarArr, mediaPlayer, iArr));
                mediaPlayer.setOnBufferingUpdateListener(new b(iArr, zArr, mediaPlayer));
                mediaPlayer.setOnErrorListener(new c(zArr));
                com.meishu.sdk.meishu_ad.view.player.e eVar = new com.meishu.sdk.meishu_ad.view.player.e(this.f32720e, new d(iArr, zArr, mediaPlayer));
                eVarArr[0] = eVar;
                mediaPlayer.setDataSource(eVar);
                mediaPlayer.prepareAsync();
            } catch (Throwable th) {
                th = th;
                th.printStackTrace();
                SdkHandler.runOnMainThread(new e());
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
