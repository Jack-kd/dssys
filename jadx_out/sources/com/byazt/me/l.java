package com.byazt.me;

import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import com.byazt.b.IDownloadButtonClickListener;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.byazt.yy.DownloadStatusChangeListener;

/* loaded from: classes3.dex */
public interface l {
    Dialog hp(Context context, String str, boolean z2, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i2);

    Dialog hp(Context context, String str, boolean z2, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i2, IDownloadButtonClickListener iDownloadButtonClickListener);

    boolean hp(long j2);

    boolean hp(long j2, int i2);

    boolean hp(Context context, long j2, String str, DownloadStatusChangeListener downloadStatusChangeListener, int i2);

    boolean hp(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController);

    boolean hp(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener);
}
