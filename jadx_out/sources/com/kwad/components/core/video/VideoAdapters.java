package com.kwad.components.core.video;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public final class VideoAdapters {

    /* renamed from: com.kwad.components.core.video.VideoAdapters$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] anJ;

        static {
            int[] iArr = new int[AdaptType.values().length];
            anJ = iArr;
            try {
                iArr[AdaptType.PORTRAIT_VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                anJ[AdaptType.LANDSCAPE_HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                anJ[AdaptType.PORTRAIT_HORIZONTAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                anJ[AdaptType.LANDSCAPE_VERTICAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum AdaptType {
        PORTRAIT_VERTICAL,
        PORTRAIT_HORIZONTAL,
        LANDSCAPE_VERTICAL,
        LANDSCAPE_HORIZONTAL
    }

    public static abstract class a implements com.kwad.components.core.video.c {
        private static boolean F(View view) {
            return view.isInLayout() || view.isLayoutRequested();
        }

        private static boolean b(View view, View view2, int i2, int i3) {
            if (view == null || i2 == 0 || i3 == 0 || view2 == null) {
                return false;
            }
            return (view2.getWidth() == 0 || view2.getHeight() == 0) ? false : true;
        }

        @Override // com.kwad.components.core.video.c
        public final void a(final View view, View view2, int i2, int i3) {
            if (!b(view, view2, i2, i3)) {
                com.kwad.sdk.core.d.c.d("AbstractVideoViewAdapter", "adaptVideo checkArguments invalid");
                return;
            }
            d dVar = new d(view2.getWidth(), view2.getHeight());
            d dVar2 = new d(i2, i3);
            boolean z2 = dVar2.getRatio() >= 1.0f;
            boolean z3 = dVar.getRatio() >= 1.0f;
            AdaptType adaptType = (z3 && z2) ? AdaptType.PORTRAIT_VERTICAL : z3 ? AdaptType.PORTRAIT_HORIZONTAL : z2 ? AdaptType.LANDSCAPE_VERTICAL : AdaptType.LANDSCAPE_HORIZONTAL;
            final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            a(adaptType, layoutParams, dVar, dVar2);
            if (F(view)) {
                view.post(new Runnable() { // from class: com.kwad.components.core.video.VideoAdapters.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        view.setLayoutParams(layoutParams);
                    }
                });
            } else {
                view.setLayoutParams(layoutParams);
            }
        }

        public abstract void a(@NonNull AdaptType adaptType, @NonNull ViewGroup.LayoutParams layoutParams, @NonNull d dVar, @NonNull d dVar2);
    }

    public static class b extends a {
        private float anM = 0.8f;
        private float anN = 0.9375f;
        private float anO = 1.1046f;

        @Override // com.kwad.components.core.video.VideoAdapters.a
        public final void a(@NonNull AdaptType adaptType, @NonNull ViewGroup.LayoutParams layoutParams, @NonNull d dVar, @NonNull d dVar2) {
            float fXO;
            float f2;
            float fXP = dVar.xP();
            float fXP2 = dVar2.xP();
            float fXO2 = dVar.xO();
            float fXN = dVar.xN();
            com.kwad.sdk.core.d.c.d("FullHeightAdapter", "onAdaptVideo containerSize: " + fXN + ", " + fXO2);
            int i2 = AnonymousClass1.anJ[adaptType.ordinal()];
            if (i2 == 1 || i2 == 2) {
                if (fXP > fXP2) {
                    float fXN2 = dVar.xN();
                    float f3 = fXN2 / fXP2;
                    float f4 = fXO2 / f3;
                    float f5 = this.anM;
                    if (f4 >= f5) {
                        f2 = fXN2;
                        fXO = f3;
                    } else {
                        fXO = fXO2 / f5;
                        f2 = fXO * fXP2;
                    }
                } else {
                    fXO = dVar.xO();
                    f2 = fXP2 * fXO;
                    float f6 = fXN / f2;
                    float f7 = this.anN;
                    if (f6 < f7) {
                        f2 = fXN / f7;
                        fXO = f2 / fXP2;
                    }
                }
            } else if (i2 == 3 || i2 == 4) {
                f2 = fXO2 * this.anO;
                fXO = f2 / fXP2;
            } else {
                fXO = -2.1474836E9f;
                f2 = -2.1474836E9f;
            }
            com.kwad.sdk.core.d.c.d("FullHeightAdapter", "onAdaptVideo result: " + f2 + ", " + fXO);
            if (f2 == -2.1474836E9f || fXO == -2.1474836E9f) {
                return;
            }
            if (dVar2.getHeight() >= dVar2.getWidth()) {
                layoutParams.width = (int) fXO;
                layoutParams.height = (int) f2;
            } else {
                layoutParams.height = (int) fXO;
                layoutParams.width = (int) f2;
            }
        }
    }

    public static class c extends a {
        @Override // com.kwad.components.core.video.VideoAdapters.a
        public final void a(@NonNull AdaptType adaptType, @NonNull ViewGroup.LayoutParams layoutParams, @NonNull d dVar, @NonNull d dVar2) {
            float fXN;
            float fXO;
            float fXP = dVar.xP();
            float fXP2 = dVar2.xP();
            int i2 = AnonymousClass1.anJ[adaptType.ordinal()];
            if (i2 == 1 || i2 == 2) {
                if (fXP >= fXP2) {
                    fXO = dVar.xO();
                    fXN = fXO * fXP2;
                } else {
                    fXN = dVar.xN();
                    fXO = fXN / fXP2;
                }
            } else if (i2 == 3 || i2 == 4) {
                fXN = dVar.xO();
                fXO = fXN / fXP2;
            } else {
                fXN = 0.0f;
                fXO = -2.1474836E9f;
            }
            if (fXO == -2.1474836E9f || fXN == -2.1474836E9f) {
                return;
            }
            if (dVar2.getHeight() > dVar2.getWidth()) {
                layoutParams.width = (int) fXO;
                layoutParams.height = (int) fXN;
            } else {
                layoutParams.height = (int) fXO;
                layoutParams.width = (int) fXN;
            }
        }
    }

    public static class d {
        float anP;
        float height;
        float width;

        public d(float f2, float f3) {
            this.anP = -1.0f;
            this.width = f2;
            this.height = f3;
            if (f2 <= 0.0f || f3 <= 0.0f) {
                return;
            }
            this.anP = f3 / f2;
        }

        private boolean isValid() {
            return this.width > 0.0f && this.height > 0.0f;
        }

        public final float getHeight() {
            return this.height;
        }

        public final float getRatio() {
            return this.anP;
        }

        public final float getWidth() {
            return this.width;
        }

        public final String toString() {
            return "ViewSize{width=" + this.width + ", height=" + this.height + ", ratio=" + this.anP + '}';
        }

        public final float xN() {
            if (isValid()) {
                return Math.max(this.width, this.height);
            }
            return -1.0f;
        }

        public final float xO() {
            if (isValid()) {
                return Math.min(this.width, this.height);
            }
            return -1.0f;
        }

        public final float xP() {
            if (!isValid()) {
                return -1.0f;
            }
            float f2 = this.height;
            float f3 = this.width;
            return f2 > f3 ? f2 / f3 : f3 / f2;
        }
    }
}
