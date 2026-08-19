package com.smartdigimkt.k;

import android.graphics.Bitmap;
import android.text.TextUtils;
import java.io.File;

/* loaded from: classes5.dex */
public final class r {

    /* renamed from: A, reason: collision with root package name */
    public long f41171A;

    /* renamed from: B, reason: collision with root package name */
    public long f41172B;

    /* renamed from: C, reason: collision with root package name */
    public int f41173C;

    /* renamed from: F, reason: collision with root package name */
    public String f41176F;

    /* renamed from: G, reason: collision with root package name */
    public int f41177G;

    /* renamed from: a, reason: collision with root package name */
    public String f41178a;

    /* renamed from: b, reason: collision with root package name */
    public String f41179b;

    /* renamed from: c, reason: collision with root package name */
    public String f41180c;

    /* renamed from: d, reason: collision with root package name */
    public Bitmap f41181d;

    /* renamed from: e, reason: collision with root package name */
    public String f41182e;

    /* renamed from: f, reason: collision with root package name */
    public String f41183f;

    /* renamed from: g, reason: collision with root package name */
    public long f41184g;

    /* renamed from: h, reason: collision with root package name */
    public long f41185h;

    /* renamed from: i, reason: collision with root package name */
    public long f41186i;

    /* renamed from: j, reason: collision with root package name */
    public com.smartdigimkt.m3.c f41187j;

    /* renamed from: k, reason: collision with root package name */
    public com.smartdigimkt.l3.a f41188k;

    /* renamed from: l, reason: collision with root package name */
    public String f41189l;

    /* renamed from: m, reason: collision with root package name */
    public com.smartdigimkt.s3.b f41190m;

    /* renamed from: n, reason: collision with root package name */
    public String f41191n;

    /* renamed from: o, reason: collision with root package name */
    public String f41192o;

    /* renamed from: q, reason: collision with root package name */
    public int f41194q;

    /* renamed from: r, reason: collision with root package name */
    public int f41195r;

    /* renamed from: t, reason: collision with root package name */
    public String f41197t;

    /* renamed from: u, reason: collision with root package name */
    public String f41198u;

    /* renamed from: v, reason: collision with root package name */
    public String f41199v;

    /* renamed from: w, reason: collision with root package name */
    public String f41200w;

    /* renamed from: y, reason: collision with root package name */
    public int f41202y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f41203z;

    /* renamed from: p, reason: collision with root package name */
    public boolean f41193p = false;

    /* renamed from: s, reason: collision with root package name */
    public volatile c f41196s = c.IDLE;

    /* renamed from: x, reason: collision with root package name */
    public int f41201x = 2;

    /* renamed from: D, reason: collision with root package name */
    public int f41174D = 4;

    /* renamed from: E, reason: collision with root package name */
    public String f41175E = "";

    public final String a() {
        if (!TextUtils.isEmpty(this.f41200w)) {
            return this.f41200w;
        }
        String strA = com.smartdigimkt.n.c.a(this.f41192o);
        this.f41200w = strA;
        return strA;
    }

    public final boolean b() {
        if (this.f41203z) {
            return true;
        }
        if (TextUtils.isEmpty(a())) {
            return false;
        }
        try {
            return new File(com.smartdigimkt.n.c.a(1, this.f41200w)).exists();
        } catch (Throwable th) {
            th.getMessage();
            return false;
        }
    }

    public final String toString() {
        return "ApkRequest{requestId='" + this.f41178a + "', url='" + this.f41179b + "', title='" + this.f41180c + "', icon=" + this.f41181d + ", pkgName='" + this.f41182e + "', offerId='" + this.f41183f + "', progress=" + this.f41184g + ", apkSize=" + this.f41185h + ", downloadTime=" + this.f41186i + ", baseAdContent=" + this.f41187j + ", deeplinkUrl='" + this.f41189l + "', deeplinkClickAction=" + this.f41190m + ", clickId='" + this.f41191n + "', uniqueID='" + this.f41192o + "', useWebViewUa=" + this.f41193p + ", notificationType=" + this.f41194q + ", downloadType=" + this.f41195r + ", status=" + this.f41196s + ", apkFilePath='" + this.f41200w + "', partCount=" + this.f41201x + ", enablePartDownload=" + this.f41203z + ", downloadStartTimeStamp=" + this.f41171A + ", downloadFinishTimeStamp=" + this.f41172B + ", placementId=" + this.f41197t + ", adSourceId=" + this.f41198u + ", networkFirmId=" + this.f41199v + ", installScene=" + this.f41202y + ", downloadingScene=" + this.f41173C + ", recoverDownloadScene=" + this.f41174D + ", downloadFailedSceneList=" + this.f41175E + ", actionOfferDownloadTk=" + this.f41176F + ", isUploadInstalledAgentEvent=" + this.f41177G + '}';
    }

    public final void a(int i2) {
        String strValueOf = String.valueOf(i2);
        if (TextUtils.isEmpty(this.f41175E)) {
            this.f41175E = strValueOf;
            return;
        }
        if (this.f41175E.endsWith(strValueOf)) {
            return;
        }
        if (this.f41175E.contains(strValueOf + ",")) {
            this.f41175E = this.f41175E.replace(strValueOf + ",", "");
        }
        this.f41175E += "," + i2;
    }
}
