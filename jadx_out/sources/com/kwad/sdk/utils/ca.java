package com.kwad.sdk.utils;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;

/* loaded from: classes4.dex */
public final class ca {
    private View brz;
    public Point bry = new Point();
    public Rect brw = new Rect();
    public Rect brx = new Rect();

    public ca(View view) {
        this.brz = view;
    }

    public final boolean Xh() {
        boolean globalVisibleRect = this.brz.getGlobalVisibleRect(this.brw, this.bry);
        Point point = this.bry;
        if (point.x == 0 && point.y == 0 && this.brw.height() == this.brz.getHeight() && this.brx.height() != 0 && Math.abs(this.brw.top - this.brx.top) > this.brz.getHeight() / 2) {
            this.brw.set(this.brx);
        }
        this.brx.set(this.brw);
        return globalVisibleRect;
    }
}
