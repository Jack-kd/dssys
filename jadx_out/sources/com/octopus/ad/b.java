package com.octopus.ad;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes4.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final b f33703a = new b(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 50, "320x50_mb");

    /* renamed from: b, reason: collision with root package name */
    public static final b f33704b = new b(468, 60, "468x60_as");

    /* renamed from: c, reason: collision with root package name */
    public static final b f33705c = new b(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 100, "320x100_as");

    /* renamed from: d, reason: collision with root package name */
    public static final b f33706d = new b(728, 90, "728x90_as");

    /* renamed from: e, reason: collision with root package name */
    public static final b f33707e = new b(300, 250, "300x250_as");

    /* renamed from: f, reason: collision with root package name */
    public static final b f33708f = new b(160, 600, "160x600_as");

    /* renamed from: g, reason: collision with root package name */
    public static final b f33709g = new b(-1, -2, "smart_banner");

    /* renamed from: h, reason: collision with root package name */
    public static final b f33710h = new b(-3, -4, "fluid");

    /* renamed from: i, reason: collision with root package name */
    public static final b f33711i = new b(-3, 0, "search_v2");

    /* renamed from: j, reason: collision with root package name */
    private final int f33712j;

    /* renamed from: k, reason: collision with root package name */
    private final int f33713k;

    /* renamed from: l, reason: collision with root package name */
    private final String f33714l;

    public b(int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        sb.append(i2 == -1 ? "FULL" : String.valueOf(i2));
        sb.append("x");
        sb.append(i3 == -2 ? "AUTO" : String.valueOf(i3));
        sb.append("_as");
        this(i2, i3, sb.toString());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f33712j == bVar.f33712j && this.f33713k == bVar.f33713k && this.f33714l.equals(bVar.f33714l);
    }

    public int hashCode() {
        return this.f33714l.hashCode();
    }

    public String toString() {
        return this.f33714l;
    }

    private b(int i2, int i3, String str) {
        if (i2 < 0 && i2 != -1 && i2 != -3) {
            throw new IllegalArgumentException("Invalid width for AdSize: " + i2);
        }
        if (i3 >= 0 || i3 == -2 || i3 == -4) {
            this.f33712j = i2;
            this.f33713k = i3;
            this.f33714l = str;
        } else {
            throw new IllegalArgumentException("Invalid height for AdSize: " + i3);
        }
    }
}
