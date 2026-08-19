package io.flutter.embedding.android;

import android.view.View;

/* loaded from: classes5.dex */
class FlutterMeasureSpec {

    public interface MeasureCallback {
        void onMeasure(int i2, int i3);
    }

    public static void onMeasure(int i2, int i3, MeasureCallback measureCallback) {
        int mode = View.MeasureSpec.getMode(i2);
        measureCallback.onMeasure(Math.max(View.MeasureSpec.getSize(i2), mode == 0 ? 1 : 0), Math.max(View.MeasureSpec.getSize(i3), View.MeasureSpec.getMode(i3) == 0 ? 1 : 0));
    }
}
