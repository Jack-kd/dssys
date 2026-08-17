package kotlin.time;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.sdk.core.response.model.SdkConfigData;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public final class h {

    /* renamed from: h, reason: collision with root package name */
    public static final a f51501h = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final int f51502a;

    /* renamed from: b, reason: collision with root package name */
    public final int f51503b;

    /* renamed from: c, reason: collision with root package name */
    public final int f51504c;

    /* renamed from: d, reason: collision with root package name */
    public final int f51505d;

    /* renamed from: e, reason: collision with root package name */
    public final int f51506e;

    /* renamed from: f, reason: collision with root package name */
    public final int f51507f;

    /* renamed from: g, reason: collision with root package name */
    public final int f51508g;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.f fVar) {
            this();
        }

        public final h a(Instant instant) {
            long j2;
            long j3;
            j.e(instant, "instant");
            long epochSeconds = instant.getEpochSeconds();
            long j4 = epochSeconds / 86400;
            if ((epochSeconds ^ 86400) < 0 && j4 * 86400 != epochSeconds) {
                j4--;
            }
            long j5 = epochSeconds % 86400;
            int i2 = (int) (j5 + (86400 & (((j5 ^ 86400) & ((-j5) | j5)) >> 63)));
            long j6 = (j4 + 719528) - 60;
            if (j6 < 0) {
                j2 = -1;
                long j7 = 146097;
                long j8 = ((j6 + 1) / j7) - 1;
                j3 = MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL * j8;
                j6 += (-j8) * j7;
            } else {
                j2 = -1;
                j3 = 0;
            }
            long j9 = MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL;
            long j10 = ((j9 * j6) + 591) / 146097;
            long j11 = MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME;
            long j12 = 4;
            long j13 = 100;
            long j14 = j6 - ((((j11 * j10) + (j10 / j12)) - (j10 / j13)) + (j10 / j9));
            if (j14 < 0) {
                j10 += j2;
                j14 = j6 - ((((j11 * j10) + (j10 / j12)) - (j10 / j13)) + (j10 / j9));
            }
            long j15 = j10 + j3;
            int i3 = (int) j14;
            int i4 = ((i3 * 5) + 2) / MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT;
            int i5 = ((i4 + 2) % 12) + 1;
            int i6 = (i3 - (((i4 * 306) + 5) / 10)) + 1;
            int i7 = (int) (j15 + (i4 / 10));
            int i8 = i2 / SdkConfigData.DEFAULT_REQUEST_INTERVAL;
            int i9 = i2 - (i8 * SdkConfigData.DEFAULT_REQUEST_INTERVAL);
            int i10 = i9 / 60;
            return new h(i7, i5, i6, i8, i10, i9 - (i10 * 60), instant.getNanosecondsOfSecond());
        }

        public a() {
        }
    }

    public h(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f51502a = i2;
        this.f51503b = i3;
        this.f51504c = i4;
        this.f51505d = i5;
        this.f51506e = i6;
        this.f51507f = i7;
        this.f51508g = i8;
    }

    public final int a() {
        return this.f51504c;
    }

    public final int b() {
        return this.f51505d;
    }

    public final int c() {
        return this.f51506e;
    }

    public final int d() {
        return this.f51503b;
    }

    public final int e() {
        return this.f51508g;
    }

    public final int f() {
        return this.f51507f;
    }

    public final int g() {
        return this.f51502a;
    }

    public String toString() {
        return "UnboundLocalDateTime(" + this.f51502a + '-' + this.f51503b + '-' + this.f51504c + ' ' + this.f51505d + ':' + this.f51506e + ':' + this.f51507f + '.' + this.f51508g + ')';
    }
}
