package com.kwad.sdk.utils;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.sigmob.sdk.base.models.SigMacroCommon;

/* loaded from: classes4.dex */
public final class al {
    @WorkerThread
    public static String a(String str, a aVar) {
        return (TextUtils.isEmpty(str) || aVar == null) ? str : str.replace("__WIDTH__", fX(aVar.getWidth())).replace("__HEIGHT__", fX(aVar.getHeight())).replace("__DOWN_X__", fX(aVar.VE())).replace("__DOWN_Y__", fX(aVar.VF())).replace("__UP_X__", fX(aVar.VG())).replace("__UP_Y__", fX(aVar.VH()));
    }

    public static String av(Context context, String str) {
        return TextUtils.isEmpty(str) ? str : str.replace("__SCREEN_WIDTH__", String.valueOf(n.getScreenWidth(context))).replace("__SCREEN_HEIGHT__", String.valueOf(n.getScreenHeight(context))).replace("__DEVICE_WIDTH__", String.valueOf(n.dd(context))).replace("__DEVICE_HEIGHT__", String.valueOf(n.de(context)));
    }

    public static String d(@Nullable Context context, String str, boolean z2) {
        return str.replace("__TS__", String.valueOf(bv.C(context, z2)));
    }

    private static String fX(int i2) {
        return i2 >= 0 ? String.valueOf(i2) : SigMacroCommon.DEFAULT_XY;
    }

    public static class a {
        private int bpw;
        private int bpx;
        private int bpy;
        private int bpz;
        private int mHeight;
        private int mWidth;

        public a() {
            this.mWidth = -1;
            this.mHeight = -1;
            this.bpw = -1;
            this.bpx = -1;
            this.bpy = -1;
            this.bpz = -1;
        }

        public final void H(int i2, int i3) {
            this.mWidth = i2;
            this.mHeight = i3;
        }

        public final int VE() {
            return this.bpw;
        }

        public final int VF() {
            return this.bpx;
        }

        public final int VG() {
            return this.bpy;
        }

        public final int VH() {
            return this.bpz;
        }

        public final int getHeight() {
            return this.mHeight;
        }

        public final int getWidth() {
            return this.mWidth;
        }

        public final void j(float f2, float f3) {
            this.bpw = (int) f2;
            this.bpx = (int) f3;
        }

        public final void k(float f2, float f3) {
            this.bpy = (int) f2;
            this.bpz = (int) f3;
        }

        public final String toString() {
            return "TouchCoords{mWidth=" + this.mWidth + ", mHeight=" + this.mHeight + ", mDownX=" + this.bpw + ", mDownY=" + this.bpx + ", mUpX=" + this.bpy + ", mUpY=" + this.bpz + '}';
        }

        public a(int i2, int i3) {
            this.bpw = -1;
            this.bpx = -1;
            this.bpy = -1;
            this.bpz = -1;
            this.mWidth = i2;
            this.mHeight = i3;
        }
    }
}
