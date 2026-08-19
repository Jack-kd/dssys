package com.qq.e.ads.nativ;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.C;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.pi.AdData;
import com.qq.e.comm.pi.LADI;
import com.qq.e.comm.pi.NFBI;

/* loaded from: classes4.dex */
public abstract class NativeExpressADView extends FrameLayout implements DownloadConfirmListener, LADI, NFBI {

    /* renamed from: a, reason: collision with root package name */
    private int f35231a;

    /* renamed from: b, reason: collision with root package name */
    private double f35232b;

    /* renamed from: c, reason: collision with root package name */
    private double f35233c;

    public interface ViewBindStatusListener {
        void onAttachedToWindow();

        void onDetachedFromWindow();

        void onFinishTemporaryDetach();

        void onStartTemporaryDetach();
    }

    public NativeExpressADView(Context context) {
        super(context);
        this.f35231a = -1;
        this.f35232b = -1.0d;
        this.f35233c = -1.0d;
    }

    public abstract void destroy();

    public abstract AdData getBoundData();

    public abstract void negativeFeedback();

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int iMin;
        int iMin2;
        if (this.f35231a <= 0 || this.f35232b <= 0.0d || this.f35233c <= 0.0d) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode == 1073741824 && mode2 == 1073741824) {
            if (size2 < this.f35231a || size < this.f35232b * size2) {
                double d2 = this.f35233c;
                double d3 = size2 * d2;
                double d4 = size;
                if (d3 < d4) {
                    iMin2 = (int) (d3 + 0.5d);
                    i2 = View.MeasureSpec.makeMeasureSpec(iMin2, C.ENCODING_PCM_32BIT);
                } else {
                    iMin = (int) ((d4 / d2) + 0.5d);
                    i3 = View.MeasureSpec.makeMeasureSpec(iMin, C.ENCODING_PCM_32BIT);
                }
            }
        } else if (mode2 == 1073741824) {
            iMin2 = Math.min((int) ((size2 * this.f35233c) + 0.5d), size);
            i2 = View.MeasureSpec.makeMeasureSpec(iMin2, C.ENCODING_PCM_32BIT);
        } else {
            iMin = Math.min((int) ((size / this.f35233c) + 0.5d), size2);
            i3 = View.MeasureSpec.makeMeasureSpec(iMin, C.ENCODING_PCM_32BIT);
        }
        View.MeasureSpec.getSize(i2);
        View.MeasureSpec.getSize(i3);
        super.onMeasure(i2, i3);
        if (mode != Integer.MIN_VALUE || size == getMeasuredWidth()) {
            return;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) ((getMeasuredWidth() / this.f35233c) + 0.5d), C.ENCODING_PCM_32BIT);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Integer.MIN_VALUE);
        View.MeasureSpec.getSize(iMakeMeasureSpec2);
        View.MeasureSpec.getSize(iMakeMeasureSpec);
        super.onMeasure(iMakeMeasureSpec2, iMakeMeasureSpec);
    }

    public abstract void preloadVideo();

    public abstract void render();

    @Deprecated
    public abstract void setAdSize(ADSize aDSize);

    public abstract void setMediaListener(NativeExpressMediaListener nativeExpressMediaListener);

    public void setSizeRules(int i2, double d2, double d3) {
        this.f35231a = i2;
        this.f35232b = d2;
        this.f35233c = d3;
    }

    public abstract void setViewBindStatusListener(ViewBindStatusListener viewBindStatusListener);
}
