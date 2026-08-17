package com.byazt.otv;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import io.flutter.embedding.android.KeyboardMap;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

@com.byazt.kj.hp(hp = {0, 1, 2145, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements Serializable, Comparable<w> {
    public final long hp;

    /* renamed from: l, reason: collision with root package name */
    public DateFormat f24187l;

    public w(long j2) {
        this.hp = j2;
    }

    public static w j() {
        return l(System.currentTimeMillis());
    }

    public boolean equals(Object obj) {
        return (obj instanceof w) && this.hp == ((w) obj).hp();
    }

    public int hashCode() {
        long j2 = this.hp;
        return (int) (j2 ^ (j2 >>> 32));
    }

    public long hp() {
        return this.hp;
    }

    public Date jx() {
        return new Date(hp(this.hp));
    }

    public long l() {
        return hp(this.hp);
    }

    public String toString() {
        return j(this.hp);
    }

    public String w() {
        if (this.f24187l == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, MMM dd yyyy HH:mm:ss.SSS", Locale.US);
            this.f24187l = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
        }
        return this.f24187l.format(jx());
    }

    public static long hp(long j2) {
        long j3 = j2 >>> 32;
        return ((j3 & KeyboardMap.kValueMask) * 1000) + ((j3 & 2147483648L) == 0 ? 2085978496000L : -2208988800000L) + Math.round(((j2 & KeyboardMap.kValueMask) * 1000.0d) / 4.294967296E9d);
    }

    public static String j(long j2) {
        StringBuilder sb = new StringBuilder();
        hp(sb, (j2 >>> 32) & KeyboardMap.kValueMask);
        sb.append('.');
        hp(sb, j2 & KeyboardMap.kValueMask);
        return sb.toString();
    }

    public static w l(long j2) {
        return new w(jx(j2));
    }

    private static void hp(StringBuilder sb, long j2) {
        String hexString = Long.toHexString(j2);
        for (int length = hexString.length(); length < 8; length++) {
            sb.append('0');
        }
        sb.append(hexString);
    }

    public static long jx(long j2) {
        boolean z2 = j2 < 2085978496000L;
        long j3 = j2 - (z2 ? -2208988800000L : 2085978496000L);
        long j4 = j3 / 1000;
        long j5 = ((j3 % 1000) * 4294967296L) / 1000;
        if (z2) {
            j4 |= 2147483648L;
        }
        return j5 | (j4 << 32);
    }

    @Override // java.lang.Comparable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compareTo(w wVar) {
        long j2 = this.hp;
        long j3 = wVar.hp;
        if (j2 < j3) {
            return -1;
        }
        return j2 == j3 ? 0 : 1;
    }
}
