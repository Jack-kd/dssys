package com.byazt.yk;

import android.app.Notification;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.fn.IDownloadListener;
import com.byazt.fn.ky;
import com.byazt.fn.nu;
import com.byazt.fn.o;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import java.util.List;

/* loaded from: classes3.dex */
public interface zy {
    int a(int i2);

    void a();

    void e(int i2);

    boolean eb();

    boolean eb(int i2);

    IDownloadFileUriProvider ec(int i2);

    void gu(int i2);

    int hp(String str, String str2);

    List<DownloadInfo> hp(String str);

    void hp();

    void hp(int i2);

    void hp(int i2, int i3);

    void hp(int i2, int i3, int i4, int i5);

    void hp(int i2, int i3, int i4, long j2);

    void hp(int i2, int i3, long j2);

    void hp(int i2, int i3, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2);

    void hp(int i2, int i3, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2, boolean z3);

    void hp(int i2, long j2);

    void hp(int i2, Notification notification);

    void hp(int i2, o oVar);

    void hp(int i2, List<com.byazt.fu.l> list);

    void hp(int i2, boolean z2);

    void hp(ky kyVar);

    void hp(DownloadTask downloadTask);

    void hp(com.byazt.fu.l lVar);

    void hp(List<String> list);

    void hp(boolean z2, boolean z3);

    boolean hp(DownloadInfo downloadInfo);

    List<DownloadInfo> j();

    List<DownloadInfo> j(String str);

    void j(int i2);

    boolean jl(int i2);

    List<DownloadInfo> jx(String str);

    void jx(int i2);

    void jx(int i2, boolean z2);

    boolean jx();

    boolean jx(DownloadInfo downloadInfo);

    boolean k(int i2);

    DownloadInfo l(String str, String str2);

    List<DownloadInfo> l(String str);

    void l(int i2, int i3, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2);

    void l(int i2, List<com.byazt.fu.l> list);

    void l(int i2, boolean z2);

    void l(DownloadInfo downloadInfo);

    void l(DownloadTask downloadTask);

    void l(List<String> list);

    boolean l();

    boolean l(int i2);

    List<com.byazt.fu.l> q(int i2);

    DownloadInfo s(int i2);

    void startService();

    boolean u(int i2);

    void v(int i2);

    nu vv(int i2);

    long w(int i2);

    List<DownloadInfo> w(String str);

    boolean w();

    o xs(int i2);

    int zy(int i2);
}
