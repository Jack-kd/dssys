package com.baidu.mobads.sdk.api;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public class XNativeViewManager {
    private static XNativeViewManager sInstance;
    private final ArrayList<XNativeView> mViewList = new ArrayList<>();

    private XNativeViewManager() {
    }

    public static XNativeViewManager getInstance() {
        if (sInstance == null) {
            synchronized (XNativeViewManager.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new XNativeViewManager();
                    }
                } finally {
                }
            }
        }
        return sInstance;
    }

    public void addItem(XNativeView xNativeView) {
        this.mViewList.add(xNativeView);
    }

    public void removeNativeView(XNativeView xNativeView) {
        if (this.mViewList.size() == 0) {
            return;
        }
        this.mViewList.remove(xNativeView);
    }

    public void resetAllPlayer(XNativeView xNativeView) {
        if (this.mViewList.size() == 0) {
            return;
        }
        ArrayList<XNativeView> arrayList = this.mViewList;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            XNativeView xNativeView2 = arrayList.get(i2);
            i2++;
            XNativeView xNativeView3 = xNativeView2;
            if (xNativeView3 != xNativeView) {
                xNativeView3.stop();
                xNativeView3.handleCover();
            }
        }
    }
}
