package com.byazt.fu;

import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.byazt.ip.eb;
import com.byazt.xq.a;
import com.sigmob.sdk.downloader.core.c;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 677, 38})
/* loaded from: classes2.dex */
public class j {
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public long f20119j;
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    public final eb f20120l;

    /* renamed from: w, reason: collision with root package name */
    public long f20121w;

    public j(String str, eb ebVar) throws IOException {
        this.hp = str;
        this.jx = ebVar.l();
        this.f20120l = ebVar;
    }

    public String a() {
        String strL = a.l(this.f20120l, "last-modified");
        return TextUtils.isEmpty(strL) ? a.l(this.f20120l, "Last-Modified") : strL;
    }

    public long e() {
        if (this.f20121w <= 0) {
            if (q()) {
                this.f20121w = -1L;
            } else {
                String strW = w();
                if (!TextUtils.isEmpty(strW)) {
                    this.f20121w = a.l(strW);
                }
            }
        }
        return this.f20121w;
    }

    public String eb() {
        return a.l(this.f20120l, "Cache-Control");
    }

    public long gu() {
        return a.q(eb());
    }

    public boolean hp() {
        return a.jx(this.jx);
    }

    public String j() {
        return this.f20120l.hp(AbstractC1114b.f5589g);
    }

    public String jx() {
        return this.f20120l.hp(c.f37368g);
    }

    public boolean l() {
        return a.hp(this.jx, this.f20120l.hp(c.f37370i));
    }

    public boolean q() {
        return com.byazt.xq.hp.hp(8) ? a.jx(this.f20120l) : a.l(s());
    }

    public long s() {
        if (this.f20119j <= 0) {
            this.f20119j = a.hp(this.f20120l);
        }
        return this.f20119j;
    }

    public String w() {
        return a.l(this.f20120l, c.f37367f);
    }
}
