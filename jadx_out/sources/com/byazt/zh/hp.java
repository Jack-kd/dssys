package com.byazt.zh;

import android.view.View;
import java.util.List;

/* loaded from: classes3.dex */
public interface hp {
    int getAlignContent();

    int getAlignItems();

    int getFlexDirection();

    int getFlexItemCount();

    List<jx> getFlexLinesInternal();

    int getFlexWrap();

    int getLargestMainSize();

    int getMaxLine();

    int getPaddingBottom();

    int getPaddingEnd();

    int getPaddingLeft();

    int getPaddingRight();

    int getPaddingStart();

    int getPaddingTop();

    int getSumOfCrossSize();

    int hp(int i2, int i3, int i4);

    int hp(View view);

    int hp(View view, int i2, int i3);

    View hp(int i2);

    void hp(View view, int i2, int i3, jx jxVar);

    void hp(jx jxVar);

    boolean hp();

    int l(int i2, int i3, int i4);

    View l(int i2);

    void setFlexLines(List<jx> list);
}
