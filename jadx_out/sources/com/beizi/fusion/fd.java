package com.beizi.fusion;

import android.view.View;

/* loaded from: classes2.dex */
public interface fd extends ab {

    public enum a implements za {
        CLICK_INTERACTIVE_TRIGGER(1, "click_interactive_trigger"),
        GESTURE_INTERACTIVE_TRIGGER(2, "gesture_interactive_trigger"),
        SHAKE_INTERACTIVE_TRIGGER(3, "shake_interactive_trigger"),
        EULER_INTERACTIVE_TRIGGER(4, "euler_interactive_trigger"),
        OPTIMIZE_INTERACTIVE_TRIGGER(5, "optimize_interactive_trigger"),
        INVOKE_INTERACTIVE_TRIGGER(6, "invoke_interactive_trigger"),
        LANDING_PAGE_INTERACTIVE_TRIGGER(7, "landing_page_interactive_trigger"),
        LANDING_PAGE_ENDCARD_INTERACTIVE_TRIGGER(8, "landing_page_endcard_interactive_trigger");


        /* renamed from: a, reason: collision with root package name */
        private final int f13864a;

        /* renamed from: b, reason: collision with root package name */
        private final String f13865b;

        a(int i2, String str) {
            this.f13864a = i2;
            this.f13865b = str;
        }

        @Override // com.beizi.fusion.za
        public int getEventCode() {
            return this.f13864a;
        }
    }

    void a(View view, a aVar);
}
