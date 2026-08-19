package com.byazt.t;

import android.content.Context;
import com.byazt.b.IDownloadButtonClickListener;
import com.byazt.b.OnItemClickListener;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.byazt.yy.DownloadStatusChangeListener;

/* loaded from: classes3.dex */
public interface eb {
    eb hp(long j2);

    eb hp(IDownloadButtonClickListener iDownloadButtonClickListener);

    eb hp(OnItemClickListener onItemClickListener);

    eb hp(String str);

    void hp();

    void hp(boolean z2);

    boolean hp(int i2);

    long j();

    eb l(int i2, DownloadStatusChangeListener downloadStatusChangeListener);

    eb l(Context context);

    eb l(DownloadController downloadController);

    eb l(DownloadEventConfig downloadEventConfig);

    eb l(DownloadModel downloadModel);

    void l(int i2);

    boolean l();

    void s();
}
