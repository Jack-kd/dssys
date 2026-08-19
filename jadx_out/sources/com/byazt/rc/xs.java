package com.byazt.rc;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.anythink.core.common.d.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes3.dex */
public class xs {

    /* renamed from: a, reason: collision with root package name */
    public int f25164a;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicLong f25165e;
    public boolean eb;
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f25166j;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f25167l;

    /* renamed from: q, reason: collision with root package name */
    public String f25168q;

    /* renamed from: s, reason: collision with root package name */
    public int f25169s;

    /* renamed from: w, reason: collision with root package name */
    public final List<zy> f25170w;

    public xs(String str, boolean z2) {
        this.f25170w = new ArrayList();
        this.f25165e = new AtomicLong();
        this.hp = str;
        this.f25166j = z2;
        this.f25167l = null;
        this.jx = null;
    }

    private String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            int iLastIndexOf = str.lastIndexOf(i.f2495E);
            if (iLastIndexOf <= 0 || iLastIndexOf >= str.length()) {
                return null;
            }
            return str.substring(0, iLastIndexOf);
        } catch (Throwable unused) {
            return null;
        }
    }

    private String w() {
        if (this.f25168q == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.hp);
            sb.append("_");
            String str = this.f25167l;
            if (str == null) {
                str = "";
            }
            sb.append(str);
            sb.append("_");
            sb.append(this.f25166j);
            this.f25168q = sb.toString();
        }
        return this.f25168q;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof xs) {
            return w().equals(((xs) obj).w());
        }
        return false;
    }

    public int hashCode() {
        if (this.f25169s == 0) {
            this.f25169s = w().hashCode();
        }
        return this.f25169s;
    }

    public synchronized boolean j() {
        return this.eb;
    }

    public synchronized void jx() {
        this.eb = false;
    }

    public synchronized void l(zy zyVar) {
        try {
            this.f25170w.remove(zyVar);
        } catch (Throwable unused) {
        }
    }

    public String toString() {
        return "UrlRecord{url='" + this.hp + "', ip='" + this.f25167l + "', ipFamily='" + this.jx + "', isMainUrl=" + this.f25166j + ", failedTimes=" + this.f25164a + ", isCurrentFailed=" + this.eb + '}';
    }

    public synchronized void l() {
        this.f25164a++;
        this.eb = true;
    }

    public synchronized void hp(zy zyVar) {
        this.f25170w.add(zyVar);
    }

    public synchronized int hp() {
        return this.f25170w.size();
    }

    public xs(String str, String str2) {
        this.f25170w = new ArrayList();
        this.f25165e = new AtomicLong();
        this.hp = str;
        this.f25166j = false;
        this.f25167l = str2;
        this.jx = hp(str2);
    }

    public void hp(long j2) {
        this.f25165e.addAndGet(j2);
    }
}
