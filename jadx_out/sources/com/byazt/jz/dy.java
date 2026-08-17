package com.byazt.jz;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER})
/* loaded from: classes.dex */
public class dy {
    public static String hp(int i2) {
        switch (i2) {
            case 1:
                return "view不可见";
            case 2:
            case 5:
            default:
                return "";
            case 3:
                return "view可见区域比例不够";
            case 4:
                return "屏幕关闭";
            case 6:
                return "view可见宽高不够";
            case 7:
                return "show检测发生崩溃";
            case 8:
                return "设置为了不需要检测";
            case 9:
                return "没有在检测";
            case 10:
                return "没有在检测，已show";
        }
    }

    private static int j(View view, int i2) {
        if (i2 == 3) {
            return xh.w(view.getContext().getApplicationContext()) / 2;
        }
        return 20;
    }

    private static boolean jx(View view) {
        return view != null && view.isShown();
    }

    private static boolean l(View view, int i2) {
        return view.getWidth() >= jx(view, i2) && view.getHeight() >= j(view, i2);
    }

    private static int jx(View view, int i2) {
        if (i2 == 3) {
            return (int) (xh.j(view.getContext().getApplicationContext()) * 0.7d);
        }
        return 20;
    }

    public static boolean l(View view, int i2, int i3) {
        return hp(view, i2, i3) == 0;
    }

    public static float l(View view) {
        if (view != null) {
            try {
                if (view.getVisibility() == 0 && view.getParent() != null) {
                    if (!view.getGlobalVisibleRect(new Rect()) && (!sz.l().zx() || !hp(view, new Rect(), (Point) null))) {
                        return -1.0f;
                    }
                    long jHeight = r1.height() * r1.width();
                    long height = view.getHeight() * view.getWidth();
                    if (height <= 0) {
                        return -1.0f;
                    }
                    return jHeight / height;
                }
            } catch (Throwable unused) {
            }
        }
        return -1.0f;
    }

    private static boolean hp(View view, int i2) {
        float fL = l(view);
        return fL > 0.0f && fL >= ((float) i2) / 100.0f;
    }

    public static boolean hp(View view, Rect rect, Point point) {
        if (view == null) {
            return false;
        }
        int right = view.getRight() - view.getLeft();
        int bottom = view.getBottom() - view.getTop();
        if (right <= 0 || bottom <= 0) {
            return false;
        }
        rect.set(0, 0, right, bottom);
        if (point != null) {
            point.set(-view.getScrollX(), -view.getScrollY());
        }
        return view.getParent() == null || view.getParent().getChildVisibleRect(view, rect, point);
    }

    public static int hp(View view, int i2, int i3) throws Throwable {
        if (!DeviceUtils.hp()) {
            return 4;
        }
        if (!jx(view)) {
            return 1;
        }
        if (l(view, i3)) {
            return !hp(view, i2) ? 3 : 0;
        }
        return 6;
    }

    public static boolean hp(View view) {
        if (view != null && view.getVisibility() == 0 && view.getParent() != null && view.isShown() && view.getGlobalVisibleRect(new Rect())) {
            return hp(view, 20);
        }
        return false;
    }
}
