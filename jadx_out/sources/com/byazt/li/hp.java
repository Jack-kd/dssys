package com.byazt.li;

import android.app.Notification;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_URL_CODE, 28})
/* loaded from: classes3.dex */
public abstract class hp {

    /* renamed from: a, reason: collision with root package name */
    public int f22610a = 0;
    public long eb;
    public Notification hp;

    /* renamed from: j, reason: collision with root package name */
    public long f22611j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public int f22612l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f22613q;

    /* renamed from: s, reason: collision with root package name */
    public int f22614s;

    /* renamed from: w, reason: collision with root package name */
    public String f22615w;

    public hp(int i2, String str) {
        this.f22612l = i2;
        this.f22615w = str;
    }

    public long a() {
        if (this.eb == 0) {
            this.eb = System.currentTimeMillis();
        }
        return this.eb;
    }

    public synchronized void eb() {
        this.f22614s++;
    }

    public void hp(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        this.f22612l = downloadInfo.getId();
        this.f22615w = downloadInfo.getTitle();
    }

    public abstract void hp(BaseException baseException, boolean z2);

    public String j() {
        return this.f22615w;
    }

    public long jx() {
        return this.f22611j;
    }

    public long l() {
        return this.jx;
    }

    public boolean s() {
        return this.f22613q;
    }

    public int w() {
        return this.f22610a;
    }

    public void l(long j2) {
        this.f22611j = j2;
    }

    public int hp() {
        return this.f22612l;
    }

    public void hp(long j2) {
        this.jx = j2;
    }

    public void hp(int i2, BaseException baseException, boolean z2) {
        hp(i2, baseException, z2, false);
    }

    public void hp(int i2, BaseException baseException, boolean z2, boolean z3) {
        if (z3 || this.f22610a != i2) {
            this.f22610a = i2;
            hp(baseException, z2);
        }
    }

    public void hp(long j2, long j3) {
        this.jx = j2;
        this.f22611j = j3;
        this.f22610a = 4;
        hp((BaseException) null, false);
    }

    public void hp(Notification notification) {
        if (this.f22612l == 0 || notification == null) {
            return;
        }
        l.hp().hp(this.f22612l, this.f22610a, notification);
    }
}
