package com.byazt.ktd;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.anythink.core.common.s.a.c;
import com.byazt.na.LottieAnimationView;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.MainThread;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public static Method f22172a = null;
    public static boolean eb = false;
    public static List<C0299w> hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static boolean f22174j = false;
    public static final hp jl;
    public static Method jx = null;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f22175l = true;

    /* renamed from: s, reason: collision with root package name */
    public static boolean f22177s;

    /* renamed from: w, reason: collision with root package name */
    public static boolean f22178w;
    public static final j zy;

    /* renamed from: q, reason: collision with root package name */
    public static final Rect f22176q = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public static final Rect f22173e = new Rect();
    public static final Rect gu = new Rect();

    @com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 8})
    public static class hp {
        public float hp;

        /* renamed from: l, reason: collision with root package name */
        public int f22179l;

        private hp() {
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_FIRST_LOAD_TIME})
    public static class j {

        /* renamed from: a, reason: collision with root package name */
        public boolean f22180a;
        public boolean hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f22181j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public boolean f22182l;

        /* renamed from: w, reason: collision with root package name */
        public boolean f22183w;

        private j() {
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 865})
    public static class jx {
        public int hp;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public int f22184l;

        public jx(int i2, int i3, String str) {
            this.hp = i2;
            this.f22184l = i3;
            this.jx = str;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_ENABLE_DTLS})
    public static class l {

        /* renamed from: j, reason: collision with root package name */
        public List<C0299w> f22185j;
        public String hp = "";

        /* renamed from: l, reason: collision with root package name */
        public int f22186l = -1;
        public int jx = 0;

        /* renamed from: w, reason: collision with root package name */
        public String f22187w = "";

        public String toString() {
            return "Result{bottomBarClassName='" + this.hp + "', selectedIndex=" + this.f22186l + ", selectedConfidence=" + this.jx + ", tabInfos=" + this.f22185j + ", selectedTabLabel='" + this.f22187w + "'}";
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 1627})
    /* renamed from: com.byazt.ktd.w$w, reason: collision with other inner class name */
    public static class C0299w {
        public final int hp;

        /* renamed from: j, reason: collision with root package name */
        public final Rect f22188j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public final View f22189l;

        public C0299w(int i2, View view, String str, Rect rect) {
            this.hp = i2;
            this.f22189l = view;
            this.jx = str;
            this.f22188j = rect;
        }

        public String hp() {
            if (!w.l(this.jx)) {
                return this.jx + "_Tab_" + this.hp;
            }
            View view = this.f22189l;
            if (view != null && view.isAttachedToWindow() && Thread.currentThread() == Looper.getMainLooper().getThread()) {
                String strL = w.l(this.f22189l);
                if (!w.l(strL)) {
                    this.jx = strL;
                    return strL + "_Tab_" + this.hp;
                }
            }
            return "Tab_" + this.hp;
        }

        public String toString() {
            return "TabInfo{index=" + this.hp + ", tabRoot=" + this.f22189l + ", text='" + this.jx + "', rect=" + this.f22188j + '}';
        }
    }

    static {
        jl = new hp();
        zy = new j();
    }

    private static boolean a(View view) {
        if (view == null || !view.getClass().getSimpleName().contains(LottieAnimationView.hp)) {
            return false;
        }
        if (!eb && !f22177s) {
            try {
                try {
                    Method method = view.getClass().getMethod("isAnimating", null);
                    method.setAccessible(true);
                    f22172a = method;
                } catch (Throwable unused) {
                    f22177s = true;
                    f22172a = null;
                }
            } finally {
                eb = true;
            }
        }
        Method method2 = f22172a;
        if (method2 != null && !f22177s) {
            try {
                Object objInvoke = method2.invoke(view, null);
                if (objInvoke instanceof Boolean) {
                    if (((Boolean) objInvoke).booleanValue()) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable unused2) {
                f22177s = true;
                f22172a = null;
            }
        }
        return false;
    }

    @MainThread
    private static boolean eb(View view) {
        if (view != null && view.getVisibility() == 0) {
            if (f22175l) {
                try {
                    if (view.isHovered()) {
                        return true;
                    }
                } catch (NoSuchMethodError unused) {
                    f22175l = false;
                } catch (Throwable unused2) {
                }
            }
            if (!f22174j && !f22178w) {
                try {
                    try {
                        Method method = View.class.getMethod("isHovered", null);
                        method.setAccessible(true);
                        jx = method;
                    } catch (Throwable unused3) {
                        f22178w = true;
                        jx = null;
                    }
                } finally {
                    f22174j = true;
                }
            }
            Method method2 = jx;
            if (method2 != null && !f22178w) {
                try {
                    Object objInvoke = method2.invoke(view, null);
                    if (objInvoke instanceof Boolean) {
                        if (((Boolean) objInvoke).booleanValue()) {
                            return true;
                        }
                    }
                    return false;
                } catch (Throwable unused4) {
                    f22178w = true;
                    jx = null;
                }
            }
        }
        return false;
    }

    @MainThread
    public static int j() {
        View view;
        List<C0299w> list = hp;
        if (list == null || list.isEmpty()) {
            return -1;
        }
        for (C0299w c0299w : list) {
            if (c0299w == null || (view = c0299w.f22189l) == null || !view.isAttachedToWindow()) {
                return -1;
            }
        }
        jx jxVarHp = hp(list);
        e.l(jxVarHp.hp, jxVarHp.f22184l, jxVarHp.jx);
        return jxVarHp.hp;
    }

    @MainThread
    public static List<C0299w> jx() {
        return hp;
    }

    @MainThread
    public static void l() {
        hp = null;
        com.byazt.ktd.j.jx();
    }

    @MainThread
    private static boolean w(View view) {
        if (view != null && view.getVisibility() == 0) {
            if (a(view)) {
                return true;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    if (w(viewGroup.getChildAt(i2))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static boolean jx(String str) {
        if (str == null) {
            return false;
        }
        return str.contains(hp(new byte[]{-36, -82, -80, -33, 125, -121})) || str.contains(hp(new byte[]{-33, -118, -100, -37, -82, 119})) || str.contains(hp(new byte[]{-35, -100, -123, -37, 126, -97})) || str.contains(hp(new byte[]{-34, -85, -112, -33, -120, -89})) || str.contains(hp(new byte[]{-36, -123, -122, -35, -124, -90})) || str.contains(hp(new byte[]{-35, -80, -104, -37, -126, 123})) || str.contains(hp(new byte[]{-36, -86, -79, -37, c.f7560a, -98})) || str.contains(hp(new byte[]{-38, -79, -79, -37, c.f7560a, -105})) || str.contains(hp(new byte[]{-34, -85, -112}));
    }

    @MainThread
    public static boolean hp() {
        View view;
        List<C0299w> list = hp;
        if (list == null || list.isEmpty()) {
            return false;
        }
        for (C0299w c0299w : list) {
            if (c0299w == null || (view = c0299w.f22189l) == null || !view.isAttachedToWindow()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String l(View view) {
        return hp(view, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(String str) {
        return TextUtils.isEmpty(str) || str.trim().length() == 0;
    }

    @MainThread
    private static int l(View view, String str) {
        TextView textView;
        CharSequence text;
        if (view != null && view.getVisibility() == 0) {
            if ((view instanceof TextView) && (text = (textView = (TextView) view).getText()) != null) {
                String strTrim = text.toString().trim();
                if (!strTrim.isEmpty() && (str == null || str.isEmpty() || strTrim.equals(str))) {
                    return textView.getCurrentTextColor();
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    int iL = l(viewGroup.getChildAt(i2), str);
                    if (iL != 0) {
                        return iL;
                    }
                }
            }
        }
        return 0;
    }

    @MainThread
    public static l hp(Activity activity) {
        jx jxVarHp;
        l lVar = new l();
        if (activity != null && activity.getWindow() != null) {
            View decorView = activity.getWindow().getDecorView();
            ViewGroup viewGroupHp = hp(decorView, decorView.getResources().getDisplayMetrics().widthPixels, decorView.getResources().getDisplayMetrics().heightPixels);
            if (viewGroupHp != null) {
                lVar.hp = viewGroupHp.getClass().getName();
            }
            if (viewGroupHp != null) {
                List<C0299w> listHp = hp(viewGroupHp);
                lVar.f22185j = listHp;
                int iL = com.byazt.ktd.j.l();
                if (iL >= 0 && iL < listHp.size()) {
                    jxVarHp = new jx(iL, 100, "history click");
                } else {
                    jxVarHp = hp(listHp);
                    e.hp(jxVarHp.hp, jxVarHp.f22184l, jxVarHp.jx);
                }
                int i2 = jxVarHp.hp;
                lVar.f22186l = i2;
                lVar.jx = jxVarHp.f22184l;
                if (i2 >= 0 && i2 < listHp.size()) {
                    lVar.f22187w = listHp.get(lVar.f22186l).hp();
                }
                if (listHp != null && !listHp.isEmpty()) {
                    com.byazt.ktd.j.jx();
                    l(viewGroupHp, listHp);
                    com.byazt.ktd.j.hp(jxVarHp.hp);
                    com.byazt.ktd.j.hp(viewGroupHp);
                    hp = listHp;
                    e.hp(listHp.size(), lVar.f22187w);
                }
            }
        }
        return lVar;
    }

    @MainThread
    private static float j(View view) {
        hp hpVar = jl;
        hpVar.hp = 0.0f;
        hpVar.f22179l = 0;
        hp(view, hpVar);
        int i2 = hpVar.f22179l;
        if (i2 == 0) {
            return 1.0f;
        }
        return hpVar.hp / i2;
    }

    @MainThread
    private static j jx(View view) {
        j jVar = zy;
        jVar.f22180a = false;
        jVar.f22183w = false;
        jVar.f22181j = false;
        jVar.jx = false;
        jVar.f22182l = false;
        jVar.hp = false;
        hp(view, jVar);
        jVar.hp = jVar.f22182l || jVar.jx || jVar.f22181j || jVar.f22183w || jVar.f22180a;
        return jVar;
    }

    @MainThread
    private static void l(ViewGroup viewGroup, List<C0299w> list) {
        for (C0299w c0299w : list) {
            com.byazt.ktd.j.hp(c0299w.f22189l, c0299w);
        }
    }

    @MainThread
    private static List<View> l(ViewGroup viewGroup) {
        ArrayList arrayList = new ArrayList(viewGroup.getChildCount());
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt != null && childAt.getVisibility() == 0) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    @MainThread
    private static ViewGroup hp(View view, int i2, int i3) {
        return hp(view, i2, i3, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01c1  */
    @com.bytedance.component.sdk.annotation.MainThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.view.ViewGroup hp(android.view.View r19, int r20, int r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ktd.w.hp(android.view.View, int, int, boolean):android.view.ViewGroup");
    }

    @MainThread
    private static List<C0299w> hp(ViewGroup viewGroup) {
        List<View> listL = l(viewGroup);
        if (listL.size() > 6) {
            hp(viewGroup, listL);
        }
        ArrayList arrayList = new ArrayList(listL.size());
        for (int i2 = 0; i2 < listL.size(); i2++) {
            View view = listL.get(i2);
            Rect rect = gu;
            rect.setEmpty();
            view.getGlobalVisibleRect(rect);
            arrayList.add(new C0299w(i2, view, l(view), new Rect(rect)));
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0140  */
    @com.bytedance.component.sdk.annotation.MainThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void hp(android.view.ViewGroup r12, java.util.List<android.view.View> r13) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ktd.w.hp(android.view.ViewGroup, java.util.List):void");
    }

    @MainThread
    private static String hp(View view, String str) {
        CharSequence text;
        if (view != null && view.getVisibility() == 0) {
            if ((view instanceof TextView) && (text = ((TextView) view).getText()) != null) {
                String strTrim = text.toString().trim();
                if (!strTrim.isEmpty() && strTrim.length() <= 8 && (str.isEmpty() || strTrim.length() < str.length())) {
                    str = strTrim;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    str = hp(viewGroup.getChildAt(i2), str);
                }
            }
        }
        return str;
    }

    private static String hp(byte[] bArr) {
        try {
            byte[] bArr2 = new byte[bArr.length];
            for (int i2 = 0; i2 < bArr.length; i2++) {
                bArr2[i2] = (byte) (bArr[i2] + 10);
            }
            return new String(bArr2, "UTF-8");
        } catch (Throwable unused) {
            return "";
        }
    }

    @MainThread
    private static jx hp(List<C0299w> list) {
        HashMap map;
        if (list != null && !list.isEmpty()) {
            boolean zHp = e.hp();
            int size = list.size();
            int[] iArr = new int[size];
            if (zHp) {
                map = new HashMap(size);
                for (int i2 = 0; i2 < size; i2++) {
                    map.put(Integer.valueOf(i2), new ArrayList());
                }
            } else {
                map = null;
            }
            int[] iArr2 = new int[size];
            for (int i3 = 0; i3 < size; i3++) {
                iArr2[i3] = l(list.get(i3).f22189l, list.get(i3).jx);
            }
            int iHp = hp(iArr2);
            if (iHp != -1) {
                iArr[iHp] = iArr[iHp] + 5;
                hp(map, iHp, "textColorOdd +5");
            }
            for (int i4 = 0; i4 < size; i4++) {
                C0299w c0299w = list.get(i4);
                boolean zJx = jx(c0299w.jx);
                j jVarJx = jx(c0299w.f22189l);
                if (jVarJx.hp) {
                    int i5 = jVarJx.f22182l ? 6 : 0;
                    if (jVarJx.jx) {
                        i5 += 4;
                    }
                    if (jVarJx.f22181j) {
                        i5++;
                    }
                    if (jVarJx.f22183w) {
                        i5 += 2;
                    }
                    if (jVarJx.f22180a) {
                        i5++;
                    }
                    iArr[i4] = iArr[i4] + i5;
                    hp(map, i4, "stateHit +".concat(String.valueOf(i5)));
                }
                if (w(c0299w.f22189l)) {
                    if (zJx) {
                        hp(map, i4, "lottie ignored(marketing)");
                    } else {
                        iArr[i4] = iArr[i4] + 2;
                        hp(map, i4, "lottieAnimating +2");
                    }
                }
            }
            float[] fArr = new float[size];
            for (int i6 = 0; i6 < size; i6++) {
                fArr[i6] = j(list.get(i6).f22189l);
            }
            int iHp2 = hp(fArr, 0.15f);
            if (iHp2 != -1) {
                if (jx(list.get(iHp2).jx)) {
                    hp(map, iHp2, "alphaOdd ignored(marketing)");
                } else {
                    iArr[iHp2] = iArr[iHp2] + 2;
                    hp(map, iHp2, "alphaOdd +2");
                }
            }
            int iMax = Integer.MIN_VALUE;
            int i7 = Integer.MIN_VALUE;
            int i8 = -1;
            for (int i9 = 0; i9 < size; i9++) {
                int i10 = iArr[i9];
                if (i10 > i7) {
                    i8 = i9;
                    i7 = i10;
                }
            }
            if (i7 <= 0) {
                return new jx(-1, 0, "no strong signals");
            }
            for (int i11 = 0; i11 < size; i11++) {
                if (i11 != i8) {
                    iMax = Math.max(iMax, iArr[i11]);
                }
            }
            return new jx(i8, Math.max(0, i7 - iMax) + i7, (!zHp || map == null) ? "" : String.valueOf(map.get(Integer.valueOf(i8))));
        }
        return new jx(-1, 0, "no tabs");
    }

    private static void hp(Map<Integer, List<String>> map, int i2, String str) {
        List<String> list;
        if (map == null || (list = map.get(Integer.valueOf(i2))) == null) {
            return;
        }
        list.add(str);
    }

    @MainThread
    private static void hp(View view, j jVar) {
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        if (view.isSelected()) {
            jVar.f22182l = true;
        }
        if (view.isActivated()) {
            jVar.jx = true;
        }
        if (view.isPressed()) {
            jVar.f22181j = true;
        }
        if (view.isFocused()) {
            jVar.f22183w = true;
        }
        if (eb(view)) {
            jVar.f22180a = true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                hp(viewGroup.getChildAt(i2), jVar);
            }
        }
    }

    private static int hp(int[] iArr) {
        if (iArr != null && iArr.length >= 3) {
            HashMap map = new HashMap();
            for (int i2 : iArr) {
                if (i2 != 0) {
                    map.put(Integer.valueOf(i2), Integer.valueOf(((Integer) map.getOrDefault(Integer.valueOf(i2), 0)).intValue() + 1));
                }
            }
            int iIntValue = 0;
            int iIntValue2 = 0;
            for (Map.Entry entry : map.entrySet()) {
                if (((Integer) entry.getValue()).intValue() > iIntValue) {
                    iIntValue = ((Integer) entry.getValue()).intValue();
                    iIntValue2 = ((Integer) entry.getKey()).intValue();
                }
            }
            if (iIntValue >= iArr.length / 2) {
                int i3 = -1;
                int i4 = 0;
                for (int i5 = 0; i5 < iArr.length; i5++) {
                    int i6 = iArr[i5];
                    if (i6 != 0 && i6 != iIntValue2) {
                        i4++;
                        i3 = i5;
                    }
                }
                if (i4 == 1) {
                    return i3;
                }
            }
        }
        return -1;
    }

    @MainThread
    private static void hp(View view, hp hpVar) {
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        if (!(view instanceof ViewGroup)) {
            hpVar.hp += view.getAlpha();
            hpVar.f22179l++;
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            hp(viewGroup.getChildAt(i2), hpVar);
        }
    }

    private static int hp(float[] fArr, float f2) {
        if (fArr != null && fArr.length >= 3) {
            float f3 = 0.0f;
            float f4 = 0.0f;
            for (float f5 : fArr) {
                f4 += f5;
            }
            float length = f4 / fArr.length;
            int i2 = -1;
            for (int i3 = 0; i3 < fArr.length; i3++) {
                float fAbs = Math.abs(fArr[i3] - length);
                if (fAbs > f3) {
                    i2 = i3;
                    f3 = fAbs;
                }
            }
            if (f3 >= f2) {
                return i2;
            }
        }
        return -1;
    }
}
