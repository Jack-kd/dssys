package com.byazt.ln;

import android.view.View;
import android.view.ViewParent;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1423, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public final class s {
    public static boolean hp(ViewParent viewParent, View view, View view2, int i2, int i3) {
        if (viewParent instanceof a) {
            return ((a) viewParent).hp(view, view2, i2, i3);
        }
        if (i3 != 0) {
            return false;
        }
        try {
            return viewParent.onStartNestedScroll(view, view2, i2);
        } catch (AbstractMethodError e2) {
            u.hp("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e2);
            return false;
        }
    }

    public static void l(ViewParent viewParent, View view, View view2, int i2, int i3) {
        if ((viewParent instanceof a) || i3 != 0) {
            return;
        }
        try {
            viewParent.onNestedScrollAccepted(view, view2, i2);
        } catch (AbstractMethodError e2) {
            u.hp("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e2);
        }
    }

    public static void hp(ViewParent viewParent, View view, int i2) {
        if ((viewParent instanceof a) || i2 != 0) {
            return;
        }
        try {
            viewParent.onStopNestedScroll(view);
        } catch (AbstractMethodError e2) {
            u.hp("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e2);
        }
    }

    public static void hp(ViewParent viewParent, View view, int i2, int i3, int i4, int i5, int i6) {
        if ((viewParent instanceof a) || i6 != 0) {
            return;
        }
        try {
            viewParent.onNestedScroll(view, i2, i3, i4, i5);
        } catch (AbstractMethodError e2) {
            u.hp("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e2);
        }
    }

    public static void hp(ViewParent viewParent, View view, int i2, int i3, int[] iArr, int i4) {
        if (viewParent instanceof a) {
            ((a) viewParent).hp(view, i2, i3, iArr, i4);
            return;
        }
        if (i4 == 0) {
            try {
                viewParent.onNestedPreScroll(view, i2, i3, iArr);
            } catch (AbstractMethodError e2) {
                u.hp("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e2);
            }
        }
    }

    public static boolean hp(ViewParent viewParent, View view, float f2, float f3, boolean z2) {
        try {
            return viewParent.onNestedFling(view, f2, f3, z2);
        } catch (AbstractMethodError e2) {
            u.hp("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e2);
            return false;
        }
    }

    public static boolean hp(ViewParent viewParent, View view, float f2, float f3) {
        try {
            return viewParent.onNestedPreFling(view, f2, f3);
        } catch (AbstractMethodError e2) {
            u.hp("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e2);
            return false;
        }
    }
}
