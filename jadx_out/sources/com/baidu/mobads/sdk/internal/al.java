package com.baidu.mobads.sdk.internal;

import android.widget.RelativeLayout;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;
import com.baidu.mobads.sdk.api.ShakeViewContainer;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.mraid.C1315g;
import java.util.Map;

/* loaded from: classes2.dex */
public class al implements ShakeViewContainer {

    /* renamed from: a, reason: collision with root package name */
    private RelativeLayout f10986a;

    /* renamed from: b, reason: collision with root package name */
    private IOAdEventListener f10987b;

    public static class a implements IOAdEvent {

        /* renamed from: a, reason: collision with root package name */
        private final String f10988a;

        public a(String str) {
            this.f10988a = str;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public int getCode() {
            return 0;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public Map<String, Object> getData() {
            return null;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public String getMessage() {
            return this.f10988a;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public Object getTarget() {
            return null;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public String getType() {
            return "native_shake";
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public void setTarget(Object obj) {
        }
    }

    public al(RelativeLayout relativeLayout, IOAdEventListener iOAdEventListener) {
        this.f10986a = relativeLayout;
        this.f10987b = iOAdEventListener;
    }

    @Override // com.baidu.mobads.sdk.api.ShakeViewContainer
    public void destroy() {
        IOAdEventListener iOAdEventListener = this.f10987b;
        if (iOAdEventListener != null) {
            iOAdEventListener.run(new a(C1315g.f37905b));
        }
        this.f10987b = null;
        this.f10986a = null;
    }

    @Override // com.baidu.mobads.sdk.api.ShakeViewContainer
    public RelativeLayout getContainer() {
        return this.f10986a;
    }

    @Override // com.baidu.mobads.sdk.api.ShakeViewContainer
    public void pause() {
        IOAdEventListener iOAdEventListener = this.f10987b;
        if (iOAdEventListener != null) {
            iOAdEventListener.run(new a(C1244a.f35682j));
        }
    }

    @Override // com.baidu.mobads.sdk.api.ShakeViewContainer
    public void resume() {
        IOAdEventListener iOAdEventListener = this.f10987b;
        if (iOAdEventListener != null) {
            iOAdEventListener.run(new a("resume"));
        }
    }
}
