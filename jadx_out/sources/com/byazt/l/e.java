package com.byazt.l;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import com.byazt.b.IDownloadButtonClickListener;
import com.byazt.b.OnItemClickListener;
import com.byazt.fu.DownloadInfo;
import com.byazt.t.jl;
import com.byazt.t.k;
import com.byazt.yk.Downloader;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.byazt.yy.DownloadStatusChangeListener;

@com.byazt.kj.hp(hp = {0, 1, 34, 45})
/* loaded from: classes3.dex */
public class e {
    public static volatile e hp;

    /* renamed from: a, reason: collision with root package name */
    public long f22315a;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.me.hp f22316j;
    public final s jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ec.hp f22317l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.me.l f22318w;

    /* JADX INFO: Access modifiers changed from: private */
    public s s() {
        return this.jx;
    }

    public String a() {
        return jl.k();
    }

    public void eb() {
        w.hp().a();
    }

    public com.byazt.me.hp j() {
        return this.f22316j;
    }

    public void jx() {
        this.f22315a = System.currentTimeMillis();
    }

    public com.byazt.me.l w() {
        if (this.f22318w == null) {
            this.f22318w = l.hp();
        }
        return this.f22318w;
    }

    private e(Context context) {
        this.jx = s.hp();
        this.f22317l = new a();
        this.f22315a = System.currentTimeMillis();
        l(context);
        this.f22316j = hp.hp();
    }

    public static e hp(final Context context) {
        if (hp == null) {
            synchronized (e.class) {
                try {
                    if (hp == null) {
                        com.byazt.u.l.hp(new Runnable() { // from class: com.byazt.l.e.1
                            @Override // java.lang.Runnable
                            public void run() {
                                e unused = e.hp = new e(context);
                            }
                        });
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void l(Context context) {
        jl.hp(context);
        Downloader.getInstance(jl.getContext());
        com.byazt.w.a.hp().l();
        com.byazt.ni.j.gu().hp(jl.getContext(), "misc_config", new com.byazt.n.eb(), new com.byazt.n.a(context), new jx());
        com.byazt.n.j jVar = new com.byazt.n.j();
        com.byazt.ni.j.gu().hp(jVar);
        Downloader.getInstance(context).registerDownloadCacheSyncListener(jVar);
        com.byazt.ni.j.gu().hp(new k());
        com.byazt.yk.jx.hp(new com.byazt.n.w());
        com.byazt.ni.j.gu().hp(com.byazt.a.jx.hp());
    }

    public com.byazt.ec.hp hp() {
        return this.f22317l;
    }

    public com.byazt.ec.hp hp(String str) {
        com.byazt.b.a aVarL = eb.hp().l();
        if (aVarL != null && aVarL.hp(str)) {
            return aVarL.l(str);
        }
        return this.f22317l;
    }

    public long l() {
        return this.f22315a;
    }

    @MainThread
    public void hp(final Context context, final int i2, final DownloadStatusChangeListener downloadStatusChangeListener, final DownloadModel downloadModel) {
        com.byazt.u.l.hp(new Runnable() { // from class: com.byazt.l.e.4
            @Override // java.lang.Runnable
            public void run() {
                e.this.s().hp(context, i2, downloadStatusChangeListener, downloadModel);
            }
        });
    }

    public DownloadInfo l(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return com.byazt.ni.j.gu().hp(jl.getContext(), str);
    }

    @MainThread
    public void hp(final String str, final long j2, final int i2, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final OnItemClickListener onItemClickListener, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        com.byazt.u.l.hp(new Runnable() { // from class: com.byazt.l.e.5
            @Override // java.lang.Runnable
            public void run() {
                e.this.s().hp(str, j2, i2, downloadEventConfig, downloadController, onItemClickListener, iDownloadButtonClickListener);
            }
        });
    }

    @MainThread
    public void hp(final String str, final long j2, final int i2, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController) {
        com.byazt.u.l.hp(new Runnable() { // from class: com.byazt.l.e.6
            @Override // java.lang.Runnable
            public void run() {
                e.this.s().hp(str, j2, i2, downloadEventConfig, downloadController);
            }
        });
    }

    @MainThread
    public void hp(final String str, final long j2, final int i2, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        com.byazt.u.l.hp(new Runnable() { // from class: com.byazt.l.e.7
            @Override // java.lang.Runnable
            public void run() {
                e.this.s().hp(str, j2, i2, downloadEventConfig, downloadController, iDownloadButtonClickListener);
            }
        });
    }

    @MainThread
    public void hp(final String str, final int i2) {
        com.byazt.u.l.hp(new Runnable() { // from class: com.byazt.l.e.2
            @Override // java.lang.Runnable
            public void run() {
                e.this.s().hp(str, i2);
            }
        });
    }

    @MainThread
    public void hp(final String str, final boolean z2) {
        com.byazt.u.l.hp(new Runnable() { // from class: com.byazt.l.e.3
            @Override // java.lang.Runnable
            public void run() {
                e.this.s().hp(str, z2);
            }
        });
    }

    public void hp(com.byazt.x.hp hpVar) {
        s().hp(hpVar);
    }

    public DownloadInfo hp(String str, String str2, boolean z2) {
        if (TextUtils.isEmpty(str2) && z2) {
            return l(str);
        }
        return Downloader.getInstance(jl.getContext()).getDownloadInfo(str, str2);
    }
}
