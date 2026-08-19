package com.byazt.ve;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.jz.d;
import com.byazt.v.DownloadShortInfo;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadModel;
import com.byazt.yy.DownloadStatusChangeListener;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;
import java.util.function.LongSupplier;

@com.byazt.kj.hp(hp = {0, 1, 1295, 34})
/* loaded from: classes3.dex */
public abstract class l extends com.byazt.hde.j implements DownloadStatusChangeListener, LongSupplier {
    public int mCurrentPercent;

    private void setCurrentPercent(int i2) {
        this.mCurrentPercent = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (pluginValueSet == null) {
            return null;
        }
        if (!com.byazt.kd.j.hp(d.f21856j)) {
            pluginValueSet = com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-99999979, SparseArray.class)).l();
        }
        switch (i2) {
            case 223600:
                onIdle();
                return null;
            case 223601:
                if (pluginValueSet != null) {
                    PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).l();
                    onDownloadStart((Function<SparseArray<Object>, Object>) pluginValueSetL.objectValue(223201, Function.class), (Function<SparseArray<Object>, Object>) pluginValueSetL.objectValue(223203, Function.class));
                }
                return null;
            case 223602:
                if (pluginValueSet != null) {
                    PluginValueSet pluginValueSetL2 = com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).l();
                    onDownloadActive((Function<SparseArray<Object>, Object>) pluginValueSetL2.objectValue(223607, Function.class), ((Integer) pluginValueSetL2.objectValue(223608, Integer.class)).intValue());
                }
                return null;
            case 223603:
                if (pluginValueSet != null) {
                    PluginValueSet pluginValueSetL3 = com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).l();
                    onDownloadPaused((Function<SparseArray<Object>, Object>) pluginValueSetL3.objectValue(223607, Function.class), ((Integer) pluginValueSetL3.objectValue(223608, Integer.class)).intValue());
                }
                return null;
            case 223604:
                if (pluginValueSet != null) {
                    onDownloadFailed((Function<SparseArray<Object>, Object>) com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).l().objectValue(223607, Function.class));
                }
                return null;
            case 223605:
                if (pluginValueSet != null) {
                    onInstalled((Function<SparseArray<Object>, Object>) com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).l().objectValue(223607, Function.class));
                }
                return null;
            case 223606:
                if (pluginValueSet != null) {
                    onDownloadFinished((Function<SparseArray<Object>, Object>) com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).l().objectValue(223607, Function.class));
                }
                return null;
            default:
                return null;
        }
    }

    @Override // java.util.function.LongSupplier
    public long getAsLong() {
        return -99999981L;
    }

    public int getCurrentPercent() {
        return this.mCurrentPercent;
    }

    public abstract void onDownloadActive(long j2, long j3, String str);

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onDownloadActive(DownloadShortInfo downloadShortInfo, int i2) {
        if (downloadShortInfo == null) {
            return;
        }
        setCurrentPercent(i2);
        onDownloadActive(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName);
    }

    public abstract void onDownloadFailed(long j2, long j3, String str);

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onDownloadFailed(DownloadShortInfo downloadShortInfo) {
        if (downloadShortInfo == null) {
            return;
        }
        onDownloadFailed(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName);
    }

    public abstract void onDownloadFinished(long j2, long j3, String str);

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onDownloadFinished(DownloadShortInfo downloadShortInfo) {
        if (downloadShortInfo == null) {
            return;
        }
        onDownloadFinished(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName);
    }

    public abstract void onDownloadPaused(long j2, long j3, String str);

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onDownloadPaused(DownloadShortInfo downloadShortInfo, int i2) {
        if (downloadShortInfo == null) {
            return;
        }
        setCurrentPercent(i2);
        onDownloadPaused(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName);
    }

    public abstract void onDownloadStart();

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onDownloadStart(DownloadModel downloadModel, DownloadController downloadController) {
        if (downloadModel == null) {
            return;
        }
        setCurrentPercent(0);
        onDownloadStart();
    }

    public abstract void onInstalled(long j2, long j3, String str);

    @Override // com.byazt.yy.DownloadStatusChangeListener
    public void onInstalled(DownloadShortInfo downloadShortInfo) {
        if (downloadShortInfo == null) {
            return;
        }
        setCurrentPercent(100);
        String str = downloadShortInfo.fileName;
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        onInstalled(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, str);
    }

    private void onDownloadFailed(Function<SparseArray<Object>, Object> function) {
        PluginValueSet pluginValueSetL;
        if (function == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) {
            return;
        }
        onDownloadFailed(pluginValueSetL.longValue(223704), pluginValueSetL.longValue(223705), pluginValueSetL.stringValue(223706));
    }

    private void onDownloadFinished(Function<SparseArray<Object>, Object> function) {
        PluginValueSet pluginValueSetL;
        if (function == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) {
            return;
        }
        onDownloadFinished(pluginValueSetL.longValue(223704), pluginValueSetL.longValue(223705), pluginValueSetL.stringValue(223706));
    }

    private void onDownloadActive(Function<SparseArray<Object>, Object> function, int i2) {
        PluginValueSet pluginValueSetL;
        if (function == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) {
            return;
        }
        onDownloadActive(pluginValueSetL.longValue(223704), pluginValueSetL.longValue(223705), pluginValueSetL.stringValue(223706));
    }

    private void onDownloadPaused(Function<SparseArray<Object>, Object> function, int i2) {
        PluginValueSet pluginValueSetL;
        if (function == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) {
            return;
        }
        onDownloadPaused(pluginValueSetL.longValue(223704), pluginValueSetL.longValue(223705), pluginValueSetL.stringValue(223706));
    }

    private void onDownloadStart(Function<SparseArray<Object>, Object> function, Function<SparseArray<Object>, Object> function2) {
        if (function == null || com.byazt.wi.jx.l(function) == null) {
            return;
        }
        onDownloadStart();
    }

    private void onInstalled(Function<SparseArray<Object>, Object> function) {
        PluginValueSet pluginValueSetL;
        if (function == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) {
            return;
        }
        long jLongValue = pluginValueSetL.longValue(223704);
        long jLongValue2 = pluginValueSetL.longValue(223705);
        String strStringValue = pluginValueSetL.stringValue(223706);
        if (strStringValue == null) {
            strStringValue = "";
        }
        onInstalled(jLongValue, jLongValue2, strStringValue);
    }
}
