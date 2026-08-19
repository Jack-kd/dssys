package com.byazt.ej;

import com.byazt.kj.hp;

@hp(hp = {0, 1, 1693, 2300})
/* loaded from: classes2.dex */
public class UGenTestToolsPage extends BaseToolPage {
    public boolean hp;

    @Override // com.byazt.ej.BaseToolPage
    public String getPageTitle() {
        return "UGen调试";
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.hp = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.hp = false;
    }
}
